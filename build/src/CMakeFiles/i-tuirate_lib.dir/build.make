# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /nix/store/ih9mk4l2rr9sd10rkmyjm38fn2ysypl0-cmake-3.27.7/bin/cmake

# The command to remove a file.
RM = /nix/store/ih9mk4l2rr9sd10rkmyjm38fn2ysypl0-cmake-3.27.7/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vvcaw/dev/i-tuirate

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vvcaw/dev/i-tuirate/build

# Include any dependencies generated for this target.
include src/CMakeFiles/i-tuirate_lib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/i-tuirate_lib.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/i-tuirate_lib.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/i-tuirate_lib.dir/flags.make

src/CMakeFiles/i-tuirate_lib.dir/ui.cpp.o: src/CMakeFiles/i-tuirate_lib.dir/flags.make
src/CMakeFiles/i-tuirate_lib.dir/ui.cpp.o: /home/vvcaw/dev/i-tuirate/src/ui.cpp
src/CMakeFiles/i-tuirate_lib.dir/ui.cpp.o: src/CMakeFiles/i-tuirate_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vvcaw/dev/i-tuirate/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/i-tuirate_lib.dir/ui.cpp.o"
	cd /home/vvcaw/dev/i-tuirate/build/src && /nix/store/d39m8arbjw7x079cvxf4xq6a1p9iql3q-clang-wrapper-16.0.6/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/i-tuirate_lib.dir/ui.cpp.o -MF CMakeFiles/i-tuirate_lib.dir/ui.cpp.o.d -o CMakeFiles/i-tuirate_lib.dir/ui.cpp.o -c /home/vvcaw/dev/i-tuirate/src/ui.cpp

src/CMakeFiles/i-tuirate_lib.dir/ui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/i-tuirate_lib.dir/ui.cpp.i"
	cd /home/vvcaw/dev/i-tuirate/build/src && /nix/store/d39m8arbjw7x079cvxf4xq6a1p9iql3q-clang-wrapper-16.0.6/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vvcaw/dev/i-tuirate/src/ui.cpp > CMakeFiles/i-tuirate_lib.dir/ui.cpp.i

src/CMakeFiles/i-tuirate_lib.dir/ui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/i-tuirate_lib.dir/ui.cpp.s"
	cd /home/vvcaw/dev/i-tuirate/build/src && /nix/store/d39m8arbjw7x079cvxf4xq6a1p9iql3q-clang-wrapper-16.0.6/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vvcaw/dev/i-tuirate/src/ui.cpp -o CMakeFiles/i-tuirate_lib.dir/ui.cpp.s

# Object files for target i-tuirate_lib
i__tuirate_lib_OBJECTS = \
"CMakeFiles/i-tuirate_lib.dir/ui.cpp.o"

# External object files for target i-tuirate_lib
i__tuirate_lib_EXTERNAL_OBJECTS =

src/libi-tuirate_lib.a: src/CMakeFiles/i-tuirate_lib.dir/ui.cpp.o
src/libi-tuirate_lib.a: src/CMakeFiles/i-tuirate_lib.dir/build.make
src/libi-tuirate_lib.a: src/CMakeFiles/i-tuirate_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/vvcaw/dev/i-tuirate/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libi-tuirate_lib.a"
	cd /home/vvcaw/dev/i-tuirate/build/src && $(CMAKE_COMMAND) -P CMakeFiles/i-tuirate_lib.dir/cmake_clean_target.cmake
	cd /home/vvcaw/dev/i-tuirate/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/i-tuirate_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/i-tuirate_lib.dir/build: src/libi-tuirate_lib.a
.PHONY : src/CMakeFiles/i-tuirate_lib.dir/build

src/CMakeFiles/i-tuirate_lib.dir/clean:
	cd /home/vvcaw/dev/i-tuirate/build/src && $(CMAKE_COMMAND) -P CMakeFiles/i-tuirate_lib.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/i-tuirate_lib.dir/clean

src/CMakeFiles/i-tuirate_lib.dir/depend:
	cd /home/vvcaw/dev/i-tuirate/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vvcaw/dev/i-tuirate /home/vvcaw/dev/i-tuirate/src /home/vvcaw/dev/i-tuirate/build /home/vvcaw/dev/i-tuirate/build/src /home/vvcaw/dev/i-tuirate/build/src/CMakeFiles/i-tuirate_lib.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/i-tuirate_lib.dir/depend

