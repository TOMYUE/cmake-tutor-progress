cmake_minimum_required(VERSION 3.0)

project(float_calculator VERSION 1.0.2 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

# add sub directory, see the CMakeLists.txt in the two subdirectories
# when manage the subdirectory in a more formal way, you'll need to modify the relative path of each file
# see the CMakeLists.txt and the cpp files in the two subdirectories for more details, this commit only need a little change
# also don't forget to change the relative path of each header file in the main.h
add_subdirectory(my_math) # one subdirectory name 
add_subdirectory(my_print) # another subdirectory name 

# build target
add_executable(float_calculator main.cpp)

# you use either PUBLIC or PRIVATE here, better PRIVATE
target_link_libraries(float_calculator PRIVATE my_math my_print)
