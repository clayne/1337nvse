cmake_minimum_required(VERSION 3.26.4)

option(BUILD_NVSE "Should NVSE be downloaded and built using MSBuild?" ON)

message("-- Options:")

message("\tBUILD_NVSE: ${BUILD_NVSE}")

project(
        NVSECMakePlugin
        LANGUAGES CXX
        VERSION 1.1.0
)

set(CMAKE_CXX_STANDARD 23)

include("${PROJECT_SOURCE_DIR}/cmake/Dependencies.cmake")

add_subdirectory(src)
