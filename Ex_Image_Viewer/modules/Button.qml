import QtQuick

Item {
    id: container
    signal clicked
    property string text // 외부에서 텍스트 접근
    Rectangle {
        id: background; anchors.fill: parent
        border.color: mouseRegion.pressed ? "gray" : "black"
        smooth: true; radius: 10
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#606060"}
            GradientStop { position: 0.33; color: "#202020"}
            GradientStop { position: 1.0; color: "#404040"}
        }
    }
    Text {
        color: "white"; anchors.centerIn: background
        font.bold: true; font.pixelSize: 15
        text: container.text; style: Text.Raised; styleColor: "black"
    }
    MouseArea {
        id: mouseRegion
        anchors.fill: parent
        onClicked: container.clicked()
    }
}
