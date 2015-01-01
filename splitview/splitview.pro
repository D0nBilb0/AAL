QT += qml quick
TARGET = splitview
!no_desktop: QT += widgets

include(src/src.pri)
include(./shared/shared.pri)

OTHER_FILES += \
    main.qml \
    Room.qml \
    Info.qml \
    Couch.qml \
    InfoPanel.qml \
    Bed.qml \
    Oma.qml \
    Badewanne.qml

RESOURCES += \
    resources.qrc
