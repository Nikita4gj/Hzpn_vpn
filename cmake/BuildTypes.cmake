get_property(is_multi_config GLOBAL PROPERTY GENERATOR_IS_MULTI_CONFIG)

if(is_multi_config)
    set(CMAKE_CONFIGURATION_TYPES Debug Release Asan Coverage)
elseif(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug CACHE STRING "Тип сборки" FORCE)
endif()

set(CMAKE_CXX_FLAGS_ASAN "-Og -g -fsanitize=address,undefined -fno-omit-frame-pointer -fno-sanitize-recover=all")
set(CMAKE_CXX_FLAGS_DEBUG "-g3 -O0")
set(CMAKE_CXX_FLAGS_RELEASE "-O2 -DNDEBUG")
set(CMAKE_CXX_FLAGS_COVERAGE "--coverage -O0 -g -fprofile-abs-path")

set(CMAKE_INTERPROCEDURAL_OPTIMIZATION_RELEASE ON)