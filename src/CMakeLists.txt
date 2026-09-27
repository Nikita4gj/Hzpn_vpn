add_library(hzpn_core STATIC core/core.cpp version.cpp)

target_include_directories(hzpn_core PUBLIC ${PROJECT_SOURCE_DIR}/include)

hzpn_add_warnings(hzpn_core) #* Вызываем один раз на core, так как добавляем как publics

target_compile_features(hzpn_core PUBLIC cxx_std_20)

add_executable(hzpn_client client/main.cpp)

target_link_libraries(hzpn_client PRIVATE hzpn_core)

add_executable(hzpn_server server/main.cpp)

target_link_libraries(hzpn_server PRIVATE hzpn_core)