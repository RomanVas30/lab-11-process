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
  execute(run_exe("/usr/bin/cmake"),
          set_cmd_line("/usr/bin/cmake -H. -B_builds -DCMAKE_INSTALL_PREFIX=_install -DCMAKE_BUILD_TYPE=Debug"),
          start_in_dir("/home/vagrant/Labs/lab-11-process"));
}
