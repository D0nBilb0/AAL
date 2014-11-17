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





import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 600
    height: 400
    id: appWindow

    property string selectedRoom


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

        onRoomClicked: {
            positionLabel.text = positionLabel.text = "bath" + " " + xPos + " " + yPos
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

        onRoomClicked: {
            positionLabel.text = positionLabel.text = "kitchen" + " " + xPos + " " + yPos
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

        onRoomClicked: {
            positionLabel.text = positionLabel.text = "hall" + " " + xPos + " " + yPos
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

        onRoomClicked: {
            positionLabel.text = positionLabel.text = "bedroom" + " " + xPos + " " + yPos
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

        onRoomClicked: {
            selectedRoom = objectName;
            positionLabel.text = positionLabel.text = "livingroom" + " " + xPos + " " + yPos
            //bulpColor = "yellow"
        }
    }

    Info {
        x: appWindow.width*3/4
        y: 0
        width: appWindow.width*1/4
        height: appWindow.height

//        model: AAAAAAAAAAA{}
    }

    Column {
        id: infoCol
        x: appWindow.width*3/4
        y: 0
        width: appWindow.width*1/4
        height: appWindow.height

        Label {
            id: positionLabel
            text: " programm running"
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
                text: "  bath:           0°C"
            }
            Label {
                id : tempKitchen
                text: "  kitchen:       0°C"
            }
            Label {
                id : tempHall
                text: "  hall:             0°C"
            }
            Label {
                id : tempBedroom
                text: "  bedroom:    0°C"
            }
            Label {
                id : tempLivingroom
                text: "  livingroom:  0°C"
            }
        }
    }

}
