/**
************************************************************
* @file         gizwits_protocol.c
* @brief        Corresponding gizwits_product.c header file (including product hardware and software version definition)
* @author       Gizwits
* @date         2017-07-19
* @version      V03030000
* @copyright    Gizwits
* 
* @note         机智云.只为智能硬件而生
*               Gizwits Smart Cloud  for Smart Products
*               链接|增值ֵ|开放|中立|安全|自有|自由|生态
*               www.gizwits.com
*
***********************************************************/
#include "ringBuffer.h"
#include "gizwits_product.h"
#include "dataPointTools.h"

/** Protocol global variables **/
gizwitsProtocol_t gizwitsProtocol;
//bool ntp_success_flag=false;

/**@name The serial port receives the ring buffer implementation
* @{
*/
rb_t pRb;                                               ///< Ring buffer structure variable
static uint8_t rbBuf[RB_MAX_LEN];                       ///< Ring buffer data cache buffer


/**@} */

/**
* @brief Write data to the ring buffer
* @param [in] buf        : buf adress
* @param [in] len        : byte length
* @return   correct : Returns the length of the written data
            failure : -1
*/
int32_t gizPutData(uint8_t *buf, uint32_t len)
{
    int32_t count = 0;

    if(NULL == buf)
    {
        GIZWITS_LOG("ERR: gizPutData buf is empty \r\n");
        return -1;
    }

    count = rbWrite(&pRb, buf, len);
    if(count != len)
    {
        GIZWITS_LOG("ERR: Failed to rbWrite \r\n");
        return -1;
    }

    return count;
}



/**
* @brief Protocol header initialization
*
* @param [out] head         : Protocol header pointer
*
* @return 0， success; other， failure    
*/
static int8_t gizProtocolHeadInit(protocolHead_t *head)
{
    if(NULL == head)
    {
        GIZWITS_LOG("ERR: gizProtocolHeadInit head is empty \r\n");
        return -1;
    }

    memset((uint8_t *)head, 0, sizeof(protocolHead_t));
    head->head[0] = 0xFF;
    head->head[1] = 0xFF;

    return 0;
}

/**
* @brief Protocol ACK check processing function
*
* @param [in] data            : data adress
* @param [in] len             : data length
*
* @return 0， suceess; other， failure
*/
static int8_t gizProtocolWaitAck(uint8_t *gizdata, uint32_t len)
{
    if(NULL == gizdata)
    {
        GIZWITS_LOG("ERR: data is empty \r\n");
        return -1;
    }

    memset((uint8_t *)&gizwitsProtocol.waitAck, 0, sizeof(protocolWaitAck_t));
    memcpy((uint8_t *)gizwitsProtocol.waitAck.buf, gizdata, len);
    gizwitsProtocol.waitAck.dataLen = (uint16_t)len;
    
    gizwitsProtocol.waitAck.flag = 1;
    gizwitsProtocol.waitAck.sendTime = gizGetTimerCount();

    return 0;
}
/**
* @brief generates "controlled events" according to protocol

* @param [in] issuedData: Controlled data
* @param [out] info: event queue
* @param [out] dataPoints: data point data
* @return 0, the implementation of success, non-0, failed
*/
static int8_t ICACHE_FLASH_ATTR gizDataPoint2Event(gizwitsIssued_t *issuedData, eventInfo_t *info, dataPoint_t *dataPoints)
{
    if((NULL == issuedData) || (NULL == info) ||(NULL == dataPoints))
    {
        GIZWITS_LOG("gizDataPoint2Event Error , Illegal Param\r\n");
        return -1;
    }
    
    /** Greater than 1 byte to do bit conversion **/
    if(sizeof(issuedData->attrFlags) > 1)
    {
        if(-1 == gizByteOrderExchange((uint8_t *)&issuedData->attrFlags,sizeof(attrFlags_t)))
        {
            GIZWITS_LOG("gizByteOrderExchange Error\r\n");
            return -1;
        }
    }
    
    if(0x01 == issuedData->attrFlags.flagLed_Auto)
    {
        info->event[info->num] = EVENT_Led_Auto;
        info->num++;
        dataPoints->valueLed_Auto = gizStandardDecompressionValue(Led_Auto_BYTEOFFSET,Led_Auto_BITOFFSET,Led_Auto_LEN,(uint8_t *)&issuedData->attrVals.wBitBuf,sizeof(issuedData->attrVals.wBitBuf));
    }
        
    if(0x01 == issuedData->attrFlags.flagTemperature_Auto)
    {
        info->event[info->num] = EVENT_Temperature_Auto;
        info->num++;
        dataPoints->valueTemperature_Auto = gizStandardDecompressionValue(Temperature_Auto_BYTEOFFSET,Temperature_Auto_BITOFFSET,Temperature_Auto_LEN,(uint8_t *)&issuedData->attrVals.wBitBuf,sizeof(issuedData->attrVals.wBitBuf));
    }
        
    if(0x01 == issuedData->attrFlags.flagAdd_Temperature)
    {
        info->event[info->num] = EVENT_Add_Temperature;
        info->num++;
        dataPoints->valueAdd_Temperature = gizStandardDecompressionValue(Add_Temperature_BYTEOFFSET,Add_Temperature_BITOFFSET,Add_Temperature_LEN,(uint8_t *)&issuedData->attrVals.wBitBuf,sizeof(issuedData->attrVals.wBitBuf));
    }
        
    if(0x01 == issuedData->attrFlags.flagOxygen_Auto)
    {
        info->event[info->num] = EVENT_Oxygen_Auto;
        info->num++;
        dataPoints->valueOxygen_Auto = gizStandardDecompressionValue(Oxygen_Auto_BYTEOFFSET,Oxygen_Auto_BITOFFSET,Oxygen_Auto_LEN,(uint8_t *)&issuedData->attrVals.wBitBuf,sizeof(issuedData->attrVals.wBitBuf));
    }
        
    if(0x01 == issuedData->attrFlags.flagOxygen_Pump)
    {
        info->event[info->num] = EVENT_Oxygen_Pump;
        info->num++;
        dataPoints->valueOxygen_Pump = gizStandardDecompressionValue(Oxygen_Pump_BYTEOFFSET,Oxygen_Pump_BITOFFSET,Oxygen_Pump_LEN,(uint8_t *)&issuedData->attrVals.wBitBuf,sizeof(issuedData->attrVals.wBitBuf));
    }
        
    if(0x01 == issuedData->attrFlags.flagWater_Level_Auto)
    {
        info->event[info->num] = EVENT_Water_Level_Auto;
        info->num++;
        dataPoints->valueWater_Level_Auto = gizStandardDecompressionValue(Water_Level_Auto_BYTEOFFSET,Water_Level_Auto_BITOFFSET,Water_Level_Auto_LEN,(uint8_t *)&issuedData->attrVals.wBitBuf,sizeof(issuedData->attrVals.wBitBuf));
    }
        
    if(0x01 == issuedData->attrFlags.flagPump)
    {
        info->event[info->num] = EVENT_Pump;
        info->num++;
        dataPoints->valuePump = gizStandardDecompressionValue(Pump_BYTEOFFSET,Pump_BITOFFSET,Pump_LEN,(uint8_t *)&issuedData->attrVals.wBitBuf,sizeof(issuedData->attrVals.wBitBuf));
    }
        
    if(0x01 == issuedData->attrFlags.flagFeed_Auto)
    {
        info->event[info->num] = EVENT_Feed_Auto;
        info->num++;
        dataPoints->valueFeed_Auto = gizStandardDecompressionValue(Feed_Auto_BYTEOFFSET,Feed_Auto_BITOFFSET,Feed_Auto_LEN,(uint8_t *)&issuedData->attrVals.wBitBuf,sizeof(issuedData->attrVals.wBitBuf));
    }
        
    if(0x01 == issuedData->attrFlags.flagServo)
    {
        info->event[info->num] = EVENT_Servo;
        info->num++;
        dataPoints->valueServo = gizStandardDecompressionValue(Servo_BYTEOFFSET,Servo_BITOFFSET,Servo_LEN,(uint8_t *)&issuedData->attrVals.wBitBuf,sizeof(issuedData->attrVals.wBitBuf));
    }
        
        
    if(0x01 == issuedData->attrFlags.flagRGB_R)
    {
        info->event[info->num] = EVENT_RGB_R;
        info->num++;
        dataPoints->valueRGB_R = gizX2Y(RGB_R_RATIO,  RGB_R_ADDITION, issuedData->attrVals.valueRGB_R); 
    }
        
    if(0x01 == issuedData->attrFlags.flagRGB_G)
    {
        info->event[info->num] = EVENT_RGB_G;
        info->num++;
        dataPoints->valueRGB_G = gizX2Y(RGB_G_RATIO,  RGB_G_ADDITION, issuedData->attrVals.valueRGB_G); 
    }
        
    if(0x01 == issuedData->attrFlags.flagRGB_B)
    {
        info->event[info->num] = EVENT_RGB_B;
        info->num++;
        dataPoints->valueRGB_B = gizX2Y(RGB_B_RATIO,  RGB_B_ADDITION, issuedData->attrVals.valueRGB_B); 
    }
        
    if(0x01 == issuedData->attrFlags.flagAdd_Oxygen_Duration)
    {
        info->event[info->num] = EVENT_Add_Oxygen_Duration;
        info->num++;
        dataPoints->valueAdd_Oxygen_Duration = gizX2Y(Add_Oxygen_Duration_RATIO,  Add_Oxygen_Duration_ADDITION, issuedData->attrVals.valueAdd_Oxygen_Duration); 
    }
        
    if(0x01 == issuedData->attrFlags.flagFeed_Hour)
    {
        info->event[info->num] = EVENT_Feed_Hour;
        info->num++;
        dataPoints->valueFeed_Hour = gizX2Y(Feed_Hour_RATIO,  Feed_Hour_ADDITION, issuedData->attrVals.valueFeed_Hour); 
    }
        
    if(0x01 == issuedData->attrFlags.flagFeed_Minute)
    {
        info->event[info->num] = EVENT_Feed_Minute;
        info->num++;
        dataPoints->valueFeed_Minute = gizX2Y(Feed_Minute_RATIO,  Feed_Minute_ADDITION, issuedData->attrVals.valueFeed_Minute); 
    }
        
    if(0x01 == issuedData->attrFlags.flagFeed_Second)
    {
        info->event[info->num] = EVENT_Feed_Second;
        info->num++;
        dataPoints->valueFeed_Second = gizX2Y(Feed_Second_RATIO,  Feed_Second_ADDITION, issuedData->attrVals.valueFeed_Second); 
    }
        
    if(0x01 == issuedData->attrFlags.flagFeed_Interval)
    {
        info->event[info->num] = EVENT_Feed_Interval;
        info->num++;
        dataPoints->valueFeed_Interval = gizX2Y(Feed_Interval_RATIO,  Feed_Interval_ADDITION, issuedData->attrVals.valueFeed_Interval); 
    }
        
    if(0x01 == issuedData->attrFlags.flagFeed_Count)
    {
        info->event[info->num] = EVENT_Feed_Count;
        info->num++;
        dataPoints->valueFeed_Count = gizX2Y(Feed_Count_RATIO,  Feed_Count_ADDITION, issuedData->attrVals.valueFeed_Count); 
    }
        
    if(0x01 == issuedData->attrFlags.flagTemperature_Max)
    {
        info->event[info->num] = EVENT_Temperature_Max;
        info->num++;
        dataPoints->valueTemperature_Max = gizX2YFloat(Temperature_Max_RATIO,  Temperature_Max_ADDITION, (float)(exchangeBytes(issuedData->attrVals.valueTemperature_Max)));
    }
        
    if(0x01 == issuedData->attrFlags.flagTemperature_Min)
    {
        info->event[info->num] = EVENT_Temperature_Min;
        info->num++;
        dataPoints->valueTemperature_Min = gizX2YFloat(Temperature_Min_RATIO,  Temperature_Min_ADDITION, (float)(exchangeBytes(issuedData->attrVals.valueTemperature_Min)));
    }
        
    if(0x01 == issuedData->attrFlags.flagAdd_Oxygen_Interval)
    {
        info->event[info->num] = EVENT_Add_Oxygen_Interval;
        info->num++;
        dataPoints->valueAdd_Oxygen_Interval = gizX2Y(Add_Oxygen_Interval_RATIO,  Add_Oxygen_Interval_ADDITION, exchangeBytes(issuedData->attrVals.valueAdd_Oxygen_Interval));
    }
        
    if(0x01 == issuedData->attrFlags.flagDefault_Water_Max)
    {
        info->event[info->num] = EVENT_Default_Water_Max;
        info->num++;
        dataPoints->valueDefault_Water_Max = gizX2YFloat(Default_Water_Max_RATIO,  Default_Water_Max_ADDITION, (float)(exchangeBytes(issuedData->attrVals.valueDefault_Water_Max)));
    }
        
    if(0x01 == issuedData->attrFlags.flagDefault_Water_Min)
    {
        info->event[info->num] = EVENT_Default_Water_Min;
        info->num++;
        dataPoints->valueDefault_Water_Min = gizX2YFloat(Default_Water_Min_RATIO,  Default_Water_Min_ADDITION, (float)(exchangeBytes(issuedData->attrVals.valueDefault_Water_Min)));
    }
    
    return 0;
}

