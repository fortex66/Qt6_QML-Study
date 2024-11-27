import QtQuick
import MyTypes 1.0

Window {
    width: 100
    height: 100
    visible: true
    Text {
        id: myText; anchors.centerIn: parent
        text: "Click Me"
        font.pixelSize: 14
    }
    Msg {
        id: myMsg
        status: Msg.Ready
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if(myMsg.status == Msg.Ready)
                myText.text = "Ready !!"
            else if(myMsg.status == Msg.Loading)
                myText.text = "Loading !!"
            else if(myMsg.status == Msg.Error)
                myText.text = "Error!!"
            }
    }
}
