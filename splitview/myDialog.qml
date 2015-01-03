import QtQuick 2.0
import QtQuick.Controls 1.2

Item {
    id: dialogComponent
    anchors.fill: parent

    // Add a simple animation to fade in the popup
    // let the opacity go from 0 to 1 in 400ms
//    PropertyAnimation { target: dialogComponent; property: "opacity";
//                                  duration: 400; from: 0; to: 1;
//                                  easing.type: Easing.InOutQuad ; running: true }

    // This rectange is the a overlay to partially show the parent through it
    // and clicking outside of the 'dialog' popup will do 'nothing'
    Rectangle {
        anchors.fill: parent
        id: overlay
        color: "#000000"
        opacity: 0.6
        // add a mouse area so that clicks outside
        // the dialog window will not do anything
        MouseArea {
            anchors.fill: parent
        }
    }

    // This rectangle is the actual popup
    Rectangle {
        id: dialogWindow
        width: 300
        height: 200
        radius: 10
        anchors.centerIn: parent

        Label {
            anchors.top: parent.top
            anchors.topMargin: parent.height *0.2
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height * 0.75
            anchors.left: parent.left
            anchors.leftMargin: parent.width * 0.25

            width: parent.width * 0.5

            text: "Eingabe Badezeit"
            font.pointSize: 14
            font.bold: true
        }

        TextField {
            id:myTextField
            anchors.top: parent.top
            anchors.topMargin: parent.height *0.5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height * 0.4
            anchors.left: parent.left
            anchors.leftMargin: parent.width * 0.1

            width: parent.width * 0.8

            placeholderText: qsTr("Bitte Badezeit eingeben")
        }

        Button {
            anchors.top: parent.top
            anchors.topMargin: parent.height *0.75
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height * 0.1
            anchors.left: parent.left
            anchors.leftMargin: parent.width * 0.3

            width: parent.width *0.4

           text: "Ok"

           onClicked: {
               minutes = myTextField.text.toString();
               startBathing = true
               bathTimer.restart();
               bathing = true
               dialogComponent.destroy();
           }
        }
    }
}
