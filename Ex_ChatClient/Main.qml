import QtQuick
import TCP 1.0

Window {
    width: 400
    height: 276
    visible: true
    title: "Client"
    TcpClient {
        id: myClient
        onDataReceived: function(data) {
            output.text += data + "\n";
        }
    }

    Component.onCompleted: myClient.initialize()

    Column {
        spacing: 7; anchors.margins: 10; anchors.fill: parent
        width: parent.width;
        Rectangle {
            border.color: "black"; color: "lightgray"
            width: parent.width; height: 200
            TextEdit {
                id: output; anchors.fill: parent
            }
        }
        Rectangle {
            border.color: "black"; color: "lightgray"
            width: parent.width; height: 30
            TextInput {
                width: 200; height: 30
                id: entryField; focus: true;
                font.pixelSize: 15
                Keys.onReturnPressed: {
                    myClient.sendData(text)
                    clear()
                }
            }
        }
    }
}
