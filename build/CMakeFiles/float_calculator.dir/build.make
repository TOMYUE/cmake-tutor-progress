# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/build"

# Include any dependencies generated for this target.
include CMakeFiles/float_calculator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/float_calculator.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/float_calculator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/float_calculator.dir/flags.make

CMakeFiles/float_calculator.dir/main.cpp.o: CMakeFiles/float_calculator.dir/flags.make
CMakeFiles/float_calculator.dir/main.cpp.o: /Users/tangyue/CSproj/Courses/CMake\ tutorial/cmake-tutor-progress/main.cpp
CMakeFiles/float_calculator.dir/main.cpp.o: CMakeFiles/float_calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/float_calculator.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/float_calculator.dir/main.cpp.o -MF CMakeFiles/float_calculator.dir/main.cpp.o.d -o CMakeFiles/float_calculator.dir/main.cpp.o -c "/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/main.cpp"

CMakeFiles/float_calculator.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/float_calculator.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/main.cpp" > CMakeFiles/float_calculator.dir/main.cpp.i

CMakeFiles/float_calculator.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/float_calculator.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/main.cpp" -o CMakeFiles/float_calculator.dir/main.cpp.s

CMakeFiles/float_calculator.dir/print.cpp.o: CMakeFiles/float_calculator.dir/flags.make
CMakeFiles/float_calculator.dir/print.cpp.o: /Users/tangyue/CSproj/Courses/CMake\ tutorial/cmake-tutor-progress/print.cpp
CMakeFiles/float_calculator.dir/print.cpp.o: CMakeFiles/float_calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/float_calculator.dir/print.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/float_calculator.dir/print.cpp.o -MF CMakeFiles/float_calculator.dir/print.cpp.o.d -o CMakeFiles/float_calculator.dir/print.cpp.o -c "/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/print.cpp"

CMakeFiles/float_calculator.dir/print.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/float_calculator.dir/print.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/print.cpp" > CMakeFiles/float_calculator.dir/print.cpp.i

CMakeFiles/float_calculator.dir/print.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/float_calculator.dir/print.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/print.cpp" -o CMakeFiles/float_calculator.dir/print.cpp.s

# Object files for target float_calculator
float_calculator_OBJECTS = \
"CMakeFiles/float_calculator.dir/main.cpp.o" \
"CMakeFiles/float_calculator.dir/print.cpp.o"

# External object files for target float_calculator
float_calculator_EXTERNAL_OBJECTS =

float_calculator: CMakeFiles/float_calculator.dir/main.cpp.o
float_calculator: CMakeFiles/float_calculator.dir/print.cpp.o
float_calculator: CMakeFiles/float_calculator.dir/build.make
float_calculator: libmymath.a
float_calculator: CMakeFiles/float_calculator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable float_calculator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/float_calculator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/float_calculator.dir/build: float_calculator
.PHONY : CMakeFiles/float_calculator.dir/build

CMakeFiles/float_calculator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/float_calculator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/float_calculator.dir/clean

CMakeFiles/float_calculator.dir/depend:
	cd "/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress" "/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress" "/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/build" "/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/build" "/Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/build/CMakeFiles/float_calculator.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/float_calculator.dir/depend

