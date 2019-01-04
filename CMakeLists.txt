cmake_minimum_required(VERSION 3.4)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

option(BUILD_COVERAGE "Build coverage" OFF)

set(
  HUNTER_CACHE_SERVERS
  "https://github.com/bmstu-iu8-cpp-sem-3/hunter-cache"
  CACHE STRING "Default cache server"
)

include("tools/gate/cmake/HunterGate.cmake")

huntergate(
  URL "https://github.com/ruslo/hunter/archive/v0.23.34.tar.gz"
  SHA1 "70287b1ffa810ee4e952052a9adff9b4856d0d54"
)

project(process)
#string(APPEND CMAKE_CXX_FLAGS " -pedantic -Werror -Wall -Wextra")
#string(APPEND CMAKE_CXX_FLAGS " -Wno-unused-command-line-argument")
#string(APPEND CMAKE_CXX_FLAGS " -Wshadow -Wnon-virtual-dtor")

hunter_add_package(GTest)
find_package(GTest CONFIG REQUIRED)

hunter_add_package(BoostProcess)
find_package(BoostProcess CONFIG REQUIRED)

hunter_add_package(Async++)
find_package(Async++ CONFIG REQUIRED)

hunter_add_package(Boost COMPONENTS iostreams program_options)
find_package(Boost CONFIG REQUIRED iostreams program_options)

add_library(process STATIC
  ${CMAKE_CURRENT_SOURCE_DIR}/sources/builder.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/sources/main.cpp
)

add_executable(builder
  ${CMAKE_CURRENT_SOURCE_DIR}/sources/builder.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/sources/main.cpp
)

target_include_directories(process
  PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_include_directories(builder
  PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(builder GTest::main BoostProcess::boost_process  Boost::program_options Async++::Async++ Boost::iostreams process)

target_link_libraries(process BoostProcess::boost_process Async++::Async++ Boost::program_options Boost::iostreams)

enable_testing()
add_test(NAME unit_tests COMMAND builder)

if(BUILD_COVERAGE)
  set(ENABLE_COVERAGE ON CACHE BOOL "Enable coverage build." FORCE)
  list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
  find_package(codecov)
  add_coverage(process)
  add_coverage(builder)
  list(APPEND LCOV_REMOVE_PATTERNS "'${PROJECT_SOURCE_DIR}/tests/*'")
  coverage_evaluate()
endif()
