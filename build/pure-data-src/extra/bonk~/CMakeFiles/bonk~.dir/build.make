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
include pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/depend.make

# Include the progress variables for this target.
include pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/progress.make

# Include the compile flags for this target's objects.
include pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/flags.make

pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/bonk~.c.o: pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/flags.make
pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/bonk~.c.o: ../pure-data-src/extra/bonk~/bonk~.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/njazz/Documents/puredata-ceam/pd-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/bonk~.c.o"
	cd "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/bonk~" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o "CMakeFiles/bonk~.dir/bonk~.c.o"   -c "/Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/extra/bonk~/bonk~.c"

pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/bonk~.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bonk~.dir/bonk~.c.i"
	cd "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/bonk~" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/extra/bonk~/bonk~.c" > "CMakeFiles/bonk~.dir/bonk~.c.i"

pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/bonk~.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bonk~.dir/bonk~.c.s"
	cd "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/bonk~" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/extra/bonk~/bonk~.c" -o "CMakeFiles/bonk~.dir/bonk~.c.s"

pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/bonk~.c.o.requires:

.PHONY : pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/bonk~.c.o.requires

pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/bonk~.c.o.provides: pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/bonk~.c.o.requires
	$(MAKE) -f "pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/build.make" "pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/bonk~.c.o.provides.build"
.PHONY : pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/bonk~.c.o.provides

pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/bonk~.c.o.provides.build: pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/bonk~.c.o


# Object files for target bonk~
bonk~_OBJECTS = \
"CMakeFiles/bonk~.dir/bonk~.c.o"

# External object files for target bonk~
bonk~_EXTERNAL_OBJECTS =

pure-data-src/extra/bonk~/bonk~.d_fat: pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/bonk~.c.o
pure-data-src/extra/bonk~/bonk~.d_fat: pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/build.make
pure-data-src/extra/bonk~/bonk~.d_fat: pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/njazz/Documents/puredata-ceam/pd-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library \"bonk~.d_fat\""
	cd "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/bonk~" && $(CMAKE_COMMAND) -E cmake_link_script "CMakeFiles/bonk~.dir/link.txt" --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/build: pure-data-src/extra/bonk~/bonk~.d_fat

.PHONY : pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/build

pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/requires: pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/bonk~.c.o.requires

.PHONY : pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/requires

pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/clean:
	cd "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/bonk~" && $(CMAKE_COMMAND) -P "CMakeFiles/bonk~.dir/cmake_clean.cmake"
.PHONY : pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/clean

pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/depend:
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/njazz/Documents/puredata-ceam/pd-server "/Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/extra/bonk~" /Users/njazz/Documents/puredata-ceam/pd-server/build "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/bonk~" "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : pure-data-src/extra/bonk~/CMakeFiles/bonk~.dir/depend
