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
CMAKE_COMMAND = /usr/local/Cellar/cmake/2.8.12.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/2.8.12.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/local/Cellar/cmake/2.8.12.2/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon/build

# Include any dependencies generated for this target.
include test/CMakeFiles/max_clique_test.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/max_clique_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/max_clique_test.dir/flags.make

test/CMakeFiles/max_clique_test.dir/max_clique_test.cc.o: test/CMakeFiles/max_clique_test.dir/flags.make
test/CMakeFiles/max_clique_test.dir/max_clique_test.cc.o: ../test/max_clique_test.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/max_clique_test.dir/max_clique_test.cc.o"
	cd /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/max_clique_test.dir/max_clique_test.cc.o -c /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon/test/max_clique_test.cc

test/CMakeFiles/max_clique_test.dir/max_clique_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/max_clique_test.dir/max_clique_test.cc.i"
	cd /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon/test/max_clique_test.cc > CMakeFiles/max_clique_test.dir/max_clique_test.cc.i

test/CMakeFiles/max_clique_test.dir/max_clique_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/max_clique_test.dir/max_clique_test.cc.s"
	cd /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon/test/max_clique_test.cc -o CMakeFiles/max_clique_test.dir/max_clique_test.cc.s

test/CMakeFiles/max_clique_test.dir/max_clique_test.cc.o.requires:
.PHONY : test/CMakeFiles/max_clique_test.dir/max_clique_test.cc.o.requires

test/CMakeFiles/max_clique_test.dir/max_clique_test.cc.o.provides: test/CMakeFiles/max_clique_test.dir/max_clique_test.cc.o.requires
	$(MAKE) -f test/CMakeFiles/max_clique_test.dir/build.make test/CMakeFiles/max_clique_test.dir/max_clique_test.cc.o.provides.build
.PHONY : test/CMakeFiles/max_clique_test.dir/max_clique_test.cc.o.provides

test/CMakeFiles/max_clique_test.dir/max_clique_test.cc.o.provides.build: test/CMakeFiles/max_clique_test.dir/max_clique_test.cc.o

# Object files for target max_clique_test
max_clique_test_OBJECTS = \
"CMakeFiles/max_clique_test.dir/max_clique_test.cc.o"

# External object files for target max_clique_test
max_clique_test_EXTERNAL_OBJECTS =

test/max_clique_test: test/CMakeFiles/max_clique_test.dir/max_clique_test.cc.o
test/max_clique_test: test/CMakeFiles/max_clique_test.dir/build.make
test/max_clique_test: lemon/libemon.a
test/max_clique_test: test/CMakeFiles/max_clique_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable max_clique_test"
	cd /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/max_clique_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/max_clique_test.dir/build: test/max_clique_test
.PHONY : test/CMakeFiles/max_clique_test.dir/build

test/CMakeFiles/max_clique_test.dir/requires: test/CMakeFiles/max_clique_test.dir/max_clique_test.cc.o.requires
.PHONY : test/CMakeFiles/max_clique_test.dir/requires

test/CMakeFiles/max_clique_test.dir/clean:
	cd /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon/build/test && $(CMAKE_COMMAND) -P CMakeFiles/max_clique_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/max_clique_test.dir/clean

test/CMakeFiles/max_clique_test.dir/depend:
	cd /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon/test /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon/build /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon/build/test /Users/hcorrada/Projects/methylFlow/src/methylFlow/lemon/build/test/CMakeFiles/max_clique_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/max_clique_test.dir/depend

