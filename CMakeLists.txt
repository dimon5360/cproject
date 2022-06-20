

cmake_minimum_required(VERSION 3.10)

project(main.exe)

set(SRC_LIST main_.c)

set(CMAKE_CXX_STANDARD 20)

add_executable(${PROJECT_NAME} ${SRC_LIST})