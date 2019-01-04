// Copyright 2018 Roman Vasyutin romanvas3008@gmail.com

#include <iostream>
#include <builder.hpp>
#include <boost/process/mitigate.hpp>
#include <boost/process/initializers.hpp>
#include <boost/process/execute.hpp>
#include <boost/process.hpp>
#include <vector>
#include <string>
#include <boost/process/wait_for_exit.hpp>

using namespace boost::process;
using namespace boost::process::initializers;

Builder::Builder(){
  auto exe_path = search_path("cmake");
  std::vector<std::string> args;
  args.push_back(exe_path);
  args.push_back("-H.");
  args.push_back("-B_builds");
  args.push_back("-DCMAKE_INSTALL_PREFIX=_install");
  args.push_back("-DCMAKE_BUILD_TYPE=Debug");
  auto child = execute(set_args(args), inherit_env(), start_in_dir("/home/vagrant/Labs/lab-11-process"));
  auto exit_code = wait_for_exit(child);
  std::cout << "exit process with code: " << exit_code << std::endl;
  if (exit_code == 0){
    std::vector<std::string> args1;
    args1.push_back(exe_path);
    args1.push_back("--build");
    args1.push_back("_build");
    child = execute(set_args(args), inherit_env(), start_in_dir("/home/vagrant/Labs/lab-11-process"));
    exit_code = wait_for_exit(child);
    std::cout << "exit process with code: " << exit_code << std::endl;
  }
}
