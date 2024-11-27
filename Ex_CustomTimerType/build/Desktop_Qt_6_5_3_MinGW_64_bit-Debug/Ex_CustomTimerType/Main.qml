import QtQuick
import QtQuick.Controls
import MyCustomTimer

Window {
    width: 300
    height: 200
    visible: true
    property int timerCnt: 0

    Image {
        id: loadImage
        source: "images/loading.png"
        width: 100; height: 100
        anchors.top: parent.top; anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
    }

    PropertyAnimation {
        id: loadAni; target: loadImage; loops: Animation.Infinite
        from: 0; to: 360; property: "rotation"
        duration: 2000; running: false
    }

    Text {
        text: timer.active ? "타이머 동작 중." : "타이머 정지 상태"
        font.pixelSize: 24
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: loadImage.bottom; anchors.topMargin: 20
    }

    MyTimer {
        id: timer
        interval: 1000
        onTimeout: {
            console.log("Timer call : ", timerCnt++)
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if( !timer.active) {
                console.log("Timer start, interval:", timer.interval)
                timer.start()
                loadAni.start()
            } else {
                console.log("Timer stop")
                timer.stop()
                loadAni.stop()
            }
        }
    }
}
