cmake_minimum_required(VERSION 3.0)

project(fdtd-practice-1)

file(GLOB sources *.c)
file(GLOB targets *.h)

set(target fdtd_1d)
SET( CMAKE_C_FLAGS  "${CMAKE_C_FLAGS} -Wall" )
add_executable(${target} ${sources} ${targets})
target_link_libraries(${target} m)

