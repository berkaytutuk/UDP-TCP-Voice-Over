QT       += core gui widgets multimedia network

TARGET = Client
TEMPLATE = app

include(../common.pri)

SOURCES += main.cpp\
        mainwindow.cpp \
    audiooutput.cpp \
    client.cpp \
    audiorecorder.cpp \
    levelwidget.cpp

HEADERS  += mainwindow.h \
    audiooutput.h \
    client.h \
    audiorecorder.h \
    levelwidget.h

WITH_OPUS {

HEADERS  += \
    opusdecode.h

SOURCES += \
    opusdecode.cpp
}

DISTFILES += \
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/values/libs.xml

contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
}
