import QtQuick 2.0
import jbQuick.Charts 1.0

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

        Chart {
            id: voltage_line;
            width: 845;
            height: 144;
            anchors.centerIn: parent

            chartAnimated: true;
            chartAnimationEasing: Easing.InCubic;
            chartAnimationDuration: 2000;
            chartType: Charts.ChartType.LINE;
            Component.onCompleted: {
                chartData = {
                    labels: ["0.01s", "0.02s", "0.03", "0.04", "0.05s", "0.06s", "0.07s","0.08s","0.09s","0.10s","0.11s","0.12s","0.13s","0.14s","0.15s","0.16s","0.17s","0.18s","0.19s","0.20s"],
                    datasets:[
                        {
                            label: "Voltage line dataset",
                            fillColor: "rgba(0,220,220,0.2)",         /* fill color grafigin altındaki gölgenin rengini degistiriyor */
                            strokeColor: "rgba(0,220,220,1)",           /* stroke color grafikteki çizginin rengini degiştiriyor */
                            pointColor: "rgba(0,220,220,1)",            /* pointStrokeColer grafikteki noktaların rengini degiştiriyor */
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(220,220,220,1)",
                            data: [60, 59, 80, 81, 56, 55, 80, 90, 100,110, 90, 80, 70, 60, 30, 90, 80, 70, 85, 40]
                        }
                    ]
                }
            }
        }
    }

    Item {
        id: current
        x: 1
        y: 624
        width: 845
        height: 144

        Chart {
            id: chart_line2;
            width: 845;
            height: 144;
            anchors.centerIn: parent

            chartAnimated: true;
            chartAnimationEasing: Easing.InCubic;
            chartAnimationDuration: 2000;
            chartType: Charts.ChartType.LINE;
            Component.onCompleted: {
                chartData = {
                    labels: ["0.01s", "0.02s", "0.03", "0.04", "0.05s", "0.06s", "0.07s","0.08s","0.09s","0.10s","0.11s","0.12s","0.13s","0.14s","0.15s","0.16s","0.17s","0.18s","0.19s","0.20s"],
                    datasets:[
                        {
                            label: "My First dataset",
                            fillColor: "rgba(255,0,0,0.4)",
                            strokeColor: "rgba(255,0,0,0.4)",
                            pointColor: "rgba(255,0,0,0.4)",
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(220,220,220,1)",
                            data: [65, 59, 80, 81, 56, 55, 40, 40, 50, 65, 59, 80, 81, 56, 55, 40, 40, 50, 65, 59, 80, 81, 56, 55, 40, 40, 50]
                        }
                    ]
                }
            }
        }
    }

}
