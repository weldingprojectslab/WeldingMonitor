#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <adcthread.h>
#include <datacollect.h>
#include <QThread>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);






    QQmlApplicationEngine engine;
    engine.addImportPath("qml");
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));


    DataCollect mDataCollect;
    mDataCollect.StartDataCollectting();
    mDataCollect.SetDataReadNum(100);
    mDataCollect.InitDataCollectting();
    QThread::msleep(100);

//    AdcThread channel0;
//    channel0.name = "channel0";

//    AdcThread channel1;
//    channel1.name = "channel1";

//    AdcThread channel2;
//    channel2.name = "channel2";

//    AdcThread channel3;
//    channel3.name = "channel3";

//    AdcThread channel4;
//    channel4.name = "channel4";

//    AdcThread channel5;
//    channel5.name = "channel5";


//    channel0.start(QThread::InheritPriority);
//    channel1.start(QThread::InheritPriority);
//    channel2.start(QThread::InheritPriority);
//    channel3.start(QThread::InheritPriority);
//    channel4.start(QThread::InheritPriority);
//    channel5.start(QThread::InheritPriority);



    return app.exec();
}
