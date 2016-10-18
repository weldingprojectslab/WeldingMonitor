import QtQuick 2.4
import QtQuick.Window 2.2
import jbQuick.Charts 1.0

Window {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Welding Machine Calibration Monitor")



    Item {
        id: mainqmlage
        x: 0
        y: 0
        width: 845
        height: 768

        Loader
        {
            id: pageloader_mainqmlpage
            source: "qrc:/analysis.qml"
        }

    }

    Item {
        id: menupage
        x: 845
        y: 0
        width: 179
        height: 768

        Loader
        {
            id: pageloader_menupage
            source: "qrc:/menupage.qml"
        }
    }

}
