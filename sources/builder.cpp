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
  boost::iostreams::file_descriptor_sink sink("stdout.txt");
  child c = execute(run_exe("cmake"),
          set_cmd_line("--version"),
          bind_stdout(sink));
  auto exit_code = wait_for_exit(c);
}
