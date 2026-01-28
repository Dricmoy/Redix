
# ----------- Optional Sanitizers -----------
option(SANITIZE "Enable AddressSanitizer and UndefinedBehaviorSanitizer" OFF)

if(SANITIZE)
    message(STATUS "Sanitizers enabled")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address,undefined -fno-omit-frame-pointer")
    set(CMAKE_LINKER_FLAGS "${CMAKE_LINKER_FLAGS} -fsanitize=address,undefined")
endif()
