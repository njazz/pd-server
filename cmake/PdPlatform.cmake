# check endiannes
include(TestBigEndian)
test_big_endian(IS_BIG_ENDIAN)
if(NOT ${IS_BIG_ENDIAN})
    add_definitions(-DLITTLE_ENDIAN=0x0001 -DBYTE_ORDER=LITTLE_ENDIAN)
endif()

include(FindLibDL)

set(CMAKE_THREAD_PREFER_PTHREAD ON)
find_package(Threads)

set(PLATFORM_LINK_LIBRARIES)

# math lib link
if(UNIX AND NOT APPLE)
    add_definitions(-D_GNU_SOURCE)
    list(APPEND PLATFORM_LINK_LIBRARIES m)
    list(APPEND PLATFORM_LINK_LIBRARIES ${CMAKE_THREAD_LIBS_INIT})
    set(LINUX True)
endif()


if(WIN32)
    include(FindWindowsSDK)

    if (WINDOWSSDK_FOUND)
        get_windowssdk_library_dirs(${WINDOWSSDK_PREFERRED_DIR} WINSDK_LIB_DIRS)
        get_windowssdk_include_dirs(${WINDOWSSDK_PREFERRED_DIR} WINSDK_INCLUDE_DIRS)

        link_directories(${WINSDK_LIB_DIRS})
    endif()

    include(InstallRequiredSystemLibraries)
    
    # pthreadGC-3.dll
    find_file(PTHREADGC_DLL
        NAMES pthreadGC-3.dll pthreadGC-2.dll winpthread-1.dll libwinpthread-1.dll
        PATHS /mingw/bin /mingw/i686-w64-mingw32/bin)
    if(PTHREADGC_DLL)
        message(STATUS "found thread lib: ${PTHREADGC_DLL}")
        install(FILES ${PTHREADGC_DLL} DESTINATION ${PD_EXE_INSTALL_PATH})
    endif()

    # mingw runtime libs
    get_filename_component(_MINGW_PATH ${CMAKE_CXX_COMPILER} PATH)
    set(_MINGW_BIN ${_MINGW_PATH}/../i686-w64-mingw32/bin)
    set(CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS ${_MINGW_BIN}/libgcc_s_dw2-1.dll ${_MINGW_BIN}/libstdc++-6.dll )
    include(InstallRequiredSystemLibraries)
    
    # libportaudio-2.dll
    find_file(LIBPORTAUDIO_DLL NAMES libportaudio-2.dll PATHS /usr/bin /usr/local/bin)
    if(LIBPORTAUDIO_DLL)
        install(FILES ${LIBPORTAUDIO_DLL} DESTINATION ${PD_EXE_INSTALL_PATH})
    endif()
    
    # install README, LICENSE.txt to root 
    install(FILES 
            ${CMAKE_SOURCE_DIR}/README.txt
            ${CMAKE_SOURCE_DIR}/LICENSE.txt
        DESTINATION
            ${CMAKE_INSTALL_PREFIX})
    
    if(${CMAKE_SYSTEM_NAME} STREQUAL "WindowsStore")
        message("Building for UWP")
        set(FIPS_UWP 1)
    else()
        set(FIPS_UWP 0)
    endif()

    if (FIPS_UWP)
        set(CMAKE_CXX_STANDARD_LIBRARIES "WindowsApp.lib")
        set(CMAKE_C_STANDARD_LIBRARIES "WindowsApp.lib")
    else()
        set(CMAKE_CXX_STANDARD_LIBRARIES "-lkernel32 -lgdi32 -lole32 -lwinmm -luuid -lwsock32 -lws2_32")
        set(CMAKE_C_STANDARD_LIBRARIES ${CMAKE_CXX_STANDARD_LIBRARIES})
    endif()

    add_definitions(-DPD_INTERNAL -DWINVER=0x0502 -D_WIN32_WINNT=0x0502)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mms-bitfields -O2 -funroll-loops -fomit-frame-pointer")
    set(CMAKE_CXX_FLAGS "-mms-bitfields -O2 -funroll-loops -fomit-frame-pointer")
    list(APPEND PLATFORM_LINK_LIBRARIES ${CMAKE_THREAD_LIBS_INIT})
    set(CMAKE_SHARED_LINKER_FLAGS "-Wl,--export-all-symbols -lpthread")
    set(CMAKE_EXE_LINKER_FLAGS "-shared-libgcc -lpthread")
endif()

if(APPLE)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -funroll-loops -fomit-frame-pointer")
endif()
