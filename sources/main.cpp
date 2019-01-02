#include <builder.hpp>

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

int main(){
  //Builder builder;
  execute(
    run_exe("cmake"),
    set_cmd_line("--version"));
}
