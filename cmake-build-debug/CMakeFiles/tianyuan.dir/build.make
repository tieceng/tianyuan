# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tiechenglong/code/tianyuan

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tiechenglong/code/tianyuan/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/tianyuan.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tianyuan.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tianyuan.dir/flags.make

CMakeFiles/tianyuan.dir/main.cpp.o: CMakeFiles/tianyuan.dir/flags.make
CMakeFiles/tianyuan.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tiechenglong/code/tianyuan/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tianyuan.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tianyuan.dir/main.cpp.o -c /Users/tiechenglong/code/tianyuan/main.cpp

CMakeFiles/tianyuan.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tianyuan.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tiechenglong/code/tianyuan/main.cpp > CMakeFiles/tianyuan.dir/main.cpp.i

CMakeFiles/tianyuan.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tianyuan.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tiechenglong/code/tianyuan/main.cpp -o CMakeFiles/tianyuan.dir/main.cpp.s

# Object files for target tianyuan
tianyuan_OBJECTS = \
"CMakeFiles/tianyuan.dir/main.cpp.o"

# External object files for target tianyuan
tianyuan_EXTERNAL_OBJECTS =

tianyuan: CMakeFiles/tianyuan.dir/main.cpp.o
tianyuan: CMakeFiles/tianyuan.dir/build.make
tianyuan: CMakeFiles/tianyuan.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tiechenglong/code/tianyuan/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tianyuan"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tianyuan.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tianyuan.dir/build: tianyuan

.PHONY : CMakeFiles/tianyuan.dir/build

CMakeFiles/tianyuan.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tianyuan.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tianyuan.dir/clean

CMakeFiles/tianyuan.dir/depend:
	cd /Users/tiechenglong/code/tianyuan/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tiechenglong/code/tianyuan /Users/tiechenglong/code/tianyuan /Users/tiechenglong/code/tianyuan/cmake-build-debug /Users/tiechenglong/code/tianyuan/cmake-build-debug /Users/tiechenglong/code/tianyuan/cmake-build-debug/CMakeFiles/tianyuan.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tianyuan.dir/depend

