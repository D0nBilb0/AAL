import QtQuick 2.0

Item{

    property alias text: textField.text
    property alias bulpColor : lightBulp.color
    property int temperature

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
        font.pointSize: 12; font.bold: false
    }

    Rectangle {
        id: lightBulp
        width : (parent.width<parent.height?parent.width:parent.height) / 3
        height: width
        border.color: "black"
        border.width: 1
        radius: width*0.5

    }

}
