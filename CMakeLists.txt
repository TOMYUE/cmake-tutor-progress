cmake_minimum_required(VERSION 3.0.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

project(float_calculator)

add_subdirectory(my_math)
add_subdirectory(my_print)

add_executable(float_calculator main.cpp)
target_link_libraries(float_calculator my_math my_print)

# Add a cache variable
set(MY_CACHE_VAR "default value" CACHE STRING "My cache variable")
message($CACHE{MY_CACHE_VAR})
