include("${PROJECT_SOURCE_DIR}/cmake/SourceList.cmake")

include("${PROJECT_SOURCE_DIR}/cmake/Macros.cmake")

add_library("${PROJECT_NAME}" SHARED "${SOURCES}")

target_add_nvse("${PROJECT_NAME}")

if (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    target_compile_options("${PROJECT_NAME}" PRIVATE
            /MT
    )
endif ()
