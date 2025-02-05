import QtQuick
// 나이트의 이동
Window {
    width: 445; height: 445; visible: true; color: "brown"
    Grid {
        x:5; y:5; rows:8; columns:8; spacing:5
        Repeater {
            model: parent.rows * parent.columns
            Rectangle {
                width: 50; height: 50;
                color: {
                    var row = Math.floor(index / 8)
                    var col = index % 8
                    if((row + col) % 2 == 1) // 더한게 홀수면
                        "black"
                    else
                        "white"
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        var x = index % 8
                        var y = Math.floor(index / 8)
                        if( (Math.abs(x - knight.cx) == 1 && Math.abs(y - knight.cy) == 2) ||
                            (Math.abs(x - knight.cx) == 2 && Math.abs(y - knight.cy) == 1))
                        {
                            knight.cx = x
                            knight.cy = y
                        }
                    }
                }
            }
        }
    }
    Image {
        id: knight
        property int cx
        property int cy
        source:"./images/knight.png"
        x: 5 + 55 * cx
        y: 5 + 55 * cy
    }
}
