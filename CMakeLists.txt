cmake_minimum_required(VERSION 3.10)

project(demo)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 17)

set(CMAKE_BUILD_TYPE debug)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR riscv64)

set(ROOT /home/wesley/buildroot/output/host)
set(TRIPLET riscv64-linux)
set(CMAKE_C_COMPILER ${ROOT}/bin/${TRIPLET}-gcc)
set(CMAKE_CXX_COMPILER ${ROOT}/bin/${TRIPLET}-g++)
set(CMAKE_FIND_ROOT_PATH
  $ENV{HOME}/buildroot/output/host/riscv64-buildroot-linux-gnu/sysroot/)

add_executable(main ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cc)