/**
* @brief contrasts the current data with the last data
*
* @param [in] cur: current data point data
* @param [in] last: last data point data
*
* @return: 0, no change in data; 1, data changes
*/
static int8_t ICACHE_FLASH_ATTR gizCheckReport(dataPoint_t *cur, dataPoint_t *last)
{
    int8_t ret = 0;
    static uint32_t lastReportTime = 0;
    uint32_t currentTime = 0;

    if((NULL == cur) || (NULL == last))
    {
        GIZWITS_LOG("gizCheckReport Error , Illegal Param\r\n");
        return -1;
    }
    currentTime = gizGetTimerCount();
    if(last->valueLed_Auto != cur->valueLed_Auto)
    {
        GIZWITS_LOG("valueLed_Auto Changed\r\n");
        ret = 1;
    }
    if(last->valueTemperature_Auto != cur->valueTemperature_Auto)
    {
        GIZWITS_LOG("valueTemperature_Auto Changed\r\n");
        ret = 1;
    }
    if(last->valueAdd_Temperature != cur->valueAdd_Temperature)
    {
        GIZWITS_LOG("valueAdd_Temperature Changed\r\n");
        ret = 1;
    }
    if(last->valueOxygen_Auto != cur->valueOxygen_Auto)
    {
        GIZWITS_LOG("valueOxygen_Auto Changed\r\n");
        ret = 1;
    }
    if(last->valueOxygen_Pump != cur->valueOxygen_Pump)
    {
        GIZWITS_LOG("valueOxygen_Pump Changed\r\n");
        ret = 1;
    }
    if(last->valueWater_Level_Auto != cur->valueWater_Level_Auto)
    {
        GIZWITS_LOG("valueWater_Level_Auto Changed\r\n");
        ret = 1;
    }
    if(last->valuePump != cur->valuePump)
    {
        GIZWITS_LOG("valuePump Changed\r\n");
        ret = 1;
    }
    if(last->valueFeed_Auto != cur->valueFeed_Auto)
    {
        GIZWITS_LOG("valueFeed_Auto Changed\r\n");
        ret = 1;
    }
    if(last->valueServo != cur->valueServo)
    {
        GIZWITS_LOG("valueServo Changed\r\n");
        ret = 1;
    }
    if(last->valueRGB_R != cur->valueRGB_R)
    {
        GIZWITS_LOG("valueRGB_R Changed\r\n");
        ret = 1;
    }
    if(last->valueRGB_G != cur->valueRGB_G)
    {
        GIZWITS_LOG("valueRGB_G Changed\r\n");
        ret = 1;
    }
    if(last->valueRGB_B != cur->valueRGB_B)
    {
        GIZWITS_LOG("valueRGB_B Changed\r\n");
        ret = 1;
    }
    if(last->valueAdd_Oxygen_Duration != cur->valueAdd_Oxygen_Duration)
    {
        GIZWITS_LOG("valueAdd_Oxygen_Duration Changed\r\n");
        ret = 1;
    }
    if(last->valueFeed_Hour != cur->valueFeed_Hour)
    {
        GIZWITS_LOG("valueFeed_Hour Changed\r\n");
        ret = 1;
    }
    if(last->valueFeed_Minute != cur->valueFeed_Minute)
    {
        GIZWITS_LOG("valueFeed_Minute Changed\r\n");
        ret = 1;
    }
    if(last->valueFeed_Second != cur->valueFeed_Second)
    {
        GIZWITS_LOG("valueFeed_Second Changed\r\n");
        ret = 1;
    }
    if(last->valueFeed_Interval != cur->valueFeed_Interval)
    {
        GIZWITS_LOG("valueFeed_Interval Changed\r\n");
        ret = 1;
    }
    if(last->valueFeed_Count != cur->valueFeed_Count)
    {
        GIZWITS_LOG("valueFeed_Count Changed\r\n");
        ret = 1;
    }
    if(last->valueTemperature_Max != cur->valueTemperature_Max)
    {
        GIZWITS_LOG("valueTemperature_Max Changed\r\n");
        ret = 1;
    }
    if(last->valueTemperature_Min != cur->valueTemperature_Min)
    {
        GIZWITS_LOG("valueTemperature_Min Changed\r\n");
        ret = 1;
    }
    if(last->valueAdd_Oxygen_Interval != cur->valueAdd_Oxygen_Interval)
    {
        GIZWITS_LOG("valueAdd_Oxygen_Interval Changed\r\n");
        ret = 1;
    }
    if(last->valueDefault_Water_Max != cur->valueDefault_Water_Max)
    {
        GIZWITS_LOG("valueDefault_Water_Max Changed\r\n");
        ret = 1;
    }
    if(last->valueDefault_Water_Min != cur->valueDefault_Water_Min)
    {
        GIZWITS_LOG("valueDefault_Water_Min Changed\r\n");
        ret = 1;
    }
    if(last->valueTemperature_Alarm != cur->valueTemperature_Alarm)
    {
        GIZWITS_LOG("valueTemperature_Alarm Changed\r\n");
        ret = 1;
    }
    if(last->valueWater_Level_Alarm != cur->valueWater_Level_Alarm)
    {
        GIZWITS_LOG("valueWater_Level_Alarm Changed\r\n");
        ret = 1;
    }
    if(last->valueDS18B20_Malfunction != cur->valueDS18B20_Malfunction)
    {
        GIZWITS_LOG("valueDS18B20_Malfunction Changed\r\n");
        ret = 1;
    }
    if(last->valueWater_Level_Malfunction != cur->valueWater_Level_Malfunction)
    {
        GIZWITS_LOG("valueWater_Level_Malfunction Changed\r\n");
        ret = 1;
    }
    if(last->valueFeed_Malfunction != cur->valueFeed_Malfunction)
    {
        GIZWITS_LOG("valueFeed_Malfunction Changed\r\n");
        ret = 1;
    }

    if(last->valueDS18B20 != cur->valueDS18B20)
    {
        if(currentTime - lastReportTime >= REPORT_TIME_MAX)
        {
            GIZWITS_LOG("valueDS18B20 Changed\r\n");
            ret = 1;
        }
    }
    if(last->valueWater_level != cur->valueWater_level)
    {
        if(currentTime - lastReportTime >= REPORT_TIME_MAX)
        {
            GIZWITS_LOG("valueWater_level Changed\r\n");
            ret = 1;
        }
    }

    if(1 == ret)
    {
        lastReportTime = gizGetTimerCount();
    }
    return ret;
}

