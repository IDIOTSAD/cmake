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
include test/CMakeFiles/vectorization_logic_2.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/vectorization_logic_2.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/vectorization_logic_2.dir/flags.make

test/CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.o: test/CMakeFiles/vectorization_logic_2.dir/flags.make
test/CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.o: /home/user/hello_cmake/thirdparty/Eigen3/eigen/test/vectorization_logic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/hello_cmake/thirdparty/Eigen3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.o"
	cd /home/user/hello_cmake/thirdparty/Eigen3/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.o -c /home/user/hello_cmake/thirdparty/Eigen3/eigen/test/vectorization_logic.cpp

test/CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.i"
	cd /home/user/hello_cmake/thirdparty/Eigen3/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/hello_cmake/thirdparty/Eigen3/eigen/test/vectorization_logic.cpp > CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.i

test/CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.s"
	cd /home/user/hello_cmake/thirdparty/Eigen3/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/hello_cmake/thirdparty/Eigen3/eigen/test/vectorization_logic.cpp -o CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.s

test/CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.o.requires:

.PHONY : test/CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.o.requires

test/CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.o.provides: test/CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/vectorization_logic_2.dir/build.make test/CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.o.provides.build
.PHONY : test/CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.o.provides

test/CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.o.provides.build: test/CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.o


# Object files for target vectorization_logic_2
vectorization_logic_2_OBJECTS = \
"CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.o"

# External object files for target vectorization_logic_2
vectorization_logic_2_EXTERNAL_OBJECTS =

test/vectorization_logic_2: test/CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.o
test/vectorization_logic_2: test/CMakeFiles/vectorization_logic_2.dir/build.make
test/vectorization_logic_2: test/CMakeFiles/vectorization_logic_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/hello_cmake/thirdparty/Eigen3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable vectorization_logic_2"
	cd /home/user/hello_cmake/thirdparty/Eigen3/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vectorization_logic_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/vectorization_logic_2.dir/build: test/vectorization_logic_2

.PHONY : test/CMakeFiles/vectorization_logic_2.dir/build

test/CMakeFiles/vectorization_logic_2.dir/requires: test/CMakeFiles/vectorization_logic_2.dir/vectorization_logic.cpp.o.requires

.PHONY : test/CMakeFiles/vectorization_logic_2.dir/requires

test/CMakeFiles/vectorization_logic_2.dir/clean:
	cd /home/user/hello_cmake/thirdparty/Eigen3/build/test && $(CMAKE_COMMAND) -P CMakeFiles/vectorization_logic_2.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/vectorization_logic_2.dir/clean

test/CMakeFiles/vectorization_logic_2.dir/depend:
	cd /home/user/hello_cmake/thirdparty/Eigen3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/hello_cmake/thirdparty/Eigen3/eigen /home/user/hello_cmake/thirdparty/Eigen3/eigen/test /home/user/hello_cmake/thirdparty/Eigen3/build /home/user/hello_cmake/thirdparty/Eigen3/build/test /home/user/hello_cmake/thirdparty/Eigen3/build/test/CMakeFiles/vectorization_logic_2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/vectorization_logic_2.dir/depend

