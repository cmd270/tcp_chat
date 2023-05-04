CMAKE_MINIMUM_REQUIRED (VERSION 3.0)
find_program(CMAKE_CXX_COMPILER NAMES $ENV{CXX} g++ PATHS ENV PATH NO_DEFAULT_PATH)

set(PROJECT tcp_chat)
project(${PROJECT})

find_package(PkgConfig)
pkg_check_modules(GTKMM4 gtkmm-4.0)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2 -Wall -Wextra")

link_directories(
    ${GTKMM4_LIBRARY_DIRS}
    ) 

include_directories(
    ${GTKMM4_INCLUDE_DIRS} 
    )

set(SOURCE_FILES 
    ./src/start_window.cc 
    ./src/chat_window.cc
    ./src/main.cc
    ./src/tcp_client.cc
    )

set(HEADER_FILES
    ./src/start_window.h
    ./src/chat_window.h
    ./src/tcp_client.h
)

add_executable(${PROJECT} ${SOURCE_FILES} ${HEADER_FILES})

target_link_libraries(${PROJECT} ${GTKMM4_LIBRARIES})