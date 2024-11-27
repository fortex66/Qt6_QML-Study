import QtQuick
import "modules"
Window {
    width: 600; height: 600; visible: true
    Item {
        id: screen; width: 600; height: 600
        property int animDuration: 500

        // 상단 버튼
        RotationButton {
            id: rotationButton
            duration: screen.animDuration
            z: 100
            anchors.top: screen.top
            anchors.left: screen.left
        }

        Rectangle {
            id: background
            anchors.centerIn: parent; color: "#555560"
            width: rotationButton.angle == 0 ? parent.width : parent.height
            height: rotationButton.angle == 0 ? parent.height : parent.width
            rotation: rotationButton.angle

            Behavior on rotation {
                RotationAnimation {
                    duration: screen.animDuration
                    easing.type: Easing.InQuad
                }
            }

            Item{
                id: grid; anchors.fill: parent
                // 클릭하면 이미지 파일을 넘겨 받아서 배경을 black으로 바꾼다.
                function displayPicture(path) {
                    picture.source = path
                    screen.state = "displayPicture"
                }
                Thumbnail {column: 0; row: 0; image: "../images/101.JPG"; onClicked: parent.displayPicture("./images/101.JPG")}
                Thumbnail {column: 1; row: 0; image: "../images/102.JPG"; onClicked: parent.displayPicture("./images/102.JPG")}
                Thumbnail {column: 2; row: 0; image: "../images/103.JPG"; onClicked: parent.displayPicture("./images/103.JPG")}
                Thumbnail {column: 3; row: 0; image: "../images/104.JPG"; onClicked: parent.displayPicture("./images/104.JPG")}

                Thumbnail {column: 0; row: 1; image: "../images/105.JPG"; onClicked: parent.displayPicture("./images/105.JPG")}
                Thumbnail {column: 1; row: 1; image: "../images/106.JPG"; onClicked: parent.displayPicture("./images/106.JPG")}
                Thumbnail {column: 2; row: 1; image: "../images/107.JPG"; onClicked: parent.displayPicture("./images/107.JPG")}
                Thumbnail {column: 3; row: 1; image: "../images/108.JPG"; onClicked: parent.displayPicture("./images/108.JPG")}

                Thumbnail {column: 0; row: 2; image: "../images/109.JPG"; onClicked: parent.displayPicture("./images/109.JPG")}
                Thumbnail {column: 1; row: 2; image: "../images/110.JPG"; onClicked: parent.displayPicture("./images/110.JPG")}
                Thumbnail {column: 2; row: 2; image: "../images/111.JPG"; onClicked: parent.displayPicture("./images/111.JPG")}
            }

            Image {
                id: picture; z: 2; x: 2 * parent.width; y: 0 // x가 2 * parent.width인 이유는 화면의 옆에 숨겨두기 위함
                width: parent.width; height: parent.height; smooth: true
                fillMode: Image.PreserveAspectFit
            }

            Button {
                id: backButton; width: 150; height: 32; x: 420; y: 696; z: 5; text: "Back"
                visible: false; onClicked: screen.state = "displayGrid"
            }
        }
        state: "displayGrid"
        states: [
            State { name: "displayGrid"; PropertyChanges { target: background; color: "#555560"} },
            State { name: "displayPicture"; PropertyChanges { target: background; color: "black"} }
        ]

        transitions: [
            Transition {
                from: "displayGrid"; to: "displayPicture"
                PropertyAnimation { target: backButton; properties: "visible"; to: true}
                NumberAnimation { target: grid; properties: "scale"; to: 0.5 }
                NumberAnimation { target: grid; properties: "opacity"; to: 0.0; duration: screen.animDuration }
                NumberAnimation { target: picture; properties: "x"; to: 0; duration: screen.animDuration }
                NumberAnimation { target: backButton; properties: "y"; to: 548; duration: 1000}
            },
            Transition {
                from: "displayPicture"; to: "displayGrid"
                SequentialAnimation {
                    ParallelAnimation {
                        NumberAnimation {
                            target: picture; properties: "x"; to: 2 * screen.width; easing.type: Easing.InOutQuad
                        }
                        NumberAnimation {
                            target: backButton; properties: "y"; to: 696; duration: screen.animDuration * 2
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: grid; properties: "scale"; to: 1.0
                            duration: screen.animDuration
                            easing.type: Easing.InOutQuad
                        }
                        NumberAnimation { // 투명값 원상 복구
                            target: grid; properties: "opacity"; to: 1.0
                            duration: screen.animDuration
                            easing.type: Easing.InOutQuad
                        }
                    }
                }
            }
        ]
    }

}
