/**
************************************************************
* @file         ringbuffer.c
* @brief        Loop buffer processing
* @author       Gizwits
* @date         2017-07-19
* @version      V03030000
* @copyright    Gizwits
*
* @note         Gizwits is only for smart hardware
*               Gizwits Smart Cloud for Smart Products
*               Links | Value Added | Open | Neutral | Safety | Own | Free | Ecology
*               www.gizwits.com
*
***********************************************************/
#include "ringBuffer.h"
#include "common.h"

int8_t ICACHE_FLASH_ATTR rbCreate(rb_t* rb)
{
    if(NULL == rb)
    {
        return -1;
    }

    rb->rbHead = rb->rbBuff;
    rb->rbTail = rb->rbBuff;
    return 0;
}

int8_t ICACHE_FLASH_ATTR rbDelete(rb_t* rb)
{
    if(NULL == rb)
    {
        return -1;
    }

    rb->rbBuff = NULL;
    rb->rbHead = NULL;
    rb->rbTail = NULL;
    rb->rbCapacity = 0;
		return 0;
}

int32_t ICACHE_FLASH_ATTR rbCapacity(rb_t *rb)
{
    if(NULL == rb)
    {
        return -1;
    }

    return rb->rbCapacity;
}

int32_t ICACHE_FLASH_ATTR rbCanRead(rb_t *rb)
{
    if(NULL == rb)
    {
        return -1;
    }

    if (rb->rbHead == rb->rbTail)
    {
        return 0;
    }

    if (rb->rbHead < rb->rbTail)
    {
        return rb->rbTail - rb->rbHead;
    }

    return rbCapacity(rb) - (rb->rbHead - rb->rbTail);
}

int32_t ICACHE_FLASH_ATTR rbCanWrite(rb_t *rb)
{
    if(NULL == rb)
    {
        return -1;
    }

    return rbCapacity(rb) - rbCanRead(rb);
}

int32_t ICACHE_FLASH_ATTR rbRead(rb_t *rb, void *data, size_t count)
{
    int32_t copySz = 0;

    if(NULL == rb)
    {
        return -1;
    }

    if(NULL == data)
    {
        return -1;
    }

    if (rb->rbHead < rb->rbTail)
    {
        copySz = min(count, rbCanRead(rb));
        memcpy(data, rb->rbHead, copySz);
        rb->rbHead += copySz;
        return copySz;
    }
    else
    {
        if (count < rbCapacity(rb)-(rb->rbHead - rb->rbBuff))
        {
            copySz = count;
            memcpy(data, rb->rbHead, copySz);
            rb->rbHead += copySz;
            return copySz;
        }
        else
        {
            copySz = rbCapacity(rb) - (rb->rbHead - rb->rbBuff);
            memcpy(data, rb->rbHead, copySz);
            rb->rbHead = rb->rbBuff;
            copySz += rbRead(rb, (char*)data+copySz, count-copySz);
            return copySz;
        }
    }
}

int32_t ICACHE_FLASH_ATTR rbWrite(rb_t *rb, const void *data, size_t count)
{
    int32_t tailAvailSz = 0;

    if((NULL == rb)||(NULL == data))
    {
        return -1;
    }

    if (count >= rbCanWrite(rb))
    {
        return -2;
    }

    if (rb->rbHead <= rb->rbTail)
    {
        tailAvailSz = rbCapacity(rb) - (rb->rbTail - rb->rbBuff);
        if (count <= tailAvailSz)
        {
            memcpy(rb->rbTail, data, count);
            rb->rbTail += count;
            if (rb->rbTail == rb->rbBuff+rbCapacity(rb))
            {
                rb->rbTail = rb->rbBuff;
            }
            return count;
        }
        else
        {
            memcpy(rb->rbTail, data, tailAvailSz);
            rb->rbTail = rb->rbBuff;

            return tailAvailSz + rbWrite(rb, (char*)data+tailAvailSz, count-tailAvailSz);
        }
    }
    else
    {
        memcpy(rb->rbTail, data, count);
        rb->rbTail += count;
        return count;
    }
}
