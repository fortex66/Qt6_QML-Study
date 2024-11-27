import QtQuick

Item {
    id: container; width: 50; height: 50
    property int angle: 0
    property int duration: 250
    Button {
        id: button; text: " ^ "
        x: 0; y: 0; width: 25; height: 25
        onClicked: {
            container.angle = (container.angle == 0 ? -90 : 0)
        }
        states: [
            State {
                name: "normal"
                when: container.angle == 0
            },
            State {
                name: "rotated"
                when: container.angle == -90
            }
        ]
        state: "normal"
        transitions: [
            Transition {
                from: "normal"; to: "rotated"
                NumberAnimation {
                    targets: button
                    properties: "rotation"; to: -90; duration: 200
                }
            },
            Transition {
                from: "rotated"; to: "normal"
                NumberAnimation {
                    targets: button
                    properties: "rotation"; to: 0; duration: 200
                }
            }
        ]
    }
}
