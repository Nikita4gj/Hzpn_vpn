option(HZPN_WARNINGS_AS_ERRORS "Предупреждения как ошибки" OFF)

function(hzpn_add_warnings target) # * функция которая вешает warnings на таргет
    target_compile_options(${target} PUBLIC
        -Wall -Wextra
        -Wimplicit-fallthrough 
        -Wpedantic -Wconversion
        -Wold-style-cast -Wshadow
        -Wcast-align -Wfloat-equal
        -Wdouble-promotion -Wcast-qual
        -Woverloaded-virtual -Wformat=2
        -Wzero-as-null-pointer-constant
        -Wnon-virtual-dtor -Wnull-dereference
        -Wsuggest-override -Wmisleading-indentation 
        $<$<CXX_COMPILER_ID:GNU>:-Wnoexcept -Wuseless-cast -Wduplicated-cond -Wlogical-op>)

    if(HZPN_WARNINGS_AS_ERRORS)
        target_compile_options(${target} PUBLIC -Werror)
    endif()
endfunction()