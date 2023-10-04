cmake_minimum_required(VERSION 3.0.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

set(CMAKE_C_FLAGS "")
set(CMAKE_CXX_FLAGS "")

set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")

set(CMAKE_CROSSCOMPILING TRUE)

set(CMAKE_EXE_LINKER_FLAGS "")

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,--no-export-dynamic")

# removing -rdynamic that's automatically added, this is a attempt try to fix the -rdynamic issue, but failed
# foreach (language CXX C)
#     set(VAR_TO_MODIFY "CMAKE_EXE_LINKER_FLAGS")
#     string(REGEX REPLACE "(^| )-rdynamic($| )"
#                          " "
#                          replacement
#                          "${${VAR_TO_MODIFY}}")
# #message("Original (${VAR_TO_MODIFY}) is ${${VAR_TO_MODIFY}} replacement is ${replacement}")
#     set(${VAR_TO_MODIFY} "${replacement}" CACHE STRING "Default flags for ${build_config} configuration" FORCE)
# endforeach()

project(float_calculator)

add_subdirectory(my_math)
add_subdirectory(my_print)

add_executable(float_calculator main.cpp)
target_link_libraries(float_calculator my_math my_print)

message("CMAKE_INSTALL_PREFIX = ${CMAKE_INSTALL_PREFIX}")

# The install command in CMake is used to specify rules for "installing" your project. 
# That is, it defines how to copy your built files (like executables, libraries, and headers) 
# from the build directory to a specified install directory. This is typically used when 
# you want to distribute your software or when you want to install it on your system in a 
#standard location like /usr/local.

# running this CMakeLists.txt in the build directory with additional flags, 
# since this is for the cross-platform compiler purpose
# type the following in the shell:
# 
# > cmake -DCMAKE_TOOLCHAIN_FILE=../make/toolchain-riscv64.cmake ..
# > make VERBOSE=1
# FIXME: this may not work because the cmake will automatically add a -rdynamic in the link.txt
# when you run this you should manully remove the -rdynamic flag in link.txt in the 
# > cd ./CMakeFiles/float_calculator.dir
# > cat link.txt                                            
# > home/ty/opt/lib/riscv/gcc/bin/riscv64-unknown-elf-g++    -rdynamic CMakeFiles/float_calculator.dir/main.cpp.o  -o float_calculator  my_math/libmy_math.a my_print/libmy_print.a 
#                                                            ^
# > vim link.txt # during this process you should remove the -rdynamic flag
# > cat link.txt
# and see in the shell there should be no -rdynamic like before
# > home/ty/opt/lib/riscv/gcc/bin/riscv64-unknown-elf-g++ CMakeFiles/float_calculator.dir/main.cpp.o  -o float_calculator  my_math/libmy_math.a my_print/libmy_print.a 
# then you can use qemu-riscv64 to run the program
# > qemu-riscv64 float_calculator 
