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
CMAKE_SOURCE_DIR = /home/matt/projects/qt-learning/ultra-qt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/matt/projects/qt-learning/ultra-qt/build

# Utility rule file for all_aotstats.

# Include any custom commands dependencies for this target.
include CMakeFiles/all_aotstats.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/all_aotstats.dir/progress.make

CMakeFiles/all_aotstats: .rcc/qmlcache/all_aotstats.txt
	/usr/bin/cmake -E cat /home/matt/projects/qt-learning/ultra-qt/build/.rcc/qmlcache/all_aotstats.txt

.rcc/qmlcache/all_aotstats.aotstats: .rcc/qmlcache/module_ultra-qt.aotstats
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/matt/projects/qt-learning/ultra-qt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating .rcc/qmlcache/all_aotstats.aotstats, .rcc/qmlcache/all_aotstats.txt"
	/home/matt/Qt/6.8.2/gcc_64/libexec/qmlaotstats aggregate /home/matt/projects/qt-learning/ultra-qt/build/.rcc/qmlcache/all_aotstats.aotstatslist /home/matt/projects/qt-learning/ultra-qt/build/.rcc/qmlcache/all_aotstats.aotstats
	/home/matt/Qt/6.8.2/gcc_64/libexec/qmlaotstats format /home/matt/projects/qt-learning/ultra-qt/build/.rcc/qmlcache/all_aotstats.aotstats /home/matt/projects/qt-learning/ultra-qt/build/.rcc/qmlcache/all_aotstats.txt

.rcc/qmlcache/all_aotstats.txt: .rcc/qmlcache/all_aotstats.aotstats
	@$(CMAKE_COMMAND) -E touch_nocreate .rcc/qmlcache/all_aotstats.txt

all_aotstats: .rcc/qmlcache/all_aotstats.aotstats
all_aotstats: .rcc/qmlcache/all_aotstats.txt
all_aotstats: CMakeFiles/all_aotstats
all_aotstats: CMakeFiles/all_aotstats.dir/build.make
.PHONY : all_aotstats

# Rule to build all files generated by this target.
CMakeFiles/all_aotstats.dir/build: all_aotstats
.PHONY : CMakeFiles/all_aotstats.dir/build

CMakeFiles/all_aotstats.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/all_aotstats.dir/cmake_clean.cmake
.PHONY : CMakeFiles/all_aotstats.dir/clean

CMakeFiles/all_aotstats.dir/depend:
	cd /home/matt/projects/qt-learning/ultra-qt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matt/projects/qt-learning/ultra-qt /home/matt/projects/qt-learning/ultra-qt /home/matt/projects/qt-learning/ultra-qt/build /home/matt/projects/qt-learning/ultra-qt/build /home/matt/projects/qt-learning/ultra-qt/build/CMakeFiles/all_aotstats.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/all_aotstats.dir/depend

