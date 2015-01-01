import QtQuick 2.0
import QtQuick.Controls 1.2

Rectangle {
    id: couch
    Column {
        width : parent.width
        height: parent.height

        Button {
            width : couch.width *1
            height: couch.height * 0.5
            text: "sitzen"
            onClicked: {
                selectedRoom = parent.parent.parent.objectName
                omaXpos = bath.width + kitchen.width + livingRoom.width * 0.3
                omaYPos = livingRoom.height*0.025
                telefonState = true
                houseState = "  normal"
            }
        }
        Button {
            width : couch.width * 1
            height: couch.height * 0.5
            text : "liegen"

            onClicked: {
                omaXpos = bath.width + kitchen.width + livingRoom.width * 0.3
                omaYPos = livingRoom.height*0.025
               if ((curTime> 11) && (curTime < 14))
               {
                   selectedRoom = "Wohnzimmer "
                   tvState = false
                   telefonState = false
                   radioState = false
                   houseState = "  Ruhemodus Wohnzimmer"
               }
               else {
                   selectedRoom = "Wohnzimmer"
                   telefonState = true
                   houseState = "  normal"
               }

            }
        }
    }

}
