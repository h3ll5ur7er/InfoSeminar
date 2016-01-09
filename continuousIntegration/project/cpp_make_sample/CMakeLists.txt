cmake_minimum_required(VERSION 2.8)

file(GLOB helloworld_SRC
    "*.h"
    "*.c"
    "*.cpp"
)

add_executable(hello ${helloworld_SRC})