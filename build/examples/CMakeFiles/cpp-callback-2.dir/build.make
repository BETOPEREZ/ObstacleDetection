# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/odroid/Documents/ProjectsGit/librealsense

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/odroid/Documents/ProjectsGit/librealsense/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/cpp-callback-2.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/cpp-callback-2.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/cpp-callback-2.dir/flags.make

examples/CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.o: examples/CMakeFiles/cpp-callback-2.dir/flags.make
examples/CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.o: ../examples/cpp-callback-2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/odroid/Documents/ProjectsGit/librealsense/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.o"
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.o -c /home/odroid/Documents/ProjectsGit/librealsense/examples/cpp-callback-2.cpp

examples/CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.i"
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/odroid/Documents/ProjectsGit/librealsense/examples/cpp-callback-2.cpp > CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.i

examples/CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.s"
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/odroid/Documents/ProjectsGit/librealsense/examples/cpp-callback-2.cpp -o CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.s

examples/CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.o.requires:

.PHONY : examples/CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.o.requires

examples/CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.o.provides: examples/CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/cpp-callback-2.dir/build.make examples/CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.o.provides.build
.PHONY : examples/CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.o.provides

examples/CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.o.provides.build: examples/CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.o


# Object files for target cpp-callback-2
cpp__callback__2_OBJECTS = \
"CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.o"

# External object files for target cpp-callback-2
cpp__callback__2_EXTERNAL_OBJECTS =

examples/cpp-callback-2: examples/CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.o
examples/cpp-callback-2: examples/CMakeFiles/cpp-callback-2.dir/build.make
examples/cpp-callback-2: librealsense.so.1.12.1
examples/cpp-callback-2: /usr/lib/arm-linux-gnueabihf/libGLU.so
examples/cpp-callback-2: /usr/lib/arm-linux-gnueabihf/libGL.so
examples/cpp-callback-2: /usr/lib/arm-linux-gnueabihf/libglfw.so
examples/cpp-callback-2: examples/CMakeFiles/cpp-callback-2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/odroid/Documents/ProjectsGit/librealsense/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cpp-callback-2"
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpp-callback-2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/cpp-callback-2.dir/build: examples/cpp-callback-2

.PHONY : examples/CMakeFiles/cpp-callback-2.dir/build

examples/CMakeFiles/cpp-callback-2.dir/requires: examples/CMakeFiles/cpp-callback-2.dir/cpp-callback-2.cpp.o.requires

.PHONY : examples/CMakeFiles/cpp-callback-2.dir/requires

examples/CMakeFiles/cpp-callback-2.dir/clean:
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/cpp-callback-2.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/cpp-callback-2.dir/clean

examples/CMakeFiles/cpp-callback-2.dir/depend:
	cd /home/odroid/Documents/ProjectsGit/librealsense/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/odroid/Documents/ProjectsGit/librealsense /home/odroid/Documents/ProjectsGit/librealsense/examples /home/odroid/Documents/ProjectsGit/librealsense/build /home/odroid/Documents/ProjectsGit/librealsense/build/examples /home/odroid/Documents/ProjectsGit/librealsense/build/examples/CMakeFiles/cpp-callback-2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/cpp-callback-2.dir/depend
