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
include libframe/CMakeFiles/BuildEvent.dir/depend.make

# Include the progress variables for this target.
include libframe/CMakeFiles/BuildEvent.dir/progress.make

# Include the compile flags for this target's objects.
include libframe/CMakeFiles/BuildEvent.dir/flags.make

libframe/CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.o: libframe/CMakeFiles/BuildEvent.dir/flags.make
libframe/CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.o: /home/daq/DPGA/Lib/libframe/src/BuildEvent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daq/DPGA/common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libframe/CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.o"
	cd /home/daq/DPGA/common/libframe && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.o -c /home/daq/DPGA/Lib/libframe/src/BuildEvent.cpp

libframe/CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.i"
	cd /home/daq/DPGA/common/libframe && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daq/DPGA/Lib/libframe/src/BuildEvent.cpp > CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.i

libframe/CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.s"
	cd /home/daq/DPGA/common/libframe && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daq/DPGA/Lib/libframe/src/BuildEvent.cpp -o CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.s

libframe/CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.o.requires:

.PHONY : libframe/CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.o.requires

libframe/CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.o.provides: libframe/CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.o.requires
	$(MAKE) -f libframe/CMakeFiles/BuildEvent.dir/build.make libframe/CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.o.provides.build
.PHONY : libframe/CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.o.provides

libframe/CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.o.provides.build: libframe/CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.o


# Object files for target BuildEvent
BuildEvent_OBJECTS = \
"CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.o"

# External object files for target BuildEvent
BuildEvent_EXTERNAL_OBJECTS =

/home/daq/DPGA/build/bin/BuildEvent: libframe/CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.o
/home/daq/DPGA/build/bin/BuildEvent: libframe/CMakeFiles/BuildEvent.dir/build.make
/home/daq/DPGA/build/bin/BuildEvent: /home/daq/DPGA/build/lib/libframe.a
/home/daq/DPGA/build/bin/BuildEvent: libframe/CMakeFiles/BuildEvent.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daq/DPGA/common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/daq/DPGA/build/bin/BuildEvent"
	cd /home/daq/DPGA/common/libframe && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BuildEvent.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libframe/CMakeFiles/BuildEvent.dir/build: /home/daq/DPGA/build/bin/BuildEvent

.PHONY : libframe/CMakeFiles/BuildEvent.dir/build

libframe/CMakeFiles/BuildEvent.dir/requires: libframe/CMakeFiles/BuildEvent.dir/src/BuildEvent.cpp.o.requires

.PHONY : libframe/CMakeFiles/BuildEvent.dir/requires

libframe/CMakeFiles/BuildEvent.dir/clean:
	cd /home/daq/DPGA/common/libframe && $(CMAKE_COMMAND) -P CMakeFiles/BuildEvent.dir/cmake_clean.cmake
.PHONY : libframe/CMakeFiles/BuildEvent.dir/clean

libframe/CMakeFiles/BuildEvent.dir/depend:
	cd /home/daq/DPGA/common && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daq/DPGA/common /home/daq/DPGA/Lib/libframe /home/daq/DPGA/common /home/daq/DPGA/common/libframe /home/daq/DPGA/common/libframe/CMakeFiles/BuildEvent.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libframe/CMakeFiles/BuildEvent.dir/depend

