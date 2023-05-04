CMAKE_MINIMUM_REQUIRED (VERSION 3.0)
find_program(CMAKE_CXX_COMPILER NAMES $ENV{CXX} g++ PATHS ENV PATH NO_DEFAULT_PATH)

set(PROJECT tcp_chat_server)
project(${PROJECT})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2 -Wall -Wextra")

set(SOURCE_FILES 
    ./src/main.cc 
    ./src/tcp_server.cc
    )

set(HEADER_FILES
    ./src/tcp_server.h
    )

add_executable(${PROJECT} ${SOURCE_FILES} ${HEADER_FILES})
