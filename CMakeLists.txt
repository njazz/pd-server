if(${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
    message(FATAL_ERROR
        "CMake generation for pure-data is not allowed within the source directory!"
        "\n Remove the CMakeCache.txt file and try again from another folder, e.g.:"
        "\n "
        "\n rm CMakeCache.txt"
        "\n cd .."
        "\n mkdir bin"
        "\n cd bin"
        "\n cmake .."
        "\n")
endif()

cmake_minimum_required(VERSION 2.8)
if(APPLE)
    if(ARCH)
        set(CMAKE_OSX_ARCHITECTURES ${ARCH})
    else()
        set(CMAKE_OSX_ARCHITECTURES "x86_64;i386")
    endif()
    if(MACOSX_SDK)
        set(CMAKE_OSX_SYSROOT ${MACOSX_SDK})
    endif()
endif()

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug)
endif()

if(APPLE)
    set(CMAKE_MACOSX_RPATH FALSE)
endif()

project(pdserver)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu99")
enable_language(CXX C)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
include(version)
include(build_options)
include(PdPlatform)

include(config)
include(sound)
include(cmake_uninstall)

add_subdirectory(pd)

#add_subdirectory(pure-data-src/portmidi)
#add_subdirectory(pure-data-src/src)
#add_subdirectory(pure-data-src/tcl)
#add_subdirectory(pure-data-src/extra)
#add_subdirectory(pure-data-src/doc)

enable_testing(true)

include(summary)
include(package)