/**
* @brief User data point data is converted to wit the cloud to report data point data
*
* @param [in] dataPoints: user data point data address
* @param [out] devStatusPtr: wit the cloud data point data address
*
* @return 0, the correct return; -1, the error returned
*/
static int8_t ICACHE_FLASH_ATTR gizDataPoints2ReportData(dataPoint_t *dataPoints , devStatus_t *devStatusPtr)
{
    if((NULL == dataPoints) || (NULL == devStatusPtr))
    {
        GIZWITS_LOG("gizDataPoints2ReportData Error , Illegal Param\r\n");
        return -1;
    }

    gizMemset((uint8_t *)devStatusPtr->wBitBuf,0,sizeof(devStatusPtr->wBitBuf));
    gizMemset((uint8_t *)devStatusPtr->alertBitBuf,0,sizeof(devStatusPtr->alertBitBuf));
    gizMemset((uint8_t *)devStatusPtr->faultBitBuf,0,sizeof(devStatusPtr->faultBitBuf));

    gizStandardCompressValue(Led_Auto_BYTEOFFSET,Led_Auto_BITOFFSET,Led_Auto_LEN,(uint8_t *)devStatusPtr,dataPoints->valueLed_Auto);
    gizStandardCompressValue(Temperature_Auto_BYTEOFFSET,Temperature_Auto_BITOFFSET,Temperature_Auto_LEN,(uint8_t *)devStatusPtr,dataPoints->valueTemperature_Auto);
    gizStandardCompressValue(Add_Temperature_BYTEOFFSET,Add_Temperature_BITOFFSET,Add_Temperature_LEN,(uint8_t *)devStatusPtr,dataPoints->valueAdd_Temperature);
    gizStandardCompressValue(Oxygen_Auto_BYTEOFFSET,Oxygen_Auto_BITOFFSET,Oxygen_Auto_LEN,(uint8_t *)devStatusPtr,dataPoints->valueOxygen_Auto);
    gizStandardCompressValue(Oxygen_Pump_BYTEOFFSET,Oxygen_Pump_BITOFFSET,Oxygen_Pump_LEN,(uint8_t *)devStatusPtr,dataPoints->valueOxygen_Pump);
    gizStandardCompressValue(Water_Level_Auto_BYTEOFFSET,Water_Level_Auto_BITOFFSET,Water_Level_Auto_LEN,(uint8_t *)devStatusPtr,dataPoints->valueWater_Level_Auto);
    gizStandardCompressValue(Pump_BYTEOFFSET,Pump_BITOFFSET,Pump_LEN,(uint8_t *)devStatusPtr,dataPoints->valuePump);
    gizStandardCompressValue(Feed_Auto_BYTEOFFSET,Feed_Auto_BITOFFSET,Feed_Auto_LEN,(uint8_t *)devStatusPtr,dataPoints->valueFeed_Auto);
    if(dataPoints->valueServo >= Servo_VALUE_MAX)
    {
        GIZWITS_LOG("[ERROR] valueServo Error , Illegal Overstep\r\n");
        return -1;
    }
    else
    {
        gizStandardCompressValue(Servo_BYTEOFFSET,Servo_BITOFFSET,Servo_LEN,(uint8_t *)devStatusPtr,dataPoints->valueServo);  
    }
    gizStandardCompressValue(Temperature_Alarm_BYTEOFFSET,Temperature_Alarm_BITOFFSET,Temperature_Alarm_LEN,(uint8_t *)devStatusPtr,dataPoints->valueTemperature_Alarm);
    gizStandardCompressValue(Water_Level_Alarm_BYTEOFFSET,Water_Level_Alarm_BITOFFSET,Water_Level_Alarm_LEN,(uint8_t *)devStatusPtr,dataPoints->valueWater_Level_Alarm);
    gizStandardCompressValue(DS18B20_Malfunction_BYTEOFFSET,DS18B20_Malfunction_BITOFFSET,DS18B20_Malfunction_LEN,(uint8_t *)devStatusPtr,dataPoints->valueDS18B20_Malfunction);
    gizStandardCompressValue(Water_Level_Malfunction_BYTEOFFSET,Water_Level_Malfunction_BITOFFSET,Water_Level_Malfunction_LEN,(uint8_t *)devStatusPtr,dataPoints->valueWater_Level_Malfunction);
    gizStandardCompressValue(Feed_Malfunction_BYTEOFFSET,Feed_Malfunction_BITOFFSET,Feed_Malfunction_LEN,(uint8_t *)devStatusPtr,dataPoints->valueFeed_Malfunction);
    gizByteOrderExchange((uint8_t *)devStatusPtr->wBitBuf,sizeof(devStatusPtr->wBitBuf));
    gizByteOrderExchange((uint8_t *)devStatusPtr->alertBitBuf,sizeof(devStatusPtr->alertBitBuf));
    gizByteOrderExchange((uint8_t *)devStatusPtr->faultBitBuf,sizeof(devStatusPtr->faultBitBuf));

    devStatusPtr->valueRGB_R = gizY2X(RGB_R_RATIO,  RGB_R_ADDITION, dataPoints->valueRGB_R); 
    devStatusPtr->valueRGB_G = gizY2X(RGB_G_RATIO,  RGB_G_ADDITION, dataPoints->valueRGB_G); 
    devStatusPtr->valueRGB_B = gizY2X(RGB_B_RATIO,  RGB_B_ADDITION, dataPoints->valueRGB_B); 
    devStatusPtr->valueAdd_Oxygen_Duration = gizY2X(Add_Oxygen_Duration_RATIO,  Add_Oxygen_Duration_ADDITION, dataPoints->valueAdd_Oxygen_Duration); 
    devStatusPtr->valueFeed_Hour = gizY2X(Feed_Hour_RATIO,  Feed_Hour_ADDITION, dataPoints->valueFeed_Hour); 
    devStatusPtr->valueFeed_Minute = gizY2X(Feed_Minute_RATIO,  Feed_Minute_ADDITION, dataPoints->valueFeed_Minute); 
    devStatusPtr->valueFeed_Second = gizY2X(Feed_Second_RATIO,  Feed_Second_ADDITION, dataPoints->valueFeed_Second); 
    devStatusPtr->valueFeed_Interval = gizY2X(Feed_Interval_RATIO,  Feed_Interval_ADDITION, dataPoints->valueFeed_Interval); 
    devStatusPtr->valueFeed_Count = gizY2X(Feed_Count_RATIO,  Feed_Count_ADDITION, dataPoints->valueFeed_Count); 

    devStatusPtr->valueTemperature_Max = exchangeBytes(gizY2XFloat(Temperature_Max_RATIO,  Temperature_Max_ADDITION, dataPoints->valueTemperature_Max));     
    devStatusPtr->valueTemperature_Min = exchangeBytes(gizY2XFloat(Temperature_Min_RATIO,  Temperature_Min_ADDITION, dataPoints->valueTemperature_Min));     
    devStatusPtr->valueAdd_Oxygen_Interval = exchangeBytes(gizY2X(Add_Oxygen_Interval_RATIO,  Add_Oxygen_Interval_ADDITION, dataPoints->valueAdd_Oxygen_Interval)); 
    devStatusPtr->valueDefault_Water_Max = exchangeBytes(gizY2XFloat(Default_Water_Max_RATIO,  Default_Water_Max_ADDITION, dataPoints->valueDefault_Water_Max));     
    devStatusPtr->valueDefault_Water_Min = exchangeBytes(gizY2XFloat(Default_Water_Min_RATIO,  Default_Water_Min_ADDITION, dataPoints->valueDefault_Water_Min));     
    devStatusPtr->valueDS18B20 = exchangeBytes(gizY2XFloat(DS18B20_RATIO,  DS18B20_ADDITION, dataPoints->valueDS18B20));     
    devStatusPtr->valueWater_level = exchangeBytes(gizY2XFloat(Water_level_RATIO,  Water_level_ADDITION, dataPoints->valueWater_level));     



    return 0;
}


