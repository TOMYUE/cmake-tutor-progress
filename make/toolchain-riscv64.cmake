# For cross-compiling on riscv64 Linux using gcc-riscv64-linux-gnu package:
# - install riscv64 toolchain:
#   $ sudo apt-get install g++-riscv64-linux-gnu
# - cross-compiling config
#   $ cmake  -DCMAKE_TOOLCHAIN_FILE=../make/toolchain-riscv64.cmake ..
# You may have to set CMAKE_FIND_ROOT_PATH to point to the target enviroment, e.g.
# by passing -DCMAKE_FIND_ROOT_PATH=/usr/riscv64-linux-gnu on Debian-like systems.
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR riscv64)
set(TARGET_ABI "unknown-elf")

# specify the cross compiler
SET(CMAKE_C_COMPILER   riscv64-${TARGET_ABI}-gcc)
SET(CMAKE_CXX_COMPILER riscv64-${TARGET_ABI}-g++)

# Use set xxx_WORKS true to tell the CMake that the the compilers work correctly, and it will skip the simple test
set(CMAKE_C_COMPILER_WORKS TRUE)
set(CMAKE_CXX_COMPILER_WORKS TRUE)

set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")

# to avoid the unrecognized cmd option '-rdynamic'
# set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
# set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")

# To build the tests, we need to set where the target environment containing
# the required library is. On Debian-like systems, this is
# /usr/riscv64-linux-gnu.
SET(CMAKE_FIND_ROOT_PATH "/home/ty/opt/lib/riscv/gcc/bin")
# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# Set additional variables.
# If we don't set some of these, CMake will end up using the host version.
# We want the full path, however, so we can pass EXISTS and other checks in
# our CMake code.
find_program(GCC_FULL_PATH riscv64-${TARGET_ABI}-gcc)
if (NOT GCC_FULL_PATH)
  message(FATAL_ERROR "Cross-compiler riscv64-${TARGET_ABI}-gcc not found")
endif ()
get_filename_component(GCC_DIR ${GCC_FULL_PATH} PATH)
SET(CMAKE_LINKER       ${GCC_DIR}/riscv64-${TARGET_ABI}-ld      CACHE FILEPATH "linker")
SET(CMAKE_ASM_COMPILER ${GCC_DIR}/riscv64-${TARGET_ABI}-as      CACHE FILEPATH "assembler")
SET(CMAKE_OBJCOPY      ${GCC_DIR}/riscv64-${TARGET_ABI}-objcopy CACHE FILEPATH "objcopy")
SET(CMAKE_STRIP        ${GCC_DIR}/riscv64-${TARGET_ABI}-strip   CACHE FILEPATH "strip")
SET(CMAKE_CPP          ${GCC_DIR}/riscv64-${TARGET_ABI}-cpp     CACHE FILEPATH "cpp")