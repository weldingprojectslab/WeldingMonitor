#ifndef ADCTHREAD_H
#define ADCTHREAD_H
#include <QtCore>


class AdcThread : public QThread
{

public:
    AdcThread();
    void run();
    QString name;

public slots:
    void cppSlot(){ qDebug() << "This Message from QThread subclass"; }
};

#endif // ADCTHREAD_H
