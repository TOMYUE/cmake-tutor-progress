cmake_minimum_required(VERSION 3.0.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

project(float_calculator)

add_subdirectory(my_math)
add_subdirectory(my_print)

add_executable(float_calculator main.cpp)
target_link_libraries(float_calculator my_math my_print)


message("CMAKE_INSTALL_PREFIX = ${CMAKE_INSTALL_PREFIX}")

# other modifications are in subdirectory level CMakeLists.txt
# check the file at my_math/CMakeLists.txt

# In the my_math/CMakeLists.txt, we add `install` command, which will automatically install the lib 
# to the specified install directory when you run `make install`, check it for more details. 

# When you run the `make install` you will see: (The error is because we don't use sudo);
# you can see the install directory is in the  /usr/local/include/my_math, which like we specified. 
# > make install
# [ 33%] Built target my_print
# [ 66%] Built target my_math
# [100%] Built target float_calculator
# Install the project...
# -- Install configuration: ""
# CMake Error at my_math/cmake_install.cmake:49 (file):
#   file cannot create directory: /usr/local/include/my_math.  Maybe need
#   administrative privileges.
# Call Stack (most recent call first):
#   cmake_install.cmake:42 (include)
# make: *** [install] Error 1

# And to set a user defined variable, you should use `cmake -DCMAKE_INSTALL_PREFIX=/path/to/install ..`,
# try it!
