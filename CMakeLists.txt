cmake_minimum_required(VERSION 3.5)

project(MySimpleTableView LANGUAGES CXX)
set(MYSQL_LIBS "-L/usr/lib/x86_64-linux-gnu -lmysqlclient -lpthread -lz -lm -lrt -lssl -lcrypto -ldl -lresolv -lcurl")


set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# QtCreator supports the following variables for Android, which are identical to qmake Android variables.
# Check http://doc.qt.io/qt-5/deployment-android.html for more information.
# They need to be set before the find_package(Qt5 ...) call.

#if(ANDROID)
#    set(ANDROID_PACKAGE_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/android")
#    if (ANDROID_ABI STREQUAL "armeabi-v7a")
#        set(ANDROID_EXTRA_LIBS
#            ${CMAKE_CURRENT_SOURCE_DIR}/path/to/libcrypto.so
#            ${CMAKE_CURRENT_SOURCE_DIR}/path/to/libssl.so)
#    endif()
#endif()

find_package(Qt5 COMPONENTS Core Sql Quick REQUIRED)

if(ANDROID)
    add_library(MySimpleTableView SHARED
      main.cpp
      qml.qrc
      mbDatabase.hpp
      sqlcredentialsmodel.cpp
    )
else()
    add_executable(MySimpleTableView
      main.cpp
      qml.qrc
      mbDatabase.hpp
      sqlcredentialsmodel.cpp
    )
endif()

target_compile_definitions(MySimpleTableView
  PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(MySimpleTableView
  PRIVATE Qt5::Core Qt5::Quick Qt5::Sql ${MYSQL_LIBS})
