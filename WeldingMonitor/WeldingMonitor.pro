TEMPLATE = app

QT += qml quick
CONFIG += c++11


TARGET = WeldingMonitor
target.files = WeldingMonitor
target.path = /home/root
INSTALLS += target


SOURCES += main.cpp \
    adcthread.cpp \
    datacollect.cpp \
    worker.cpp \
    testclassfirst.cpp

RESOURCES += qml.qrc \
    menupages.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = qml

# Default rules for deployment.
#qnx: target.path = /tmp/$${TARGET}/bin
#else: unix:!android: target.path = /opt/$${TARGET}/bin
#!isEmpty(target.path): INSTALLS += target

DISTFILES +=

HEADERS += \
    adcthread.h \
    datacollect.h \
    worker.h \
    testclassfirst.h \
    main.h
