import QtQuick 2.0
import QtQuick.Controls 1.3

Item {
    width: 179
    height: 768

    Button {
        id: button1
        x: 8
        y: 8
        width: 163
        height: 113
        text: qsTr("Button")
        onClicked: {

        }
    }

    Button {
        id: button2
        x: 8
        y: 127
        width: 163
        height: 113
        text: qsTr("Button")
    }

}
