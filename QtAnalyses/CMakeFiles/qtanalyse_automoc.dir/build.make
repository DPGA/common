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

# Utility rule file for qtanalyse_automoc.

# Include the progress variables for this target.
include QtAnalyses/CMakeFiles/qtanalyse_automoc.dir/progress.make

QtAnalyses/CMakeFiles/qtanalyse_automoc:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/daq/DPGA/common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic moc and uic for target qtanalyse"
	cd /home/daq/DPGA/common/QtAnalyses && /usr/bin/cmake -E cmake_autogen /home/daq/DPGA/common/QtAnalyses/CMakeFiles/qtanalyse_automoc.dir/ ""

qtanalyse_automoc: QtAnalyses/CMakeFiles/qtanalyse_automoc
qtanalyse_automoc: QtAnalyses/CMakeFiles/qtanalyse_automoc.dir/build.make

.PHONY : qtanalyse_automoc

# Rule to build all files generated by this target.
QtAnalyses/CMakeFiles/qtanalyse_automoc.dir/build: qtanalyse_automoc

.PHONY : QtAnalyses/CMakeFiles/qtanalyse_automoc.dir/build

QtAnalyses/CMakeFiles/qtanalyse_automoc.dir/clean:
	cd /home/daq/DPGA/common/QtAnalyses && $(CMAKE_COMMAND) -P CMakeFiles/qtanalyse_automoc.dir/cmake_clean.cmake
.PHONY : QtAnalyses/CMakeFiles/qtanalyse_automoc.dir/clean

QtAnalyses/CMakeFiles/qtanalyse_automoc.dir/depend:
	cd /home/daq/DPGA/common && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daq/DPGA/common /home/daq/DPGA/Analyse/QtAnalyse /home/daq/DPGA/common /home/daq/DPGA/common/QtAnalyses /home/daq/DPGA/common/QtAnalyses/CMakeFiles/qtanalyse_automoc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : QtAnalyses/CMakeFiles/qtanalyse_automoc.dir/depend

