import QtQuick

Item {
    id: container
    signal clicked
    property int column
    property int row
    property string image
    width: 96; height: 96
    x: 32 + column * (width + 32)
    y: 32 + row * (width + 32)

    //윤곽선
    Rectangle { color: "black"; anchors.fill: parent}
    Rectangle {
        x: 4; y:4;
        width: parent.width - 8
        height: parent.height - 8
    }
    Image {
        x: 5; y: 5;
        width: parent.width - 10
        height: parent.height - 10
        source: container.image
        fillMode: Image.PreserveAspectCrop
    }
    MouseArea {
        anchors.fill: parent
        onClicked: container.clicked()
    }
}
