cmake_minimum_required(VERSION 3.0.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

set(CMAKE_C_FLAGS "")
set(CMAKE_CXX_FLAGS "")

set(CMAKE_CROSSCOMPILING TRUE)

set(CMAKE_EXE_LINKER_FLAGS "")

# message("============START=============")
# message("> before add executable ")
# get_cmake_property(_variableNames VARIABLES) 
# list (SORT _variableNames) 
# foreach (_variableName ${_variableNames}) 
#     message(STATUS "${_variableName}=${${_variableName}}") 
# endforeach()


project(float_calculator)

add_subdirectory(my_math)
add_subdirectory(my_print)

add_executable(float_calculator main.cpp)

# adjust the set link position here to avoid `-rdynamic` auto added by the add_executbale
set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")

# message("============MIDDLE=============")
# message("> before target link ")
# get_cmake_property(_variableNames VARIABLES) 
# list (SORT _variableNames) 
# foreach (_variableName ${_variableNames}) 
#     message(STATUS "${_variableName}=${${_variableName}}") 
# endforeach()

target_link_libraries(float_calculator my_math my_print)

message("CMAKE_INSTALL_PREFIX = ${CMAKE_INSTALL_PREFIX}")

# message("============END=============")
# get_cmake_property(_variableNames VARIABLES) 
# list (SORT _variableNames) 
# foreach (_variableName ${_variableNames}) 
#     message(STATUS "${_variableName}=${${_variableName}}") 
# endforeach()
