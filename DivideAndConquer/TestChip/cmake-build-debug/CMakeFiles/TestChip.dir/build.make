# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /home/chy/下载/clion-2017.2.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/chy/下载/clion-2017.2.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chy/Project/C++/Algorithm/Algorithm/DivideAndConquer/TestChip

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chy/Project/C++/Algorithm/Algorithm/DivideAndConquer/TestChip/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/TestChip.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TestChip.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TestChip.dir/flags.make

CMakeFiles/TestChip.dir/main.cpp.o: CMakeFiles/TestChip.dir/flags.make
CMakeFiles/TestChip.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chy/Project/C++/Algorithm/Algorithm/DivideAndConquer/TestChip/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TestChip.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestChip.dir/main.cpp.o -c /home/chy/Project/C++/Algorithm/Algorithm/DivideAndConquer/TestChip/main.cpp

CMakeFiles/TestChip.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestChip.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chy/Project/C++/Algorithm/Algorithm/DivideAndConquer/TestChip/main.cpp > CMakeFiles/TestChip.dir/main.cpp.i

CMakeFiles/TestChip.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestChip.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chy/Project/C++/Algorithm/Algorithm/DivideAndConquer/TestChip/main.cpp -o CMakeFiles/TestChip.dir/main.cpp.s

CMakeFiles/TestChip.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/TestChip.dir/main.cpp.o.requires

CMakeFiles/TestChip.dir/main.cpp.o.provides: CMakeFiles/TestChip.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/TestChip.dir/build.make CMakeFiles/TestChip.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/TestChip.dir/main.cpp.o.provides

CMakeFiles/TestChip.dir/main.cpp.o.provides.build: CMakeFiles/TestChip.dir/main.cpp.o


# Object files for target TestChip
TestChip_OBJECTS = \
"CMakeFiles/TestChip.dir/main.cpp.o"

# External object files for target TestChip
TestChip_EXTERNAL_OBJECTS =

TestChip: CMakeFiles/TestChip.dir/main.cpp.o
TestChip: CMakeFiles/TestChip.dir/build.make
TestChip: CMakeFiles/TestChip.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chy/Project/C++/Algorithm/Algorithm/DivideAndConquer/TestChip/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TestChip"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestChip.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TestChip.dir/build: TestChip

.PHONY : CMakeFiles/TestChip.dir/build

CMakeFiles/TestChip.dir/requires: CMakeFiles/TestChip.dir/main.cpp.o.requires

.PHONY : CMakeFiles/TestChip.dir/requires

CMakeFiles/TestChip.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TestChip.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TestChip.dir/clean

CMakeFiles/TestChip.dir/depend:
	cd /home/chy/Project/C++/Algorithm/Algorithm/DivideAndConquer/TestChip/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chy/Project/C++/Algorithm/Algorithm/DivideAndConquer/TestChip /home/chy/Project/C++/Algorithm/Algorithm/DivideAndConquer/TestChip /home/chy/Project/C++/Algorithm/Algorithm/DivideAndConquer/TestChip/cmake-build-debug /home/chy/Project/C++/Algorithm/Algorithm/DivideAndConquer/TestChip/cmake-build-debug /home/chy/Project/C++/Algorithm/Algorithm/DivideAndConquer/TestChip/cmake-build-debug/CMakeFiles/TestChip.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TestChip.dir/depend

