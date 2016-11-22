#include "adcthread.h"
#include <QtCore>
#include <QThread>
#include <QElapsedTimer>
#include <QFile>
#include <QIODevice>
#include <QDataStream>

AdcThread::AdcThread()
{

}

void AdcThread::run()
{
    qDebug() << this->name << "Running" ;
    QThread::msleep(100);

    QFile file("/sys/devices/soc0/soc.0/2000000.aips-bus/20ac000.gpio/gpio/gpiochip128/ngpio");


//    uint32_t dataBuf[100000];
//    uint64_t dataTime[100000];

    uint32_t *dataBuf = NULL;
    uint64_t *dataTime = NULL;
    uint64_t *tmpDataTime = NULL;

    dataBuf = (uint32_t*) malloc(1000 * sizeof(uint32_t));
    if(dataBuf == NULL)
    {
        qDebug() << "databuf memory allocation error";
    }



    dataTime = (uint64_t*) malloc( 1000 * sizeof(uint64_t));
    if( dataTime == NULL)
    {
        qDebug() << "datatime memory allocation error";
    }

    tmpDataTime = dataTime;

            file.open(QIODevice::ReadOnly | QIODevice::Text);

    QElapsedTimer timer;
    timer.start();

    for(int i = 0; i < 1000; i++)
    {


        *dataBuf = QString(file.readAll()).toInt();
        *dataTime = timer.nsecsElapsed();
//        dataBuf[i] = QString(file.readAll()).toInt();
//        dataTime[i] = timer.nsecsElapsed();
        dataBuf++;
        dataTime++;

        file.seek(0);
    }

    file.close();

    for(int i = 0; i < 1000; i++ )
    {

                qDebug() << this->name << i << " sample " << "nsec : " << *(tmpDataTime) << " usec " << ((*(tmpDataTime)) / 1000) << " msec " << ((*(tmpDataTime++)) / 1000000);
                QThread::msleep(10);
    }


}
