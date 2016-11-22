import QtQuick 2.0
import jbQuick.Charts 1.0
import QtQuick.Controls 1.3

Item {
    width: 845
    height: 768


    property var array: [200, 300, 400 , 200, 100, 100, 100 ,1100 ,100]
    property var tmparray: []
    property var _labels: []
    property var label: []
    property var values: []
    property var length: 0

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

        Timer {
               id: dataTimer
               interval: 10000
               repeat: true
               onTriggered: {
                   addData([5.008, 10.007])
//                   array = test_class_first.GetTheList()
//                   refreshData(test_class_first.GetTheList())
//                   console.log("array :" + array)
//                   tmparray = test_class_first.GetTheList()
//                    array = [];
//                   array.length = 0;
                   console.log(worker_qml.GetTheList())
                   console.log("the number : " + worker_qml.GetTheList2())
                   tmparray = worker_qml.GetTheList()

//                   array.push(tmparray[4]);
                   array[0] = tmparray[0];
                   array[1] = tmparray[1];
                   array[2] = tmparray[2];
                   array[3] = tmparray[3];
                   current_line2.repaint();
               }

           }


        Timer {
               id: plotUpdateTimer
               interval: 1000
               repeat: true
               running: true
               onTriggered: {
                  // voltage_line.repaint()
               }
           }


        Chart {
            id: voltage_line;
            width: 800;
            height: 144;
            anchors.centerIn: parent

            chartAnimated: false;
            chartAnimationEasing: Easing.InCubic;
            chartAnimationDuration: 1000;
            chartType: Charts.ChartType.LINE;
            Component.onCompleted: {

                //Start simulated data timer.
                dataTimer.start()


                //Set data visual properties and data/label variables.
                chartData = {
                    labels: ["0.000", "", "", "", "","", "", "", "","","","0.001","","","","","","","","","","","","0.002", "", "", "", "","", "", "", "","","","0.003","","","","","","","","","","","","0.004"],
                    datasets:[
                        {
                            label: "Voltage line dataset",
                            fillColor: "rgba(0,220,220,0.2)",         /* fill color grafigin altındaki gölgenin rengini degistiriyor */
                            strokeColor: "rgba(0,220,220,1)",           /* stroke color grafikteki çizginin rengini degiştiriyor */
                            pointColor: "rgba(0,220,220,1)",            /* pointStrokeColer grafikteki noktaların rengini degiştiriyor */
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(220,220,220,1)",
                            data:  [650, 590, 800, 810, 560, 550, 400, 400, 500, 650, 590, 4000, 810, 560, 0110, 400, 400, 500, 650, 590,600,600,600,900]
                        }
                    ]
                }
            }

            Text {
                id: text1
                x: 53
                y: -1
                text: qsTr("Gerilim (V)")
                font.pixelSize: 12
            }
        }
    }

    Item {
        id: current
        x: 0
        y: 625
        width: 845
        height: 144

        Chart {
            id: current_line2;
            width: 800;
            height: 144;
            anchors.verticalCenterOffset: -1
            anchors.horizontalCenterOffset: 0
            anchors.centerIn: parent


            chartAnimated: true;
            chartAnimationEasing: Easing.InCubic;
            chartAnimationDuration: 1000;
            chartType: Charts.ChartType.LINE;
            Component.onCompleted: {
                chartData = {
                    labels: ["0.00s", "", "", "", "","", "", "", "","","","0.01s","","","","","","","","","","","","0.02s", "", "", "", "","", "", "", "","","","0.03s","","","","","","","","","","","","0.04s"],
                    datasets:[
                        {
                            label: "current line dataset",
                            fillColor: "rgba(255,0,0,0.4)",
                            strokeColor: "rgba(255,0,0,0.4)",
                            pointColor: "rgba(255,0,0,0.4)",
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(220,220,220,1)",
                            data: array
                        }
                    ]
                }
            }

            Text {
                id: text2
                x: 53
                y: -1
                text: qsTr("Akım (A)")
                font.pixelSize: 12
            }
        }
    }

    function addData(data)
    {
        console.log("values.length :" + values.length)

        if(data.length >= 20 )
        {
            length = 0;
            data.length = 0;
            label.length = 0;

        }

        //add new labels/values
        for(var i = length; i < (length + data.length); i++)
        {
            label.push(i)
            values.push(data [i - length])
        }

        // update total labels/values length
        length += data.length
    }

    function refreshData(my_array)
    {
       array = []
       array.push(my_array)
    }

}
