# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_BINARY_DIR = /home/vagrant/Labs/lab-11-process/_builds

# Include any dependencies generated for this target.
include CMakeFiles/builder.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/builder.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/builder.dir/flags.make

CMakeFiles/builder.dir/sources/builder.cpp.o: CMakeFiles/builder.dir/flags.make
CMakeFiles/builder.dir/sources/builder.cpp.o: ../sources/builder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/Labs/lab-11-process/_builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/builder.dir/sources/builder.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/builder.dir/sources/builder.cpp.o -c /home/vagrant/Labs/lab-11-process/sources/builder.cpp

CMakeFiles/builder.dir/sources/builder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/builder.dir/sources/builder.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/Labs/lab-11-process/sources/builder.cpp > CMakeFiles/builder.dir/sources/builder.cpp.i

CMakeFiles/builder.dir/sources/builder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/builder.dir/sources/builder.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/Labs/lab-11-process/sources/builder.cpp -o CMakeFiles/builder.dir/sources/builder.cpp.s

CMakeFiles/builder.dir/sources/main.cpp.o: CMakeFiles/builder.dir/flags.make
CMakeFiles/builder.dir/sources/main.cpp.o: ../sources/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/Labs/lab-11-process/_builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/builder.dir/sources/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/builder.dir/sources/main.cpp.o -c /home/vagrant/Labs/lab-11-process/sources/main.cpp

CMakeFiles/builder.dir/sources/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/builder.dir/sources/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/Labs/lab-11-process/sources/main.cpp > CMakeFiles/builder.dir/sources/main.cpp.i

CMakeFiles/builder.dir/sources/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/builder.dir/sources/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/Labs/lab-11-process/sources/main.cpp -o CMakeFiles/builder.dir/sources/main.cpp.s

# Object files for target builder
builder_OBJECTS = \
"CMakeFiles/builder.dir/sources/builder.cpp.o" \
"CMakeFiles/builder.dir/sources/main.cpp.o"

# External object files for target builder
builder_EXTERNAL_OBJECTS =

builder: CMakeFiles/builder.dir/sources/builder.cpp.o
builder: CMakeFiles/builder.dir/sources/main.cpp.o
builder: CMakeFiles/builder.dir/build.make
builder: /home/vagrant/.hunter/_Base/70287b1/3ecadcb/dffbc08/Install/lib/libgtest_maind.a
builder: /home/vagrant/.hunter/_Base/70287b1/3ecadcb/dffbc08/Install/lib/libboost_program_options-mt-d.a
builder: /home/vagrant/.hunter/_Base/70287b1/3ecadcb/dffbc08/Install/lib/libasync++d.a
builder: /home/vagrant/.hunter/_Base/70287b1/3ecadcb/dffbc08/Install/lib/libboost_iostreams-mt-d.a
builder: libprocessd.a
builder: /home/vagrant/.hunter/_Base/70287b1/3ecadcb/dffbc08/Install/lib/libgtestd.a
builder: /home/vagrant/.hunter/_Base/70287b1/3ecadcb/dffbc08/Install/lib/libboost_system-mt-d.a
builder: /home/vagrant/.hunter/_Base/70287b1/3ecadcb/dffbc08/Install/lib/libboost_filesystem-mt-d.a
builder: /home/vagrant/.hunter/_Base/70287b1/3ecadcb/dffbc08/Install/lib/libboost_program_options-mt-d.a
builder: /home/vagrant/.hunter/_Base/70287b1/3ecadcb/dffbc08/Install/lib/libasync++d.a
builder: /home/vagrant/.hunter/_Base/70287b1/3ecadcb/dffbc08/Install/lib/libboost_iostreams-mt-d.a
builder: /home/vagrant/.hunter/_Base/70287b1/3ecadcb/dffbc08/Install/lib/libzd.a
builder: /home/vagrant/.hunter/_Base/70287b1/3ecadcb/dffbc08/Install/lib/libbz2d.a
builder: CMakeFiles/builder.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vagrant/Labs/lab-11-process/_builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable builder"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/builder.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/builder.dir/build: builder

.PHONY : CMakeFiles/builder.dir/build

CMakeFiles/builder.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/builder.dir/cmake_clean.cmake
.PHONY : CMakeFiles/builder.dir/clean

CMakeFiles/builder.dir/depend:
	cd /home/vagrant/Labs/lab-11-process/_builds && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vagrant/Labs/lab-11-process /home/vagrant/Labs/lab-11-process /home/vagrant/Labs/lab-11-process/_builds /home/vagrant/Labs/lab-11-process/_builds /home/vagrant/Labs/lab-11-process/_builds/CMakeFiles/builder.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/builder.dir/depend

