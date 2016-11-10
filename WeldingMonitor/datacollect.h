#ifndef DATACOLLECT_H
#define DATACOLLECT_H
#include <QString>

class DataCollect
{
public:
    DataCollect();
    void InitDataCollectting(); /* this function will start data collection initialisation */
    uint32_t GetReadDataNum() {return data_count;} /* return how many data read data from the device */
    void SetDataReadNum( uint32_t requested_data_read_num) { data_limit = requested_data_read_num;} /* specify how many data will read from device */
    void StartDataCollectting(){ start = true; } /* this function will allow to collect data */
    void StopDataCollectting() { start = false; run_status = false; } /* this function will stop collecting data*/


private:
    bool     run_status;
    bool     start;
    QString  file_name;   /* which device will read */
    uint16_t *data;       /* data buffer */
    uint64_t *data_time;  /* data time buffer */
    uint32_t data_count;  /* this variable will count the file which will read by this class */
    uint32_t data_limit;  /* the variable holds the data num which will read number requested by calling func */
};

#endif // DATACOLLECT_H
