#ifndef WORKER_H
#define WORKER_H

#include <QObject>
#include <QMutex>
#include <QWaitCondition>
#include <QStringList>

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
    Q_INVOKABLE void abort();
    /**
     *
     */
    Q_INVOKABLE QStringList GetTheList();

    Q_INVOKABLE int GetTheList2() {return _voltageBuf[0];}
    uint32_t *myarray;

    void GetTheAddress(uint32_t *the_address);

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

    void sig();

public slots:
    /**
     * @brief does something
     * Counts 60 sec in this example
     * Counting is interrupted if #_aborted is set to true
     */
    void doWork();

private:
    /**
     * @brief Holds the data sample limit number
     */
    static const uint32_t _dataLimit = 120;
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
    /**
     *  @brief Holds the refrence of voltage data
     */
    uint16_t _voltageBuf[_dataLimit];
    /**
     * @brief Holds the reference of current data
     */
    uint16_t _currentBuf[_dataLimit];
    /**
     * @brief Holds the reference of wirespeed data
     */
    uint16_t _wirespeedBuf[_dataLimit];
    /**
     * @brief Holds the reference of temperature data
     */
    uint16_t _temperatureBuf[_dataLimit];
    /**
     * @brief Holds the reference of flowmeter data
     */
    uint16_t _flowmeterBuf[_dataLimit];
    /**
     * @brief Holds the references of #_voltageTime
     */
    uint64_t _voltageTime[_dataLimit];
    /**
     * @brief Holds the reference of #_currentTime
     */
    uint64_t _currentTime[_dataLimit];
    /**
     * @brief Holds the reference of #_wirespeedTime
     */
    uint64_t _wirespeedTime[_dataLimit];
    /**
     * @brief Holds the reference of #_temperatureTime
     */
    uint64_t _temperatureTime[_dataLimit];
    /**
     * @brief Holds the reference of #_flowmeterTime
     */
    uint64_t _flowmeterTime[_dataLimit];


};

#endif // WORKER_H
