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
include unit-tests/CMakeFiles/R200-live-test.dir/depend.make

# Include the progress variables for this target.
include unit-tests/CMakeFiles/R200-live-test.dir/progress.make

# Include the compile flags for this target's objects.
include unit-tests/CMakeFiles/R200-live-test.dir/flags.make

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.o: unit-tests/CMakeFiles/R200-live-test.dir/flags.make
unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.o: ../unit-tests/unit-tests-live.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/odroid/Documents/ProjectsGit/librealsense/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.o"
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/unit-tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.o -c /home/odroid/Documents/ProjectsGit/librealsense/unit-tests/unit-tests-live.cpp

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.i"
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/unit-tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/odroid/Documents/ProjectsGit/librealsense/unit-tests/unit-tests-live.cpp > CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.i

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.s"
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/unit-tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/odroid/Documents/ProjectsGit/librealsense/unit-tests/unit-tests-live.cpp -o CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.s

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.o.requires:

.PHONY : unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.o.requires

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.o.provides: unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.o.requires
	$(MAKE) -f unit-tests/CMakeFiles/R200-live-test.dir/build.make unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.o.provides.build
.PHONY : unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.o.provides

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.o.provides.build: unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.o


unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.o: unit-tests/CMakeFiles/R200-live-test.dir/flags.make
unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.o: ../unit-tests/unit-tests-live-ds-common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/odroid/Documents/ProjectsGit/librealsense/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.o"
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/unit-tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.o -c /home/odroid/Documents/ProjectsGit/librealsense/unit-tests/unit-tests-live-ds-common.cpp

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.i"
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/unit-tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/odroid/Documents/ProjectsGit/librealsense/unit-tests/unit-tests-live-ds-common.cpp > CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.i

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.s"
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/unit-tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/odroid/Documents/ProjectsGit/librealsense/unit-tests/unit-tests-live-ds-common.cpp -o CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.s

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.o.requires:

.PHONY : unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.o.requires

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.o.provides: unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.o.requires
	$(MAKE) -f unit-tests/CMakeFiles/R200-live-test.dir/build.make unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.o.provides.build
.PHONY : unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.o.provides

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.o.provides.build: unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.o


unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.o: unit-tests/CMakeFiles/R200-live-test.dir/flags.make
unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.o: ../unit-tests/unit-tests-live-r200.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/odroid/Documents/ProjectsGit/librealsense/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.o"
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/unit-tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.o -c /home/odroid/Documents/ProjectsGit/librealsense/unit-tests/unit-tests-live-r200.cpp

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.i"
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/unit-tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/odroid/Documents/ProjectsGit/librealsense/unit-tests/unit-tests-live-r200.cpp > CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.i

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.s"
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/unit-tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/odroid/Documents/ProjectsGit/librealsense/unit-tests/unit-tests-live-r200.cpp -o CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.s

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.o.requires:

.PHONY : unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.o.requires

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.o.provides: unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.o.requires
	$(MAKE) -f unit-tests/CMakeFiles/R200-live-test.dir/build.make unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.o.provides.build
.PHONY : unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.o.provides

unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.o.provides.build: unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.o


# Object files for target R200-live-test
R200__live__test_OBJECTS = \
"CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.o" \
"CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.o" \
"CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.o"

# External object files for target R200-live-test
R200__live__test_EXTERNAL_OBJECTS =

unit-tests/R200-live-test: unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.o
unit-tests/R200-live-test: unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.o
unit-tests/R200-live-test: unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.o
unit-tests/R200-live-test: unit-tests/CMakeFiles/R200-live-test.dir/build.make
unit-tests/R200-live-test: librealsense.so.1.12.1
unit-tests/R200-live-test: unit-tests/CMakeFiles/R200-live-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/odroid/Documents/ProjectsGit/librealsense/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable R200-live-test"
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/unit-tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/R200-live-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unit-tests/CMakeFiles/R200-live-test.dir/build: unit-tests/R200-live-test

.PHONY : unit-tests/CMakeFiles/R200-live-test.dir/build

unit-tests/CMakeFiles/R200-live-test.dir/requires: unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live.cpp.o.requires
unit-tests/CMakeFiles/R200-live-test.dir/requires: unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-ds-common.cpp.o.requires
unit-tests/CMakeFiles/R200-live-test.dir/requires: unit-tests/CMakeFiles/R200-live-test.dir/unit-tests-live-r200.cpp.o.requires

.PHONY : unit-tests/CMakeFiles/R200-live-test.dir/requires

unit-tests/CMakeFiles/R200-live-test.dir/clean:
	cd /home/odroid/Documents/ProjectsGit/librealsense/build/unit-tests && $(CMAKE_COMMAND) -P CMakeFiles/R200-live-test.dir/cmake_clean.cmake
.PHONY : unit-tests/CMakeFiles/R200-live-test.dir/clean

unit-tests/CMakeFiles/R200-live-test.dir/depend:
	cd /home/odroid/Documents/ProjectsGit/librealsense/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/odroid/Documents/ProjectsGit/librealsense /home/odroid/Documents/ProjectsGit/librealsense/unit-tests /home/odroid/Documents/ProjectsGit/librealsense/build /home/odroid/Documents/ProjectsGit/librealsense/build/unit-tests /home/odroid/Documents/ProjectsGit/librealsense/build/unit-tests/CMakeFiles/R200-live-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unit-tests/CMakeFiles/R200-live-test.dir/depend

