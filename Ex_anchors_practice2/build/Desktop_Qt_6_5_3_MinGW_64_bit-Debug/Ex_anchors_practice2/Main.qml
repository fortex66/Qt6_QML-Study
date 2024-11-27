import QtQuick

Window {
    width: 400
    height: 200
    visible: true
    title: "anchosrs example"

    Rectangle {
        width: 400; height: 200
        Image {
            source: "./images/bluebackground.png"
        }

        BorderImage {
            source: "./images/bluebutton.png"
            border { left: 14; top: 13; right: 13; bottom: 13 }
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 15
            width: 350; height: 75

            Image {
                anchors.left: parent.left
                anchors.leftMargin: 40
                anchors.verticalCenter: parent.verticalCenter
                source: "./images/login.png"
            }
            Text {
                anchors.left: parent.horizontalCenter
                anchors.leftMargin: -20
                anchors.verticalCenter: parent.verticalCenter
                text: "Login"
                font.bold : true
                color: "white"
                font.pixelSize: 32
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked")
                }
            }
        }

    }
}
