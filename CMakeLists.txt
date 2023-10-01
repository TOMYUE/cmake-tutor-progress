cmake_minimum_required(VERSION 3.0)

project(float_calculator VERSION 1.0.2 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

# add sub directory, see the CMakeLists.txt in the two subdirectories
add_subdirectory(my_math)
add_subdirectory(my_print)

# build target
add_executable(float_calculator main.cpp)

# you use either PUBLIC or PRIVATE here, better PRIVATE
target_link_libraries(float_calculator PUBLIC my_math my_print)

# This time when you see the outpu of make, you will find it linke the library you defined using add_library
# > make -j $(nproc)
# [ 33%] Building CXX object my_math/CMakeFiles/my_math.dir/float.cpp.o
# [ 33%] Building CXX object my_print/CMakeFiles/my_print.dir/print.cpp.o
# [ 50%] Linking CXX static library libmy_math.a
# [ 50%] Built target my_math
# [ 66%] Linking CXX static library libmy_print.a
# [ 66%] Built target my_print
# [ 83%] Building CXX object CMakeFiles/float_calculator.dir/main.cpp.o
# [100%] Linking CXX executable float_calculator
# [100%] Built target float_calculator
