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

# Utility rule file for gui_qmllint.

# Include any custom commands dependencies for this target.
include CMakeFiles/gui_qmllint.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/gui_qmllint.dir/progress.make

CMakeFiles/gui_qmllint: /home/matt/Qt/6.8.2/gcc_64/bin/qmllint
CMakeFiles/gui_qmllint: ../src/Main.qml
CMakeFiles/gui_qmllint: .rcc/qmllint/gui.rsp
	cd /home/matt/projects/qt-learning/ultra-qt && /home/matt/Qt/6.8.2/gcc_64/bin/qmllint @/home/matt/projects/qt-learning/ultra-qt/build/.rcc/qmllint/gui.rsp

gui_qmllint: CMakeFiles/gui_qmllint
gui_qmllint: CMakeFiles/gui_qmllint.dir/build.make
.PHONY : gui_qmllint

# Rule to build all files generated by this target.
CMakeFiles/gui_qmllint.dir/build: gui_qmllint
.PHONY : CMakeFiles/gui_qmllint.dir/build

CMakeFiles/gui_qmllint.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gui_qmllint.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gui_qmllint.dir/clean

CMakeFiles/gui_qmllint.dir/depend:
	cd /home/matt/projects/qt-learning/ultra-qt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matt/projects/qt-learning/ultra-qt /home/matt/projects/qt-learning/ultra-qt /home/matt/projects/qt-learning/ultra-qt/build /home/matt/projects/qt-learning/ultra-qt/build /home/matt/projects/qt-learning/ultra-qt/build/CMakeFiles/gui_qmllint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gui_qmllint.dir/depend

