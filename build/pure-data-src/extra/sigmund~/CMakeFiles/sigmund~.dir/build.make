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

# Include any dependencies generated for this target.
include pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/depend.make

# Include the progress variables for this target.
include pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/progress.make

# Include the compile flags for this target's objects.
include pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/flags.make

pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/sigmund~.c.o: pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/flags.make
pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/sigmund~.c.o: ../pure-data-src/extra/sigmund~/sigmund~.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/njazz/Documents/puredata-ceam/pd-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/sigmund~.c.o"
	cd "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/sigmund~" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o "CMakeFiles/sigmund~.dir/sigmund~.c.o"   -c "/Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/extra/sigmund~/sigmund~.c"

pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/sigmund~.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sigmund~.dir/sigmund~.c.i"
	cd "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/sigmund~" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/extra/sigmund~/sigmund~.c" > "CMakeFiles/sigmund~.dir/sigmund~.c.i"

pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/sigmund~.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sigmund~.dir/sigmund~.c.s"
	cd "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/sigmund~" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/extra/sigmund~/sigmund~.c" -o "CMakeFiles/sigmund~.dir/sigmund~.c.s"

pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/sigmund~.c.o.requires:

.PHONY : pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/sigmund~.c.o.requires

pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/sigmund~.c.o.provides: pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/sigmund~.c.o.requires
	$(MAKE) -f "pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/build.make" "pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/sigmund~.c.o.provides.build"
.PHONY : pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/sigmund~.c.o.provides

pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/sigmund~.c.o.provides.build: pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/sigmund~.c.o


# Object files for target sigmund~
sigmund~_OBJECTS = \
"CMakeFiles/sigmund~.dir/sigmund~.c.o"

# External object files for target sigmund~
sigmund~_EXTERNAL_OBJECTS =

pure-data-src/extra/sigmund~/sigmund~.d_fat: pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/sigmund~.c.o
pure-data-src/extra/sigmund~/sigmund~.d_fat: pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/build.make
pure-data-src/extra/sigmund~/sigmund~.d_fat: pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/njazz/Documents/puredata-ceam/pd-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library \"sigmund~.d_fat\""
	cd "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/sigmund~" && $(CMAKE_COMMAND) -E cmake_link_script "CMakeFiles/sigmund~.dir/link.txt" --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/build: pure-data-src/extra/sigmund~/sigmund~.d_fat

.PHONY : pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/build

pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/requires: pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/sigmund~.c.o.requires

.PHONY : pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/requires

pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/clean:
	cd "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/sigmund~" && $(CMAKE_COMMAND) -P "CMakeFiles/sigmund~.dir/cmake_clean.cmake"
.PHONY : pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/clean

pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/depend:
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/njazz/Documents/puredata-ceam/pd-server "/Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/extra/sigmund~" /Users/njazz/Documents/puredata-ceam/pd-server/build "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/sigmund~" "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : pure-data-src/extra/sigmund~/CMakeFiles/sigmund~.dir/depend