/**
* @brief This function is called by the Gagent module to receive the relevant protocol data from the cloud or APP
* @param [in] inData The protocol data entered
* @param [in] inLen Enter the length of the data
* @param [out] outData The output of the protocol data
* @param [out] outLen The length of the output data
* @return 0, the implementation of success, non-0, failed
*/
static int8_t gizProtocolIssuedProcess(char *did, uint8_t *inData, uint32_t inLen, uint8_t *outData, uint32_t *outLen)
{
    uint8_t issuedAction = inData[0];

    if((NULL == inData)||(NULL == outData)||(NULL == outLen))
    {
        GIZWITS_LOG("gizProtocolIssuedProcess Error , Illegal Param\r\n");
        return -1;
    }
    
    if(NULL == did)
    {
        memset((uint8_t *)&gizwitsProtocol.issuedProcessEvent, 0, sizeof(eventInfo_t));
        switch(issuedAction)
        {
            case ACTION_CONTROL_DEVICE:
                gizDataPoint2Event((gizwitsIssued_t *)&inData[1], &gizwitsProtocol.issuedProcessEvent,&gizwitsProtocol.gizCurrentDataPoint);
                gizwitsProtocol.issuedFlag = ACTION_CONTROL_TYPE;
                outData = NULL;
                *outLen = 0;
                break;
            
            case ACTION_READ_DEV_STATUS:
                if(0 == gizDataPoints2ReportData(&gizwitsProtocol.gizLastDataPoint,&gizwitsProtocol.reportData.devStatus))
                {
                    memcpy(outData+1, (uint8_t *)&gizwitsProtocol.reportData.devStatus, sizeof(gizwitsReport_t));
                    outData[0] = ACTION_READ_DEV_STATUS_ACK;
                    *outLen = sizeof(gizwitsReport_t)+1;
                }
                else
                {
                    return -1;
                }
                break;
            case ACTION_W2D_TRANSPARENT_DATA:
                memcpy(gizwitsProtocol.transparentBuff, &inData[1], inLen-1);
                gizwitsProtocol.transparentLen = inLen - 1;
                
                gizwitsProtocol.issuedProcessEvent.event[gizwitsProtocol.issuedProcessEvent.num] = TRANSPARENT_DATA;
                gizwitsProtocol.issuedProcessEvent.num++;
                gizwitsProtocol.issuedFlag = ACTION_W2D_TRANSPARENT_TYPE;
                outData = NULL;
                *outLen = 0;
                break;
            
                default:
                    break;
        }
    }

    return 0;
}
/**
* @brief The protocol sends data back , P0 ACK
*
* @param [in] head                  : Protocol head pointer
* @param [in] data                  : Payload data 
* @param [in] len                   : Payload data length
* @param [in] proFlag               : DID flag ,1 for Virtual sub device did ,0 for single product or gateway 
*
* @return : 0,Ack success;
*           -1，Input Param Illegal
*           -2，Serial send faild
*/
static int32_t gizProtocolIssuedDataAck(protocolHead_t *head, uint8_t *gizdata, uint32_t len, uint8_t proFlag)
{
    int32_t ret = 0;
    uint8_t tx_buf[RB_MAX_LEN];
    uint32_t offset = 0;
    uint8_t sDidLen = 0;
    uint16_t data_len = 0;
	uint8_t *pTxBuf = tx_buf;
    if(NULL == gizdata)
    {
        GIZWITS_LOG("[ERR]  data Is Null \r\n");
        return -1;
    }
    

    if(0x1 == proFlag)
    {
        sDidLen = *((uint8_t *)head + sizeof(protocolHead_t));
        data_len = 5 + 1 + sDidLen + len;   
    }
    else
    {
        data_len = 5 + len;
    }
    GIZWITS_LOG("len = %d , sDidLen = %d ,data_len = %d\r\n", len,sDidLen,data_len);
    *pTxBuf ++= 0xFF;
    *pTxBuf ++= 0xFF;
    *pTxBuf ++= (uint8_t)(data_len>>8);
    *pTxBuf ++= (uint8_t)(data_len);
    *pTxBuf ++= head->cmd + 1;
    *pTxBuf ++= head->sn;
    *pTxBuf ++= 0x00;
    *pTxBuf ++= proFlag;
    offset = 8;
    if(0x1 == proFlag)
    {
        *pTxBuf ++= sDidLen;
        offset += 1;
        memcpy(&tx_buf[offset],(uint8_t *)head+sizeof(protocolHead_t)+1,sDidLen);
        offset += sDidLen;
        pTxBuf += sDidLen;

    }
    if(0 != len)
    {
        memcpy(&tx_buf[offset],gizdata,len);
    }
    tx_buf[data_len + 4 - 1 ] = gizProtocolSum( tx_buf , (data_len+4));

    ret = uartWrite(tx_buf, data_len+4);
    if(ret < 0)
    {
        GIZWITS_LOG("uart write error %d \r\n", ret);
        return -2;
    }

    return 0;
}

/**
* @brief Report data interface
*
* @param [in] action            : PO action
* @param [in] data              : Payload data
* @param [in] len               : Payload data length
*
* @return : 0,Ack success;
*           -1，Input Param Illegal
*           -2，Serial send faild
*/
static int32_t gizReportData(uint8_t action, uint8_t *gizdata, uint32_t len)
{
    int32_t ret = 0;
    protocolReport_t protocolReport;

    if(NULL == gizdata)
    {
        GIZWITS_LOG("gizReportData Error , Illegal Param\r\n");
        return -1;
    }
    gizProtocolHeadInit((protocolHead_t *)&protocolReport);
    protocolReport.head.cmd = CMD_REPORT_P0;
    protocolReport.head.sn = gizwitsProtocol.sn++;
    protocolReport.action = action;
    protocolReport.head.len = exchangeBytes(sizeof(protocolReport_t)-4);
    memcpy((gizwitsReport_t *)&protocolReport.reportData, (gizwitsReport_t *)gizdata,len);
    protocolReport.sum = gizProtocolSum((uint8_t *)&protocolReport, sizeof(protocolReport_t));
    
    ret = uartWrite((uint8_t *)&protocolReport, sizeof(protocolReport_t));
    if(ret < 0)
    {
        GIZWITS_LOG("ERR: uart write error %d \r\n", ret);
        return -2;
    }

    gizProtocolWaitAck((uint8_t *)&protocolReport, sizeof(protocolReport_t));

    return ret;
}/**
* @brief Datapoints reporting mechanism
*
* 1. Changes are reported immediately

* 2. Data timing report , 600000 Millisecond
* 
*@param [in] currentData       : Current datapoints value
* @return : NULL
*/
static void gizDevReportPolicy(dataPoint_t *currentData)
{
    static uint32_t lastRepTime = 0;
    uint32_t timeNow = gizGetTimerCount();

    if((1 == gizCheckReport(currentData, (dataPoint_t *)&gizwitsProtocol.gizLastDataPoint)))
    {
        GIZWITS_LOG("changed, report data\r\n");
        if(0 == gizDataPoints2ReportData(currentData,&gizwitsProtocol.reportData.devStatus))
        {
            gizReportData(ACTION_REPORT_DEV_STATUS, (uint8_t *)&gizwitsProtocol.reportData.devStatus, sizeof(devStatus_t));        }       
        memcpy((uint8_t *)&gizwitsProtocol.gizLastDataPoint, (uint8_t *)currentData, sizeof(dataPoint_t));
    }

    if((0 == (timeNow % (600000))) && (lastRepTime != timeNow))
    {
        GIZWITS_LOG("Info: 600S report data\r\n");
        if(0 == gizDataPoints2ReportData(currentData,&gizwitsProtocol.reportData.devStatus))
        {
            gizReportData(ACTION_REPORT_DEV_STATUS, (uint8_t *)&gizwitsProtocol.reportData.devStatus, sizeof(devStatus_t));
        }       
        memcpy((uint8_t *)&gizwitsProtocol.gizLastDataPoint, (uint8_t *)currentData, sizeof(dataPoint_t));

        lastRepTime = timeNow;
    }
}

