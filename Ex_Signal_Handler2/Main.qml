import QtQuick

Window {
    width: 300
    height: 300
    visible: true
    id: relay

    signal msgReceived(string person, string notice)

    // 로드가 완료되면 특정 이벤트 실행
    Component.onCompleted: {
        relay.msgReceived.connect(sendToPost)
        relay.msgReceived.connect(sendToEmail)
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            relay.msgReceived("Son Eon Sang", "Happy Birthday")
        }
    }

    Text {
        id: output1; anchors.centerIn: parent
    }
    Text {
        id: output2; anchors.top: output1.bottom; anchors.horizontalCenter: parent.horizontalCenter
    }

    // signal Handler 2개
    function sendToPost(person, notice) {
        output1.text = "Post : " + person + ", " + notice
    }
    function sendToEmail(person, notice) {
        output2.text = "Email : " + person + ", " + notice
    }

}
