#-------------------------------------------------
#
# Project created by QtCreator 2017-06-24T19:19:30
#
#-------------------------------------------------

QT       -= core gui

TARGET = pd-server
TEMPLATE = lib

DEFINES += PDSERVER_LIBRARY \
    APPLE \
    PD \
    HAVE_UNISTD_H \
    USEAPI_PORTAUDIO \
    USEAPI_DUMMY \
    THREAD_LOCKING \
    HAVE_LIBDL

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    ../pdLib.cpp \
    ../pdServer.cpp \
    ../../pure-data-src/src/d_arithmetic.c \
    ../../pure-data-src/src/d_array.c \
    ../../pure-data-src/src/d_ctl.c \
    ../../pure-data-src/src/d_dac.c \
    ../../pure-data-src/src/d_delay.c \
    ../../pure-data-src/src/d_fft_fftsg.c \
#    ../../pure-data-src/src/d_fft_fftw.c \
    ../../pure-data-src/src/d_fft.c \
    ../../pure-data-src/src/d_filter.c \
    ../../pure-data-src/src/d_global.c \
    ../../pure-data-src/src/d_math.c \
    ../../pure-data-src/src/d_misc.c \
    ../../pure-data-src/src/d_osc.c \
    ../../pure-data-src/src/d_resample.c \
    ../../pure-data-src/src/d_soundfile.c \
    ../../pure-data-src/src/d_ugen.c \
    ../../pure-data-src/src/g_all_guis.c \
    ../../pure-data-src/src/g_array.c \
    ../../pure-data-src/src/g_bang.c \
    ../../pure-data-src/src/g_canvas.c \
    ../../pure-data-src/src/g_clone.c \
    ../../pure-data-src/src/g_draw_tcl.c \
    ../../pure-data-src/src/g_draw.c \
    ../../pure-data-src/src/g_editor.c \
    ../../pure-data-src/src/g_graph.c \
    ../../pure-data-src/src/g_guiconnect.c \
    ../../pure-data-src/src/g_hdial.c \
    ../../pure-data-src/src/g_hslider.c \
    ../../pure-data-src/src/g_io.c \
    ../../pure-data-src/src/g_mycanvas.c \
    ../../pure-data-src/src/g_numbox.c \
    ../../pure-data-src/src/g_readwrite.c \
    ../../pure-data-src/src/g_rtext.c \
    ../../pure-data-src/src/g_scalar.c \
    ../../pure-data-src/src/g_template.c \
    ../../pure-data-src/src/g_text.c \
    ../../pure-data-src/src/g_toggle.c \
    ../../pure-data-src/src/g_traversal.c \
    ../../pure-data-src/src/g_vdial.c \
    ../../pure-data-src/src/g_vslider.c \
    ../../pure-data-src/src/g_vumeter.c \
    ../../pure-data-src/src/m_atom.c \
    ../../pure-data-src/src/m_binbuf.c \
    ../../pure-data-src/src/m_class.c \
    ../../pure-data-src/src/m_conf.c \
    ../../pure-data-src/src/m_glob.c \
    ../../pure-data-src/src/m_memory.c \
    ../../pure-data-src/src/m_obj.c \
    ../../pure-data-src/src/m_pd.c \
    ../../pure-data-src/src/m_sched.c \
#    ../../pure-data-src/src/s_audio_alsa.c \
#    ../../pure-data-src/src/s_audio_alsamm.c \
#    ../../pure-data-src/src/s_audio_audiounit.c \
    ../../pure-data-src/src/s_audio_dummy.c \
#    ../../pure-data-src/src/s_audio_esd.c \
#    ../../pure-data-src/src/s_audio_jack.c \
#    ../../pure-data-src/src/s_audio_mmio.c \
#    ../../pure-data-src/src/s_audio_oss.c \
    ../../pure-data-src/src/s_audio_pa.c \
    ../../pure-data-src/src/s_audio_paring.c \
    ../../pure-data-src/src/s_audio.c \
    ../../pure-data-src/src/s_entry.c \
    ../../pure-data-src/src/s_file.c \
    ../../pure-data-src/src/s_inter.c \
    ../../pure-data-src/src/s_loader.c \
    ../../pure-data-src/src/s_main.c \
#    ../../pure-data-src/src/s_midi_alsa.c \
#    ../../pure-data-src/src/s_midi_dummy.c \
#    ../../pure-data-src/src/s_midi_oss.c \
    ../../pure-data-src/src/s_midi_pm.c \
    ../../pure-data-src/src/s_midi.c \
    ../../pure-data-src/src/s_path.c \
    ../../pure-data-src/src/s_print.c \
    ../../pure-data-src/src/s_utf8.c \
#    ../../pure-data-src/src/s_watchdog.c \
#    ../../pure-data-src/src/u_pdreceive.c \
#    ../../pure-data-src/src/u_pdsend.c \
    ../../pure-data-src/src/x_acoustics.c \
    ../../pure-data-src/src/x_arithmetic.c \
    ../../pure-data-src/src/x_array.c \
    ../../pure-data-src/src/x_ceammc.c \
    ../../pure-data-src/src/x_connective.c \
    ../../pure-data-src/src/x_gui.c \
    ../../pure-data-src/src/x_interface.c \
    ../../pure-data-src/src/x_list.c \
    ../../pure-data-src/src/x_midi.c \
    ../../pure-data-src/src/x_misc.c \
    ../../pure-data-src/src/x_net.c \
    ../../pure-data-src/src/x_scalar.c \
    ../../pure-data-src/src/x_text.c \
    ../../pure-data-src/src/x_time.c \
    ../../pure-data-src/src/x_vexp_fun.c \
    ../../pure-data-src/src/x_vexp_if.c \
    ../../pure-data-src/src/x_vexp.c \
    ../../pure-data-src/ceammc/ext/src/lib/ceammc_atom.cpp \
    ../../pure-data-src/ceammc/ext/src/lib/ceammc_atomlist.cpp \
    ../../pure-data-src/ceammc/ext/src/lib/ceammc_log.cpp

HEADERS +=\
        pd-server_global.h \
    ../pdLib.hpp \
    ../pdServer.hpp \
    ../../pure-data-src/src/catch.hh \
    ../../pure-data-src/src/g_all_guis.h \
    ../../pure-data-src/src/g_canvas.h \
    ../../pure-data-src/src/g_draw_tcl.h \
    ../../pure-data-src/src/g_draw.h \
    ../../pure-data-src/src/g_style.h \
    ../../pure-data-src/src/m_imp.h \
    ../../pure-data-src/src/m_pd.h \
    ../../pure-data-src/src/s_audio_alsa.h \
    ../../pure-data-src/src/s_audio_paring.h \
    ../../pure-data-src/src/s_stuff.h \
    ../../pure-data-src/src/s_utf8.h \
    ../../pure-data-src/src/x_ceammc.h \
    ../../pure-data-src/src/x_vexp.h \
    ../../pure-data-src/ceammc/ext/src/lib/ceammc_atom.h \
    ../../pure-data-src/ceammc/ext/src/lib/ceammc_atomlist.h \
    ../../pure-data-src/ceammc/ext/src/lib/ceammc_log.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

INCLUDEPATH += ../../pure-data-src/ceammc/ext/src/lib/ \
            ../../pure-data-src/src/ \
            /usr/local/include \
            ../../pure-data-src/portmidi/pm_common \
            ../../pure-data-src/portmidi/porttime

LIBS += -L/usr/local/lib/ -lportaudio -lportmidi