/**
* @brief Get a packet of data from the ring buffer
*
* @param [in]  rb                  : Input data address
* @param [out] data                : Output data address
* @param [out] len                 : Output data length
*
* @return : 0,Return correct ;-1，Return failure;-2，Data check failure
*/
static int8_t gizProtocolGetOnePacket(rb_t *rb, uint8_t *gizdata, uint16_t *len)
{
    int32_t ret = 0;
    uint8_t sum = 0;
    int32_t i = 0;
    uint8_t tmpData;
    uint8_t tmpLen = 0;
    uint16_t tmpCount = 0;
    static uint8_t protocolFlag = 0;
    static uint16_t protocolCount = 0;
    static uint8_t lastData = 0;
    static uint8_t debugCount = 0;
    uint8_t *protocolBuff = gizdata;
    protocolHead_t *head = NULL;

    if((NULL == rb) || (NULL == gizdata) ||(NULL == len))
    {
        GIZWITS_LOG("gizProtocolGetOnePacket Error , Illegal Param\r\n");
        return -1;
    }

    tmpLen = rbCanRead(rb);
    if(0 == tmpLen)
    {
        return -1;
    }

    for(i=0; i<tmpLen; i++)
    {
        ret = rbRead(rb, &tmpData, 1);
        if(0 != ret)
        {
            if((0xFF == lastData) && (0xFF == tmpData))
            {
                if(0 == protocolFlag)
                {
                    protocolBuff[0] = 0xFF;
                    protocolBuff[1] = 0xFF;
                    protocolCount = 2;
                    protocolFlag = 1;
                }
                else
                {
                    if((protocolCount > 4) && (protocolCount != tmpCount))
                    {
                        protocolBuff[0] = 0xFF;
                        protocolBuff[1] = 0xFF;
                        protocolCount = 2;
                    }
                }
            }
            else if((0xFF == lastData) && (0x55 == tmpData))
            {
            }
            else
            {
                if(1 == protocolFlag)
                {
                    protocolBuff[protocolCount] = tmpData;
                    protocolCount++;

                    if(protocolCount > 4)
                    {
                        head = (protocolHead_t *)protocolBuff;
                        tmpCount = exchangeBytes(head->len)+4;
                        if(protocolCount == tmpCount)
                        {
                            break;
                        }
                    }
                }
            }

            lastData = tmpData;
            debugCount++;
        }
    }

    if((protocolCount > 4) && (protocolCount == tmpCount))
    {
        sum = gizProtocolSum(protocolBuff, protocolCount);

        if(protocolBuff[protocolCount-1] == sum)
        {
            memcpy(gizdata, protocolBuff, tmpCount);
            *len = tmpCount;
            protocolFlag = 0;

            protocolCount = 0;
            debugCount = 0;
            lastData = 0;

            return 0;
        }
        else
        {
            return -2;
        }
    }

    return 1;
}



/**
* @brief Protocol data resend

* The protocol data resend when check timeout and meet the resend limiting

* @param none    
*
* @return none
*/
static void gizProtocolResendData(void)
{
    int32_t ret = 0;

    if(0 == gizwitsProtocol.waitAck.flag)
    {
        return;
    }

    GIZWITS_LOG("Warning: timeout, resend data \r\n");
    
    ret = uartWrite(gizwitsProtocol.waitAck.buf, gizwitsProtocol.waitAck.dataLen);
    if(ret != gizwitsProtocol.waitAck.dataLen)
    {
        GIZWITS_LOG("ERR: resend data error\r\n");
    }

    gizwitsProtocol.waitAck.sendTime = gizGetTimerCount();
}

/**
* @brief Clear the ACK protocol message
*
* @param [in] head : Protocol header address
*
* @return 0， success; other， failure
*/
static int8_t gizProtocolWaitAckCheck(protocolHead_t *head)
{
    protocolHead_t *waitAckHead = (protocolHead_t *)gizwitsProtocol.waitAck.buf;

    if(NULL == head)
    {
        GIZWITS_LOG("ERR: data is empty \r\n");
        return -1;
    }

    if(waitAckHead->cmd+1 == head->cmd)
    {
        memset((uint8_t *)&gizwitsProtocol.waitAck, 0, sizeof(protocolWaitAck_t));
    }

    return 0;
}

/**
* @brief Send general protocol message data
* 
* @param [in] head              : Protocol header address
*
* @return : Return effective data length;-1，return failure
*/
static int32_t gizProtocolCommonAck(protocolHead_t *head)
{
    int32_t ret = 0;
    protocolCommon_t ack;

    if(NULL == head)
    {
        GIZWITS_LOG("ERR: gizProtocolCommonAck data is empty \r\n");
        return -1;
    }
    memcpy((uint8_t *)&ack, (uint8_t *)head, sizeof(protocolHead_t));
    ack.head.cmd = ack.head.cmd+1;
    ack.head.len = exchangeBytes(sizeof(protocolCommon_t)-4);
    ack.sum = gizProtocolSum((uint8_t *)&ack, sizeof(protocolCommon_t));

    ret = uartWrite((uint8_t *)&ack, sizeof(protocolCommon_t));
    if(ret < 0)
    {
        GIZWITS_LOG("ERR: uart write error %d \r\n", ret);
    }

    return ret;
}

/**
* @brief ACK processing function

* Time-out 200ms no ACK resend，resend two times at most

* @param none 
*
* @return none
*/
static void gizProtocolAckHandle(void)
{
    if(1 == gizwitsProtocol.waitAck.flag)
    {
        if(SEND_MAX_NUM > gizwitsProtocol.waitAck.num)
        {
            // Time-out no ACK resend
            if(SEND_MAX_TIME < (gizGetTimerCount() - gizwitsProtocol.waitAck.sendTime))
            {
                GIZWITS_LOG("Warning:gizProtocolResendData %d %d %d\r\n", gizGetTimerCount(), gizwitsProtocol.waitAck.sendTime, gizwitsProtocol.waitAck.num);
                gizProtocolResendData();
                gizwitsProtocol.waitAck.num++;
            }
        }
        else
        {
            memset((uint8_t *)&gizwitsProtocol.waitAck, 0, sizeof(protocolWaitAck_t));
        }
    }
}

/**
* @brief Protocol 4.1 WiFi module requests device information
*
* @param[in] head : Protocol header address
*
* @return Return effective data length;-1，return failure
*/
static int32_t gizProtocolGetDeviceInfo(protocolHead_t * head)
{
    int32_t ret = 0;
    protocolDeviceInfo_t deviceInfo;

    if(NULL == head)
    {
        GIZWITS_LOG("gizProtocolGetDeviceInfo Error , Illegal Param\r\n");
        return -1;
    }

    gizProtocolHeadInit((protocolHead_t *)&deviceInfo);
    deviceInfo.head.cmd = ACK_GET_DEVICE_INFO;
    deviceInfo.head.sn = head->sn;
    memcpy((uint8_t *)deviceInfo.protocolVer, protocol_VERSION, 8);
    memcpy((uint8_t *)deviceInfo.p0Ver, P0_VERSION, 8);
    memcpy((uint8_t *)deviceInfo.softVer, SOFTWARE_VERSION, 8);
    memcpy((uint8_t *)deviceInfo.hardVer, HARDWARE_VERSION, 8);
    memcpy((uint8_t *)deviceInfo.productKey, PRODUCT_KEY, strlen(PRODUCT_KEY));
    memcpy((uint8_t *)deviceInfo.productSecret, PRODUCT_SECRET, strlen(PRODUCT_SECRET));
    memset((uint8_t *)deviceInfo.devAttr, 0, 8);
    deviceInfo.devAttr[7] |= DEV_IS_GATEWAY<<0;
    deviceInfo.devAttr[7] |= (0x01<<1);
    deviceInfo.ninableTime = exchangeBytes(NINABLETIME);
    deviceInfo.head.len = exchangeBytes(sizeof(protocolDeviceInfo_t)-4);
    deviceInfo.sum = gizProtocolSum((uint8_t *)&deviceInfo, sizeof(protocolDeviceInfo_t));

    ret = uartWrite((uint8_t *)&deviceInfo, sizeof(protocolDeviceInfo_t));
    if(ret < 0)
    {
        GIZWITS_LOG("ERR: uart write error %d \r\n", ret);
    }
    
    return ret;
}

