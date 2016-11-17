#ifndef MAIN_H
#define MAIN_H
#include <QThread>
#include "worker.h"

/**
 * @brief Defines thread and worker for @voltage section
 */
QThread *thread_voltage;
Worker *worker_voltage;
/**
 * @brief Defines thread and worker for @current section
 */
QThread *thread_current;
Worker *worker_current;
/**
 * @brief Defines thread and worker for @wire_speed
 */
QThread *thread_wire_speed;
Worker *woreker_wire_speed;
/**
 * @brief Defines thread and worker for @temperature
 */
QThread *thread_temperature;
Worker *worker_temperature;
/**
 * @brief Defines thread and worker for @flow_meter
 */
QThread *thread_flowmeter;
Worker *worker_flowmeter;


#endif // MAIN_H
