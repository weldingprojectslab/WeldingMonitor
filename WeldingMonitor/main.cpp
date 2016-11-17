#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQmlEngine>
#include <QObject>
#include <QThread>
#include <adcthread.h>
#include <datacollect.h>
#include <QThread>
#include <QObject>
#include "worker.h"
#include "testclassfirst.h"
#include "main.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QScopedPointer<TestClassFirst> test_class_first(new TestClassFirst);


    QQmlApplicationEngine engine;
    engine.addImportPath("../qml");                         // add chartjs to path
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    engine.rootContext()->setContextProperty("test_class_first",test_class_first.data());    engine.rootContext()->setContextProperty("test_class_first",test_class_first.data());
    QObject *item = engine.rootObjects().first();

    TestClassFirst mTestClassFirst;

    thread_voltage = new QThread;
    worker_voltage = new Worker;


    QThread *thread = new QThread;
    Worker *worker = new Worker;

    worker_voltage->moveToThread(thread_voltage);
    QObject::connect(item, SIGNAL(workRequested()), thread_voltage, SLOT(start()));
    QObject::connect(item, SIGNAL(abort()), thread_voltage, SLOT(quit()));
    QObject::connect(worker_voltage, SIGNAL(valueChanged(QString)), &mTestClassFirst, SLOT(cppSlot(QString)));
    QObject::connect(worker_voltage, SIGNAL(workRequested()), thread_voltage, SLOT(start()));
    QObject::connect(thread_voltage, SIGNAL(started()), worker_voltage, SLOT(doWork()));
    QObject::connect(worker_voltage, SIGNAL(finished()), thread_voltage, SLOT(quit()), Qt::DirectConnection);


    return app.exec();
}