/**
* @brief Protocol 4.7 Handling of illegal message notification

* @param[in] head  : Protocol header address
* @param[in] errno : Illegal message notification type
* @return 0， success; other， failure
*/
static int32_t gizProtocolErrorCmd(protocolHead_t *head,errorPacketsType_t errno)
{
    int32_t ret = 0;
    protocolErrorType_t errorType;

    if(NULL == head)
    {
        GIZWITS_LOG("gizProtocolErrorCmd Error , Illegal Param\r\n");
        return -1;
    }
    gizProtocolHeadInit((protocolHead_t *)&errorType);
    errorType.head.cmd = ACK_ERROR_PACKAGE;
    errorType.head.sn = head->sn;
    
    errorType.head.len = exchangeBytes(sizeof(protocolErrorType_t)-4);
    errorType.error = errno;
    errorType.sum = gizProtocolSum((uint8_t *)&errorType, sizeof(protocolErrorType_t));
    
    ret = uartWrite((uint8_t *)&errorType, sizeof(protocolErrorType_t));
    if(ret < 0)
    {
        GIZWITS_LOG("ERR: uart write error %d \r\n", ret);
    }

    return ret;
}

/**
* @brief Protocol 4.13 Get and process network time
*
* @param [in] head : Protocol header address
*
* @return 0， success; other， failure
*/
static int8_t gizProtocolNTP(protocolHead_t *head)
{  
    protocolUTT_t *UTTInfo = (protocolUTT_t *)head;
    
    if(NULL == head)
    {
        GIZWITS_LOG("ERR: NTP is empty \r\n");
        return -1;
    }
    
    memcpy((uint8_t *)&gizwitsProtocol.TimeNTP,(uint8_t *)UTTInfo->time, (7 + 4));
    gizwitsProtocol.TimeNTP.year = exchangeBytes(gizwitsProtocol.TimeNTP.year);
    gizwitsProtocol.TimeNTP.ntp =exchangeWord(gizwitsProtocol.TimeNTP.ntp);

    gizwitsProtocol.NTPEvent.event[gizwitsProtocol.NTPEvent.num] = WIFI_NTP;
    gizwitsProtocol.NTPEvent.num++;
    
    gizwitsProtocol.issuedFlag = GET_NTP_TYPE;
    
    
    return 0;
}

/**
* @brief Protocol 4.4 Device MCU restarts function

* @param none
* @return none
*/
static void gizProtocolReboot(void)
{
    uint32_t timeDelay = gizGetTimerCount();
    
    /*Wait 600ms*/
    while((gizGetTimerCount() - timeDelay) <= 600);
    mcuRestart();
}

/**
* @brief Protocol 4.5 :The WiFi module informs the device MCU of working status about the WiFi module

* @param[in] status WiFi module working status
* @return none
*/
static int8_t gizProtocolModuleStatus(protocolWifiStatus_t *status)
{
    static wifiStatus_t lastStatus;

    if(NULL == status)
    {
        GIZWITS_LOG("gizProtocolModuleStatus Error , Illegal Param\r\n");
        return -1;
    }

    status->ststus.value = exchangeBytes(status->ststus.value);
   
    //OnBoarding mode status
    if(lastStatus.types.onboarding != status->ststus.types.onboarding)
    {
        if(1 == status->ststus.types.onboarding)
        {
            if(1 == status->ststus.types.softap)
            {
                gizwitsProtocol.wifiStatusEvent.event[gizwitsProtocol.wifiStatusEvent.num] = WIFI_SOFTAP;
                gizwitsProtocol.wifiStatusEvent.num++;
                GIZWITS_LOG("OnBoarding: SoftAP or Web mode\r\n");
            }

            if(1 == status->ststus.types.station)
            {
                gizwitsProtocol.wifiStatusEvent.event[gizwitsProtocol.wifiStatusEvent.num] = WIFI_AIRLINK;
                gizwitsProtocol.wifiStatusEvent.num++;
                GIZWITS_LOG("OnBoarding: AirLink mode\r\n");
            }
        }
        else
        {
            if(1 == status->ststus.types.softap)
            {
                gizwitsProtocol.wifiStatusEvent.event[gizwitsProtocol.wifiStatusEvent.num] = WIFI_SOFTAP;
                gizwitsProtocol.wifiStatusEvent.num++;
                GIZWITS_LOG("OnBoarding: SoftAP or Web mode\r\n");
            }

            if(1 == status->ststus.types.station)
            {
                gizwitsProtocol.wifiStatusEvent.event[gizwitsProtocol.wifiStatusEvent.num] = WIFI_STATION;
                gizwitsProtocol.wifiStatusEvent.num++;
                GIZWITS_LOG("OnBoarding: Station mode\r\n");
            }
        }
    }

    //binding mode status
    if(lastStatus.types.binding != status->ststus.types.binding)
    {
        lastStatus.types.binding = status->ststus.types.binding;
        if(1 == status->ststus.types.binding)
        {
            gizwitsProtocol.wifiStatusEvent.event[gizwitsProtocol.wifiStatusEvent.num] = WIFI_OPEN_BINDING;
            gizwitsProtocol.wifiStatusEvent.num++;
            GIZWITS_LOG("WiFi status: in binding mode\r\n");
        }
        else
        {
            gizwitsProtocol.wifiStatusEvent.event[gizwitsProtocol.wifiStatusEvent.num] = WIFI_CLOSE_BINDING;
            gizwitsProtocol.wifiStatusEvent.num++;
            GIZWITS_LOG("WiFi status: out binding mode\r\n");
        }
    }

    //router status
    if(lastStatus.types.con_route != status->ststus.types.con_route)
    {
        lastStatus.types.con_route = status->ststus.types.con_route;
        if(1 == status->ststus.types.con_route)
        {
            gizwitsProtocol.wifiStatusEvent.event[gizwitsProtocol.wifiStatusEvent.num] = WIFI_CON_ROUTER;
            gizwitsProtocol.wifiStatusEvent.num++;
            GIZWITS_LOG("WiFi status: connected router\r\n");
        }
        else
        {
            gizwitsProtocol.wifiStatusEvent.event[gizwitsProtocol.wifiStatusEvent.num] = WIFI_DISCON_ROUTER;
            gizwitsProtocol.wifiStatusEvent.num++;
            GIZWITS_LOG("WiFi status: disconnected router\r\n");
        }
    }

    //M2M server status
    if(lastStatus.types.con_m2m != status->ststus.types.con_m2m)
    {
        lastStatus.types.con_m2m = status->ststus.types.con_m2m;
        if(1 == status->ststus.types.con_m2m)
        {
            gizwitsProtocol.wifiStatusEvent.event[gizwitsProtocol.wifiStatusEvent.num] = WIFI_CON_M2M;
            gizwitsProtocol.wifiStatusEvent.num++;
            GIZWITS_LOG("WiFi status: connected m2m\r\n");
        }
        else
        {
            gizwitsProtocol.wifiStatusEvent.event[gizwitsProtocol.wifiStatusEvent.num] = WIFI_DISCON_M2M;
            gizwitsProtocol.wifiStatusEvent.num++;
            GIZWITS_LOG("WiFi status: disconnected m2m\r\n");
        }
    }

    //APP status
    if(lastStatus.types.app != status->ststus.types.app)
    {
        lastStatus.types.app = status->ststus.types.app;
        if(1 == status->ststus.types.app)
        {
            gizwitsProtocol.wifiStatusEvent.event[gizwitsProtocol.wifiStatusEvent.num] = WIFI_CON_APP;
            gizwitsProtocol.wifiStatusEvent.num++;
            GIZWITS_LOG("WiFi status: app connect\r\n");
        }
        else
        {
            gizwitsProtocol.wifiStatusEvent.event[gizwitsProtocol.wifiStatusEvent.num] = WIFI_DISCON_APP;
            gizwitsProtocol.wifiStatusEvent.num++;
            GIZWITS_LOG("WiFi status: no app connect\r\n");
        }
    }

    //test mode status
    if(lastStatus.types.test != status->ststus.types.test)
    {
        lastStatus.types.test = status->ststus.types.test;
        if(1 == status->ststus.types.test)
        {
            gizwitsProtocol.wifiStatusEvent.event[gizwitsProtocol.wifiStatusEvent.num] = WIFI_OPEN_TESTMODE;
            gizwitsProtocol.wifiStatusEvent.num++;
            GIZWITS_LOG("WiFi status: in test mode\r\n");
        }
        else
        {
            gizwitsProtocol.wifiStatusEvent.event[gizwitsProtocol.wifiStatusEvent.num] = WIFI_CLOSE_TESTMODE;
            gizwitsProtocol.wifiStatusEvent.num++;
            GIZWITS_LOG("WiFi status: out test mode\r\n");
        }
    }

    gizwitsProtocol.wifiStatusEvent.event[gizwitsProtocol.wifiStatusEvent.num] = WIFI_RSSI;
    gizwitsProtocol.wifiStatusEvent.num++;
    gizwitsProtocol.wifiStatusData.rssi = status->ststus.types.rssi;
    GIZWITS_LOG("RSSI is %d \r\n", gizwitsProtocol.wifiStatusData.rssi);

    gizwitsProtocol.issuedFlag = WIFI_STATUS_TYPE;

    return 0;
}


