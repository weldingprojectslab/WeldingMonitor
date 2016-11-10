import QtQuick 2.0
import QtQuick 2.2


Item {
    width: 845
    height: 768
    property alias sampling_time_txt: sampling_time_txt
    property int timeCount: 0
    property int timeSecond: 0
    property int timeMinute: 0

    Rectangle{
        x: 0
        y: 0
        width: 845
        height: 768


        Text {
            id: sampling_time_txt
            x: 307
            y: 337
            text: qsTr("00:00")
            font.pixelSize: 80

        }

        Text {
            id: sample_info_txt
            x: 282
            y: 431
            width: 281
            height: 39
            text: qsTr("analiz verileri toplanıyor")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 20
            OpacityAnimator {
                loops: Animation.Infinite
                target: sample_info_txt;
                from: 0;
                to: 1;
                duration: 5000
                running: true
            }
        }
    }

    Timer {
        interval: 1000;
        running: true;
        repeat: true;
        triggeredOnStart: false;
        onTriggered: timeChanged()
       }

    function timeChanged()
    {
        timeCount++;
        timeSecond = timeCount % 60;
        timeMinute = timeCount / 60;

        if(timeSecond < 10 && timeMinute < 10)
        {
            sampling_time_txt.text = "0" + timeMinute.toString() + ":" +"0" + timeSecond.toString() ;
        }
        else if( timeSecond >= 10 && timeMinute < 10)
        {
            sampling_time_txt.text = "0" + timeMinute.toString() + ":" + timeSecond.toString() ;
        }
        else if( timeSecond < 10 && timeMinute >= 10)
        {
            sampling_time_txt.text = timeMinute.toString() + ":" +"0" + timeSecond.toString() ;
        }
        else
        {
            sampling_time_txt.text = timeMinute.toString() + ":" + timeSecond.toString() ;
        }





    }


}
