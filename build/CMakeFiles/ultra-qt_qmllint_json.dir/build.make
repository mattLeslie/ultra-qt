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

# Utility rule file for ultra-qt_qmllint_json.

# Include any custom commands dependencies for this target.
include CMakeFiles/ultra-qt_qmllint_json.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ultra-qt_qmllint_json.dir/progress.make

CMakeFiles/ultra-qt_qmllint_json: /home/matt/Qt/6.8.2/gcc_64/bin/qmllint
CMakeFiles/ultra-qt_qmllint_json: ../src/gui/Main.qml
CMakeFiles/ultra-qt_qmllint_json: .rcc/qmllint/ultra-qt_json.rsp
	cd /home/matt/projects/qt-learning/ultra-qt && /home/matt/Qt/6.8.2/gcc_64/bin/qmllint @/home/matt/projects/qt-learning/ultra-qt/build/.rcc/qmllint/ultra-qt_json.rsp

ultra-qt_qmllint_json: CMakeFiles/ultra-qt_qmllint_json
ultra-qt_qmllint_json: CMakeFiles/ultra-qt_qmllint_json.dir/build.make
.PHONY : ultra-qt_qmllint_json

# Rule to build all files generated by this target.
CMakeFiles/ultra-qt_qmllint_json.dir/build: ultra-qt_qmllint_json
.PHONY : CMakeFiles/ultra-qt_qmllint_json.dir/build

CMakeFiles/ultra-qt_qmllint_json.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ultra-qt_qmllint_json.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ultra-qt_qmllint_json.dir/clean

CMakeFiles/ultra-qt_qmllint_json.dir/depend:
	cd /home/matt/projects/qt-learning/ultra-qt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matt/projects/qt-learning/ultra-qt /home/matt/projects/qt-learning/ultra-qt /home/matt/projects/qt-learning/ultra-qt/build /home/matt/projects/qt-learning/ultra-qt/build /home/matt/projects/qt-learning/ultra-qt/build/CMakeFiles/ultra-qt_qmllint_json.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ultra-qt_qmllint_json.dir/depend