/**@name Gizwits User API interface
* @{
*/

/**
* @brief gizwits Protocol initialization interface

* Protocol-related timer, serial port initialization

* Datapoint initialization

* @param none
* @return none
*/
void gizwitsInit(void)
{    
    pRb.rbCapacity = RB_MAX_LEN;
    pRb.rbBuff = rbBuf;
    if(0 == rbCreate(&pRb))
	{
		GIZWITS_LOG("rbCreate Success \r\n");
	}
	else
	{
		GIZWITS_LOG("rbCreate Faild \r\n");
	}
    
    memset((uint8_t *)&gizwitsProtocol, 0, sizeof(gizwitsProtocol_t));
}

/**
* @brief WiFi configure interface

* Set the WiFi module into the corresponding configuration mode or reset the module

* @param[in] mode ：0x0， reset the module ;0x01， SoftAp mode ;0x02， AirLink mode ;0x03， Production test mode; 0x04:allow users to bind devices

* @return Error command code
*/
int32_t gizwitsSetMode(uint8_t mode)
{
    int32_t ret = 0;
    protocolCfgMode_t cfgMode;
    protocolCommon_t setDefault;

    switch(mode)
    {
        case WIFI_RESET_MODE:
            gizProtocolHeadInit((protocolHead_t *)&setDefault);
            setDefault.head.cmd = CMD_SET_DEFAULT;
            setDefault.head.sn = gizwitsProtocol.sn++;
            setDefault.head.len = exchangeBytes(sizeof(protocolCommon_t)-4);
            setDefault.sum = gizProtocolSum((uint8_t *)&setDefault, sizeof(protocolCommon_t));
            ret = uartWrite((uint8_t *)&setDefault, sizeof(protocolCommon_t));
            if(ret < 0)
            {
                GIZWITS_LOG("ERR: uart write error %d \r\n", ret);
            }

            gizProtocolWaitAck((uint8_t *)&setDefault, sizeof(protocolCommon_t));   
            break;
        case WIFI_SOFTAP_MODE:
            gizProtocolHeadInit((protocolHead_t *)&cfgMode);
            cfgMode.head.cmd = CMD_WIFI_CONFIG;
            cfgMode.head.sn = gizwitsProtocol.sn++;
            cfgMode.cfgMode = mode;
            cfgMode.head.len = exchangeBytes(sizeof(protocolCfgMode_t)-4);
            cfgMode.sum = gizProtocolSum((uint8_t *)&cfgMode, sizeof(protocolCfgMode_t));
            ret = uartWrite((uint8_t *)&cfgMode, sizeof(protocolCfgMode_t));
            if(ret < 0)
            {
                GIZWITS_LOG("ERR: uart write error %d \r\n", ret);
            }
            gizProtocolWaitAck((uint8_t *)&cfgMode, sizeof(protocolCfgMode_t)); 
            break;
        case WIFI_AIRLINK_MODE:
            gizProtocolHeadInit((protocolHead_t *)&cfgMode);
            cfgMode.head.cmd = CMD_WIFI_CONFIG;
            cfgMode.head.sn = gizwitsProtocol.sn++;
            cfgMode.cfgMode = mode;
            cfgMode.head.len = exchangeBytes(sizeof(protocolCfgMode_t)-4);
            cfgMode.sum = gizProtocolSum((uint8_t *)&cfgMode, sizeof(protocolCfgMode_t));
            ret = uartWrite((uint8_t *)&cfgMode, sizeof(protocolCfgMode_t));
            if(ret < 0)
            {
                GIZWITS_LOG("ERR: uart write error %d \r\n", ret);
            }
            gizProtocolWaitAck((uint8_t *)&cfgMode, sizeof(protocolCfgMode_t)); 
            break;
        case WIFI_PRODUCTION_TEST:
            gizProtocolHeadInit((protocolHead_t *)&setDefault);
            setDefault.head.cmd = CMD_PRODUCTION_TEST;
            setDefault.head.sn = gizwitsProtocol.sn++;
            setDefault.head.len = exchangeBytes(sizeof(protocolCommon_t)-4);
            setDefault.sum = gizProtocolSum((uint8_t *)&setDefault, sizeof(protocolCommon_t));
            ret = uartWrite((uint8_t *)&setDefault, sizeof(protocolCommon_t));
            if(ret < 0)
            {
                GIZWITS_LOG("ERR: uart write error %d \r\n", ret);
            }

            gizProtocolWaitAck((uint8_t *)&setDefault, sizeof(protocolCommon_t));
            break;
        case WIFI_NINABLE_MODE:
            gizProtocolHeadInit((protocolHead_t *)&setDefault);
            setDefault.head.cmd = CMD_NINABLE_MODE;
            setDefault.head.sn = gizwitsProtocol.sn++;
            setDefault.head.len = exchangeBytes(sizeof(protocolCommon_t)-4);
            setDefault.sum = gizProtocolSum((uint8_t *)&setDefault, sizeof(protocolCommon_t));
            ret = uartWrite((uint8_t *)&setDefault, sizeof(protocolCommon_t));
            if(ret < 0)
            {
                GIZWITS_LOG("ERR: uart write error %d \r\n", ret);
            }

            gizProtocolWaitAck((uint8_t *)&setDefault, sizeof(protocolCommon_t)); 
            break;
        case WIFI_REBOOT_MODE:
            gizProtocolHeadInit((protocolHead_t *)&setDefault);
            setDefault.head.cmd = CMD_REBOOT_MODULE;
            setDefault.head.sn = gizwitsProtocol.sn++;
            setDefault.head.len = exchangeBytes(sizeof(protocolCommon_t)-4);
            setDefault.sum = gizProtocolSum((uint8_t *)&setDefault, sizeof(protocolCommon_t));
            ret = uartWrite((uint8_t *)&setDefault, sizeof(protocolCommon_t));
            if(ret < 0)
            {
                GIZWITS_LOG("ERR: uart write error %d \r\n", ret);
            }

            gizProtocolWaitAck((uint8_t *)&setDefault, sizeof(protocolCommon_t)); 
            break;
        default:
            GIZWITS_LOG("ERR: CfgMode error!\r\n");
            break;
    }

    return ret;
}

/**
* @brief Get the the network time

* Protocol 4.13:"Device MCU send" of "the MCU requests access to the network time"

* @param[in] none
* @return none
*/
void gizwitsGetNTP(void)
{
    int32_t ret = 0;
    protocolCommon_t getNTP;

    gizProtocolHeadInit((protocolHead_t *)&getNTP);
    getNTP.head.cmd = CMD_GET_NTP;
    getNTP.head.sn = gizwitsProtocol.sn++;
    getNTP.head.len = exchangeBytes(sizeof(protocolCommon_t)-4);
    getNTP.sum = gizProtocolSum((uint8_t *)&getNTP, sizeof(protocolCommon_t));
    ret = uartWrite((uint8_t *)&getNTP, sizeof(protocolCommon_t));
    if(ret < 0)
    {
        GIZWITS_LOG("ERR[NTP]: uart write error %d \r\n", ret);
    }

    gizProtocolWaitAck((uint8_t *)&getNTP, sizeof(protocolCommon_t));
}


/**
* @brief Get Module Info

* 

* @param[in] none
* @return none
*/
void gizwitsGetModuleInfo(void)
{
    int32_t ret = 0;
    protocolGetModuleInfo_t getModuleInfo;

    gizProtocolHeadInit((protocolHead_t *)&getModuleInfo);
    getModuleInfo.head.cmd = CMD_ASK_MODULE_INFO;
    getModuleInfo.head.sn = gizwitsProtocol.sn++;
    getModuleInfo.type = 0x0;
    getModuleInfo.head.len = exchangeBytes(sizeof(protocolGetModuleInfo_t)-4);
    getModuleInfo.sum = gizProtocolSum((uint8_t *)&getModuleInfo, sizeof(protocolGetModuleInfo_t));
    ret = uartWrite((uint8_t *)&getModuleInfo, sizeof(protocolGetModuleInfo_t));
    if(ret < 0)
    {
        GIZWITS_LOG("ERR[NTP]: uart write error %d \r\n", ret);
    }

    gizProtocolWaitAck((uint8_t *)&getModuleInfo, sizeof(protocolGetModuleInfo_t));
}


