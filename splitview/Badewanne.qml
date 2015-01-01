import QtQuick 2.0
import QtQuick.Controls 1.2

Item {
    id: bathtub

    property bool bathing: false

    MouseArea {
        anchors.fill: parent
        onClicked: {
            selectedRoom = "Bad"
            if (bathing == false)
            {
                bathTimer.restart();
                bathing = true
                houseState = "  Oma badet"
                omaXpos = bath.width * 0.05
                omaYPos = bath.height * 0.5
            }
            else
            {
                bathing = false
                minutes = 0
                houseState = "  normal"
                omaXpos = bath.width * 0.25
                omaYPos = bath.height * 0.5
            }
        }
    }

    Timer {
        id:bathTimer
        interval: 1000; running: true; repeat: true;
        onTriggered: {if(bathing)minutes++;}
    }
}




//    Rectangle {
//        id : theTimer
//        x : 20; y: 20
//        width : 320 ; height: 280
//        color: "#707070"

//        Text {

//                text: seconds
//                font.pointSize: 72; font.bold: true
//                font.family: "Courier"
//                anchors.centerIn: parent
//            }
//    }

