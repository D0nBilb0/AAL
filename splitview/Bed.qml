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
                tvState = false
                radioState = false
                houseState = "  normal"
                personState = "  sitzend"
            }
        }
        Button {
            width : bed.width * 1
            height: bed.height * 0.5
            text : "liegen"

            onClicked: {
                omaXpos = bedRoom.width * 0.01
                omaYPos = bath.height + hall.height +  bedRoom.height* 0.25
                tvState = false
                radioState = false
                personState = "  liegend"
                if ((curTime>= 22) || (curTime <= 6))
                {
                    selectedRoom = "Schlafzimmer "
                    telefonState = false
                    houseState = "  Schlafmodus Bett"
                }
                else if ((curTime>= 11) && (curTime <= 17))
                {
                    selectedRoom = "Schlafzimmer "
                    telefonState = false
                    houseState = "  Ruhemodus Bett"
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