/**
* @brief Module Info Analyse
*
* @param [in] head : 
*
* @return 0, Success， , other,Faild
*/
static int8_t gizProtocolModuleInfoHandle(protocolHead_t *head)
{
    protocolModuleInfo_t *moduleInfo = (protocolModuleInfo_t *)head;

    if(NULL == head)
    {
        GIZWITS_LOG("NTP is empty \r\n");
        return -1;
    }

    memcpy((uint8_t *)&gizwitsProtocol.wifiModuleNews,(uint8_t *)&moduleInfo->wifiModuleInfo, sizeof(moduleInfo_t));

    gizwitsProtocol.moduleInfoEvent.event[gizwitsProtocol.moduleInfoEvent.num] = MODULE_INFO;
    gizwitsProtocol.moduleInfoEvent.num++;

    gizwitsProtocol.issuedFlag = GET_MODULEINFO_TYPE;


    return 0;
}

/**
* @brief Protocol handling function

* 

* @param [in] currentData :The protocol data pointer
* @return none
*/
int32_t gizwitsHandle(dataPoint_t *currentData) 
{
    int8_t ret = 0;
#ifdef PROTOCOL_DEBUG
    uint16_t i = 0;
#endif
    uint8_t ackData[RB_MAX_LEN];
    uint16_t protocolLen = 0;
    uint32_t ackLen = 0;
    protocolHead_t *recvHead = NULL;
    char *didPtr = NULL;
    uint16_t offset = 0;


    if(NULL == currentData)
    {
        GIZWITS_LOG("GizwitsHandle Error , Illegal Param\r\n");
        return -1;
    }

    /*resend strategy*/
    gizProtocolAckHandle();
    ret = gizProtocolGetOnePacket(&pRb, gizwitsProtocol.protocolBuf, &protocolLen);

    if(0 == ret)
    {
        GIZWITS_LOG("Get One Packet!\r\n");
//        wifi_success_flag=1; //wifi连接成功
#ifdef PROTOCOL_DEBUG
        GIZWITS_LOG("WiFi2MCU[%4d:%4d]: ", gizGetTimerCount(), protocolLen);
        for(i=0; i<protocolLen;i++)
        {
            GIZWITS_LOG("%02x ", gizwitsProtocol.protocolBuf[i]);
        }
        GIZWITS_LOG("\r\n");
#endif

        recvHead = (protocolHead_t *)gizwitsProtocol.protocolBuf;
        switch (recvHead->cmd)
        {
            case CMD_GET_DEVICE_INTO:
                gizProtocolGetDeviceInfo(recvHead);
                break;
            case CMD_ISSUED_P0:
                GIZWITS_LOG("flag %x %x \r\n", recvHead->flags[0], recvHead->flags[1]);
                //offset = 1;
               
                if(0 == gizProtocolIssuedProcess(didPtr, gizwitsProtocol.protocolBuf+sizeof(protocolHead_t)+offset, protocolLen-(sizeof(protocolHead_t)+offset+1), ackData, &ackLen))
                {
                    gizProtocolIssuedDataAck(recvHead, ackData, ackLen,recvHead->flags[1]);
                    GIZWITS_LOG("AckData : \r\n");
                }
                break;
            case CMD_HEARTBEAT:
                gizProtocolCommonAck(recvHead);
                break;
            case CMD_WIFISTATUS:
                gizProtocolCommonAck(recvHead);
                gizProtocolModuleStatus((protocolWifiStatus_t *)recvHead);
                break;
            case ACK_REPORT_P0:
            case ACK_WIFI_CONFIG:
            case ACK_SET_DEFAULT:
            case ACK_NINABLE_MODE:
            case ACK_REBOOT_MODULE:
                gizProtocolWaitAckCheck(recvHead);
                break;
            case CMD_MCU_REBOOT:
                gizProtocolCommonAck(recvHead);
                GIZWITS_LOG("report:MCU reboot!\r\n");
                
                gizProtocolReboot();
                break;
            case CMD_ERROR_PACKAGE:
                break;
            case ACK_PRODUCTION_TEST:
                gizProtocolWaitAckCheck(recvHead);
                GIZWITS_LOG("Ack PRODUCTION_MODE success \r\n");
                break;           
            case ACK_GET_NTP:
                gizProtocolWaitAckCheck(recvHead);
                gizProtocolNTP(recvHead);
//				ntp_success_flag=true;//NTP服务器请求成功
                GIZWITS_LOG("Ack GET_UTT success \r\n");
                break; 
            case ACK_ASK_MODULE_INFO:
                gizProtocolWaitAckCheck(recvHead);
                gizProtocolModuleInfoHandle(recvHead);
                GIZWITS_LOG("Ack GET_Module success \r\n");
            break;
 
            default:
                gizProtocolErrorCmd(recvHead,ERROR_CMD);
                GIZWITS_LOG("ERR: cmd code error!\r\n");
                break;
        }
    }
    else if(-2 == ret)
    {
//        ntp_success_flag=false; //ntf连接失败
		//Check failed, report exception
        recvHead = (protocolHead_t *)gizwitsProtocol.protocolBuf;
        gizProtocolErrorCmd(recvHead,ERROR_ACK_SUM);
        GIZWITS_LOG("ERR: check sum error!\r\n");
        return -2;
    }
    
    switch(gizwitsProtocol.issuedFlag)
    {
        case ACTION_CONTROL_TYPE:
            gizwitsProtocol.issuedFlag = STATELESS_TYPE;
            gizwitsEventProcess(&gizwitsProtocol.issuedProcessEvent, (uint8_t *)&gizwitsProtocol.gizCurrentDataPoint, sizeof(dataPoint_t));
            memset((uint8_t *)&gizwitsProtocol.issuedProcessEvent,0x0,sizeof(gizwitsProtocol.issuedProcessEvent));  
            break;
        case WIFI_STATUS_TYPE:
            gizwitsProtocol.issuedFlag = STATELESS_TYPE;
            gizwitsEventProcess(&gizwitsProtocol.wifiStatusEvent, (uint8_t *)&gizwitsProtocol.wifiStatusData, sizeof(moduleStatusInfo_t));
            memset((uint8_t *)&gizwitsProtocol.wifiStatusEvent,0x0,sizeof(gizwitsProtocol.wifiStatusEvent));
            break;
        case ACTION_W2D_TRANSPARENT_TYPE:
            gizwitsProtocol.issuedFlag = STATELESS_TYPE;
            gizwitsEventProcess(&gizwitsProtocol.issuedProcessEvent, (uint8_t *)gizwitsProtocol.transparentBuff, gizwitsProtocol.transparentLen);
            break;
        case GET_NTP_TYPE:
            gizwitsProtocol.issuedFlag = STATELESS_TYPE;
            gizwitsEventProcess(&gizwitsProtocol.NTPEvent, (uint8_t *)&gizwitsProtocol.TimeNTP, sizeof(protocolTime_t));
            memset((uint8_t *)&gizwitsProtocol.NTPEvent,0x0,sizeof(gizwitsProtocol.NTPEvent));
            break;
        case GET_MODULEINFO_TYPE:
            gizwitsProtocol.issuedFlag = STATELESS_TYPE;
            gizwitsEventProcess(&gizwitsProtocol.moduleInfoEvent, (uint8_t *)&gizwitsProtocol.wifiModuleNews, sizeof(moduleInfo_t));
            memset((uint8_t *)&gizwitsProtocol.moduleInfoEvent,0x0,sizeof(moduleInfo_t));
            break;
        default:
            break;      
    }

    gizDevReportPolicy(currentData);

    return 0;
}

/**
* @brief gizwits report transparent data interface

* The user can call the interface to complete the reporting of private protocol data

* @param [in] data :Private protocol data
* @param [in] len  :Private protocol data length
* @return 0，success ;other，failure
*/
int32_t gizwitsPassthroughData(uint8_t * gizdata, uint32_t len)
{
	int32_t ret = 0;
	uint8_t tx_buf[MAX_PACKAGE_LEN];
	uint8_t *pTxBuf = tx_buf;
	uint16_t data_len = 6+len;
    if(NULL == gizdata)
    {
        GIZWITS_LOG("[ERR] gizwitsPassthroughData Error \r\n");
        return (-1);
    }

	*pTxBuf ++= 0xFF;
	*pTxBuf ++= 0xFF;
	*pTxBuf ++= (uint8_t)(data_len>>8);//len
	*pTxBuf ++= (uint8_t)(data_len);
	*pTxBuf ++= CMD_REPORT_P0;//0x1b cmd
	*pTxBuf ++= gizwitsProtocol.sn++;//sn
	*pTxBuf ++= 0x00;//flag
	*pTxBuf ++= 0x00;//flag
	*pTxBuf ++= ACTION_D2W_TRANSPARENT_DATA;//P0_Cmd

    memcpy(&tx_buf[9],gizdata,len);
    tx_buf[data_len + 4 - 1 ] = gizProtocolSum( tx_buf , (data_len+4));
    
	ret = uartWrite(tx_buf, data_len+4);
    if(ret < 0)
    {
        GIZWITS_LOG("ERR: uart write error %d \r\n", ret);
    }

    gizProtocolWaitAck(tx_buf, data_len+4);

    return 0;
}

/**@} */
