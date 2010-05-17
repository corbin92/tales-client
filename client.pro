QT       += core gui network

TARGET = manamobile

unix:target.path = /usr/bin
INSTALLS += target

TEMPLATE = app

# Hide build artifacts
MOC_DIR = .moc
UI_DIR = .uic
RCC_DIR = .rcc
OBJECTS_DIR = .obj

include(manalib/manalib.pri)

SOURCES += main.cpp\
        loginwidget.cpp \
    serversettingsdialog.cpp \
    loginmanager.cpp \
    mainwindow.cpp \
    choosecharacterwidget.cpp

HEADERS  += loginwidget.h \
    serversettingsdialog.h \
    loginmanager.h \
    mainwindow.h \
    choosecharacterwidget.h

FORMS    += loginwidget.ui \
    serversettingsdialog.ui \
    choosecharacterwidget.ui

CONFIG += mobility
MOBILITY =

symbian {
    TARGET.UID3 = 0xe3c00cfe
    TARGET.CAPABILITY += NetworkServices
    TARGET.EPOCSTACKSIZE = 0x14000
    TARGET.EPOCHEAPSIZE = 0x020000 0x800000
}
