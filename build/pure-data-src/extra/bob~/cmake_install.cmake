# Install script for directory: /Users/njazz/Documents/puredata-ceam/pd-server/pure-data-src/extra/bob~

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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pd_ceammc/extra/bob~" TYPE FILE FILES "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/bob~/bob~-help.pd")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pd_ceammc/extra/bob~" TYPE FILE FILES "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/bob~/output~.pd")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pd_ceammc/extra/bob~" TYPE SHARED_LIBRARY FILES "/Users/njazz/Documents/puredata-ceam/pd-server/build/pure-data-src/extra/bob~/bob~.d_fat")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/pd_ceammc/extra/bob~/bob~.d_fat" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/pd_ceammc/extra/bob~/bob~.d_fat")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -id "bob~.d_fat"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/pd_ceammc/extra/bob~/bob~.d_fat")
  endif()
endif()

