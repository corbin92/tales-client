# Simple .pro file for building ENet as static library

TEMPLATE = lib
CONFIG -= qt
CONFIG += static
TARGET = enet
DEPENDPATH += include/enet
INCLUDEPATH += include

DESTDIR=.lib

# Hide build artifacts
MOC_DIR = .moc
UI_DIR = .uic
RCC_DIR = .rcc
OBJECTS_DIR = .obj

DEFINES += HAS_GETHOSTBYADDR_R=1 \
           HAS_GETHOSTBYNAME_R=1 \
           HAS_POLL=1 \
           HAS_FCNTL=1 \
           HAS_INET_PTON=1 \
           HAS_INET_NTOP=1 \
           HAS_MSGHDR_FLAGS=1 \
           HAS_SOCKLEN_T=1

HEADERS += include/enet/callbacks.h \
           include/enet/enet.h \
           include/enet/list.h \
           include/enet/protocol.h \
           include/enet/time.h \
           include/enet/types.h \
           include/enet/unix.h \
           include/enet/utility.h \
           include/enet/win32.h
SOURCES += callbacks.c \
           compress.c \
           host.c \
           list.c \
           packet.c \
           peer.c \
           protocol.c \
           unix.c \
           win32.c
