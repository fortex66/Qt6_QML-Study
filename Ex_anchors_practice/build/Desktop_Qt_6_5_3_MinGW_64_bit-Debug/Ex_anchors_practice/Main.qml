import QtQuick
import "content"

Window {
    width: 300; height: 100; visible: true
    id: window
    color: "white"
    title: "Simple Accessible"

    Column {
        id: column; spacing: 6; anchors.margins: 10
        anchors.fill: parent
        width: parent.width

        Text {
            id: status; width: column.width
        }

        Row {
            spacing: 6
            Butten {
                id: sendButton
                width: 100; height: 40; text: "Send"
                onClicked: {
                    status.text = "Send button clicked"
                }
            }
            Butten {
                id: discardButton
                width: 100; height: 40; text: "Discard"
                onClicked: {
                    status.text = "Discard button clicked"
                }
            }
        }
    }
}
