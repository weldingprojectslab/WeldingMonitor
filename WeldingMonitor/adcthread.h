#ifndef ADCTHREAD_H
#define ADCTHREAD_H
#include <QtCore>


class AdcThread : public QThread
{
public:
    AdcThread();
    void run();
    QString name;
};

#endif // ADCTHREAD_H
