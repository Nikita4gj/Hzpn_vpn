cmake_minimum_required(VERSION 3.25...3.31)

project(HZPN-VPN
        VERSION 0.1.0
        LANGUAGES CXX
        DESCRIPTION "L3 VPN через TUN-интерфейс"
)

set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin/$<CONFIG>")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib/$<CONFIG>")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib/$<CONFIG>")

list(APPEND CMAKE_MODULE_PATH      "${PROJECT_SOURCE_DIR}/cmake")

include(Warnings)
include(BuildTypes)
include(PrintFlags)
include(GNUInstallDirs)

if(HZPN_PRINT_FLAGS)
    hzpn_print_flags()
endif()

enable_testing()

add_subdirectory(src)
add_subdirectory(tests)