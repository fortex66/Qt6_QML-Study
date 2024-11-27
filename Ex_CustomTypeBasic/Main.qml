import QtQuick
import Message 1.0

Window {
    width: 300
    height: 200
    visible: true
    Text {
        id: myText
        anchors.centerIn: parent
        text: myMsg.author // author 호출
        Component.onCompleted: {
            myMsg.author = "Hello" // setAuthor 호출
        }
    }

    Msg {
        id: myMsg
        onNewMessagePosted: function(subject) {
            console.log("Message received: ", subject)
            myText.font.pixelSize = 25
            myText.text = subject
        }
    }
}
