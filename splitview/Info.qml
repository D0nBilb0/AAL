import QtQuick 2.0

ListView {
    delegate: Column {
        Text {
            text: roomName + ": "
            font.pointSize: 11
            color: "#0000F0"
        }
        Text {
            text: "temperature" + ": " + temperature + "\n"
                  + "light" + ": " + lightStatus
        }
    }
}
