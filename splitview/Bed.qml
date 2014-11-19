import QtQuick 2.0
import QtQuick.Controls 1.2

Rectangle {
    id: bed
    Row {
        width : parent.width
        height: parent.height

        Button {
            width : bed.width *0.5
            height: bed.height * 0.5
            text: "sit down"
            onClicked: {
                selectedRoom = parent.parent.parent.objectName
            }
        }
        Button {
            width : bed.width * 0.5
            height: bed.height * 0.5
            text : "lie down"

            onClicked: {
               selectedRoom = "chill mode activated (bed room)"
               tvState = false
            }
        }
    }

}
