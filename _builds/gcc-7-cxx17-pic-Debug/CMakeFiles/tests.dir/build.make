# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vagrant/Labs/lab-11-process

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vagrant/Labs/lab-11-process/_builds/gcc-7-cxx17-pic-Debug

# Include any dependencies generated for this target.
include CMakeFiles/tests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tests.dir/flags.make

CMakeFiles/tests.dir/sources/builder.cpp.o: CMakeFiles/tests.dir/flags.make
CMakeFiles/tests.dir/sources/builder.cpp.o: ../../sources/builder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/Labs/lab-11-process/_builds/gcc-7-cxx17-pic-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tests.dir/sources/builder.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/sources/builder.cpp.o -c /home/vagrant/Labs/lab-11-process/sources/builder.cpp

CMakeFiles/tests.dir/sources/builder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/sources/builder.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/Labs/lab-11-process/sources/builder.cpp > CMakeFiles/tests.dir/sources/builder.cpp.i

CMakeFiles/tests.dir/sources/builder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/sources/builder.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/Labs/lab-11-process/sources/builder.cpp -o CMakeFiles/tests.dir/sources/builder.cpp.s

CMakeFiles/tests.dir/sources/builder.cpp.o.requires:

.PHONY : CMakeFiles/tests.dir/sources/builder.cpp.o.requires

CMakeFiles/tests.dir/sources/builder.cpp.o.provides: CMakeFiles/tests.dir/sources/builder.cpp.o.requires
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/sources/builder.cpp.o.provides.build
.PHONY : CMakeFiles/tests.dir/sources/builder.cpp.o.provides

CMakeFiles/tests.dir/sources/builder.cpp.o.provides.build: CMakeFiles/tests.dir/sources/builder.cpp.o


CMakeFiles/tests.dir/sources/main.cpp.o: CMakeFiles/tests.dir/flags.make
CMakeFiles/tests.dir/sources/main.cpp.o: ../../sources/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/Labs/lab-11-process/_builds/gcc-7-cxx17-pic-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tests.dir/sources/main.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/sources/main.cpp.o -c /home/vagrant/Labs/lab-11-process/sources/main.cpp

CMakeFiles/tests.dir/sources/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/sources/main.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/Labs/lab-11-process/sources/main.cpp > CMakeFiles/tests.dir/sources/main.cpp.i

CMakeFiles/tests.dir/sources/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/sources/main.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/Labs/lab-11-process/sources/main.cpp -o CMakeFiles/tests.dir/sources/main.cpp.s

CMakeFiles/tests.dir/sources/main.cpp.o.requires:

.PHONY : CMakeFiles/tests.dir/sources/main.cpp.o.requires

CMakeFiles/tests.dir/sources/main.cpp.o.provides: CMakeFiles/tests.dir/sources/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/sources/main.cpp.o.provides.build
.PHONY : CMakeFiles/tests.dir/sources/main.cpp.o.provides

CMakeFiles/tests.dir/sources/main.cpp.o.provides.build: CMakeFiles/tests.dir/sources/main.cpp.o


# Object files for target tests
tests_OBJECTS = \
"CMakeFiles/tests.dir/sources/builder.cpp.o" \
"CMakeFiles/tests.dir/sources/main.cpp.o"

# External object files for target tests
tests_EXTERNAL_OBJECTS =

tests: CMakeFiles/tests.dir/sources/builder.cpp.o
tests: CMakeFiles/tests.dir/sources/main.cpp.o
tests: CMakeFiles/tests.dir/build.make
tests: /home/vagrant/.hunter/_Base/70287b1/fc9dcb2/dffbc08/Install/lib/libgtest_maind.a
tests: /home/vagrant/.hunter/_Base/70287b1/fc9dcb2/dffbc08/Install/lib/libasync++d.a
tests: /home/vagrant/.hunter/_Base/70287b1/fc9dcb2/dffbc08/Install/lib/libboost_iostreams-mt-d.a
tests: libbuilderd.a
tests: /home/vagrant/.hunter/_Base/70287b1/fc9dcb2/dffbc08/Install/lib/libgtestd.a
tests: /home/vagrant/.hunter/_Base/70287b1/fc9dcb2/dffbc08/Install/lib/libboost_system-mt-d.a
tests: /home/vagrant/.hunter/_Base/70287b1/fc9dcb2/dffbc08/Install/lib/libboost_filesystem-mt-d.a
tests: /home/vagrant/.hunter/_Base/70287b1/fc9dcb2/dffbc08/Install/lib/libasync++d.a
tests: /home/vagrant/.hunter/_Base/70287b1/fc9dcb2/dffbc08/Install/lib/libboost_iostreams-mt-d.a
tests: /home/vagrant/.hunter/_Base/70287b1/fc9dcb2/dffbc08/Install/lib/libzd.a
tests: /home/vagrant/.hunter/_Base/70287b1/fc9dcb2/dffbc08/Install/lib/libbz2d.a
tests: CMakeFiles/tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vagrant/Labs/lab-11-process/_builds/gcc-7-cxx17-pic-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tests.dir/build: tests

.PHONY : CMakeFiles/tests.dir/build

CMakeFiles/tests.dir/requires: CMakeFiles/tests.dir/sources/builder.cpp.o.requires
CMakeFiles/tests.dir/requires: CMakeFiles/tests.dir/sources/main.cpp.o.requires

.PHONY : CMakeFiles/tests.dir/requires

CMakeFiles/tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tests.dir/clean

CMakeFiles/tests.dir/depend:
	cd /home/vagrant/Labs/lab-11-process/_builds/gcc-7-cxx17-pic-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vagrant/Labs/lab-11-process /home/vagrant/Labs/lab-11-process /home/vagrant/Labs/lab-11-process/_builds/gcc-7-cxx17-pic-Debug /home/vagrant/Labs/lab-11-process/_builds/gcc-7-cxx17-pic-Debug /home/vagrant/Labs/lab-11-process/_builds/gcc-7-cxx17-pic-Debug/CMakeFiles/tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tests.dir/depend

