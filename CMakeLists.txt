cmake_minimum_required(VERSION 3.0)

project(
    float_calculator
    VERSION 1.0.1
    LANGUAGES CXX    
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

# TODO: add a library
add_library(mymath float.h float.cpp)

add_executable(
    float_calculator 
    main.cpp 
    print.cpp
)

# PRIVATE means that the library is only required for the target itself 
# and should not be propagated to other targets that depend on the target. 
# This is useful when you have a library that is only used internally within 
# a specific target and should not be exposed to other targets or consumers of the target.
target_link_libraries(float_calculator PRIVATE mymath)

# after the make, you will see a library in .a suffix under your build directory
# > ls
# CMakeCache.txt      Makefile            float_calculator
# CMakeFiles          cmake_install.cmake libmymath.a
# this is the library you build using add_library
