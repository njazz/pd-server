option(WITH_COVERAGE "Build with coverage and profiling flags" OFF)

# FFTW3
option(WITH_FFTW "Use fftw3 library (http://www.fftw.org/)" ON)
if(WITH_FFTW)
    include(FindFFTW)
    if(NOT FFTW_FOUND)
        set(WITH_FFTW OFF CACHE BOOL "" FORCE)
    endif()
endif()
