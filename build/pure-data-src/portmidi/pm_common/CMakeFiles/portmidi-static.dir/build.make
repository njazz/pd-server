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
include pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/depend.make

# Include the progress variables for this target.
include pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/progress.make

# Include the compile flags for this target's objects.
include pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/flags.make

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.o: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/flags.make
pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.o: ../pure-data-src/portmidi/pm_mac/pmmacosxcm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/njazz/Documents/puredata-ceam/pd-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.o"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.o   -c /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_mac/pmmacosxcm.c

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.i"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_mac/pmmacosxcm.c > CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.i

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.s"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_mac/pmmacosxcm.c -o CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.s

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.o.requires:

.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.o.requires

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.o.provides: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.o.requires
	$(MAKE) -f pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/build.make pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.o.provides.build
.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.o.provides

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.o.provides.build: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.o


pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.o: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/flags.make
pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.o: ../pure-data-src/portmidi/pm_mac/pmmac.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/njazz/Documents/puredata-ceam/pd-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.o"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.o   -c /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_mac/pmmac.c

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.i"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_mac/pmmac.c > CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.i

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.s"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_mac/pmmac.c -o CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.s

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.o.requires:

.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.o.requires

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.o.provides: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.o.requires
	$(MAKE) -f pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/build.make pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.o.provides.build
.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.o.provides

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.o.provides.build: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.o


pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.o: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/flags.make
pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.o: ../pure-data-src/portmidi/pm_mac/readbinaryplist.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/njazz/Documents/puredata-ceam/pd-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.o"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.o   -c /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_mac/readbinaryplist.c

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.i"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_mac/readbinaryplist.c > CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.i

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.s"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_mac/readbinaryplist.c -o CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.s

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.o.requires:

.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.o.requires

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.o.provides: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.o.requires
	$(MAKE) -f pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/build.make pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.o.provides.build
.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.o.provides

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.o.provides.build: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.o


pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.o: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/flags.make
pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.o: ../pure-data-src/portmidi/pm_mac/finddefault.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/njazz/Documents/puredata-ceam/pd-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.o"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.o   -c /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_mac/finddefault.c

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.i"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_mac/finddefault.c > CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.i

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.s"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_mac/finddefault.c -o CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.s

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.o.requires:

.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.o.requires

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.o.provides: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.o.requires
	$(MAKE) -f pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/build.make pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.o.provides.build
.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.o.provides

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.o.provides.build: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.o


pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.o: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/flags.make
pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.o: ../pure-data-src/portmidi/porttime/ptmacosx_mach.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/njazz/Documents/puredata-ceam/pd-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.o"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.o   -c /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/porttime/ptmacosx_mach.c

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.i"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/porttime/ptmacosx_mach.c > CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.i

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.s"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/porttime/ptmacosx_mach.c -o CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.s

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.o.requires:

.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.o.requires

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.o.provides: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.o.requires
	$(MAKE) -f pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/build.make pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.o.provides.build
.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.o.provides

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.o.provides.build: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.o


pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/pmutil.c.o: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/flags.make
pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/pmutil.c.o: ../pure-data-src/portmidi/pm_common/pmutil.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/njazz/Documents/puredata-ceam/pd-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/pmutil.c.o"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/portmidi-static.dir/pmutil.c.o   -c /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_common/pmutil.c

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/pmutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/portmidi-static.dir/pmutil.c.i"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_common/pmutil.c > CMakeFiles/portmidi-static.dir/pmutil.c.i

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/pmutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/portmidi-static.dir/pmutil.c.s"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_common/pmutil.c -o CMakeFiles/portmidi-static.dir/pmutil.c.s

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/pmutil.c.o.requires:

.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/pmutil.c.o.requires

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/pmutil.c.o.provides: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/pmutil.c.o.requires
	$(MAKE) -f pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/build.make pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/pmutil.c.o.provides.build
.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/pmutil.c.o.provides

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/pmutil.c.o.provides.build: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/pmutil.c.o


pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/portmidi.c.o: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/flags.make
pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/portmidi.c.o: ../pure-data-src/portmidi/pm_common/portmidi.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/njazz/Documents/puredata-ceam/pd-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/portmidi.c.o"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/portmidi-static.dir/portmidi.c.o   -c /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_common/portmidi.c

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/portmidi.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/portmidi-static.dir/portmidi.c.i"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_common/portmidi.c > CMakeFiles/portmidi-static.dir/portmidi.c.i

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/portmidi.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/portmidi-static.dir/portmidi.c.s"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_common/portmidi.c -o CMakeFiles/portmidi-static.dir/portmidi.c.s

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/portmidi.c.o.requires:

.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/portmidi.c.o.requires

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/portmidi.c.o.provides: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/portmidi.c.o.requires
	$(MAKE) -f pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/build.make pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/portmidi.c.o.provides.build
.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/portmidi.c.o.provides

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/portmidi.c.o.provides.build: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/portmidi.c.o


# Object files for target portmidi-static
portmidi__static_OBJECTS = \
"CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.o" \
"CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.o" \
"CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.o" \
"CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.o" \
"CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.o" \
"CMakeFiles/portmidi-static.dir/pmutil.c.o" \
"CMakeFiles/portmidi-static.dir/portmidi.c.o"

# External object files for target portmidi-static
portmidi__static_EXTERNAL_OBJECTS =

libportmidi_s.a: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.o
libportmidi_s.a: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.o
libportmidi_s.a: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.o
libportmidi_s.a: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.o
libportmidi_s.a: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.o
libportmidi_s.a: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/pmutil.c.o
libportmidi_s.a: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/portmidi.c.o
libportmidi_s.a: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/build.make
libportmidi_s.a: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/njazz/Documents/puredata-ceam/pd-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C static library ../../../libportmidi_s.a"
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && $(CMAKE_COMMAND) -P CMakeFiles/portmidi-static.dir/cmake_clean_target.cmake
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/portmidi-static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/build: libportmidi_s.a

.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/build

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/requires: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmacosxcm.c.o.requires
pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/requires: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/pmmac.c.o.requires
pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/requires: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/readbinaryplist.c.o.requires
pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/requires: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/pm_mac/finddefault.c.o.requires
pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/requires: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/__/porttime/ptmacosx_mach.c.o.requires
pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/requires: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/pmutil.c.o.requires
pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/requires: pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/portmidi.c.o.requires

.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/requires

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/clean:
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common && $(CMAKE_COMMAND) -P CMakeFiles/portmidi-static.dir/cmake_clean.cmake
.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/clean

pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/depend:
	cd /Users/njazz/Documents/puredata-ceam/pd-server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/njazz/Documents/puredata-ceam/pd-server /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/portmidi/pm_common /Users/njazz/Documents/puredata-ceam/pd-server/build /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common /Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pure-data-src/portmidi/pm_common/CMakeFiles/portmidi-static.dir/depend

