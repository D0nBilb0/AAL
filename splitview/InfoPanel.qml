import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.0

Column {
    id: infoCol

    Column {
        Label {
            text : "SPACE \n   \n    \n"
            color : "transparent"
        }
    }

    Column {
        id : tempCol
        Label {
            text : " room temperatures:"
            font.pointSize: 11
            color: "#0000F0"
        }

        Label {
            id : tempBath
            text: "  bath: " + bath.temperature + "°C"
        }
        Label {
            id : tempKitchen
            text: "  kitchen: " + kitchen.temperature + "°C"
        }
        Label {
            id : tempHall
            text: "  hall: " + hall.temperature + "°C"
        }
        Label {
            id : tempBedroom
            text: "  bedroom: " + bedRoom.temperature + "°C"
        }
        Label {
            id : tempLivingroom
            text: "  livingroom: " + livingRoom.temperature + "°C"
        }
    }

    Column {
        id : positionSensor
        Label {
            text : " position Sensor:"
            font.pointSize: 11
            color: "#0000F0"
        }

        Label {
            text: "  poition sensor: " + selectedRoom
        }
    }

    Column {
        id: multimediaStatus
        Label {
            text: " multimedia Status:"
            font.pointSize: 11
            color: "#0000F0"
        }

        Label {
            text: "  television: " + tvState
        }
        Label {
            text: "  radio: "
        }
    }
}
