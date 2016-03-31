include(vendor/vendor.pri)
include(material/material.pri)

CONFIG += object_parallel_to_source

QT += qml quick

SOURCES += src/main.cpp
RESOURCES += assets/assets.qrc \
             icons/icons.qrc
QMLIFY += src/qml
