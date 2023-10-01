# Specify the minimum version for CMake
cmake_minimum_required(VERSION 3.10)
# If your installed CMake has version lower than 3.10, 
# then CMake will generate an error and abort the build process. 
# By default, the CMake version installed on Ubuntu 20.04 is 3.16.

# Project's name
project(
    float_calculator 
    VERSION 1.0.0
    LANGUAGES CXX
)
# The arguments say that our project is named hello_world, is versioned at 1.0, and is in C++. 
# This is something that you should define yourselves based on your projects.

# Set the C++ standard
set(CMAKE_CXX_STANDARD 17) # same as set CXXFLAGS in Makefile -stdc++=17
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add all the source files needed to build the executable
add_executable(
    float_calculator 
    main.cpp 
    float.cpp 
    print.cpp
)

# TODO: how to use CMakeLists.txt?
# open a shell and type the following:
# > mkdir build && cd build  #you can use another name like cmake-build or whatever, but we normally use build as a convertion
# > cmake ..
# > make -j $(nproc)
# and then you will see the executable in the build directory, is this simpler then Makefile?
# why we create a new build folder to store the result of the executale is because we don't want to contaminate the source code,
# this is usually called the Out-Of-Source Build, see this:https://softwareengineering.stackexchange.com/questions/365460/in-source-build-vs-out-of-source-build

# ================================================================== 
# Now we see the output of the CMake
# > cmake ..                      
# -- The C compiler identification is AppleClang 14.0.0.14000029
# -- The CXX compiler identification is AppleClang 14.0.0.14000029
# -- Detecting C compiler ABI info
# -- Detecting C compiler ABI info - done
# -- Check for working C compiler: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc - skipped
# -- Detecting C compile features
# -- Detecting C compile features - done
# -- Detecting CXX compiler ABI info
# -- Detecting CXX compiler ABI info - done
# -- Check for working CXX compiler: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ - skipped
# -- Detecting CXX compile features
# -- Detecting CXX compile features - done
# -- Configuring done
# -- Generating done
# -- Build files have been written to: /Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/build
# ==================================================================  
# - The first line is self-explanatory: it is saying that CMake idenfities the C++ compiler be GNU gcc 7.5.0.
# - The next two lines talk about C++ Application Binary Interface (ABI). We won't dive into this here; just remember that ABI specifies how compiled code interacts with the underlying machine, and that different compiler/platform combinations might have different ABIs.
# - The next three lines are CMake reporting its results of checking the available C++ compiler and its supported features. If your compiler is too old, and that you are specifing a new standard (such as C++ 20), then CMake might abort due to lack of compiler support.
# - The next two lines show the two stages CMake perform its actions in. The first is the configuring stage, during which CMake builds an internal representation of the project. The second is the generation stage, during which CMake generates the necessary build files.
# - Last but not least, CMake gives us the directory in which the generated build files live in.
# ================================================================== 
# And when you cd into the build directory, you'll see following four files:
# `CMakeCache.txt  CMakeFiles  cmake_install.cmake  Makefile`
# - CMakeCache.txt is a text file containing the values of CMake cached variables. Usually we don't need to touch this file.
# - CMakeFiles/ is a directory containing CMake related files. Again we probably don't need to touch it.
# - cmake_install.cmake is a CMake install script for our project. If we are developing a library, then this will become relevant.
# - Makefile is a text file for the make tool to digest. make will read this file, and compile our source code. 
#   This is generated automatically by CMake so we don't need to write it by hand for every platform.
# ==================================================================  
# And then let's look at the result of `make -j $(nproc)`
# > make -j $(nproc)     
# -- Configuring done
# -- Generating done
# -- Build files have been written to: /Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/build
# [ 75%] Building CXX object CMakeFiles/float_calculator.dir/float.cpp.o
# [ 75%] Building CXX object CMakeFiles/float_calculator.dir/print.cpp.o
# [ 75%] Building CXX object CMakeFiles/float_calculator.dir/main.cpp.o
# [100%] Linking CXX executable float_calculator
# [100%] Built target float_calculator
# ~/CS/Cou/CM/cmake-tutor-progress/build main !3 ?2 ❯ make -j $(nproc)      
# Consolidate compiler generated dependencies of target float_calculator
# [100%] Built target float_calculator
#
