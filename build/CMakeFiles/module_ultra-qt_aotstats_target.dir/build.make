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

# Utility rule file for module_ultra-qt_aotstats_target.

# Include any custom commands dependencies for this target.
include CMakeFiles/module_ultra-qt_aotstats_target.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/module_ultra-qt_aotstats_target.dir/progress.make

CMakeFiles/module_ultra-qt_aotstats_target: .rcc/qmlcache/module_ultra-qt.aotstats

.rcc/qmlcache/module_ultra-qt.aotstats: .rcc/qmlcache/ultra-qt_src/gui/Main_qml.cpp.aotstats
.rcc/qmlcache/module_ultra-qt.aotstats: .rcc/qmlcache/module_ultra-qt.aotstatslist
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/matt/projects/qt-learning/ultra-qt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating .rcc/qmlcache/module_ultra-qt.aotstats"
	/home/matt/Qt/6.8.2/gcc_64/libexec/qmlaotstats aggregate /home/matt/projects/qt-learning/ultra-qt/build/.rcc/qmlcache/module_ultra-qt.aotstatslist /home/matt/projects/qt-learning/ultra-qt/build/.rcc/qmlcache/module_ultra-qt.aotstats

.rcc/qmlcache/ultra-qt_src/gui/Main_qml.cpp: /home/matt/Qt/6.8.2/gcc_64/libexec/qmlcachegen
.rcc/qmlcache/ultra-qt_src/gui/Main_qml.cpp: ../src/gui/Main.qml
.rcc/qmlcache/ultra-qt_src/gui/Main_qml.cpp: .qt/rcc/qmake_gui.qrc
.rcc/qmlcache/ultra-qt_src/gui/Main_qml.cpp: .qt/rcc/ultra-qt_raw_qml_0.qrc
.rcc/qmlcache/ultra-qt_src/gui/Main_qml.cpp: gui/ultra-qt.qmltypes
.rcc/qmlcache/ultra-qt_src/gui/Main_qml.cpp: gui/qmldir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/matt/projects/qt-learning/ultra-qt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating .rcc/qmlcache/ultra-qt_src/gui/Main_qml.cpp, .rcc/qmlcache/ultra-qt_src/gui/Main_qml.cpp.aotstats"
	/usr/bin/cmake -E make_directory /home/matt/projects/qt-learning/ultra-qt/build/.rcc/qmlcache/ultra-qt_src/gui
	/home/matt/Qt/6.8.2/gcc_64/libexec/qmlcachegen --bare --resource-path /qt/qml/gui/src/gui/Main.qml -I /home/matt/projects/qt-learning/ultra-qt/build -I /home/matt/Qt/6.8.2/gcc_64/qml -i /home/matt/projects/qt-learning/ultra-qt/build/gui/qmldir --resource /home/matt/projects/qt-learning/ultra-qt/build/.qt/rcc/qmake_gui.qrc --resource /home/matt/projects/qt-learning/ultra-qt/build/.qt/rcc/ultra-qt_raw_qml_0.qrc --dump-aot-stats "--module-id=gui(ultra-qt)" -o /home/matt/projects/qt-learning/ultra-qt/build/.rcc/qmlcache/ultra-qt_src/gui/Main_qml.cpp /home/matt/projects/qt-learning/ultra-qt/src/gui/Main.qml

.rcc/qmlcache/ultra-qt_src/gui/Main_qml.cpp.aotstats: .rcc/qmlcache/ultra-qt_src/gui/Main_qml.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate .rcc/qmlcache/ultra-qt_src/gui/Main_qml.cpp.aotstats

module_ultra-qt_aotstats_target: .rcc/qmlcache/module_ultra-qt.aotstats
module_ultra-qt_aotstats_target: .rcc/qmlcache/ultra-qt_src/gui/Main_qml.cpp
module_ultra-qt_aotstats_target: .rcc/qmlcache/ultra-qt_src/gui/Main_qml.cpp.aotstats
module_ultra-qt_aotstats_target: CMakeFiles/module_ultra-qt_aotstats_target
module_ultra-qt_aotstats_target: CMakeFiles/module_ultra-qt_aotstats_target.dir/build.make
.PHONY : module_ultra-qt_aotstats_target

# Rule to build all files generated by this target.
CMakeFiles/module_ultra-qt_aotstats_target.dir/build: module_ultra-qt_aotstats_target
.PHONY : CMakeFiles/module_ultra-qt_aotstats_target.dir/build

CMakeFiles/module_ultra-qt_aotstats_target.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/module_ultra-qt_aotstats_target.dir/cmake_clean.cmake
.PHONY : CMakeFiles/module_ultra-qt_aotstats_target.dir/clean

CMakeFiles/module_ultra-qt_aotstats_target.dir/depend:
	cd /home/matt/projects/qt-learning/ultra-qt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matt/projects/qt-learning/ultra-qt /home/matt/projects/qt-learning/ultra-qt /home/matt/projects/qt-learning/ultra-qt/build /home/matt/projects/qt-learning/ultra-qt/build /home/matt/projects/qt-learning/ultra-qt/build/CMakeFiles/module_ultra-qt_aotstats_target.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/module_ultra-qt_aotstats_target.dir/depend

