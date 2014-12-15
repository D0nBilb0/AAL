/****************************************************************************
**
** Copyright (C) 2013 Digia Plc and/or its subsidiary(-ies).
** Contact: http://www.qt-project.org/legal
**
** This file is part of the Qt Quick Controls module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** You may use this file under the terms of the BSD license as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of Digia Plc and its Subsidiary(-ies) nor the names
**     of its contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/





import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 1200
    height: 900
    title: qsTr("AAL")
    id: appWindow

    property string selectedRoom
    property bool tvState: false
    property int curTime: 12

//    menuBar: MenuBar {
//        Menu {
//            title: qsTr("File")
//            MenuItem {
//                text: qsTr("Exit")
//                onTriggered: Qt.quit();
//            }
//        }
//    }

//    Image {
//        x: 0
//        y: 0
//        width : parent.width
//        height: parent.height
//        source : "images/AAL_Grundriss_clear.png"
////        source : "images/Grundriss.png"
//    }

    Room {
        id: bath
        x: 0
        y: 0
        width: appWindow.width/4
        height: appWindow.height/3
        objectName: "bath"
        color: "lightgrey"
        border.color: "black"
        border.width: 1
        text : "bathroom"
        bulpColor: selectedRoom === objectName ? "yellow" : "white"
        temperature : 20

        lightXpos: parent.x+10
        lightYpos: parent.y+10

        onRoomClicked: {
            positionLabel.text = positionLabel.text = "\n\n  bath" + " " + xPos + " " + yPos
            selectedRoom = objectName;
        }
    }
    Room {
        id: kitchen
        x: appWindow.width/4
        y: 0
        width: appWindow.width/4
        height: appWindow.height/3
        objectName: "kitchen"
        color: "white"
        border.color: "black"
        border.width: 1
        text : "kitchen"
        bulpColor: selectedRoom === objectName ? "yellow" : "white"
        temperature : 20

        lightXpos: parent.x+10
        lightYpos: parent.y+10

        onRoomClicked: {
            positionLabel.text = positionLabel.text = "\n\n  kitchen" + " " + xPos + " " + yPos
            selectedRoom = objectName;
        }
    }
    Room {
        id: hall
        x: 0
        y: appWindow.height/3
        width: appWindow.width*2/4
        height: appWindow.height/3
        objectName: "hall"
        color: "lightblue"
        border.color: "black"
        border.width: 1
        text : "hall"
        bulpColor: selectedRoom === objectName ? "yellow" : "white"
        temperature : 20

        lightXpos: parent.x+10
        lightYpos: parent.y+10

        onRoomClicked: {
            positionLabel.text = positionLabel.text = "\n\n  hall" + " " + xPos + " " + yPos
            selectedRoom = objectName;
        }
    }
    Room {
        id: bedRoom
        x: 0
        y: appWindow.height*2/3
        width: appWindow.width*2/4
        height: appWindow.height/3
        objectName: "bedroom"
        color: "lightsteelblue"
        border.color: "black"
        border.width: 1
        text : "bedroom"
        bulpColor: selectedRoom === objectName ? "yellow" : "white"
        temperature : 20

        lightXpos: parent.x+10
        lightYpos: parent.y+10

        Bed {
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 30
            width : parent.width * 0.5
            height : 100
            color: "#7c3e04"
        }

        onRoomClicked: {
            positionLabel.text = positionLabel.text = "\n\n  bedroom" + " " + xPos + " " + yPos
            selectedRoom = objectName;
        }
    }
    Room {
        id: livingRoom
        x: appWindow.width*2/4
        y: 0
        objectName: "livingRoom"
        width: appWindow.width/4
        height: appWindow.height
        color: "#f76161"
        border.color: "black"
        border.width: 1
        text : "livingroom"
        bulpColor: selectedRoom === objectName ? "yellow" : "white"
        temperature : 20

        lightXpos: parent.x+10
        lightYpos: parent.y+10

        Couch {
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 30
//           x: parent.width * 0.1
//           y: parent.height * 0.90
           width : parent.width * 0.8
           height : 100
           color: "#7c3e04"
        }

        Rectangle {
            id: televisionLR
            anchors.bottom : parent.bottom
            anchors.bottomMargin: 150;
            anchors.right: parent.right
            anchors.rightMargin: 50
            width: 100
            height: 100
            color: tvState === true ? "#0000FF" : "#000000"

            Text {
                id : textFieldTV
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 11; font.bold: false
                color: "#FFFFFF"
                text : "TV"
            }

            MouseArea {
                id: mouseAreaTV
                anchors.fill: parent
                onClicked: {
                        if (tvState === true)
                            tvState = false
                        else
                            tvState = true
                    }
            }
        }

        onRoomClicked: {
            selectedRoom = objectName;
            positionLabel.text = positionLabel.text = "\n\n  livingroom" + " " + xPos + " " + yPos
            //bulpColor = "yellow"
        }
    }

//    Info {
//        x: appWindow.width*3/4
//        y: 0
//        width: appWindow.width*1/4
//        height: appWindow.height/2

////        model: AAAAAAAAAAA{}
//    }

    Slider {
        id: slider
        minimumValue: 0
        maximumValue: 23
        value: 12
        stepSize: 1
        tickmarksEnabled: true
        anchors.bottom : parent.bottom
        anchors.bottomMargin: 10;
        anchors.right: parent.right
        anchors.rightMargin: 50
        onValueChanged: curTime = value


        Label {
            anchors.bottom : parent.top
            anchors.bottomMargin: 10;
//            anchors.right: parent.right
//            anchors.rightMargin: 50

            text : curTime + ":00 Uhr"
        }

    }

    InfoPanel {
        x: appWindow.width*3/4
        y: 0
        width: appWindow.width*1/4
        height: appWindow.height*3/4

        Label {
            id: positionLabel
            text: "\n\n  programm running"
        }
    }

}
