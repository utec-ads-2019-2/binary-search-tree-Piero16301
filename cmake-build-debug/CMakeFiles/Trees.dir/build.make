# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.2.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.2.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\piero\Downloads\binary-search-tree-Piero16301

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\piero\Downloads\binary-search-tree-Piero16301\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Trees.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Trees.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Trees.dir/flags.make

CMakeFiles/Trees.dir/main.cpp.obj: CMakeFiles/Trees.dir/flags.make
CMakeFiles/Trees.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\piero\Downloads\binary-search-tree-Piero16301\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Trees.dir/main.cpp.obj"
	C:\MinGW\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Trees.dir\main.cpp.obj -c C:\Users\piero\Downloads\binary-search-tree-Piero16301\main.cpp

CMakeFiles/Trees.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Trees.dir/main.cpp.i"
	C:\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\piero\Downloads\binary-search-tree-Piero16301\main.cpp > CMakeFiles\Trees.dir\main.cpp.i

CMakeFiles/Trees.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Trees.dir/main.cpp.s"
	C:\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\piero\Downloads\binary-search-tree-Piero16301\main.cpp -o CMakeFiles\Trees.dir\main.cpp.s

CMakeFiles/Trees.dir/mocker/mocker.cpp.obj: CMakeFiles/Trees.dir/flags.make
CMakeFiles/Trees.dir/mocker/mocker.cpp.obj: ../mocker/mocker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\piero\Downloads\binary-search-tree-Piero16301\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Trees.dir/mocker/mocker.cpp.obj"
	C:\MinGW\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Trees.dir\mocker\mocker.cpp.obj -c C:\Users\piero\Downloads\binary-search-tree-Piero16301\mocker\mocker.cpp

CMakeFiles/Trees.dir/mocker/mocker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Trees.dir/mocker/mocker.cpp.i"
	C:\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\piero\Downloads\binary-search-tree-Piero16301\mocker\mocker.cpp > CMakeFiles\Trees.dir\mocker\mocker.cpp.i

CMakeFiles/Trees.dir/mocker/mocker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Trees.dir/mocker/mocker.cpp.s"
	C:\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\piero\Downloads\binary-search-tree-Piero16301\mocker\mocker.cpp -o CMakeFiles\Trees.dir\mocker\mocker.cpp.s

CMakeFiles/Trees.dir/tester/tester.cpp.obj: CMakeFiles/Trees.dir/flags.make
CMakeFiles/Trees.dir/tester/tester.cpp.obj: ../tester/tester.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\piero\Downloads\binary-search-tree-Piero16301\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Trees.dir/tester/tester.cpp.obj"
	C:\MinGW\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Trees.dir\tester\tester.cpp.obj -c C:\Users\piero\Downloads\binary-search-tree-Piero16301\tester\tester.cpp

CMakeFiles/Trees.dir/tester/tester.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Trees.dir/tester/tester.cpp.i"
	C:\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\piero\Downloads\binary-search-tree-Piero16301\tester\tester.cpp > CMakeFiles\Trees.dir\tester\tester.cpp.i

CMakeFiles/Trees.dir/tester/tester.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Trees.dir/tester/tester.cpp.s"
	C:\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\piero\Downloads\binary-search-tree-Piero16301\tester\tester.cpp -o CMakeFiles\Trees.dir\tester\tester.cpp.s

# Object files for target Trees
Trees_OBJECTS = \
"CMakeFiles/Trees.dir/main.cpp.obj" \
"CMakeFiles/Trees.dir/mocker/mocker.cpp.obj" \
"CMakeFiles/Trees.dir/tester/tester.cpp.obj"

# External object files for target Trees
Trees_EXTERNAL_OBJECTS =

Trees.exe: CMakeFiles/Trees.dir/main.cpp.obj
Trees.exe: CMakeFiles/Trees.dir/mocker/mocker.cpp.obj
Trees.exe: CMakeFiles/Trees.dir/tester/tester.cpp.obj
Trees.exe: CMakeFiles/Trees.dir/build.make
Trees.exe: CMakeFiles/Trees.dir/linklibs.rsp
Trees.exe: CMakeFiles/Trees.dir/objects1.rsp
Trees.exe: CMakeFiles/Trees.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\piero\Downloads\binary-search-tree-Piero16301\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Trees.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Trees.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Trees.dir/build: Trees.exe

.PHONY : CMakeFiles/Trees.dir/build

CMakeFiles/Trees.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Trees.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Trees.dir/clean

CMakeFiles/Trees.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\piero\Downloads\binary-search-tree-Piero16301 C:\Users\piero\Downloads\binary-search-tree-Piero16301 C:\Users\piero\Downloads\binary-search-tree-Piero16301\cmake-build-debug C:\Users\piero\Downloads\binary-search-tree-Piero16301\cmake-build-debug C:\Users\piero\Downloads\binary-search-tree-Piero16301\cmake-build-debug\CMakeFiles\Trees.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Trees.dir/depend

