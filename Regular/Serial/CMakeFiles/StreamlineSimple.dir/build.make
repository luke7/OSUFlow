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
include Regular/Serial/CMakeFiles/StreamlineSimple.dir/depend.make

# Include the progress variables for this target.
include Regular/Serial/CMakeFiles/StreamlineSimple.dir/progress.make

# Include the compile flags for this target's objects.
include Regular/Serial/CMakeFiles/StreamlineSimple.dir/flags.make

Regular/Serial/CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.o: Regular/Serial/CMakeFiles/StreamlineSimple.dir/flags.make
Regular/Serial/CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.o: Regular/Serial/StreamlineSimple.C
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jchen/project/osuflow/trunk/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Regular/Serial/CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.o"
	cd /home/jchen/project/osuflow/trunk/Regular/Serial && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.o -c /home/jchen/project/osuflow/trunk/Regular/Serial/StreamlineSimple.C

Regular/Serial/CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.i"
	cd /home/jchen/project/osuflow/trunk/Regular/Serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jchen/project/osuflow/trunk/Regular/Serial/StreamlineSimple.C > CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.i

Regular/Serial/CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.s"
	cd /home/jchen/project/osuflow/trunk/Regular/Serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jchen/project/osuflow/trunk/Regular/Serial/StreamlineSimple.C -o CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.s

Regular/Serial/CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.o.requires:
.PHONY : Regular/Serial/CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.o.requires

Regular/Serial/CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.o.provides: Regular/Serial/CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.o.requires
	$(MAKE) -f Regular/Serial/CMakeFiles/StreamlineSimple.dir/build.make Regular/Serial/CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.o.provides.build
.PHONY : Regular/Serial/CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.o.provides

Regular/Serial/CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.o.provides.build: Regular/Serial/CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.o

# Object files for target StreamlineSimple
StreamlineSimple_OBJECTS = \
"CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.o"

# External object files for target StreamlineSimple
StreamlineSimple_EXTERNAL_OBJECTS =

Regular/Serial/StreamlineSimple: Regular/Serial/CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.o
Regular/Serial/StreamlineSimple: renderer/librenderer.a
Regular/Serial/StreamlineSimple: renderer/libgcb/libgcb.a
Regular/Serial/StreamlineSimple: src/libOSUFlow.a
Regular/Serial/StreamlineSimple: Regular/Serial/CMakeFiles/StreamlineSimple.dir/build.make
Regular/Serial/StreamlineSimple: Regular/Serial/CMakeFiles/StreamlineSimple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable StreamlineSimple"
	cd /home/jchen/project/osuflow/trunk/Regular/Serial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/StreamlineSimple.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Regular/Serial/CMakeFiles/StreamlineSimple.dir/build: Regular/Serial/StreamlineSimple
.PHONY : Regular/Serial/CMakeFiles/StreamlineSimple.dir/build

Regular/Serial/CMakeFiles/StreamlineSimple.dir/requires: Regular/Serial/CMakeFiles/StreamlineSimple.dir/StreamlineSimple.C.o.requires
.PHONY : Regular/Serial/CMakeFiles/StreamlineSimple.dir/requires

Regular/Serial/CMakeFiles/StreamlineSimple.dir/clean:
	cd /home/jchen/project/osuflow/trunk/Regular/Serial && $(CMAKE_COMMAND) -P CMakeFiles/StreamlineSimple.dir/cmake_clean.cmake
.PHONY : Regular/Serial/CMakeFiles/StreamlineSimple.dir/clean

Regular/Serial/CMakeFiles/StreamlineSimple.dir/depend:
	cd /home/jchen/project/osuflow/trunk && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jchen/project/osuflow/trunk /home/jchen/project/osuflow/trunk/Regular/Serial /home/jchen/project/osuflow/trunk /home/jchen/project/osuflow/trunk/Regular/Serial /home/jchen/project/osuflow/trunk/Regular/Serial/CMakeFiles/StreamlineSimple.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Regular/Serial/CMakeFiles/StreamlineSimple.dir/depend

