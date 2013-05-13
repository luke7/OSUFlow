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
include renderer/examples/CMakeFiles/gcbFileRenderer.dir/depend.make

# Include the progress variables for this target.
include renderer/examples/CMakeFiles/gcbFileRenderer.dir/progress.make

# Include the compile flags for this target's objects.
include renderer/examples/CMakeFiles/gcbFileRenderer.dir/flags.make

renderer/examples/CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.o: renderer/examples/CMakeFiles/gcbFileRenderer.dir/flags.make
renderer/examples/CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.o: renderer/examples/gcbFileRenderer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jchen/project/osuflow/trunk/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object renderer/examples/CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.o"
	cd /home/jchen/project/osuflow/trunk/renderer/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.o -c /home/jchen/project/osuflow/trunk/renderer/examples/gcbFileRenderer.cpp

renderer/examples/CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.i"
	cd /home/jchen/project/osuflow/trunk/renderer/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jchen/project/osuflow/trunk/renderer/examples/gcbFileRenderer.cpp > CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.i

renderer/examples/CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.s"
	cd /home/jchen/project/osuflow/trunk/renderer/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jchen/project/osuflow/trunk/renderer/examples/gcbFileRenderer.cpp -o CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.s

renderer/examples/CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.o.requires:
.PHONY : renderer/examples/CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.o.requires

renderer/examples/CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.o.provides: renderer/examples/CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.o.requires
	$(MAKE) -f renderer/examples/CMakeFiles/gcbFileRenderer.dir/build.make renderer/examples/CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.o.provides.build
.PHONY : renderer/examples/CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.o.provides

renderer/examples/CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.o.provides.build: renderer/examples/CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.o

# Object files for target gcbFileRenderer
gcbFileRenderer_OBJECTS = \
"CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.o"

# External object files for target gcbFileRenderer
gcbFileRenderer_EXTERNAL_OBJECTS =

renderer/examples/gcbFileRenderer: renderer/examples/CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.o
renderer/examples/gcbFileRenderer: renderer/librenderer.a
renderer/examples/gcbFileRenderer: src/libOSUFlow.a
renderer/examples/gcbFileRenderer: renderer/libgcb/libgcb.a
renderer/examples/gcbFileRenderer: renderer/examples/CMakeFiles/gcbFileRenderer.dir/build.make
renderer/examples/gcbFileRenderer: renderer/examples/CMakeFiles/gcbFileRenderer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable gcbFileRenderer"
	cd /home/jchen/project/osuflow/trunk/renderer/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gcbFileRenderer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
renderer/examples/CMakeFiles/gcbFileRenderer.dir/build: renderer/examples/gcbFileRenderer
.PHONY : renderer/examples/CMakeFiles/gcbFileRenderer.dir/build

renderer/examples/CMakeFiles/gcbFileRenderer.dir/requires: renderer/examples/CMakeFiles/gcbFileRenderer.dir/gcbFileRenderer.cpp.o.requires
.PHONY : renderer/examples/CMakeFiles/gcbFileRenderer.dir/requires

renderer/examples/CMakeFiles/gcbFileRenderer.dir/clean:
	cd /home/jchen/project/osuflow/trunk/renderer/examples && $(CMAKE_COMMAND) -P CMakeFiles/gcbFileRenderer.dir/cmake_clean.cmake
.PHONY : renderer/examples/CMakeFiles/gcbFileRenderer.dir/clean

renderer/examples/CMakeFiles/gcbFileRenderer.dir/depend:
	cd /home/jchen/project/osuflow/trunk && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jchen/project/osuflow/trunk /home/jchen/project/osuflow/trunk/renderer/examples /home/jchen/project/osuflow/trunk /home/jchen/project/osuflow/trunk/renderer/examples /home/jchen/project/osuflow/trunk/renderer/examples/CMakeFiles/gcbFileRenderer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : renderer/examples/CMakeFiles/gcbFileRenderer.dir/depend

