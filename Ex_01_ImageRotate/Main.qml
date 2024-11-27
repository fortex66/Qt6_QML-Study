import QtQuick

Window {
    width: 400
    height: 400
    visible: true
    title: qsTr("45도 회전하기")

    Image {
        anchors.centerIn: parent
        source: "images/QtLogo.png"
        rotation: 45
    }
}
