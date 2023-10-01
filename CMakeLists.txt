cmake_minimum_required(VERSION 3.0)

project(float_calculator VERSION 1.0.2 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

set(lib1 my_math) # my_math is a string variable
set(lib2 my_print) # my_print is a string variable

message("[INFO]: Add subdirectory ${lib1}")
add_subdirectory(my_math) # one subdirectory name 
message("[INFO]: Add subdirectory ${lib2}")
add_subdirectory(my_print) # another subdirectory name 
message("[INFO]: subdirectory add done")

# build target
add_executable(float_calculator main.cpp)
message("[INFO]: build target float_calculator")

# you use either PUBLIC or PRIVATE here, better PRIVATE
target_link_libraries(float_calculator PRIVATE my_math my_print)
message("[INFO]: link target float_calculator")

# When cmake .. you will see the output contain the message you add to the CMakeLists.txt
# > cmake ..
# [INFO]: Add subdirectory my_math
# [INFO]: Add subdirectory my_print
# [INFO]: subdirectory add done
# [INFO]: build target float_calculator
# [INFO]: link target float_calculator
# -- Configuring done
# -- Generating done
# -- Build files have been written to: /Users/tangyue/CSproj/Courses/CMake tutorial/cmake-tutor-progress/build
