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
CMAKE_SOURCE_DIR = /home/user/hello_cmake/thirdparty/Eigen3/eigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/hello_cmake/thirdparty/Eigen3/build

# Include any dependencies generated for this target.
include test/CMakeFiles/zerosized.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/zerosized.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/zerosized.dir/flags.make

test/CMakeFiles/zerosized.dir/zerosized.cpp.o: test/CMakeFiles/zerosized.dir/flags.make
test/CMakeFiles/zerosized.dir/zerosized.cpp.o: /home/user/hello_cmake/thirdparty/Eigen3/eigen/test/zerosized.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/hello_cmake/thirdparty/Eigen3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/zerosized.dir/zerosized.cpp.o"
	cd /home/user/hello_cmake/thirdparty/Eigen3/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zerosized.dir/zerosized.cpp.o -c /home/user/hello_cmake/thirdparty/Eigen3/eigen/test/zerosized.cpp

test/CMakeFiles/zerosized.dir/zerosized.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zerosized.dir/zerosized.cpp.i"
	cd /home/user/hello_cmake/thirdparty/Eigen3/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/hello_cmake/thirdparty/Eigen3/eigen/test/zerosized.cpp > CMakeFiles/zerosized.dir/zerosized.cpp.i

test/CMakeFiles/zerosized.dir/zerosized.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zerosized.dir/zerosized.cpp.s"
	cd /home/user/hello_cmake/thirdparty/Eigen3/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/hello_cmake/thirdparty/Eigen3/eigen/test/zerosized.cpp -o CMakeFiles/zerosized.dir/zerosized.cpp.s

test/CMakeFiles/zerosized.dir/zerosized.cpp.o.requires:

.PHONY : test/CMakeFiles/zerosized.dir/zerosized.cpp.o.requires

test/CMakeFiles/zerosized.dir/zerosized.cpp.o.provides: test/CMakeFiles/zerosized.dir/zerosized.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/zerosized.dir/build.make test/CMakeFiles/zerosized.dir/zerosized.cpp.o.provides.build
.PHONY : test/CMakeFiles/zerosized.dir/zerosized.cpp.o.provides

test/CMakeFiles/zerosized.dir/zerosized.cpp.o.provides.build: test/CMakeFiles/zerosized.dir/zerosized.cpp.o


# Object files for target zerosized
zerosized_OBJECTS = \
"CMakeFiles/zerosized.dir/zerosized.cpp.o"

# External object files for target zerosized
zerosized_EXTERNAL_OBJECTS =

test/zerosized: test/CMakeFiles/zerosized.dir/zerosized.cpp.o
test/zerosized: test/CMakeFiles/zerosized.dir/build.make
test/zerosized: test/CMakeFiles/zerosized.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/hello_cmake/thirdparty/Eigen3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable zerosized"
	cd /home/user/hello_cmake/thirdparty/Eigen3/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zerosized.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/zerosized.dir/build: test/zerosized

.PHONY : test/CMakeFiles/zerosized.dir/build

test/CMakeFiles/zerosized.dir/requires: test/CMakeFiles/zerosized.dir/zerosized.cpp.o.requires

.PHONY : test/CMakeFiles/zerosized.dir/requires

test/CMakeFiles/zerosized.dir/clean:
	cd /home/user/hello_cmake/thirdparty/Eigen3/build/test && $(CMAKE_COMMAND) -P CMakeFiles/zerosized.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/zerosized.dir/clean

test/CMakeFiles/zerosized.dir/depend:
	cd /home/user/hello_cmake/thirdparty/Eigen3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/hello_cmake/thirdparty/Eigen3/eigen /home/user/hello_cmake/thirdparty/Eigen3/eigen/test /home/user/hello_cmake/thirdparty/Eigen3/build /home/user/hello_cmake/thirdparty/Eigen3/build/test /home/user/hello_cmake/thirdparty/Eigen3/build/test/CMakeFiles/zerosized.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/zerosized.dir/depend

