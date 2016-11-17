#include "testclassfirst.h"
#include <QDebug>

TestClassFirst::TestClassFirst(QObject *parent) : QObject(parent)
{

}


void TestClassFirst::cppSlot(const QString &msg)
{
    qDebug() << "Called the c++ slot with message: " << msg;
}
