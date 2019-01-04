#include <builder.hpp>

#include <iostream>

#include <boost/process/mitigate.hpp>
#include <boost/process/initializers.hpp>
#include <boost/process/execute.hpp>
#include <boost/process.hpp>
#include <vector>
#include <string>
#include <stdexcept>
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

bool debug(std::vector<std::string>& args){
      args.push_back("-H.");
      args.push_back("-B_builds");
      args.push_back("-DCMAKE_INSTALL_PREFIX=_install");
      args.push_back("-DCMAKE_BUILD_TYPE=Debug");
      auto child = execute(set_args(args), inherit_env(), start_in_dir("/home/vagrant/Labs/lab-11-process"));
      auto exit_code = wait_for_exit(child);
      std::cout << "exit process with code: " << exit_code << std::endl;
      if (exit_code == 0)
        return true;
      return false;
}

bool build(std::vector<std::string>& args) {
  args.push_back("--build");
  args.push_back("_builds");
  auto child = execute(set_args(args), inherit_env(), start_in_dir("/home/vagrant/Labs/lab-11-pro$
  auto exit_code = wait_for_exit(child);
  std::cout << "exit process with code: " << exit_code << std::endl;
  if (exit_code == 0)
        return true;
      return false;
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

    if (vm.count("help")) {
      std::cout << "Usage: ./builder [options]" << std::endl;
      std::cout << desc << std::endl;
      return 0;
    }

    auto exe_path = search_path("cmake");
    std::vector<std::string> args;
    if ((!vm.count("config")) && (!vm.count("install")) && (!vm.count("pack")) && (!vm.count("timeout"))) {
      args.push_back(exe_path);
      bool valid = debug(args);
      if (valid){
        args.clear();
        args.push_back(exe_path);
        build(args);
      }
      return 0;
    }


    if (vm.count("config")) {
      if (vm["config"].as<std::string>() == "Release") {
        args.push_back(exe_path);
        args.push_back("-H.");
        args.push_back("-B_builds");
        args.push_back("-DCMAKE_INSTALL_PREFIX=_install");
        args.push_back("-DCMAKE_BUILD_TYPE=Release");
        auto child = execute(set_args(args), inherit_env(), start_in_dir("/home/vagrant/Labs/lab-11-process"));
        auto exit_code = wait_for_exit(child);
        std::cout << "exit process with code: " << exit_code << std::endl;
        if (exit_code == 0){
          args.clear();
          args.push_back(exe_path);
          build(args);
        }
        return 0;
      }
    }

    if (vm.count("install")){
      args.push_back(exe_path);
      args.push_back("-H.");
      args.push_back("-B_builds");
      args.push_back("-DCMAKE_INSTALL_PREFIX=_install");
      args.push_back("-DCMAKE_BUILD_TYPE=Debug");
      auto child = execute(set_args(args), inherit_env(), start_in_dir("/home/vagrant/Labs/lab-11-process"));
      auto exit_code = wait_for_exit(child);
      std::cout << "exit process with code: " << exit_code << std::endl;
      if (exit_code == 0){
        args.clear();
        args.push_back(exe_path);
        bool valid = build(args);
      }
      if (valid) {
        args.clear();
        args.push_back(exe_path);
        args.push_back("--build");
        args.push_back("_builds");
        args.push_back("--target");
        args.push_back("install");
        child = execute(set_args(args), inherit_env(), start_in_dir("/home/vagrant/Labs/lab-11-process"));
        exit_code = wait_for_exit(child);
        std::cout << "exit process with code: " << exit_code << std::endl;
      }
      return 0;
    }
  }
  catch (std::exception& e) {
    std::cout << "Error: " << e.what() << std::endl;
  }
}
