QT += qml quick
TARGET = splitview
!no_desktop: QT += widgets

include(src/src.pri)
include(./shared/shared.pri)

OTHER_FILES += \
    main.qml \
    Room.qml \
    Info.qml \
    Couch.qml

RESOURCES += \
    resources.qrc
