import QtQuick

Window {
    width: 200; height: 100; visible: true;

    Text {
        id: myText
        anchors.centerIn: parent
        text: msg.author // main.cpp를 통해 Message 클래스와 매핑됨

        Component.onCompleted: {
            msg.author = "Hello"
            myText.text = msg.author
        }
    }
}
