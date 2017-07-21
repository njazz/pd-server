add_definitions(-DPD)

if(UNIX)
    add_definitions("-DINSTALL_PREFIX=\"${CMAKE_INSTALL_PREFIX}\"")
endif()

set(M_SRC 
    pure-data/src/m_atom.c
    pure-data/src/m_binbuf.c
    pure-data/src/m_class.c
    pure-data/src/m_conf.c
    pure-data/src/m_glob.c
    pure-data/src/m_memory.c
    pure-data/src/m_obj.c
    pure-data/src/m_pd.c
    pure-data/src/m_sched.c)

set(D_SRC 
    pure-data/src/d_arithmetic.c
    pure-data/src/d_array.c
    pure-data/src/d_ctl.c
    pure-data/src/d_dac.c
    pure-data/src/d_delay.c
    pure-data/src/d_fft.c
    pure-data/src/d_filter.c
    pure-data/src/d_global.c
    pure-data/src/d_math.c
    pure-data/src/d_misc.c
    pure-data/src/d_osc.c
    pure-data/src/d_resample.c
    pure-data/src/d_soundfile.c
    pure-data/src/d_ugen.c)

set(G_SRC
    pure-data/src/g_all_guis.c
    pure-data/src/g_array.c
    pure-data/src/g_canvas.c
    pure-data/src/g_clone.c
    pure-data/src/g_editor.c
    pure-data/src/g_graph.c
    pure-data/src/g_guiconnect.c
    pure-data/src/g_io.c
    pure-data/src/g_mycanvas.c
    pure-data/src/g_readwrite.c
    pure-data/src/g_rtext.c
    pure-data/src/g_scalar.c
    pure-data/src/g_template.c
    pure-data/src/g_text.c
    pure-data/src/g_traversal.c)

set(S_SRC
    pure-data/src/s_audio.c
    pure-data/src/s_audio_paring.c
    pure-data/src/s_file.c
    pure-data/src/s_inter.c
    pure-data/src/s_loader.c
    pure-data/src/s_main.c
    pure-data/src/s_midi.c
    pure-data/src/s_path.c
    pure-data/src/s_print.c
    pure-data/src/s_utf8.c)

set(X_SRC
    pure-data/src/x_acoustics.c
    pure-data/src/x_arithmetic.c
    pure-data/src/x_array.c
    pure-data/src/x_connective.c
    pure-data/src/x_gui.c
    pure-data/src/x_interface.c
    pure-data/src/x_list.c
    pure-data/src/x_midi.c
    pure-data/src/x_misc.c
    pure-data/src/x_net.c
    pure-data/src/x_scalar.c
    pure-data/src/x_text.c
    pure-data/src/x_time.c
    pure-data/src/x_vexp.c
    pure-data/src/x_vexp_fun.c
    pure-data/src/x_vexp_if.c)

set(PD_NEEDED_LIBS)

if(WITH_FFTW)
    include_directories(${FFTW_INCLUDE_DIRECTORIES})
    list(APPEND D_SRC pure-data/src/d_fft_fftw.c)
    list(APPEND PD_NEEDED_LIBS ${FFTW_LIBRARIES})
else()
    list(APPEND D_SRC pure-data/src/d_fft_fftsg.c)
endif()

# ALSA
if(WITH_ALSA_AUDIO)
    list(APPEND S_SRC pure-data/src/s_audio_alsa.c pure-data/src/s_audio_alsamm.c)
    list(APPEND PD_NEEDED_LIBS ${ALSA_LIBRARIES})
endif()

if(WITH_ALSA_MIDI)
    list(APPEND S_SRC pure-data/src/s_midi_alsa.c)
    list(APPEND PD_NEEDED_LIBS ${ALSA_LIBRARIES})
endif()

# JACK
if(WITH_JACK)
    list(APPEND S_SRC pure-data/src/s_audio_jack.c)
    list(APPEND PD_NEEDED_LIBS ${JACK_LIBRARIES})
endif()

if(WITH_PORTAUDIO)
    list(APPEND S_SRC pure-data/src/s_audio_pa.c)
    list(APPEND PD_NEEDED_LIBS ${PORTAUDIO_LIBRARIES})
    if(MINGW)
        # this is a link fix when portaudio was build with ASIO support.
        # and it requires C++ linking
        # we are making empty C++ file, so cmake automatically uses c++ linker
        set(_asio_link_fix ${CMAKE_CURRENT_BINARY_DIR}/asio_link_fix.cpp)
        if(NOT EXISTS ${_asio_link_fix})
            file(WRITE ${_asio_link_fix} "")
        endif()
        list(APPEND S_SRC ${_asio_link_fix})
    endif()
endif()

if(WITH_MMIO)
    add_definitions(-DUSEAPI_MMIO)
    list(APPEND S_SRC pure-data/src/s_audio_mmio.c)
endif()

if(WITH_PORTMIDI)
    include_directories(${PROJECT_SOURCE_DIR}/pd/pure-data/portmidi/portmidi/pm_common)
    include_directories(${PROJECT_SOURCE_DIR}/pd/pure-data/portmidi/portmidi/porttime)
    list(APPEND S_SRC pure-data/src/s_midi_pm.c)
    list(APPEND PD_NEEDED_LIBS portmidi-static)
endif()

if(WISHAPP)
    add_definitions(-DWISHAPP="${WISHAPP}")
endif()

if(WITH_OSS)
    list(APPEND S_SRC pure-data/src/s_audio_oss.c)
    list(APPEND S_SRC pure-data/src/s_midi_oss.c)
    list(APPEND PD_NEEDED_LIBS ${OSSLIB})
endif()

# Dummy
if(WITH_DUMMY_AUDIO)
    list(APPEND S_SRC pure-data/src/s_audio_dummy.c)
endif()

if(WITH_DUMMY_MIDI)
    list(APPEND S_SRC pure-data/src/s_midi_dummy.c)
endif()

if(LIBDL_FOUND)
    list(APPEND PLATFORM_LINK_LIBRARIES ${LIBDL_LIBRARIES})
endif()

set(RESOURCE)
if(WIN32 OR MSYS)
    set(LIB_STATE "SHARED")
else()
    set(LIB_STATE "STATIC")
endif()

add_library(puredata-core ${LIB_STATE} ${D_SRC} ${G_SRC} ${M_SRC} ${S_SRC} ${X_SRC})
target_link_libraries(puredata-core ${PD_NEEDED_LIBS} ${PLATFORM_LINK_LIBRARIES})

# install libs
install(TARGETS puredata-core
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib)
