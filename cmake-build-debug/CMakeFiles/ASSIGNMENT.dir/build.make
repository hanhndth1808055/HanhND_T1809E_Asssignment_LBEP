# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.12

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.2.4\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\LaptopAZ.vn\CLionProjects\ASSIGNMENT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\LaptopAZ.vn\CLionProjects\ASSIGNMENT\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ASSIGNMENT.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ASSIGNMENT.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ASSIGNMENT.dir/flags.make

CMakeFiles/ASSIGNMENT.dir/main.c.obj: CMakeFiles/ASSIGNMENT.dir/flags.make
CMakeFiles/ASSIGNMENT.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\LaptopAZ.vn\CLionProjects\ASSIGNMENT\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ASSIGNMENT.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\ASSIGNMENT.dir\main.c.obj   -c C:\Users\LaptopAZ.vn\CLionProjects\ASSIGNMENT\main.c

CMakeFiles/ASSIGNMENT.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ASSIGNMENT.dir/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\LaptopAZ.vn\CLionProjects\ASSIGNMENT\main.c > CMakeFiles\ASSIGNMENT.dir\main.c.i

CMakeFiles/ASSIGNMENT.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ASSIGNMENT.dir/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\LaptopAZ.vn\CLionProjects\ASSIGNMENT\main.c -o CMakeFiles\ASSIGNMENT.dir\main.c.s

# Object files for target ASSIGNMENT
ASSIGNMENT_OBJECTS = \
"CMakeFiles/ASSIGNMENT.dir/main.c.obj"

# External object files for target ASSIGNMENT
ASSIGNMENT_EXTERNAL_OBJECTS =

ASSIGNMENT.exe: CMakeFiles/ASSIGNMENT.dir/main.c.obj
ASSIGNMENT.exe: CMakeFiles/ASSIGNMENT.dir/build.make
ASSIGNMENT.exe: CMakeFiles/ASSIGNMENT.dir/linklibs.rsp
ASSIGNMENT.exe: CMakeFiles/ASSIGNMENT.dir/objects1.rsp
ASSIGNMENT.exe: CMakeFiles/ASSIGNMENT.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\LaptopAZ.vn\CLionProjects\ASSIGNMENT\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ASSIGNMENT.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ASSIGNMENT.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ASSIGNMENT.dir/build: ASSIGNMENT.exe

.PHONY : CMakeFiles/ASSIGNMENT.dir/build

CMakeFiles/ASSIGNMENT.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ASSIGNMENT.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ASSIGNMENT.dir/clean

CMakeFiles/ASSIGNMENT.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\LaptopAZ.vn\CLionProjects\ASSIGNMENT C:\Users\LaptopAZ.vn\CLionProjects\ASSIGNMENT C:\Users\LaptopAZ.vn\CLionProjects\ASSIGNMENT\cmake-build-debug C:\Users\LaptopAZ.vn\CLionProjects\ASSIGNMENT\cmake-build-debug C:\Users\LaptopAZ.vn\CLionProjects\ASSIGNMENT\cmake-build-debug\CMakeFiles\ASSIGNMENT.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ASSIGNMENT.dir/depend

