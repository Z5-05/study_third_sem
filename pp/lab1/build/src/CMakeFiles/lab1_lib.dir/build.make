# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ilya/study/pp/lab1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilya/study/pp/lab1/build

# Include any dependencies generated for this target.
include src/CMakeFiles/lab1_lib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/lab1_lib.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/lab1_lib.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/lab1_lib.dir/flags.make

src/CMakeFiles/lab1_lib.dir/stack_lf.cpp.o: src/CMakeFiles/lab1_lib.dir/flags.make
src/CMakeFiles/lab1_lib.dir/stack_lf.cpp.o: ../src/stack_lf.cpp
src/CMakeFiles/lab1_lib.dir/stack_lf.cpp.o: src/CMakeFiles/lab1_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilya/study/pp/lab1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/lab1_lib.dir/stack_lf.cpp.o"
	cd /home/ilya/study/pp/lab1/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/lab1_lib.dir/stack_lf.cpp.o -MF CMakeFiles/lab1_lib.dir/stack_lf.cpp.o.d -o CMakeFiles/lab1_lib.dir/stack_lf.cpp.o -c /home/ilya/study/pp/lab1/src/stack_lf.cpp

src/CMakeFiles/lab1_lib.dir/stack_lf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab1_lib.dir/stack_lf.cpp.i"
	cd /home/ilya/study/pp/lab1/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilya/study/pp/lab1/src/stack_lf.cpp > CMakeFiles/lab1_lib.dir/stack_lf.cpp.i

src/CMakeFiles/lab1_lib.dir/stack_lf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab1_lib.dir/stack_lf.cpp.s"
	cd /home/ilya/study/pp/lab1/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilya/study/pp/lab1/src/stack_lf.cpp -o CMakeFiles/lab1_lib.dir/stack_lf.cpp.s

# Object files for target lab1_lib
lab1_lib_OBJECTS = \
"CMakeFiles/lab1_lib.dir/stack_lf.cpp.o"

# External object files for target lab1_lib
lab1_lib_EXTERNAL_OBJECTS =

src/liblab1_lib.a: src/CMakeFiles/lab1_lib.dir/stack_lf.cpp.o
src/liblab1_lib.a: src/CMakeFiles/lab1_lib.dir/build.make
src/liblab1_lib.a: src/CMakeFiles/lab1_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ilya/study/pp/lab1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblab1_lib.a"
	cd /home/ilya/study/pp/lab1/build/src && $(CMAKE_COMMAND) -P CMakeFiles/lab1_lib.dir/cmake_clean_target.cmake
	cd /home/ilya/study/pp/lab1/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab1_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/lab1_lib.dir/build: src/liblab1_lib.a
.PHONY : src/CMakeFiles/lab1_lib.dir/build

src/CMakeFiles/lab1_lib.dir/clean:
	cd /home/ilya/study/pp/lab1/build/src && $(CMAKE_COMMAND) -P CMakeFiles/lab1_lib.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/lab1_lib.dir/clean

src/CMakeFiles/lab1_lib.dir/depend:
	cd /home/ilya/study/pp/lab1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilya/study/pp/lab1 /home/ilya/study/pp/lab1/src /home/ilya/study/pp/lab1/build /home/ilya/study/pp/lab1/build/src /home/ilya/study/pp/lab1/build/src/CMakeFiles/lab1_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/lab1_lib.dir/depend

