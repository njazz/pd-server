message(STATUS "===========================================")
message(STATUS "Configure summary:")
message(STATUS "===========================================")
if(APPLE)
message(STATUS "  MacOSX version       ${MACOSX_VERSION}")
endif()
message(STATUS "  Pd version:          ${PD_TEXT_VERSION_FULL}")
message(STATUS "  Tk version:          ${TK_VERSION}")
message(STATUS "  Distrib version:     ${CEAMMC_DISTRIB_VERSION}")
message(STATUS "  C compiler:          ${CMAKE_C_COMPILER}")
message(STATUS "  C++ compiler:        ${CMAKE_CXX_COMPILER}")
message(STATUS "  build type:          ${CMAKE_BUILD_TYPE}")
if(APPLE)
message(STATUS "  Arch:                ${CMAKE_OSX_ARCHITECTURES}")
message(STATUS "  MacOSX sysroot:      ${CMAKE_OSX_SYSROOT}")
message(STATUS "  MacOSX min-version:  ${CMAKE_OSX_DEPLOYMENT_TARGET}")
endif()
message(STATUS "                                    ")
message(STATUS "  Audio:")
message(STATUS "       alsa:        ${WITH_ALSA}")
message(STATUS "       dummy:       ${WITH_DUMMY_AUDIO}")
message(STATUS "       jack:        ${WITH_JACK}")
message(STATUS "       portaudio:   ${WITH_PORTAUDIO}")
message(STATUS "       oss:         ${WITH_OSS}")

if(WIN32)
message(STATUS "       mmio:        ${WITH_MMIO}")
endif()

message(STATUS "  MIDI:")
message(STATUS "       alsa:        ${WITH_ALSA_MIDI}")
message(STATUS "       dummy:       ${WITH_DUMMY_MIDI}")
message(STATUS "       portmidi:    ${WITH_PORTMIDI}")
message(STATUS "       oss:         ${WITH_OSS}")
message(STATUS "===========================================")
message(STATUS "Build info:")
message(STATUS "===========================================")
message(STATUS "  Coverage:         ${WITH_COVERAGE}")
message(STATUS "")

