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
CMAKE_SOURCE_DIR = /home/user/hello_cmake/thirdparty/pangolin/Pangolin

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/hello_cmake/thirdparty/pangolin/build

# Include any dependencies generated for this target.
include examples/SimplePlot/CMakeFiles/SimplePlot.dir/depend.make

# Include the progress variables for this target.
include examples/SimplePlot/CMakeFiles/SimplePlot.dir/progress.make

# Include the compile flags for this target's objects.
include examples/SimplePlot/CMakeFiles/SimplePlot.dir/flags.make

examples/SimplePlot/CMakeFiles/SimplePlot.dir/main.cpp.o: examples/SimplePlot/CMakeFiles/SimplePlot.dir/flags.make
examples/SimplePlot/CMakeFiles/SimplePlot.dir/main.cpp.o: /home/user/hello_cmake/thirdparty/pangolin/Pangolin/examples/SimplePlot/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/hello_cmake/thirdparty/pangolin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/SimplePlot/CMakeFiles/SimplePlot.dir/main.cpp.o"
	cd /home/user/hello_cmake/thirdparty/pangolin/build/examples/SimplePlot && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimplePlot.dir/main.cpp.o -c /home/user/hello_cmake/thirdparty/pangolin/Pangolin/examples/SimplePlot/main.cpp

examples/SimplePlot/CMakeFiles/SimplePlot.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimplePlot.dir/main.cpp.i"
	cd /home/user/hello_cmake/thirdparty/pangolin/build/examples/SimplePlot && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/hello_cmake/thirdparty/pangolin/Pangolin/examples/SimplePlot/main.cpp > CMakeFiles/SimplePlot.dir/main.cpp.i

examples/SimplePlot/CMakeFiles/SimplePlot.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimplePlot.dir/main.cpp.s"
	cd /home/user/hello_cmake/thirdparty/pangolin/build/examples/SimplePlot && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/hello_cmake/thirdparty/pangolin/Pangolin/examples/SimplePlot/main.cpp -o CMakeFiles/SimplePlot.dir/main.cpp.s

examples/SimplePlot/CMakeFiles/SimplePlot.dir/main.cpp.o.requires:

.PHONY : examples/SimplePlot/CMakeFiles/SimplePlot.dir/main.cpp.o.requires

examples/SimplePlot/CMakeFiles/SimplePlot.dir/main.cpp.o.provides: examples/SimplePlot/CMakeFiles/SimplePlot.dir/main.cpp.o.requires
	$(MAKE) -f examples/SimplePlot/CMakeFiles/SimplePlot.dir/build.make examples/SimplePlot/CMakeFiles/SimplePlot.dir/main.cpp.o.provides.build
.PHONY : examples/SimplePlot/CMakeFiles/SimplePlot.dir/main.cpp.o.provides

examples/SimplePlot/CMakeFiles/SimplePlot.dir/main.cpp.o.provides.build: examples/SimplePlot/CMakeFiles/SimplePlot.dir/main.cpp.o


# Object files for target SimplePlot
SimplePlot_OBJECTS = \
"CMakeFiles/SimplePlot.dir/main.cpp.o"

# External object files for target SimplePlot
SimplePlot_EXTERNAL_OBJECTS =

examples/SimplePlot/SimplePlot: examples/SimplePlot/CMakeFiles/SimplePlot.dir/main.cpp.o
examples/SimplePlot/SimplePlot: examples/SimplePlot/CMakeFiles/SimplePlot.dir/build.make
examples/SimplePlot/SimplePlot: libpango_plot.so
examples/SimplePlot/SimplePlot: libpango_display.so
examples/SimplePlot/SimplePlot: libpango_windowing.so
examples/SimplePlot/SimplePlot: libpango_opengl.so
examples/SimplePlot/SimplePlot: libpango_image.so
examples/SimplePlot/SimplePlot: /usr/lib/x86_64-linux-gnu/libGLEW.so
examples/SimplePlot/SimplePlot: /usr/lib/x86_64-linux-gnu/libOpenGL.so
examples/SimplePlot/SimplePlot: /usr/lib/x86_64-linux-gnu/libGLX.so
examples/SimplePlot/SimplePlot: /usr/lib/x86_64-linux-gnu/libGLU.so
examples/SimplePlot/SimplePlot: libpango_vars.so
examples/SimplePlot/SimplePlot: libpango_core.so
examples/SimplePlot/SimplePlot: examples/SimplePlot/CMakeFiles/SimplePlot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/hello_cmake/thirdparty/pangolin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SimplePlot"
	cd /home/user/hello_cmake/thirdparty/pangolin/build/examples/SimplePlot && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SimplePlot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/SimplePlot/CMakeFiles/SimplePlot.dir/build: examples/SimplePlot/SimplePlot

.PHONY : examples/SimplePlot/CMakeFiles/SimplePlot.dir/build

examples/SimplePlot/CMakeFiles/SimplePlot.dir/requires: examples/SimplePlot/CMakeFiles/SimplePlot.dir/main.cpp.o.requires

.PHONY : examples/SimplePlot/CMakeFiles/SimplePlot.dir/requires

examples/SimplePlot/CMakeFiles/SimplePlot.dir/clean:
	cd /home/user/hello_cmake/thirdparty/pangolin/build/examples/SimplePlot && $(CMAKE_COMMAND) -P CMakeFiles/SimplePlot.dir/cmake_clean.cmake
.PHONY : examples/SimplePlot/CMakeFiles/SimplePlot.dir/clean

examples/SimplePlot/CMakeFiles/SimplePlot.dir/depend:
	cd /home/user/hello_cmake/thirdparty/pangolin/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/hello_cmake/thirdparty/pangolin/Pangolin /home/user/hello_cmake/thirdparty/pangolin/Pangolin/examples/SimplePlot /home/user/hello_cmake/thirdparty/pangolin/build /home/user/hello_cmake/thirdparty/pangolin/build/examples/SimplePlot /home/user/hello_cmake/thirdparty/pangolin/build/examples/SimplePlot/CMakeFiles/SimplePlot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/SimplePlot/CMakeFiles/SimplePlot.dir/depend

