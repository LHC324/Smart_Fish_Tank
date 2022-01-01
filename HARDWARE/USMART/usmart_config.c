#include "usmart.h"
#include "usmart_str.h"
////////////////////////////�û�������///////////////////////////////////////////////
//������Ҫ�������õ��ĺ�����������ͷ�ļ�(�û��Լ����) 
#include "delay.h"	 	
#include "sys.h"
#include "rtc.h"
#include "fattester.h"

extern void led_set(u8 sta);
extern void test_fun(void(*ledset)(u8),u8 sta);										  
//�������б��ʼ��(�û��Լ����)
//�û�ֱ������������Ҫִ�еĺ�����������Ҵ�
struct _m_usmart_nametab usmart_nametab[]=
{
#if USMART_USE_WRFUNS==1 	//���ʹ���˶�д����
	(void*)read_addr,"u32 read_addr(u32 addr)",
	(void*)write_addr,"void write_addr(u32 addr,u32 val)",	 
#endif		   
	(void*)delay_ms,"void delay_ms(u16 nms)",
 	(void*)delay_us,"void delay_us(u32 nus)",	 
		
    (void*)RTC_Set_Time,"u8 RTC_Set_Time(u8 hour,u8 min,u8 sec,u8 ampm)",		   			  	    
 	(void*)RTC_Set_Date,"u8 RTC_Set_Date(u8 year,u8 month,u8 date,u8 week)",		   			  	    
 	(void*)RTC_Set_AlarmA,"void RTC_Set_AlarmA(u8 week,u8 hour,u8 min,u8 sec)",		   			  	    
 	(void*)RTC_Set_WakeUp,"void RTC_Set_WakeUp(u8 wksel,u16 cnt)",

//	(void*)mf_mount,"u8 mf_mount(u8* path,u8 mt)", 
//	(void*)mf_open,"u8 mf_open(u8*path,u8 mode)", 
//	(void*)mf_close,"u8 mf_close(void)", 
//	(void*)mf_read,"u8 mf_read(u16 len)", 
//	(void*)mf_write,"u8 mf_write(u8*dat,u16 len)", 
//	(void*)mf_opendir,"u8 mf_opendir(u8* path)", 
//	(void*)mf_closedir,"u8 mf_closedir(void)", 
//	(void*)mf_readdir,"u8 mf_readdir(void)", 
//	(void*)mf_scan_files,"u8 mf_scan_files(u8 * path)", 
//	(void*)mf_showfree,"u32 mf_showfree(u8 *drv)", 
//	(void*)mf_lseek,"u8 mf_lseek(u32 offset)", 
//	(void*)mf_tell,"u32 mf_tell(void)",
//	(void*)mf_size,"u32 mf_size(void)", 
//	(void*)mf_mkdir,"u8 mf_mkdir(u8*pname)", 
//	(void*)mf_fmkfs,"u8 mf_fmkfs(u8* path,u8 mode,u16 au)", 
//	(void*)mf_unlink,"u8 mf_unlink(u8 *pname)", 
//	(void*)mf_rename,"u8 mf_rename(u8 *oldname,u8* newname)", 
//	(void*)mf_getlabel,"void mf_getlabel(u8 *path)", 
//	(void*)mf_setlabel,"void mf_setlabel(u8 *path)", 
//	(void*)mf_gets,"void mf_gets(u16 size)", 
//	(void*)mf_putc,"u8 mf_putc(u8 c)", 
//	(void*)mf_puts,"u8 mf_puts(u8*c)",
};						  
///////////////////////////////////END///////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
//�������ƹ�������ʼ��
//�õ������ܿغ���������
//�õ�����������
struct _m_usmart_dev usmart_dev=
{
	usmart_nametab,
	usmart_init,
	usmart_cmd_rec,
	usmart_exe,
	usmart_scan,
	sizeof(usmart_nametab)/sizeof(struct _m_usmart_nametab),//��������
	0,	  	//��������
	0,	 	//����ID
	1,		//������ʾ����,0,10����;1,16����
	0,		//��������.bitx:,0,����;1,�ַ���	    
	0,	  	//ÿ�������ĳ����ݴ��,��ҪMAX_PARM��0��ʼ��
	0,		//�����Ĳ���,��ҪPARM_LEN��0��ʼ��
};   



















