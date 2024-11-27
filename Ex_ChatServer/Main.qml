import QtQuick
import TCP 1.0

Window {
    width: 400
    height: 250
    visible: true
    title: "Server"

    TcpServer {
        id: myServer
        onDataReceived: function(data) {
            output.text += "Client> " + data
            myServer.sendData("Server> 메시지를 받았습니다.")
        }
    }

    Component.onCompleted: myServer.initialize();

    Column {
        spacing: 7; anchors.margins: 10; anchors.fill: parent
        Rectangle {
            border.color: "black"; color: "lightgray"
            width: parent.width; height: parent.height
            TextEdit {
                id: output; anchors.fill: parent
            }
        }
    }
}
