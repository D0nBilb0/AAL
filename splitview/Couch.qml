import QtQuick 2.0
import QtQuick.Controls 1.2

Rectangle {
    id: couch
    Row {
        width : parent.width
        height: parent.height

        Button {
            width : couch.width *0.5
            height: couch.height * 0.5
            text: "sit down"
            onClicked: {
                selectedRoom = parent.parent.parent.objectName
            }
        }
        Button {
            width : couch.width * 0.5
            height: couch.height * 0.5
            text : "lie down"

            onClicked: {
               selectedRoom = "chill mode activated (living room)"
               tvState = false
            }
        }
    }

}
