# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/daq/DPGA/common

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/daq/DPGA/common

# Include any dependencies generated for this target.
include visu/CMakeFiles/visu.dir/depend.make

# Include the progress variables for this target.
include visu/CMakeFiles/visu.dir/progress.make

# Include the compile flags for this target's objects.
include visu/CMakeFiles/visu.dir/flags.make

visu/ui_mainwindow.h: /home/daq/DPGA/Monitoring/Visu/src/mainwindow.ui
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daq/DPGA/common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ui_mainwindow.h"
	cd /home/daq/DPGA/common/visu && /usr/lib/x86_64-linux-gnu/qt5/bin/uic -o /home/daq/DPGA/common/visu/ui_mainwindow.h /home/daq/DPGA/Monitoring/Visu/src/mainwindow.ui

visu/CMakeFiles/visu.dir/src/main.cpp.o: visu/CMakeFiles/visu.dir/flags.make
visu/CMakeFiles/visu.dir/src/main.cpp.o: /home/daq/DPGA/Monitoring/Visu/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daq/DPGA/common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object visu/CMakeFiles/visu.dir/src/main.cpp.o"
	cd /home/daq/DPGA/common/visu && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/visu.dir/src/main.cpp.o -c /home/daq/DPGA/Monitoring/Visu/src/main.cpp

visu/CMakeFiles/visu.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/visu.dir/src/main.cpp.i"
	cd /home/daq/DPGA/common/visu && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daq/DPGA/Monitoring/Visu/src/main.cpp > CMakeFiles/visu.dir/src/main.cpp.i

visu/CMakeFiles/visu.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/visu.dir/src/main.cpp.s"
	cd /home/daq/DPGA/common/visu && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daq/DPGA/Monitoring/Visu/src/main.cpp -o CMakeFiles/visu.dir/src/main.cpp.s

visu/CMakeFiles/visu.dir/src/main.cpp.o.requires:

.PHONY : visu/CMakeFiles/visu.dir/src/main.cpp.o.requires

visu/CMakeFiles/visu.dir/src/main.cpp.o.provides: visu/CMakeFiles/visu.dir/src/main.cpp.o.requires
	$(MAKE) -f visu/CMakeFiles/visu.dir/build.make visu/CMakeFiles/visu.dir/src/main.cpp.o.provides.build
.PHONY : visu/CMakeFiles/visu.dir/src/main.cpp.o.provides

visu/CMakeFiles/visu.dir/src/main.cpp.o.provides.build: visu/CMakeFiles/visu.dir/src/main.cpp.o


visu/CMakeFiles/visu.dir/src/mainwindow.cpp.o: visu/CMakeFiles/visu.dir/flags.make
visu/CMakeFiles/visu.dir/src/mainwindow.cpp.o: /home/daq/DPGA/Monitoring/Visu/src/mainwindow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daq/DPGA/common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object visu/CMakeFiles/visu.dir/src/mainwindow.cpp.o"
	cd /home/daq/DPGA/common/visu && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/visu.dir/src/mainwindow.cpp.o -c /home/daq/DPGA/Monitoring/Visu/src/mainwindow.cpp

visu/CMakeFiles/visu.dir/src/mainwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/visu.dir/src/mainwindow.cpp.i"
	cd /home/daq/DPGA/common/visu && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daq/DPGA/Monitoring/Visu/src/mainwindow.cpp > CMakeFiles/visu.dir/src/mainwindow.cpp.i

visu/CMakeFiles/visu.dir/src/mainwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/visu.dir/src/mainwindow.cpp.s"
	cd /home/daq/DPGA/common/visu && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daq/DPGA/Monitoring/Visu/src/mainwindow.cpp -o CMakeFiles/visu.dir/src/mainwindow.cpp.s

visu/CMakeFiles/visu.dir/src/mainwindow.cpp.o.requires:

