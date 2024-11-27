import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit()
        }
    }

    Text {
        text: "Hello World"
        anchors.centerIn: parent
        font.pixelSize: 20
    }
}
