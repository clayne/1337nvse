macro(target_add_nvse target)
    target_include_directories("${target}" PRIVATE ${nvse_SOURCE_DIR})

    target_include_directories("${target}" PRIVATE ${nvse_SOURCE_DIR}/nvse)

    target_link_libraries("${target}" PRIVATE ${nvse_BINARY_DIR}/common_vc9.lib)

    target_link_libraries("${target}" PRIVATE ${nvse_BINARY_DIR}/nvse_1_4.lib)
endmacro()
