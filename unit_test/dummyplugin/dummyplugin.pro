TEMPLATE = lib
TARGET = ../plugins/$$qtLibraryTarget(dummyplugin)
DEPENDPATH += .
INCLUDEPATH += . ../../src
LIBS += -L../../src -lmimframework

OBJECTS_DIR = .obj
MOC_DIR = .moc

QMAKE_CXXFLAGS += -Werror

CONFIG += plugin meegotouch

HEADERS += dummyplugin.h
SOURCES += dummyplugin.cpp

target.path += /usr/lib/m-im-framework-tests/plugins

INSTALLS += target

QMAKE_CLEAN += ../plugins/libdummyplugin.so

QMAKE_EXTRA_TARGETS += check
check.target = check
check.command = $$system(true)

QMAKE_EXTRA_TARGETS += check-xml
check-xml.target = check-xml
check-xml.command = $$system(true)

QMAKE_EXTRA_TARGETS += memcheck 
memcheck.target = memcheck
memcheck.command = $$system(true)
