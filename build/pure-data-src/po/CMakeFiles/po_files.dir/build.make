# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.6.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.6.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/njazz/Documents/puredata-ceam/pd-server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/njazz/Documents/puredata-ceam/pd-server/build

# Utility rule file for po_files.

# Include the progress variables for this target.
include pure-data-src/po/CMakeFiles/po_files.dir/progress.make

po_files: pure-data-src/po/CMakeFiles/po_files.dir/build.make

.PHONY : po_files

# Rule to build all files generated by this target.
pure-data-src/po/CMakeFiles/po_files.dir/build: po_files

.PHONY : pure-data-src/po/CMakeFiles/po_files.dir/build

pure-data-src/po/CMakeFiles/po_files.dir/clean:
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/po && $(CMAKE_COMMAND) -P CMakeFiles/po_files.dir/cmake_clean.cmake
.PHONY : pure-data-src/po/CMakeFiles/po_files.dir/clean

pure-data-src/po/CMakeFiles/po_files.dir/depend:
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/njazz/Documents/puredata-ceam/pd-server /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/po /Users/njazz/Documents/puredata-ceam/pd-server/build /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/po /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/po/CMakeFiles/po_files.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pure-data-src/po/CMakeFiles/po_files.dir/depend
