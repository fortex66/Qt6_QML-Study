import QtQuick

Window {
    id: root; width: 400; height: 340; visible: true; color: "black"
    property date today: new Date()
    property date showDate: new Date()
    property int daysInMonth: new Date(showDate.getFullYear(), showDate.getMonth() + 1, 0).getDate()

    // 0: 일, 1: 월, 2: 화, 3: 수, 4: 목, 5: 금, 6: 토
    property int firstDay: new Date(showDate.getFullYear(), showDate.getMonth(),1).getDay()

    Item {
        id: title
        anchors.top: parent.top;
        anchors.topMargin: 10; width: parent.width; height: childrenRect.height
        Image {
            source: "./images/left.png"; anchors.left: parent.left; anchors.leftMargin: 10
            MouseArea {
                anchors.fill: parent
                onClicked: showDate = new Date(showDate.getFullYear(), showDate.getMonth(), 0)
            }
        }
        Text {
            color: "white"; text: Qt.formatDateTime(showDate, "yyyy년 M월")
            font.pointSize: 14; font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Image {
            source: "./images/right.png"; anchors.right: parent.right; anchors.rightMargin: 10
            MouseArea {
                anchors.fill: parent
                onClicked: showDate = new Date(showDate.getFullYear(), showDate.getMonth() + 1, 1)
            }
        }
    }

    function isToday(idx) {
        if (today.getFullYear() != showDate.getFullYear())
            return false;
        if (today.getMonth() != showDate.getMonth())
            return false;

        return (idx === today.getDate() - 1)
    }

    Item {
        id: dateLabels; anchors.top: title.bottom
        anchors.left: parent.left; anchors.right: parent.right; anchors.margins: 10
        Grid {
            columns: 7; rows: 6; spacing: 10
            Repeater {
                model: firstDay + daysInMonth
                Rectangle {
                    color: {
                        if (index < firstDay)
                            root.color;
                        else
                            isToday(index - firstDay) ? "yellow" : "white"
                    }
                    width: 45; height: 38
                    Text {
                        anchors.centerIn: parent; text: index + 1 - firstDay
                        opacity: (index < firstDay) ? 0.0 : 1.0
                        font.bold: isToday(index - firstDay)
                    }
                }
            }
        }
    }
}
