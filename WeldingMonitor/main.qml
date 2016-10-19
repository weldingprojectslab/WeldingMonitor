import QtQuick 2.4
import QtQuick.Window 2.2
import jbQuick.Charts 1.0
import QtQuick.Controls 1.3

Window {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Welding Machine Calibration Monitor")
    id: mainprogram



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

        Button {
            id: btn_analysis
            x: 8
            y: 13
            width: 163
            height: 96
            text: qsTr("Analiz")
            onClicked: {
                pageloader_mainqmlpage.source = "qrc:/analysis.qml";
            }
        }

        Button {
            id: btn_detailed_analysis
            x: 8
            y: 110
            width: 163
            height: 96
            text: qsTr("Detaylı Analiz")
            onClicked: {
                pageloader_mainqmlpage.source = "qrc:/deepanalysis.qml";
            }
        }

        Button {
            id: btn_settings
            x: 8
            y: 207
            width: 163
            height: 96
            text: qsTr("Ayarlar")
        }

        Button {
            id: btn_calibration
            x: 8
            y: 645
            width: 163
            height: 96
            text: qsTr("Kalibrasyon Test")
        }


    }

}
