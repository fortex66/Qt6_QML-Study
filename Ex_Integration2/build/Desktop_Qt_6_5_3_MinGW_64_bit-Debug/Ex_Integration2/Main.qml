import QtQuick
import QtQuick.Controls.Basic

Window {
    width: 320; height: 150; visible: true
    Column {
        anchors.centerIn: parent; spacing: 10
        Text {
            text: msg.author

            Component.onCompleted: {
                msg.author = "Hello"
            }
        }
        Button {
            width: 320
            text: "[C++] postMessage() 함수 호출"
            onClicked: {
                var str = "Who are you ?"
                var result = msg.postMessage(str)
                myResult.text = "리턴값 " + result
                msg.refresh();
            }
        }
        Text {
            id: myResult; text: "리턴값 : "
        }
    }
}
