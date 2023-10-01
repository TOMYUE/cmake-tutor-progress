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

# Unqoted and Quoted, used for dealing with lists and spaces
message("========")
# set(VAR aa bb cc)
set(VAR aa;bb;cc)
#set(VAR "aa" "bb" "cc")
#set(VAR "aa bb cc")
#set(VAR "aa;bb;cc")

message(Unquoted: ${VAR})

message(Quoted: "${VAR}")
message("========")

#  set(VAR aa bb cc) sets VAR to a list of three items: aa, bb, and cc. 
# When you use ${VAR} unquoted, CMake treats it as a list of three separate items. 
# When you use "${VAR}" quoted, CMake treats it as a single string with spaces between the items: aa;bb;cc.
# The semicolon (;) is the default list separator in CMake. When you quote a list variable, CMake joins the items with semicolons.

# To put it simple, when in "" it's a string, while not in "" it's a list.
