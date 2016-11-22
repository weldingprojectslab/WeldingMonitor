#include "worker.h"
#include <QTimer>
#include <QEventLoop>
#include <QThread>
#include <QDebug>
#include <QStringList>
#include <QElapsedTimer>
#include <QFile>

Worker::Worker(QObject *parent) : QObject(parent)
{
    _working = false;
    _abort = false;

}

void Worker::requestWork()
{
    mutex.lock();
    _working = true;
    _abort = false;
    qDebug() << "Request worker start in Thread " << thread()->currentThreadId();
    mutex.unlock();

    emit workRequested();
}

void Worker::abort()
{
    mutex.lock();
    if(_working){
        _abort = true;
        qDebug() << "Requests worker aborting in Thread" << thread()->currentThreadId();
    }
    mutex.unlock();
}

QStringList Worker::GetTheList()
{
    for(int i = 0; i < 120; i++)
    {
    qDebug() << "voltagebuf i : "<< i << " :" << Worker::_voltageBuf[i];
    qDebug() << "myarray : " << myarray[i];
    }

    qDebug() << "voltagebuf[0] :" << _voltageBuf[10];

    QStringList fonts; fonts << QString::number(_voltageBuf[0]) << QString::number(_voltageBuf[1]) << "20" << "50" <<  "10" << "900"; return fonts;

}

void Worker::GetTheAddress(uint32_t *the_address)
{
    for(int i = 0; i <120 ;i++)
        qDebug() << "here : " << the_address[i];
}

//QStringList Worker::getDataList()
//{
//    QStringList data_list;

//    for(int i = 0; i < 40; i++)
//    {
////        data_list << _dataBuffer[i];
////        data_list.append(QString::number(_dataBuffer[i]));
//    }
//    return data_list;
//}

void Worker::doWork()
{

    QElapsedTimer timer;
    timer.start();

    qDebug() << "Starting worker process in Thread" << thread()->currentThreadId();
    for(int i = 0; i < _dataLimit; i++){
        //checks if process should be aborted
        mutex.lock();
        bool abort = _abort;
        mutex.unlock();





        if(abort){
            qDebug() << "Aborting worker process in Thread" << thread()->currentThreadId();
            break;
        }

        //this will stupidly wait 1 sec doing nothing
        QEventLoop loop;
        loop.connect(this, SIGNAL(sig()), SLOT(quit()),Qt::QueuedConnection);
        emit sig();
        loop.exec();


        /* voltage measurement stuff */
        this->_voltageBuf[i] = qrand() % 4096;
        _voltageTime[i] = timer.nsecsElapsed();

        /* current measurement stuff */
        _currentBuf[i] = qrand() % 4096;
        _currentTime[i] = timer.nsecsElapsed();

        /* wirespeed measurement stuff */
        _wirespeedBuf[i] = qrand() % 4096;
        _wirespeedTime[i] = timer.nsecsElapsed();

        /* temperature measurement stuff */
        _temperatureBuf[i] = qrand() % 4096;
        _temperatureTime[i] = timer.nsecsElapsed();

        /* flowmeter measurement stuff */
        _flowmeterBuf[i] = qrand() % 4096;
        _flowmeterTime[i] = timer.nsecsElapsed();



    myarray[i] = qrand() %4096;



    }
    // Set _working to false, meaning the process can't be aborted anymore
    mutex.lock();
    _working = false;
    mutex.unlock();

    for(int i = 0; i < 120; i++ )
    {

                qDebug() <<  i << " voltage[i]     : " << _voltageBuf[i] << "nsec : " << (_voltageTime[i]) << " usec " << (((_voltageTime[i])) / 1000) << " msec " << (((_voltageTime[i])) / 1000000);
                qDebug() <<  i << " current[i]     : " << _currentBuf[i] << "nsec : " << (_currentTime[i]) << " usec " << (((_currentTime[i])) / 1000) << " msec " << (((_currentTime[i])) / 1000000);
                qDebug() <<  i << " wirespeed[i]   : " << _wirespeedBuf[i] << "nsec : " << (_wirespeedTime[i]) << " usec " << (((_wirespeedTime[i])) / 1000) << " msec " << (((_wirespeedTime[i])) / 1000000);
                qDebug() <<  i << " temperature[i] : " << _temperatureBuf[i] << "nsec : " << (_temperatureTime[i]) << " usec " << (((_temperatureTime[i])) / 1000) << " msec " << (((_temperatureTime[i])) / 1000000);
                qDebug() <<  i << " flowmeter[i]   : " << _flowmeterBuf[i] << "nsec : " << (_flowmeterTime[i]) << " usec " << (((_flowmeterTime[i])) / 1000) << " msec " << (((_flowmeterTime[i])) / 1000000);
                QThread::msleep(10);
    }

    QString filename = "Data.txt";
    QFile file(filename);
    if (file.open(QIODevice::ReadWrite)) {
        QTextStream stream(&file);
        stream << QString::number(_voltageBuf[0])<< endl;
    }

    qDebug() << "Worker process finished in Thread " <<  thread()->currentThreadId();
    emit finished();
}

