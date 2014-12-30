import QtQuick 2.0
import QtQuick.Controls 1.2

Rectangle {
    id: bed
    Column {
        width : parent.width
        height: parent.height

        Button {
            width : bed.width *1
            height: bed.height * 0.5
            text: "sitzen"
            onClicked: {
                selectedRoom = parent.parent.parent.objectName
                omaXpos = bedRoom.width * 0.01
                omaYPos = bath.height + hall.height +  bedRoom.height* 0.25
                telefonState = true
                houseState = "  normal"
            }
        }
        Button {
            width : bed.width * 1
            height: bed.height * 0.5
            text : "liegen"

            onClicked: {
                omaXpos = bedRoom.width * 0.01
                omaYPos = bath.height + hall.height +  bedRoom.height* 0.25
                if ((curTime>= 22) || (curTime <= 7))
                {
                    selectedRoom = "Schlafzimmer "
                    tvState = false
                    telefonState = false
                    houseState = "  Schlafmodus Bett"
                }
                else {
                    selectedRoom = "Schlafzimmer"
                    telefonState = true
                    houseState = "  normal"
                }

            }
        }
    }

}
