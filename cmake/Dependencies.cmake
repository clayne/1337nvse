include(FetchContent)

if (BUILD_NVSE)
    FetchContent_Declare(
            NVSE
            GIT_REPOSITORY "https://github.com/xNVSE/NVSE"
            GIT_TAG "master"
    )

    FetchContent_GetProperties(NVSE)

    if (NOT NVSE_POPULATED)
        FetchContent_Populate(NVSE)
    endif ()

    message("-- Building NVSE")

    set(NVSE_MSBUILD_ARGS /p:OutDir=${nvse_BINARY_DIR}/ /p:Configuration=Release /p:Platform=Win32 ${nvse_SOURCE_DIR}/nvse/nvse.sln)

    execute_process(COMMAND msbuild ${NVSE_MSBUILD_ARGS} COMMAND_ERROR_IS_FATAL ANY)
else ()
    if ("$ENV{NVSE_PATH}" STREQUAL "")
        message(FATAL_ERROR "Couldn't find NVSE_PATH! Please set this environment variable or enable BUILD_NVSE!")
    endif ()

    set(nvse_SOURCE_DIR "$ENV{NVSE_PATH}")

    set(nvse_BINARY_DIR "$ENV{NVSE_PATH}")
endif ()
