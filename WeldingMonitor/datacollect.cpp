#include "datacollect.h"
#include <QDebug>
#include <QThread>

DataCollect::DataCollect()
{

}

void DataCollect::InitDataCollectting()
{
    uint16_t *data = NULL;


    data = (uint16_t *)malloc(data_limit);
    if(data == nullptr){
        qDebug() << "error at " << Q_FUNC_INFO << " line : " << __LINE__ << " file : " __FILE__;
    }



    this->run_status = true;

    while(this->run_status)
    {
//        this->start = false;
//        while( this->start == false )
//        {
//            QThread::msleep(10);

//        }; /* wait until start variable becomes true */

        for(this->data_count = 0; this->data_count < this->data_limit; this->data_count++ )
        {
            qDebug() << "test : " << this->data_count;
            QThread::msleep(1000);

            if( start == false) /* if start condition is false*/
                break;
        }


    }


}


