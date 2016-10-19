import QtQuick 2.0
import jbQuick.Charts 1.0
import QtQuick.Controls 1.3

Item {
    width: 845
    height: 768

    Item {
        id: voltagegraph
        x: 0
        y: 0
        width: 845
        height: 153

        Chart {
            id: voltage_line;
            width: 845;
            height: 153;
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
                            data: [800, 700, 750, 700, 700, 600, 500, 500, 750, 750, 1050, 1100, 1050, 1040, 1030, 1000, 0, 200, 300, 480]
                        }
                    ]
                }
            }

            Text {
                id: txt_voltage
                x: 53
                y: 0
                text: qsTr("Gerilim (V)")
                font.pixelSize: 12
            }
        }
    }


    Item {
        id: currentgraph
        x: 0
        y: 153
        width: 845
        height: 153

        Chart {
            id: current_line;
            width: 845;
            height: 153;
            chartAnimated: true;
            chartAnimationEasing: Easing.InCubic;
            chartAnimationDuration: 2000;
            chartType: Charts.ChartType.LINE;
            Component.onCompleted: {
                chartData = {
                    labels: ["0.01s", "0.02s", "0.03", "0.04", "0.05s", "0.06s", "0.07s","0.08s","0.09s","0.10s","0.11s","0.12s","0.13s","0.14s","0.15s","0.16s","0.17s","0.18s","0.19s","0.20s"],
                    datasets:[
                        {
                            label: "current line dataset",
                            fillColor: "rgba(255,0,0,0.4)",
                            strokeColor: "rgba(255,0,0,0.4)",
                            pointColor: "rgba(255,0,0,0.4)",
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(220,220,220,1)",
                            data: [65.0, 59, 80, 81, 56, 55, 40, 40, 50, 65, 59, 0, 81, 56, 0110, 40, 40, 50, 65, 59]
                        }
                    ]
                }
            }

            Text {
                id: txt_current
                x: 53
                y: 0
                text: qsTr("Akım (A)")
                font.pixelSize: 12
            }
        }

    }


    Item {
        id: wirespeedgraph
        x: 0
        y: 306
        width: 845
        height: 153

        Chart {
            id: wirespeed_line;
            width: 845;
            height: 153;

            chartAnimated: true;
            chartAnimationEasing: Easing.InCubic;
            chartAnimationDuration: 2000;
            chartType: Charts.ChartType.LINE;
            Component.onCompleted: {
                chartData = {
                    labels: ["0.01s", "0.02s", "0.03", "0.04", "0.05s", "0.06s", "0.07s","0.08s","0.09s","0.10s","0.11s","0.12s","0.13s","0.14s","0.15s","0.16s","0.17s","0.18s","0.19s","0.20s"],
                    datasets:[
                        {
                            label: "wirespeed line dataset",
                            fillColor: "rgba(255, 155, 138, 1)",         /* fill color grafigin altındaki gölgenin rengini degistiriyor */
                            strokeColor: "rgba(255, 155, 138, 1)",           /* stroke color grafikteki çizginin rengini degiştiriyor */
                            pointColor: "rgba(255, 155, 138, 1)",            /* pointStrokeColer grafikteki noktaların rengini degiştiriyor */
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(255, 155, 138, 1)",
                            data: [15, 16, 10, 22, 22, 24, 0, 3, 5, 5, 5, 7, 16, 22, 20, 24, 24, 12, 10, 10]
                        }
                    ]
                }
            }

            Text {
                id: txt_wirespeed
                x: 53
                y: 0
                text: qsTr("Tel Hızı (m/dk)")
                font.pixelSize: 12
            }
        }
    }


    Item {
        id: temperaturegraph
        x: 0
        y: 459
        width: 845
        height: 153

        Chart {
            id: temperature_line;
            width: 845;
            height: 153;

            chartAnimated: true;
            chartAnimationEasing: Easing.InCubic;
            chartAnimationDuration: 2000;
            chartType: Charts.ChartType.LINE;
            Component.onCompleted: {
                chartData = {
                    labels: ["0.01s", "0.02s", "0.03", "0.04", "0.05s", "0.06s", "0.07s","0.08s","0.09s","0.10s","0.11s","0.12s","0.13s","0.14s","0.15s","0.16s","0.17s","0.18s","0.19s","0.20s"],
                    datasets:[
                        {
                            label: "temperature line dataset",
                            fillColor: "rgba(158, 155, 193, 1)",         /* fill color grafigin altındaki gölgenin rengini degistiriyor */
                            strokeColor: "rgba(158, 155, 193, 1)",           /* stroke color grafikteki çizginin rengini degiştiriyor */
                            pointColor: "rgba(158, 155, 193, 1)",            /* pointStrokeColer grafikteki noktaların rengini degiştiriyor */
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(158, 155, 193, 1)",
                            data: [600, 590, 800, 810, 560, 550, 800, 900, 100,1000, 900, 800, 700, 600, 300, 900, 800, 700, 850, 400]
                        }
                    ]
                }
            }

            Text {
                id: txt_temprature
                x: 53
                y: 0
                text: qsTr("Sıcaklık (C)")
                font.pixelSize: 12
            }
        }
    }


    Item {
        id: flowmetergraph
        x: 0
        y: 612
        width: 845
        height: 153

        Chart {
            id: flowmeter_line;
            width: 845;
            height: 153;


            chartAnimated: true;
            chartAnimationEasing: Easing.InCubic;
            chartAnimationDuration: 2000;
            chartType: Charts.ChartType.LINE;
            Component.onCompleted: {
                chartData = {
                    labels: ["0.01s", "0.02s", "0.03", "0.04", "0.05s", "0.06s", "0.07s","0.08s","0.09s","0.10s","0.11s","0.12s","0.13s","0.14s","0.15s","0.16s","0.17s","0.18s","0.19s","0.20s"],
                    datasets:[
                        {
                            label: "flowmeter line dataset",
                            fillColor: "rgba(122, 119, 255, 1)",         /* fill color grafigin altındaki gölgenin rengini degistiriyor */
                            strokeColor: "rgba(122, 119, 255, 1)",           /* stroke color grafikteki çizginin rengini degiştiriyor */
                            pointColor: "rgba(122, 119, 255, 1)",            /* pointStrokeColer grafikteki noktaların rengini degiştiriyor */
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(122, 119, 255, 1)",
                            data: [6, 9, 8, 8, 6, 5, 8, 16, 10,11, 9, 22, 22, 23, 30, 27, 26, 25, 25, 10]
                        }
                    ]
                }
            }

            Text {
                id: txt_flowmeter
                x: 53
                y: 0
                text: qsTr("Gaz Akış Hızı (l/dk)")
                font.pixelSize: 12
            }
        }
    }





}
