import QtQuick 2.4
import QtQuick.Window 2.2
import jbQuick.Charts 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Chart {
      id: chart_line;
      width: 400;
      height: 400;
      chartAnimated: true;
      chartAnimationEasing: Easing.InOutElastic;
      chartAnimationDuration: 2000;
      chartType: Charts.ChartType.LINE;
      Component.onCompleted: {
          chartData = {
        labels: ["January", "February", "March", "April", "May", "June", "July"],
        datasets: [
            {
                label: "My First dataset",
                fillColor: "rgba(220,220,220,0.2)",
                strokeColor: "rgba(220,220,220,1)",
                pointColor: "rgba(220,220,220,1)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(220,220,220,1)",
                data: [65, 59, 80, 81, 56, 55, 40]
            },
            {
                label: "My Second dataset",
                fillColor: "rgba(151,187,205,0.2)",
                strokeColor: "rgba(151,187,205,1)",
                pointColor: "rgba(151,187,205,1)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(151,187,205,1)",
                data: [28, 48, 40, 19, 86, 27, 90]
            }
        ]
    }
      }
    }



}