.PHONY : visu/CMakeFiles/visu.dir/src/mainwindow.cpp.o.requires

visu/CMakeFiles/visu.dir/src/mainwindow.cpp.o.provides: visu/CMakeFiles/visu.dir/src/mainwindow.cpp.o.requires
	$(MAKE) -f visu/CMakeFiles/visu.dir/build.make visu/CMakeFiles/visu.dir/src/mainwindow.cpp.o.provides.build
.PHONY : visu/CMakeFiles/visu.dir/src/mainwindow.cpp.o.provides

visu/CMakeFiles/visu.dir/src/mainwindow.cpp.o.provides.build: visu/CMakeFiles/visu.dir/src/mainwindow.cpp.o


visu/CMakeFiles/visu.dir/src/myplots.cpp.o: visu/CMakeFiles/visu.dir/flags.make
visu/CMakeFiles/visu.dir/src/myplots.cpp.o: /home/daq/DPGA/Monitoring/Visu/src/myplots.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daq/DPGA/common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object visu/CMakeFiles/visu.dir/src/myplots.cpp.o"
	cd /home/daq/DPGA/common/visu && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/visu.dir/src/myplots.cpp.o -c /home/daq/DPGA/Monitoring/Visu/src/myplots.cpp

visu/CMakeFiles/visu.dir/src/myplots.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/visu.dir/src/myplots.cpp.i"
	cd /home/daq/DPGA/common/visu && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daq/DPGA/Monitoring/Visu/src/myplots.cpp > CMakeFiles/visu.dir/src/myplots.cpp.i

visu/CMakeFiles/visu.dir/src/myplots.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/visu.dir/src/myplots.cpp.s"
	cd /home/daq/DPGA/common/visu && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daq/DPGA/Monitoring/Visu/src/myplots.cpp -o CMakeFiles/visu.dir/src/myplots.cpp.s

visu/CMakeFiles/visu.dir/src/myplots.cpp.o.requires:

.PHONY : visu/CMakeFiles/visu.dir/src/myplots.cpp.o.requires

visu/CMakeFiles/visu.dir/src/myplots.cpp.o.provides: visu/CMakeFiles/visu.dir/src/myplots.cpp.o.requires
	$(MAKE) -f visu/CMakeFiles/visu.dir/build.make visu/CMakeFiles/visu.dir/src/myplots.cpp.o.provides.build
.PHONY : visu/CMakeFiles/visu.dir/src/myplots.cpp.o.provides

visu/CMakeFiles/visu.dir/src/myplots.cpp.o.provides.build: visu/CMakeFiles/visu.dir/src/myplots.cpp.o


visu/CMakeFiles/visu.dir/visu_automoc.cpp.o: visu/CMakeFiles/visu.dir/flags.make
visu/CMakeFiles/visu.dir/visu_automoc.cpp.o: visu/visu_automoc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daq/DPGA/common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object visu/CMakeFiles/visu.dir/visu_automoc.cpp.o"
	cd /home/daq/DPGA/common/visu && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/visu.dir/visu_automoc.cpp.o -c /home/daq/DPGA/common/visu/visu_automoc.cpp

visu/CMakeFiles/visu.dir/visu_automoc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/visu.dir/visu_automoc.cpp.i"
	cd /home/daq/DPGA/common/visu && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daq/DPGA/common/visu/visu_automoc.cpp > CMakeFiles/visu.dir/visu_automoc.cpp.i

visu/CMakeFiles/visu.dir/visu_automoc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/visu.dir/visu_automoc.cpp.s"
	cd /home/daq/DPGA/common/visu && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daq/DPGA/common/visu/visu_automoc.cpp -o CMakeFiles/visu.dir/visu_automoc.cpp.s

visu/CMakeFiles/visu.dir/visu_automoc.cpp.o.requires:

.PHONY : visu/CMakeFiles/visu.dir/visu_automoc.cpp.o.requires

