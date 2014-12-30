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
    width: 1600
    height: 980
    title: qsTr("AAL Projekt Team 1")
    id: appWindow

    property string selectedRoom : "Flur"
    property bool tvState: false
    property bool radioState: false
    property bool telefonState: true
    property string houseState: "  normal"
    property int curTime: 12
    property string textColor: "black"
    property int temperature: 22
    property int omaXpos: width * 0.1
    property int omaYPos: height * 0.5
    property string soundImage: "images/Sound.png"

//    menuBar: MenuBar {
//        Menu {
//            title: qsTr("File")
//            MenuItem {
//                text: qsTr("Exit")
//                onTriggered: Qt.quit();
//            }
//        }
//    }


    Image {
        x: 0
        y: 0
        width : parent.width
        height: parent.height
//        source : "images/AAL_Grundriss_clear.png"
        source : "images/Grundriss.png"
    }

    Oma{
        id: omaImage
        x: omaXpos
        y: omaYPos
    }

    Room {
        id: bath
        x: 0
        y: 0
        width: appWindow.width/4
        height: appWindow.height/3
        objectName: "Bad"
//        color: "lightgrey"
//        border.color: "black"
//        border.width: 1
        text : "Bad"
        bulpColor: selectedRoom === objectName ? "yellow" : "white"

        lightXpos: parent.x+10
        lightYpos: parent.y+10

        onRoomClicked: {
            positionLabel.text = positionLabel.text = "\n\n  Bad" + " " + xPos + " " + yPos
            selectedRoom = objectName;
            omaXpos = xPos;
            omaYPos = yPos;
            telefonState = true
            houseState = "  normal"
        }
    }
    Room {
        id: kitchen
        x: appWindow.width/4
        y: 0
        width: appWindow.width/4
        height: appWindow.height/3
        objectName: "Küche"
//        color: "white"
//        border.color: "black"
//        border.width: 1
        text : "Küche"
        bulpColor: selectedRoom === objectName ? "yellow" : "white"

        lightXpos: parent.x+10
        lightYpos: parent.y+10

        onRoomClicked: {
            positionLabel.text = positionLabel.text = "\n\n  Küche" + " " + xPos + " " + yPos
            selectedRoom = objectName;
            omaXpos = xPos + bath.width;
            omaYPos = yPos;
            telefonState = true
            houseState = "  normal"
        }
    }
    Room {
        id: hall
        x: 0
        y: appWindow.height/3
        width: appWindow.width*2/4
        height: appWindow.height/3
        objectName: "Flur"
//        color: "lightblue"
//        border.color: "black"
//        border.width: 1
        text : "Flur"
        bulpColor: selectedRoom === objectName ? "yellow" : "white"

        lightXpos: parent.x+10
        lightYpos: parent.y+10

        onRoomClicked: {
            positionLabel.text = positionLabel.text = "\n\n  Flur" + " " + xPos + " " + yPos
            selectedRoom = objectName;
            omaXpos = xPos;
            omaYPos = yPos + bath.height;
            telefonState = true
            houseState = "  normal"
        }
    }
    Room {
        id: bedRoom
        x: 0
        y: appWindow.height*2/3
        width: appWindow.width*2/4
        height: appWindow.height/3
        objectName: "Schlafzimmer"
//        color: "lightsteelblue"
//        border.color: "black"
//        border.width: 1
        text : "Schlafzimmer"
        bulpColor: selectedRoom === objectName ? "yellow" : "white"

        lightXpos: parent.x+10
        lightYpos: parent.y+10

        Bed {
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height * 0.3
            anchors.top: parent.top
            anchors.topMargin: parent.height*0.3
            anchors.left: parent.left
            anchors.leftMargin: parent.width *0.1
            width : parent.width * 0.2
            //height : parent.height*0.3
            color: "transparent"
        }

        onRoomClicked: {
            positionLabel.text = positionLabel.text = "\n\n  Schlafzimmer" + " " + xPos + " " + yPos
            selectedRoom = objectName;
            omaXpos = xPos;
            omaYPos = yPos + bath.height + hall.height;
            telefonState = true
            houseState = "  normal"
        }
    }
    Room {
        id: livingRoom
        x: appWindow.width*2/4
        y: 0
        objectName: "Wohnzimmer"
        width: appWindow.width/4
        height: appWindow.height
//        color: "#f76161"
//        border.color: "black"
//        border.width: 1
        text : "Wohnzimmer"
        bulpColor: selectedRoom === objectName ? "yellow" : "white"

        lightXpos: parent.x+10
        lightYpos: parent.y+10

        Image{
            source: telefonState == true ? "images/Sound.png" : "images/mute.png"
            anchors.top: parent.top
            anchors.topMargin: parent.height * 0.025
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height * 0.875
            anchors.right: parent.right
            anchors.rightMargin: parent.width*0.05

            width: parent.width*0.15

            fillMode: Image.PreserveAspectFit
            smooth: true
        }

        Couch {
            anchors.top: parent.top
            anchors.topMargin: parent.height * 0.15
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height * 0.65
            anchors.left: parent.left
            anchors.leftMargin: parent.width*0.1
            width : parent.width * 0.15
            color: "transparent"
        }

        Rectangle {
            id: televisionLR
            anchors.top: parent.top
            anchors.topMargin: parent.height * 0.2
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height * 0.6
            anchors.right: parent.right
            anchors.rightMargin: parent.width*0.25

            width : parent.width * 0.15

            color: tvState === true ? "#0000FF" : "#000000"

            rotation: 45

            Text {
                id : textFieldTV
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 11; font.bold: false
                color: "#FFFFFF"
                text : "TV"

                rotation: 360-45
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
            positionLabel.text = positionLabel.text = "\n\n  Wohnzimmer" + " " + xPos + " " + yPos
            omaXpos = xPos + bath.width + kitchen.width;
            omaYPos = yPos;
            telefonState = true
            houseState = "  normal"
        }
    }

    Slider {
        id: slider
        minimumValue: 0
        maximumValue: 23
        value: 12
        stepSize: 1
        tickmarksEnabled: true
        anchors.bottom : infoPanel.bottom
        anchors.bottomMargin: infoPanel.height*0.05;
        anchors.right: infoPanel.right
        anchors.rightMargin: infoPanel.width*0.1
        anchors.left: infoPanel.left
        anchors.leftMargin: infoPanel.width*0.1

        onValueChanged: {
            curTime = value

            if((curTime>= 7) && (curTime <=22))
            {
                textColor = "#800000"
                temperature = 22
            }
            else
            {
                textColor = "blue"
                temperature = 19
            }

        }


        Label {
            anchors.bottom : parent.top
            anchors.bottomMargin: 10;
//            anchors.right: parent.right
//            anchors.rightMargin: 50

            text : curTime + ":00 Uhr"
            font.pointSize: 14
        }

    }

    InfoPanel {
        id: infoPanel
        x: appWindow.width*3/4
        y: 0
        width: appWindow.width*1/4
        height: appWindow.height

        Label {
            id: positionLabel
            text: "\n\n  programm running"
        }
    }

}
