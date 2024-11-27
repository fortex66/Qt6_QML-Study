import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 100;  height: 100; visible: true

    ColumnLayout {
        anchors.centerIn: parent
        Button { action: actionButtonA}
        Button { action: actionButtonB}
    }

    Action {
        id: actionButtonA
        text: "Button A"
        onTriggered: console.log("Button A Triggered")
    }

    Action {
        id: actionButtonB
        text: "Button B"
        onTriggered: console.log("Button B Triggered")
    }
}