visu/CMakeFiles/visu.dir/visu_automoc.cpp.o.provides: visu/CMakeFiles/visu.dir/visu_automoc.cpp.o.requires
	$(MAKE) -f visu/CMakeFiles/visu.dir/build.make visu/CMakeFiles/visu.dir/visu_automoc.cpp.o.provides.build
.PHONY : visu/CMakeFiles/visu.dir/visu_automoc.cpp.o.provides

visu/CMakeFiles/visu.dir/visu_automoc.cpp.o.provides.build: visu/CMakeFiles/visu.dir/visu_automoc.cpp.o


# Object files for target visu
visu_OBJECTS = \
"CMakeFiles/visu.dir/src/main.cpp.o" \
"CMakeFiles/visu.dir/src/mainwindow.cpp.o" \
"CMakeFiles/visu.dir/src/myplots.cpp.o" \
"CMakeFiles/visu.dir/visu_automoc.cpp.o"

# External object files for target visu
visu_EXTERNAL_OBJECTS =

/home/daq/DPGA/build/bin/visu: visu/CMakeFiles/visu.dir/src/main.cpp.o
/home/daq/DPGA/build/bin/visu: visu/CMakeFiles/visu.dir/src/mainwindow.cpp.o
/home/daq/DPGA/build/bin/visu: visu/CMakeFiles/visu.dir/src/myplots.cpp.o
/home/daq/DPGA/build/bin/visu: visu/CMakeFiles/visu.dir/visu_automoc.cpp.o
/home/daq/DPGA/build/bin/visu: visu/CMakeFiles/visu.dir/build.make
/home/daq/DPGA/build/bin/visu: /home/daq/DPGA/build/lib/libringshm.so
/home/daq/DPGA/build/bin/visu: /home/daq/DPGA/build/lib/libqcustomplot.so
/home/daq/DPGA/build/bin/visu: /home/daq/DPGA/build/lib/libframe.a
/home/daq/DPGA/build/bin/visu: /usr/lib/x86_64-linux-gnu/libQt5PrintSupport.so.5.7.1
/home/daq/DPGA/build/bin/visu: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.7.1
/home/daq/DPGA/build/bin/visu: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.7.1
/home/daq/DPGA/build/bin/visu: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.7.1
/home/daq/DPGA/build/bin/visu: visu/CMakeFiles/visu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daq/DPGA/common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable /home/daq/DPGA/build/bin/visu"
	cd /home/daq/DPGA/common/visu && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/visu.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
visu/CMakeFiles/visu.dir/build: /home/daq/DPGA/build/bin/visu

.PHONY : visu/CMakeFiles/visu.dir/build

visu/CMakeFiles/visu.dir/requires: visu/CMakeFiles/visu.dir/src/main.cpp.o.requires
visu/CMakeFiles/visu.dir/requires: visu/CMakeFiles/visu.dir/src/mainwindow.cpp.o.requires
visu/CMakeFiles/visu.dir/requires: visu/CMakeFiles/visu.dir/src/myplots.cpp.o.requires
visu/CMakeFiles/visu.dir/requires: visu/CMakeFiles/visu.dir/visu_automoc.cpp.o.requires

.PHONY : visu/CMakeFiles/visu.dir/requires

visu/CMakeFiles/visu.dir/clean:
	cd /home/daq/DPGA/common/visu && $(CMAKE_COMMAND) -P CMakeFiles/visu.dir/cmake_clean.cmake
.PHONY : visu/CMakeFiles/visu.dir/clean

visu/CMakeFiles/visu.dir/depend: visu/ui_mainwindow.h
	cd /home/daq/DPGA/common && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daq/DPGA/common /home/daq/DPGA/Monitoring/Visu /home/daq/DPGA/common /home/daq/DPGA/common/visu /home/daq/DPGA/common/visu/CMakeFiles/visu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : visu/CMakeFiles/visu.dir/depend

