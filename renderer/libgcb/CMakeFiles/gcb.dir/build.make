# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jchen/project/osuflow/trunk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jchen/project/osuflow/trunk

# Include any dependencies generated for this target.
include renderer/libgcb/CMakeFiles/gcb.dir/depend.make

# Include the progress variables for this target.
include renderer/libgcb/CMakeFiles/gcb.dir/progress.make

# Include the compile flags for this target's objects.
include renderer/libgcb/CMakeFiles/gcb.dir/flags.make

renderer/libgcb/CMakeFiles/gcb.dir/gcb.cpp.o: renderer/libgcb/CMakeFiles/gcb.dir/flags.make
renderer/libgcb/CMakeFiles/gcb.dir/gcb.cpp.o: renderer/libgcb/gcb.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jchen/project/osuflow/trunk/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object renderer/libgcb/CMakeFiles/gcb.dir/gcb.cpp.o"
	cd /home/jchen/project/osuflow/trunk/renderer/libgcb && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gcb.dir/gcb.cpp.o -c /home/jchen/project/osuflow/trunk/renderer/libgcb/gcb.cpp

renderer/libgcb/CMakeFiles/gcb.dir/gcb.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gcb.dir/gcb.cpp.i"
	cd /home/jchen/project/osuflow/trunk/renderer/libgcb && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jchen/project/osuflow/trunk/renderer/libgcb/gcb.cpp > CMakeFiles/gcb.dir/gcb.cpp.i

renderer/libgcb/CMakeFiles/gcb.dir/gcb.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gcb.dir/gcb.cpp.s"
	cd /home/jchen/project/osuflow/trunk/renderer/libgcb && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jchen/project/osuflow/trunk/renderer/libgcb/gcb.cpp -o CMakeFiles/gcb.dir/gcb.cpp.s

renderer/libgcb/CMakeFiles/gcb.dir/gcb.cpp.o.requires:
.PHONY : renderer/libgcb/CMakeFiles/gcb.dir/gcb.cpp.o.requires

renderer/libgcb/CMakeFiles/gcb.dir/gcb.cpp.o.provides: renderer/libgcb/CMakeFiles/gcb.dir/gcb.cpp.o.requires
	$(MAKE) -f renderer/libgcb/CMakeFiles/gcb.dir/build.make renderer/libgcb/CMakeFiles/gcb.dir/gcb.cpp.o.provides.build
.PHONY : renderer/libgcb/CMakeFiles/gcb.dir/gcb.cpp.o.provides

renderer/libgcb/CMakeFiles/gcb.dir/gcb.cpp.o.provides.build: renderer/libgcb/CMakeFiles/gcb.dir/gcb.cpp.o

# Object files for target gcb
gcb_OBJECTS = \
"CMakeFiles/gcb.dir/gcb.cpp.o"

# External object files for target gcb
gcb_EXTERNAL_OBJECTS =

renderer/libgcb/libgcb.a: renderer/libgcb/CMakeFiles/gcb.dir/gcb.cpp.o
renderer/libgcb/libgcb.a: renderer/libgcb/CMakeFiles/gcb.dir/build.make
renderer/libgcb/libgcb.a: renderer/libgcb/CMakeFiles/gcb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libgcb.a"
	cd /home/jchen/project/osuflow/trunk/renderer/libgcb && $(CMAKE_COMMAND) -P CMakeFiles/gcb.dir/cmake_clean_target.cmake
	cd /home/jchen/project/osuflow/trunk/renderer/libgcb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gcb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
renderer/libgcb/CMakeFiles/gcb.dir/build: renderer/libgcb/libgcb.a
.PHONY : renderer/libgcb/CMakeFiles/gcb.dir/build

renderer/libgcb/CMakeFiles/gcb.dir/requires: renderer/libgcb/CMakeFiles/gcb.dir/gcb.cpp.o.requires
.PHONY : renderer/libgcb/CMakeFiles/gcb.dir/requires

renderer/libgcb/CMakeFiles/gcb.dir/clean:
	cd /home/jchen/project/osuflow/trunk/renderer/libgcb && $(CMAKE_COMMAND) -P CMakeFiles/gcb.dir/cmake_clean.cmake
.PHONY : renderer/libgcb/CMakeFiles/gcb.dir/clean

renderer/libgcb/CMakeFiles/gcb.dir/depend:
	cd /home/jchen/project/osuflow/trunk && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jchen/project/osuflow/trunk /home/jchen/project/osuflow/trunk/renderer/libgcb /home/jchen/project/osuflow/trunk /home/jchen/project/osuflow/trunk/renderer/libgcb /home/jchen/project/osuflow/trunk/renderer/libgcb/CMakeFiles/gcb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : renderer/libgcb/CMakeFiles/gcb.dir/depend

