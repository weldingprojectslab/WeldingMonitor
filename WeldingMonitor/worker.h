#ifndef WORKER_H
#define WORKER_H

#include <QObject>
#include <QMutex>
#include <QWaitCondition>

class Worker : public QObject
{
    Q_OBJECT
public:
    explicit Worker(QObject *parent = 0);
    /**
     * @brief Requests the process to start
     * it is thread safe as it uses #mutex to protect access to #_working variable
     */
    void requestWork();
    /**
     * @brief Requests the process to abort
     * it is thread sade as it uses #mutex to protect access to #_abort variable
     */
    void abort();

signals:
    /**
     * @brief this signal is emitted when the worker request to work
     * @sa requestWork()
     */
    void workRequested();
    /**
     * @brief this signal is emitted when counted the value is changed
     */
    void valueChanged(const QString &value);
    /**
     * @brief this signal is emitted when process is finished (either by counting 60 sec or being aborted)
     */
    void finished();

public slots:
    /**
     * @brief does something
     * Counts 60 sec in this example
     * Counting is interrupted if #_aborted is set to true
     */
    void doWork();
private:
    /**
     * @brief Process is aborted when @em true
     */
    bool _abort;
    /**
     * @brief true when worker is doing work
     */
    bool _working;
    /**
     * @brief Protects access to #_abort
     */
    QMutex mutex;

};

#endif // WORKER_H
