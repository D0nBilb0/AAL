import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.0

Column {
    id: infoCol

    Column {
        Label {
            text : "SPACE \n   \n"
            color : "transparent"
        }
    }

    Column {
        id : tempCol
        Label {
            text : " Raum Temperaturen:"
            lineHeight: 1.2
            font.pointSize: 14
            font.bold: true
        }

        Label {
            id : tempBath
            text: "  Bad: " + temperature + "°C"
            lineHeight: 1.2
            font.pointSize: 14
            color: textColor
        }
        Label {
            id : tempKitchen
            text: "  Küche: " + temperature + "°C"
            lineHeight: 1.2
            font.pointSize: 14
            color: textColor
        }
        Label {
            id : tempHall
            text: "  Flur: " + temperature + "°C"
            lineHeight: 1.2
            font.pointSize: 14
            color: textColor
        }
        Label {
            id : tempBedroom
            text: "  Schlafzimmer: " + temperature + "°C"
            lineHeight: 1.2
            font.pointSize: 14
            color: textColor
        }
        Label {
            id : tempLivingroom
            text: "  Wohnzimmer: " + temperature + "°C"
            lineHeight: 1.2
            font.pointSize: 14
            color: textColor
        }
    }

    Column {
        id : positionSensor
        Label {
            text : "\n Bewegungsmelder:"
            lineHeight: 1.2
            font.pointSize: 14
            font.bold: true
        }

        Label {
            text: "  " + selectedRoom
            lineHeight: 1.2
            font.pointSize: 14
        }        
    }

    Column {
        id : personSLB
        Label {
            text: "\n Personenstatus:"
            lineHeight: 1.2
            font.pointSize: 14
            font.bold: true
        }
        Label {
             text: personState
             lineHeight: 1.2
             font.pointSize: 14
        }
    }

    Column {
        id: multimediaStatus
        Label {
            text: "\n Multimedia Status:"
            lineHeight: 1.2
            font.pointSize: 14
            font.bold: true
        }

        Label {
            text: tvState === true ? "  Fernseher: an" : "  Fernseher: aus"
            lineHeight: 1.2
            font.pointSize: 14
        }
        Label {
            text: radioState === true ? "  Radio: an" : "  Radio: aus"
            lineHeight: 1.2
            font.pointSize: 14
        }
        Label {
            text: telefonState === true ? "  Telefon: laut" : "  Telefon: still"
            lineHeight: 1.2
            font.pointSize: 14
        }
    }

    Column {
        id: bathTimerText
        Label {
            text: "\n Badezimmer:"
            lineHeight: 1.2
            font.pointSize: 14
            font.bold: true
        }

        Label {
            text: "  Badezeit: " + minutes + " Minuten"
            lineHeight: 1.2
            font.pointSize: 14
        }
    }

    Column {
        id: houseStatus
        Label {
            text: "\n Haus Status:"
            lineHeight: 1.2
            font.pointSize: 14
            font.bold: true
        }

        Label {
            text: houseState
            lineHeight: 1.2
            font.pointSize: 14
        }
    }
}
