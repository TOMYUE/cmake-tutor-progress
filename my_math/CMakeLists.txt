add_library(my_math
    src/float.cpp
    )

target_include_directories(my_math PRIVATE include)

# The install command in CMake is used to specify rules for "installing" your project. 
# That is, it defines how to copy your built files (like executables, libraries, and headers) 
# from the build directory to a specified install directory. This is typically used when 
# you want to distribute your software or when you want to install it on your system in a 
#standard location like /usr/local.

# This command installs the header files float.h, it copies these files from the current source directory 
# (${CMAKE_CURRENT_SOURCE_DIR}/include/my_math/) to the install directory (${CMAKE_INSTALL_PREFIX}/include/my_math).
install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/include/my_math/float.h  DESTINATION ${CMAKE_INSTALL_PREFIX}/include/my_math)

# This command installs the my_math library. It copies the built library from the build directory to the install directory (${CMAKE_INSTALL_PREFIX}/lib/my_math).
install(TARGETS my_math DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/my_math)

# The ${CMAKE_INSTALL_PREFIX} variable is the root directory where the files will be installed. 
# By default, this is /usr/local on Unix-like systems and C:/Program Files/${PROJECT_NAME} on Windows. 
# You can change the install prefix by passing -DCMAKE_INSTALL_PREFIX=/path/to/install to the cmake command.

# After you've built your project with make (or ninja, or whatever build system you're using), 
# you can install it with make install. This will copy the files to the install directory according 
# to the install commands in your CMakeLists.txt. Note that you might need to run make install with sudo 
#if the install directory is a system directory that requires administrator permissions to write to.
