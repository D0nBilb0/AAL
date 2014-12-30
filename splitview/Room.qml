import QtQuick 2.0

Item {
//Rectangle{

    property alias text: textField.text
    property alias lightXpos: lightBulp.x
    property alias lightYpos: lightBulp.y
    property alias bulpColor : lightBulp.color

    signal roomClicked(double xPos, double yPos)


    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: {
                roomClicked(mouse.x, mouse.y)
            }
    }
    Text {
        id : textField
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pointSize: 16; font.bold: true
    }

    Rectangle {
        id: lightBulp
        width : (parent.width<parent.height?parent.width:parent.height) / 5
        height: width
        border.color: "black"
        border.width: 1
        radius: width*0.5

    }

}
