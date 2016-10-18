import QtQuick 2.0

Item {
    width: 845
    height: 768

    Item {
        id: videoArea
        x: 103
        y: 0
        width: 640
        height: 480
        Rectangle {
            width: 640
            height: 480

        }
        Text {
            id: name
            x: 216
            y: 233
            text: qsTr("burada 640x480 video oynatılacak")

        }
    }

    Item {
        id: voltage
        x: 0
        y: 481
        width: 845
        height: 144
    }

    Item {
        id: current
        x: 1
        y: 624
        width: 845
        height: 144
    }

}
