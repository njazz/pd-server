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
include pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/depend.make

# Include the progress variables for this target.
include pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/progress.make

# Include the compile flags for this target's objects.
include pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/flags.make

pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/lrshift~.c.o: pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/flags.make
pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/lrshift~.c.o: ../pure-data-src/extra/lrshift~/lrshift~.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/njazz/Documents/puredata-ceam/pd-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/lrshift~.c.o"
	cd "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/lrshift~" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o "CMakeFiles/lrshift~.dir/lrshift~.c.o"   -c "/Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/extra/lrshift~/lrshift~.c"

pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/lrshift~.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lrshift~.dir/lrshift~.c.i"
	cd "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/lrshift~" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/extra/lrshift~/lrshift~.c" > "CMakeFiles/lrshift~.dir/lrshift~.c.i"

pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/lrshift~.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lrshift~.dir/lrshift~.c.s"
	cd "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/lrshift~" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/extra/lrshift~/lrshift~.c" -o "CMakeFiles/lrshift~.dir/lrshift~.c.s"

pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/lrshift~.c.o.requires:

.PHONY : pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/lrshift~.c.o.requires

pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/lrshift~.c.o.provides: pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/lrshift~.c.o.requires
	$(MAKE) -f "pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/build.make" "pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/lrshift~.c.o.provides.build"
.PHONY : pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/lrshift~.c.o.provides

pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/lrshift~.c.o.provides.build: pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/lrshift~.c.o


# Object files for target lrshift~
lrshift~_OBJECTS = \
"CMakeFiles/lrshift~.dir/lrshift~.c.o"

# External object files for target lrshift~
lrshift~_EXTERNAL_OBJECTS =

pure-data-src/extra/lrshift~/lrshift~.d_fat: pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/lrshift~.c.o
pure-data-src/extra/lrshift~/lrshift~.d_fat: pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/build.make
pure-data-src/extra/lrshift~/lrshift~.d_fat: pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/njazz/Documents/puredata-ceam/pd-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library \"lrshift~.d_fat\""
	cd "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/lrshift~" && $(CMAKE_COMMAND) -E cmake_link_script "CMakeFiles/lrshift~.dir/link.txt" --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/build: pure-data-src/extra/lrshift~/lrshift~.d_fat

.PHONY : pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/build

pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/requires: pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/lrshift~.c.o.requires

.PHONY : pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/requires

pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/clean:
	cd "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/lrshift~" && $(CMAKE_COMMAND) -P "CMakeFiles/lrshift~.dir/cmake_clean.cmake"
.PHONY : pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/clean

pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/depend:
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/njazz/Documents/puredata-ceam/pd-server "/Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/extra/lrshift~" /Users/njazz/Documents/puredata-ceam/pd-server/build "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/lrshift~" "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : pure-data-src/extra/lrshift~/CMakeFiles/lrshift~.dir/depend
