# Install script for directory: /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/extra

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/bob~/cmake_install.cmake")
  include("/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/bonk~/cmake_install.cmake")
  include("/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/choice/cmake_install.cmake")
  include("/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/fiddle~/cmake_install.cmake")
  include("/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/loop~/cmake_install.cmake")
  include("/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/lrshift~/cmake_install.cmake")
  include("/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/pd~/cmake_install.cmake")
  include("/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/pique/cmake_install.cmake")
  include("/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/sigmund~/cmake_install.cmake")
  include("/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/stdout/cmake_install.cmake")

endif()

