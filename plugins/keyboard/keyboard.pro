QT -= gui

TEMPLATE = lib
DEFINES += KEYBOARD_LIBRARY

CONFIG += c++11 no_keywords link_pkgconfig plugin

PKGCONFIG += \
        gtk+-3.0 \
        glib-2.0


# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
include($$PWD/../../common/common.pri)
INCLUDEPATH += \
        -I $$PWD/../../common                           \
        -I ukui-settings-daemon/                        \
        -I /usr/include/glib-2.0/

LIBS += \
        -lglib-2.0


SOURCES += \
    keyboard-manager.cpp \
    keyboard-plugin.cpp \
    keyboard-xkb.cpp

HEADERS += \
    keyboard-manager.h \
    keyboard-xkb.h \
    keyboard_global.h \
    keyboard-plugin.h

DESTDIR = $$PWD/

keyboard_lib.path = /usr/local/lib/ukui-settings-daemon/
keyboard_lib.files = $$PWD/libkeyboard.so

INSTALLS += keyboard_lib