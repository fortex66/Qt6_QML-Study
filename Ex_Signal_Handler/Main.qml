import QtQuick
import "content"

Window {
    width: 300
    height: 300
    visible: true

    SquareButton {
        id: sb
        width: 300; height: 300
        property string msg: ""

        /*
        onActivated: function(xPosition, yPosition){
            myText = 'position : ' + xPosition + ', ' + yPosition
        }
        */

        Connections {
            function onActivated(xPosition, yPosition){
                sb.myText = 'position : ' + xPosition + ', ' + yPosition
            }
        }

        // 위의 두가지 방식으로 signal 사용이 가능하다.

        onDeactivated: {
            myText = "Deactivated!"
        }
    }



}
