import QtQuick 2.0
import QtQuick.Controls 1.2
import QtMultimedia 5.0

Item {
    id: bathtub

    property bool bathing: false

    MouseArea {
        anchors.fill: parent
        onClicked: {
            selectedRoom = "Bad"
            tvState = false
            radioState = false
            if (bathing == false)
            {
                 Qt.createComponent("myDialog.qml").createObject(appWindow, {});

//                bathTimer.restart();
//                bathing = true
                personState = "  badend"
                houseState = "  Oma badet"
                omaXpos = (bath.width * 0.0175)
                omaYPos = bath.height * 0.5
            }
            else
            {
                startBathing = false
                bathing = false
                minutes = 0
                houseState = "  normal"
                personState = "  stehend"
                omaXpos = (bath.width * 0.2)
                omaYPos = bath.height * 0.5
            }
        }
    }

    SoundEffect {
            id: playSound
            source: "sounds/notify.wav"
        }

    Timer {
        id:bathTimer
        interval: 1000; running: true; repeat: true;
        onTriggered: {
            if(bathing)
            {
                if((minutes == 0) || (minutes < 0))
                    playSound.play();
                else
                    minutes--;
            }
        }
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

