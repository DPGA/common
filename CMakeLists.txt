cmake_minimum_required(VERSION 2.8)
#Déclaration du projet

project(DaqDpga)

string(ASCII 27 Esc)
set(ColourReset "${Esc}[m")
set(ColourBold  "${Esc}[1m")
set(Red         "${Esc}[31m")
set(Green       "${Esc}[32m")
set(Yellow      "${Esc}[33m")
set(Blue        "${Esc}[34m")
set(Magenta     "${Esc}[35m")
set(Cyan        "${Esc}[36m")
set(White       "${Esc}[37m")
set(BoldRed     "${Esc}[1;31m")
set(BoldGreen   "${Esc}[1;32m")
set(BoldYellow  "${Esc}[1;33m")
set(BoldBlue    "${Esc}[1;34m")
set(BoldMagenta "${Esc}[1;35m")
set(BoldCyan    "${Esc}[1;36m")
set(BoldWhite   "${Esc}[1;37m")

include(CMakeDef.txt)

set (O_FLAG "-O2 -DHAVE_PF_RING")
set (CFLAGS "${O_FLAG} -Wall -D ENABLE_BPF  -D HAVE_PF_RING_ZC")
set (CMAKE_CXX_FLAGS "-std=c++11 ${CFLAGS} -Wextra -Wno-unused-parameter -ggdb -g -pthread")
set (EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../build/bin)
set (LIBRARY_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../build/lib)
set (LIB_QCUSTOMPLOT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../Lib/libqcustomplot)
set (LIB_SHM_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../Lib/libshm)
set (LIB_DECODEFRAME_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../Lib/libframe)
set (DAQ_PROJECT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../)
#set (Libraries "pfring pthread")



#set (USERLIB tinyxml)

include_directories(./include/ ../include  ../libdaq/include /usr/local/include)

link_directories(/usr/local/lib ${CMAKE_CURRENT_SOURCE_DIR}/lib/build)

#Configuration de l'édition de liens

add_library(libpthread STATIC IMPORTED)
add_library(libpfring STATIC IMPORTED)
add_library(libbsd STATIC IMPORTED)
add_library(libz STATIC IMPORTED)
add_library(librt STATIC IMPORTED)
add_library(libringshm SHARED IMPORTED)
add_library(libqwt STATIC IMPORTED)

if(LIB_QCUSTOMPLOT MATCHES "on") 
	add_subdirectory(../Lib/libqcustomplot "${CMAKE_CURRENT_BINARY_DIR}/libqcustomplot")
	message(INFO ${Blue} " Add libqcustomplot" ${White})
endif()

if(LIB_QWT MATCHES "on") 
	add_subdirectory(libqwt)
	message(INFO ${Blue} " Add Libqwt" ${White})
endif()

if(LIB_SHM MATCHES "on") 
	add_subdirectory(../Lib/libshm "${CMAKE_CURRENT_BINARY_DIR}/libshm")
	message(INFO ${Blue} " Add Libshm"   ${White})
	message(INFO ${Blue} ${LIB_SHM_PATH}   ${White}) 
endif()


if(LIB_FRAME MATCHES "on") 
	add_subdirectory(../Lib/libframe "${CMAKE_CURRENT_BINARY_DIR}/libframe")
	message(INFO ${Blue} " Add Libframe" ${White})
endif()

if(DAQ MATCHES "on") 
	add_subdirectory(../Daq/daqDpga "${CMAKE_CURRENT_BINARY_DIR}/daqDpga")
	message(INFO ${Blue} " Add DaqDpga" ${White} )
endif()

if(VISU MATCHES "on") 
	add_subdirectory(../Monitoring/Visu "${CMAKE_CURRENT_BINARY_DIR}/visu")
	message(INFO ${Blue} " Add Visu" ${White} )
endif()

if(QTANALYSE MATCHES "on") 
	add_subdirectory(../Analyse/QtAnalyse "${CMAKE_CURRENT_BINARY_DIR}/QtAnalyses")
	message(INFO ${Blue} " Add QTanalyse" ${White})
endif()


