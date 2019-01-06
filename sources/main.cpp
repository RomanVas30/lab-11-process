#include <builder.hpp>

#include <cstdlib>
#include <iostream>
#include <mutex>
#include <stdexcept>
#include <string>
#include <thread>
#include <vector>

#include <async++.h>
#include <boost/process.hpp>
#include <boost/process/execute.hpp>
#include <boost/process/initializers.hpp>
#include <boost/process/mitigate.hpp>
#include <boost/process/wait_for_exit.hpp>
#include <boost/program_options/cmdline.hpp>
#include <boost/program_options/config.hpp>
#include <boost/program_options/environment_iterator.hpp>
#include <boost/program_options/eof_iterator.hpp>
#include <boost/program_options/errors.hpp>
#include <boost/program_options/option.hpp>
#include <boost/program_options/options_description.hpp>
#include <boost/program_options/parsers.hpp>
#include <boost/program_options/positional_options.hpp>
#include <boost/program_options/value_semantic.hpp>
#include <boost/program_options/variables_map.hpp>
#include <boost/program_options/version.hpp>

using namespace boost::process;
using namespace boost::process::initializers;
namespace po = boost::program_options;

void process(const std::vector<std::string>& args) {
  auto child = execute(set_args(args), inherit_env());
  auto exit_code = wait_for_exit(child);
  std::cout << "exit process with code: " << exit_code << std::endl;
  if (exit_code != 0)
    throw std::runtime_error("Error!!!");
}

void default_opt(std::vector<std::string>& args){
  args.insert(args.begin() + 1, {"--build",
                                 "_builds"});
}

void debug(std::vector<std::string> args){
  std::cout << "o--------------------------------------o" << std::endl;
  std::cout << "|            Сборка: Debug             |" << std::endl;
  std::cout << "o--------------------------------------o" << std::endl;
  args.insert(args.begin() + 1, {"-H.",
                                 "-B_builds",
                                 "-DCMAKE_INSTALL_PREFIX=_install",
                                 "-DCMAKE_BUILD_TYPE=Debug"});
  process(args);
}

void release(std::vector<std::string> args) {
  std::cout << "o--------------------------------------o" << std::endl;
  std::cout << "|           Сборка: Release            |" << std::endl;
  std::cout << "o--------------------------------------o" << std::endl;
  args.insert(args.begin() + 1, {"-H.",
                                 "-B_builds",
                                 "-DCMAKE_INSTALL_PREFIX=_install",
                                 "-DCMAKE_BUILD_TYPE=Release"});
  process(args);
}

void build(std::vector<std::string> args) {
  default_opt(args);
  process(args);
}

void install(std::vector<std::string> args) {
  std::cout << "o--------------------------------------o" << std::endl;
  std::cout << "|              Установка               |" << std::endl;
  std::cout << "o--------------------------------------o" << std::endl;
  default_opt(args);
  args.insert(args.begin() + 3, {"--target",
                                 "install"});
  process(args);
}

void pack(std::vector<std::string> args) {
  std::cout << "o--------------------------------------o" << std::endl;
  std::cout << "|              Упаковка                |" << std::endl;
  std::cout << "o--------------------------------------o" << std::endl;
  default_opt(args);
  args.insert(args.begin() + 3, {"--target",
                                 "package"});
  process(args);
}

void timer(std::vector<std::string> args){
  async::spawn([&args] {
    debug(args);
  }).then([&args] {
    build(args);
  });
}

int main(int argc, char* argv[]){
  try {
    po::options_description desc("Allowed options:");
    desc.add_options()("help", ": выводим вспомогательное сообщение")(
      "config", po::value<std::string>(), ": указываем конфигурацию сборки (по умолчанию Debug)")(
      "install",  ": добавляем этап установки (в директорию _install)")(
      "pack", ": добавляем этап упаковки (в архив формата tar.gz)")(
      "timeout", po::value<int>(), ": указываем время ожидания (в секундах)");
    po::variables_map vm;
    po::store(po::parse_command_line(argc, argv, desc), vm);
    po::notify(vm);

    bool vm_help = vm.count("help");
    bool vm_config = vm.count("config");
    bool vm_install = vm.count("install");
    bool vm_pack = vm.count("pack");
    bool vm_timeout = vm.count("timeout");

    if (vm_help) {
      std::cout << "Usage: ./builder [options]" << std::endl;
      std::cout << desc << std::endl;
      return 0;
    }

    std::vector<std::string> args;
    auto exe_path = search_path("cmake");
    args.push_back(exe_path);

    if (vm_config)
      if (vm["config"].as<std::string>() == "Release") {
        async::spawn([args] {
          release(args);
        }).then([args] {
          build(args);
        });
        return 0;
      }
    auto t1 = async::spawn([args] {
      debug(args);
    }).then([args] {
      build(args);
    });
    if ((vm_install) && (vm_pack)) {
      auto t2 = t1.then([args] {
        install(args);
      }).then([args] {
        pack(args);
      });
    }
    if ((vm_install) && (!vm_pack)) {
      auto t2 = t1.then([args] {
        install(args);
      });
    }
    if ((!vm_install) && (vm_pack)) {
      auto t2 = t1.then([args] {
        pack(args);
      });
    }
    if (vm_timeout) {
      int time = vm["timeout"].as<int>();
      std::thread{&timer, args}.detach();
      std::this_thread::sleep_for(std::chrono::seconds(time));
      std::cout << "TIMEOUT!!!" << std::endl;
      throw std::runtime_error{"Timeout!"};
    }
    return 0;
  }
  catch (std::exception& e) {
    std::cout << "Error: " << e.what() << std::endl;
  }
}
