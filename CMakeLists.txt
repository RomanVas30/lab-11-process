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

project(builder)
set(BUILDER_VERSION_MAJOR 0)
set(BUILDER_VERSION_MINOR 1)
set(BUILDER_VERSION_PATCH 0)
set(BUILDER_VERSION_TWEAK 0)
set(BUILDER_VERSION
${BUILDER_VERSION_MAJOR}.${BUILDER_VERSION_MINOR}.${BUILDER_VERSION_PATCH}.${BUILDER_VERSION_TWEAK})
set(BUILDER_VERSION_STRING "v${BUILDER_VERSION}")
 string(APPEND CMAKE_CXX_FLAGS " -pedantic -Werror -Wall -Wextra")
 string(APPEND CMAKE_CXX_FLAGS " -Wno-unused-command-line-argument")
 string(APPEND CMAKE_CXX_FLAGS " -Wshadow -Wnon-virtual-dtor")

hunter_add_package(GTest)
find_package(GTest CONFIG REQUIRED)

hunter_add_package(BoostProcess)
find_package(BoostProcess CONFIG REQUIRED)

hunter_add_package(Async++)
find_package(Async++ CONFIG REQUIRED)

hunter_add_package(Boost COMPONENTS iostreams program_options)
find_package(Boost CONFIG REQUIRED iostreams program_options)

add_executable(builder
  ${CMAKE_CURRENT_SOURCE_DIR}/sources/main.cpp
)

target_include_directories(builder
  PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/
)

target_link_libraries(builder
  PUBLIC GTest::main BoostProcess::boost_process Boost::program_options Boost::iostreams Async++::Async++
)

install(TARGETS builder
    EXPORT builder-config
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
)

install(EXPORT builder-config DESTINATION cmake)

include(CPackConfig.cmake)
