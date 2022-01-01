#line 1 "..\\FATFS\\source\\ff.c"


















 


#line 1 "..\\FATFS\\source\\ff.h"


















 









#line 1 "..\\FATFS\\source\\ffconf.h"


 





 





 









 







 




 



 



 



 




 




 



 




 



























 



















 











 







 












 








 




 


 













 








 









 




 




 





 





 





 





 













 











 











 


 


















 



 
#line 30 "..\\FATFS\\source\\ff.h"






 

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 45 "..\\FATFS\\source\\ff.h"
typedef unsigned int	UINT;	 
typedef unsigned char	BYTE;	 
typedef uint16_t		WORD;	 
typedef uint32_t		DWORD;	 
typedef uint64_t		QWORD;	 
typedef WORD			WCHAR;	 
#line 59 "..\\FATFS\\source\\ff.h"


 

#line 70 "..\\FATFS\\source\\ff.h"









 




#line 99 "..\\FATFS\\source\\ff.h"
typedef char TCHAR;








 

#line 124 "..\\FATFS\\source\\ff.h"
typedef DWORD FSIZE_t;
typedef DWORD LBA_t;




 

typedef struct {
	BYTE	fs_type;		 
	BYTE	pdrv;			 
	BYTE	n_fats;			 
	BYTE	wflag;			 
	BYTE	fsi_flag;		 
	WORD	id;				 
	WORD	n_rootdir;		 
	WORD	csize;			 




	WCHAR*	lfnbuf;			 
#line 154 "..\\FATFS\\source\\ff.h"
	DWORD	last_clst;		 
	DWORD	free_clst;		 
#line 165 "..\\FATFS\\source\\ff.h"
	DWORD	n_fatent;		 
	DWORD	fsize;			 
	LBA_t	volbase;		 
	LBA_t	fatbase;		 
	LBA_t	dirbase;		 
	LBA_t	database;		 



	LBA_t	winsect;		 
	BYTE	win[512];	 
} FATFS;



 

typedef struct {
	FATFS*	fs;				 
	WORD	id;				 
	BYTE	attr;			 
	BYTE	stat;			 
	DWORD	sclust;			 
	FSIZE_t	objsize;		 
#line 199 "..\\FATFS\\source\\ff.h"
} FFOBJID;



 

typedef struct {
	FFOBJID	obj;			 
	BYTE	flag;			 
	BYTE	err;			 
	FSIZE_t	fptr;			 
	DWORD	clust;			 
	LBA_t	sect;			 

	LBA_t	dir_sect;		 
	BYTE*	dir_ptr;		 


	DWORD*	cltbl;			 


	BYTE	buf[512];	 

} FIL;



 

typedef struct {
	FFOBJID	obj;			 
	DWORD	dptr;			 
	DWORD	clust;			 
	LBA_t	sect;			 
	BYTE*	dir;			 
	BYTE	fn[12];			 

	DWORD	blk_ofs;		 




} DIR;



 

typedef struct {
	FSIZE_t	fsize;			 
	WORD	fdate;			 
	WORD	ftime;			 
	BYTE	fattrib;		 

	TCHAR	altname[12 + 1]; 
	TCHAR	fname[255 + 1];	 



} FILINFO;



 

typedef struct {
	BYTE fmt;			 
	BYTE n_fat;			 
	UINT align;			 
	UINT n_root;		 
	DWORD au_size;		 
} MKFS_PARM;



 

typedef enum {
	FR_OK = 0,				 
	FR_DISK_ERR,			 
	FR_INT_ERR,				 
	FR_NOT_READY,			 
	FR_NO_FILE,				 
	FR_NO_PATH,				 
	FR_INVALID_NAME,		 
	FR_DENIED,				 
	FR_EXIST,				 
	FR_INVALID_OBJECT,		 
	FR_WRITE_PROTECTED,		 
	FR_INVALID_DRIVE,		 
	FR_NOT_ENABLED,			 
	FR_NO_FILESYSTEM,		 
	FR_MKFS_ABORTED,		 
	FR_TIMEOUT,				 
	FR_LOCKED,				 
	FR_NOT_ENOUGH_CORE,		 
	FR_TOO_MANY_OPEN_FILES,	 
	FR_INVALID_PARAMETER	 
} FRESULT;



 
 

FRESULT f_open (FIL* fp, const TCHAR* path, BYTE mode);				 
FRESULT f_close (FIL* fp);											 
FRESULT f_read (FIL* fp, void* buff, UINT btr, UINT* br);			 
FRESULT f_write (FIL* fp, const void* buff, UINT btw, UINT* bw);	 
FRESULT f_lseek (FIL* fp, FSIZE_t ofs);								 
FRESULT f_truncate (FIL* fp);										 
FRESULT f_sync (FIL* fp);											 
FRESULT f_opendir (DIR* dp, const TCHAR* path);						 
FRESULT f_closedir (DIR* dp);										 
FRESULT f_readdir (DIR* dp, FILINFO* fno);							 
FRESULT f_findfirst (DIR* dp, FILINFO* fno, const TCHAR* path, const TCHAR* pattern);	 
FRESULT f_findnext (DIR* dp, FILINFO* fno);							 
FRESULT f_mkdir (const TCHAR* path);								 
FRESULT f_unlink (const TCHAR* path);								 
FRESULT f_rename (const TCHAR* path_old, const TCHAR* path_new);	 
FRESULT f_stat (const TCHAR* path, FILINFO* fno);					 
FRESULT f_chmod (const TCHAR* path, BYTE attr, BYTE mask);			 
FRESULT f_utime (const TCHAR* path, const FILINFO* fno);			 
FRESULT f_chdir (const TCHAR* path);								 
FRESULT f_chdrive (const TCHAR* path);								 
FRESULT f_getcwd (TCHAR* buff, UINT len);							 
FRESULT f_getfree (const TCHAR* path, DWORD* nclst, FATFS** fatfs);	 
FRESULT f_getlabel (const TCHAR* path, TCHAR* label, DWORD* vsn);	 
FRESULT f_setlabel (const TCHAR* label);							 
FRESULT f_forward (FIL* fp, UINT(*func)(const BYTE*,UINT), UINT btf, UINT* bf);	 
FRESULT f_expand (FIL* fp, FSIZE_t fsz, BYTE opt);					 
FRESULT f_mount (FATFS* fs, const TCHAR* path, BYTE opt);			 
FRESULT f_mkfs (const TCHAR* path, const MKFS_PARM* opt, void* work, UINT len);	 
FRESULT f_fdisk (BYTE pdrv, const LBA_t ptbl[], void* work);		 
FRESULT f_setcp (WORD cp);											 
int f_putc (TCHAR c, FIL* fp);										 
int f_puts (const TCHAR* str, FIL* cp);								 
int f_printf (FIL* fp, const TCHAR* str, ...);						 
TCHAR* f_gets (TCHAR* buff, int len, FIL* fp);						 
FRESULT dir_sdi (DIR *p,DWORD ofs);					


#line 349 "..\\FATFS\\source\\ff.h"








 
 

 

DWORD get_fattime (void);


 

WCHAR ff_oem2uni (WCHAR oem, WORD cp);	 
WCHAR ff_uni2oem (DWORD uni, WORD cp);	 
DWORD ff_wtoupper (DWORD uni);			 


void* ff_memalloc (UINT msize);			 
void ff_memfree (void* mblock);			 


 
#line 383 "..\\FATFS\\source\\ff.h"




 
 


 
#line 399 "..\\FATFS\\source\\ff.h"

 


 






 





 











#line 23 "..\\FATFS\\source\\ff.c"
#line 1 "..\\FATFS\\source\\diskio.h"


 








#line 13 "..\\FATFS\\source\\diskio.h"

 
typedef BYTE	DSTATUS;

 
typedef enum {
	RES_OK = 0,		 
	RES_ERROR,		 
	RES_WRPRT,		 
	RES_NOTRDY,		 
	RES_PARERR		 
} DRESULT;


 
 


DSTATUS disk_initialize (BYTE pdrv);
DSTATUS disk_status (BYTE pdrv);
DRESULT disk_read (BYTE pdrv, BYTE* buff, LBA_t sector, UINT count);
DRESULT disk_write (BYTE pdrv, const BYTE* buff, LBA_t sector, UINT count);
DRESULT disk_ioctl (BYTE pdrv, BYTE cmd, void* buff);


 






 

 






 





 
#line 69 "..\\FATFS\\source\\diskio.h"

 








#line 24 "..\\FATFS\\source\\ff.c"






 






 
#line 44 "..\\FATFS\\source\\ff.c"


 
#line 53 "..\\FATFS\\source\\ff.c"


 





 





 
#line 77 "..\\FATFS\\source\\ff.c"


 
#line 86 "..\\FATFS\\source\\ff.c"



 

#line 113 "..\\FATFS\\source\\ff.c"

#line 127 "..\\FATFS\\source\\ff.c"

#line 146 "..\\FATFS\\source\\ff.c"

#line 183 "..\\FATFS\\source\\ff.c"











#line 206 "..\\FATFS\\source\\ff.c"

#line 227 "..\\FATFS\\source\\ff.c"


 



 
#line 242 "..\\FATFS\\source\\ff.c"


 
#line 252 "..\\FATFS\\source\\ff.c"


 
#line 263 "..\\FATFS\\source\\ff.c"


 
#line 274 "..\\FATFS\\source\\ff.c"


 
#line 288 "..\\FATFS\\source\\ff.c"


 
#line 427 "..\\FATFS\\source\\ff.c"


 
 






 










 


 

 
 
 




static FATFS* FatFs[2];	 
static WORD Fsid;					 















#line 483 "..\\FATFS\\source\\ff.c"



 
 
 

#line 509 "..\\FATFS\\source\\ff.c"
static const BYTE LfnOfs[] = {1,3,5,7,9,14,16,18,20,22,24,28,30};	 


#line 546 "..\\FATFS\\source\\ff.c"









 
 
 

#line 592 "..\\FATFS\\source\\ff.c"
static const BYTE DbcTbl[] = {0x81, 0xFE, 0x00, 0x00, 0x40, 0x7E, 0x80, 0xFE, 0x00, 0x00};










 


 
 
 

static WORD ld_word (const BYTE* ptr)	 
{
	WORD rv;

	rv = ptr[1];
	rv = rv << 8 | ptr[0];
	return rv;
}

static DWORD ld_dword (const BYTE* ptr)	 
{
	DWORD rv;

	rv = ptr[3];
	rv = rv << 8 | ptr[2];
	rv = rv << 8 | ptr[1];
	rv = rv << 8 | ptr[0];
	return rv;
}

#line 646 "..\\FATFS\\source\\ff.c"


static void st_word (BYTE* ptr, WORD val)	 
{
	*ptr++ = (BYTE)val; val >>= 8;
	*ptr++ = (BYTE)val;
}

static void st_dword (BYTE* ptr, DWORD val)	 
{
	*ptr++ = (BYTE)val; val >>= 8;
	*ptr++ = (BYTE)val; val >>= 8;
	*ptr++ = (BYTE)val; val >>= 8;
	*ptr++ = (BYTE)val;
}

#line 676 "..\\FATFS\\source\\ff.c"



 
 
 

 
static void mem_cpy (void* dst, const void* src, UINT cnt)
{
	BYTE *d = (BYTE*)dst;
	const BYTE *s = (const BYTE*)src;

	if (cnt != 0) {
		do {
			*d++ = *s++;
		} while (--cnt);
	}
}


 
static void mem_set (void* dst, int val, UINT cnt)
{
	BYTE *d = (BYTE*)dst;

	do {
		*d++ = (BYTE)val;
	} while (--cnt);
}


 
static int mem_cmp (const void* dst, const void* src, UINT cnt)	 
{
	const BYTE *d = (const BYTE *)dst, *s = (const BYTE *)src;
	int r = 0;

	do {
		r = *d++ - *s++;
	} while (--cnt && r == 0);

	return r;
}


 
static int chk_chr (const char* str, int chr)	 
{
	while (*str && *str != chr) str++;
	return *str;
}


 
static int dbc_1st (BYTE c)
{
#line 739 "..\\FATFS\\source\\ff.c"
	if (c >= DbcTbl[0]) {
		if (c <= DbcTbl[1]) return 1;
		if (c >= DbcTbl[2] && c <= DbcTbl[3]) return 1;
	}



	return 0;
}


 
static int dbc_2nd (BYTE c)
{
#line 760 "..\\FATFS\\source\\ff.c"
	if (c >= DbcTbl[4]) {
		if (c <= DbcTbl[5]) return 1;
		if (c >= DbcTbl[6] && c <= DbcTbl[7]) return 1;
		if (c >= DbcTbl[8] && c <= DbcTbl[9]) return 1;
	}



	return 0;
}




 
static DWORD tchar2uni (	 
	const TCHAR** str		 
)
{
	DWORD uc;
	const TCHAR *p = *str;

#line 826 "..\\FATFS\\source\\ff.c"
	BYTE b;
	WCHAR wc;

	wc = (BYTE)*p++;			 
	if (dbc_1st((BYTE)wc)) {	 
		b = (BYTE)*p++;			 
		if (!dbc_2nd(b)) return 0xFFFFFFFF;	 
		wc = (wc << 8) + b;		 
	}
	if (wc != 0) {
		wc = ff_oem2uni(wc, 936);	 
		if (wc == 0) return 0xFFFFFFFF;	 
	}
	uc = wc;


	*str = p;	 
	return uc;
}


 
static BYTE put_utf (	 
	DWORD chr,	 
	TCHAR* buf,	 
	UINT szb	 
)
{
#line 916 "..\\FATFS\\source\\ff.c"
	WCHAR wc;

	wc = ff_uni2oem(chr, 936);
	if (wc >= 0x100) {	 
		if (szb < 2) return 0;
		*buf++ = (char)(wc >> 8);	 
		*buf++ = (TCHAR)wc;			 
		return 2;
	}
	if (wc == 0 || szb < 1) return 0;	 
	*buf++ = (TCHAR)wc;					 
	return 1;

}



#line 956 "..\\FATFS\\source\\ff.c"



#line 1065 "..\\FATFS\\source\\ff.c"



 
 
 

static FRESULT sync_window (	 
	FATFS* fs			 
)
{
	FRESULT res = FR_OK;


	if (fs->wflag) {	 
		if (disk_write(fs->pdrv, fs->win, fs->winsect, 1) == RES_OK) {	 
			fs->wflag = 0;	 
			if (fs->winsect - fs->fatbase < fs->fsize) {	 
				if (fs->n_fats == 2) disk_write(fs->pdrv, fs->win, fs->winsect + fs->fsize, 1);	 
			}
		} else {
			res = FR_DISK_ERR;
		}
	}
	return res;
}



static FRESULT move_window (	 
	FATFS* fs,		 
	LBA_t sect		 
)
{
	FRESULT res = FR_OK;


	if (sect != fs->winsect) {	 

		res = sync_window(fs);		 

		if (res == FR_OK) {			 
			if (disk_read(fs->pdrv, fs->win, sect, 1) != RES_OK) {
				sect = (LBA_t)0 - 1;	 
				res = FR_DISK_ERR;
			}
			fs->winsect = sect;
		}
	}
	return res;
}





 
 
 

static FRESULT sync_fs (	 
	FATFS* fs		 
)
{
	FRESULT res;


	res = sync_window(fs);
	if (res == FR_OK) {
		if (fs->fs_type == 3 && fs->fsi_flag == 1) {	 
			 
			mem_set(fs->win, 0, sizeof fs->win);
			st_word(fs->win + 510, 0xAA55);
			st_dword(fs->win + 0, 0x41615252);
			st_dword(fs->win + 484, 0x61417272);
			st_dword(fs->win + 488, fs->free_clst);
			st_dword(fs->win + 492, fs->last_clst);
			 
			fs->winsect = fs->volbase + 1;
			disk_write(fs->pdrv, fs->win, fs->winsect, 1);
			fs->fsi_flag = 0;
		}
		 
		if (disk_ioctl(fs->pdrv, 0, 0) != RES_OK) res = FR_DISK_ERR;
	}

	return res;
}





 
 
 

static LBA_t clst2sect (	 
	FATFS* fs,		 
	DWORD clst		 
)
{
	clst -= 2;		 
	if (clst >= fs->n_fatent - 2) return 0;		 
	return fs->database + (LBA_t)fs->csize * clst;	 
}




 
 
 

static DWORD get_fat (		 
	FFOBJID* obj,	 
	DWORD clst		 
)
{
	UINT wc, bc;
	DWORD val;
	FATFS *fs = obj->fs;


	if (clst < 2 || clst >= fs->n_fatent) {	 
		val = 1;	 

	} else {
		val = 0xFFFFFFFF;	 

		switch (fs->fs_type) {
		case 1 :
			bc = (UINT)clst; bc += bc / 2;
			if (move_window(fs, fs->fatbase + (bc / ((UINT)512))) != FR_OK) break;
			wc = fs->win[bc++ % ((UINT)512)];		 
			if (move_window(fs, fs->fatbase + (bc / ((UINT)512))) != FR_OK) break;
			wc |= fs->win[bc % ((UINT)512)] << 8;	 
			val = (clst & 1) ? (wc >> 4) : (wc & 0xFFF);	 
			break;

		case 2 :
			if (move_window(fs, fs->fatbase + (clst / (((UINT)512) / 2))) != FR_OK) break;
			val = ld_word(fs->win + clst * 2 % ((UINT)512));		 
			break;

		case 3 :
			if (move_window(fs, fs->fatbase + (clst / (((UINT)512) / 4))) != FR_OK) break;
			val = ld_dword(fs->win + clst * 4 % ((UINT)512)) & 0x0FFFFFFF;	 
			break;
#line 1240 "..\\FATFS\\source\\ff.c"
		default:
			val = 1;	 
		}
	}

	return val;
}





 
 
 

static FRESULT put_fat (	 
	FATFS* fs,		 
	DWORD clst,		 
	DWORD val		 
)
{
	UINT bc;
	BYTE *p;
	FRESULT res = FR_INT_ERR;


	if (clst >= 2 && clst < fs->n_fatent) {	 
		switch (fs->fs_type) {
		case 1 :
			bc = (UINT)clst; bc += bc / 2;	 
			res = move_window(fs, fs->fatbase + (bc / ((UINT)512)));
			if (res != FR_OK) break;
			p = fs->win + bc++ % ((UINT)512);
			*p = (clst & 1) ? ((*p & 0x0F) | ((BYTE)val << 4)) : (BYTE)val;		 
			fs->wflag = 1;
			res = move_window(fs, fs->fatbase + (bc / ((UINT)512)));
			if (res != FR_OK) break;
			p = fs->win + bc % ((UINT)512);
			*p = (clst & 1) ? (BYTE)(val >> 4) : ((*p & 0xF0) | ((BYTE)(val >> 8) & 0x0F));	 
			fs->wflag = 1;
			break;

		case 2 :
			res = move_window(fs, fs->fatbase + (clst / (((UINT)512) / 2)));
			if (res != FR_OK) break;
			st_word(fs->win + clst * 2 % ((UINT)512), (WORD)val);	 
			fs->wflag = 1;
			break;

		case 3 :



			res = move_window(fs, fs->fatbase + (clst / (((UINT)512) / 4)));
			if (res != FR_OK) break;
			if (!0 || fs->fs_type != 4) {
				val = (val & 0x0FFFFFFF) | (ld_dword(fs->win + clst * 4 % ((UINT)512)) & 0xF0000000);
			}
			st_dword(fs->win + clst * 4 % ((UINT)512), val);
			fs->wflag = 1;
			break;
		}
	}
	return res;
}






#line 1438 "..\\FATFS\\source\\ff.c"




 
 
 

static FRESULT remove_chain (	 
	FFOBJID* obj,		 
	DWORD clst,			 
	DWORD pclst			 
)
{
	FRESULT res = FR_OK;
	DWORD nxt;
	FATFS *fs = obj->fs;
#line 1461 "..\\FATFS\\source\\ff.c"

	if (clst < 2 || clst >= fs->n_fatent) return FR_INT_ERR;	 

	 
	if (pclst != 0 && (!0 || fs->fs_type != 4 || obj->stat != 2)) {
		res = put_fat(fs, pclst, 0xFFFFFFFF);
		if (res != FR_OK) return res;
	}

	 
	do {
		nxt = get_fat(obj, clst);			 
		if (nxt == 0) break;				 
		if (nxt == 1) return FR_INT_ERR;	 
		if (nxt == 0xFFFFFFFF) return FR_DISK_ERR;	 
		if (!0 || fs->fs_type != 4) {
			res = put_fat(fs, clst, 0);		 
			if (res != FR_OK) return res;
		}
		if (fs->free_clst < fs->n_fatent - 2) {	 
			fs->free_clst++;
			fs->fsi_flag |= 1;
		}
#line 1502 "..\\FATFS\\source\\ff.c"
		clst = nxt;					 
	} while (clst < fs->n_fatent);	 

#line 1531 "..\\FATFS\\source\\ff.c"
	return FR_OK;
}




 
 
 

static DWORD create_chain (	 
	FFOBJID* obj,		 
	DWORD clst			 
)
{
	DWORD cs, ncl, scl;
	FRESULT res;
	FATFS *fs = obj->fs;


	if (clst == 0) {	 
		scl = fs->last_clst;				 
		if (scl == 0 || scl >= fs->n_fatent) scl = 1;
	}
	else {				 
		cs = get_fat(obj, clst);			 
		if (cs < 2) return 1;				 
		if (cs == 0xFFFFFFFF) return cs;	 
		if (cs < fs->n_fatent) return cs;	 
		scl = clst;							 
	}
	if (fs->free_clst == 0) return 0;		 

#line 1590 "..\\FATFS\\source\\ff.c"
	{	 
		ncl = 0;
		if (scl == clst) {						 
			ncl = scl + 1;						 
			if (ncl >= fs->n_fatent) ncl = 2;
			cs = get_fat(obj, ncl);				 
			if (cs == 1 || cs == 0xFFFFFFFF) return cs;	 
			if (cs != 0) {						 
				cs = fs->last_clst;				 
				if (cs >= 2 && cs < fs->n_fatent) scl = cs;
				ncl = 0;
			}
		}
		if (ncl == 0) {	 
			ncl = scl;	 
			for (;;) {
				ncl++;							 
				if (ncl >= fs->n_fatent) {		 
					ncl = 2;
					if (ncl > scl) return 0;	 
				}
				cs = get_fat(obj, ncl);			 
				if (cs == 0) break;				 
				if (cs == 1 || cs == 0xFFFFFFFF) return cs;	 
				if (ncl == scl) return 0;		 
			}
		}
		res = put_fat(fs, ncl, 0xFFFFFFFF);		 
		if (res == FR_OK && clst != 0) {
			res = put_fat(fs, clst, ncl);		 
		}
	}

	if (res == FR_OK) {			 
		fs->last_clst = ncl;
		if (fs->free_clst <= fs->n_fatent - 2) fs->free_clst--;
		fs->fsi_flag |= 1;
	} else {
		ncl = (res == FR_DISK_ERR) ? 0xFFFFFFFF : 1;	 
	}

	return ncl;		 
}







 
 
 

static DWORD clmt_clust (	 
	FIL* fp,		 
	FSIZE_t ofs		 
)
{
	DWORD cl, ncl, *tbl;
	FATFS *fs = fp->obj.fs;


	tbl = fp->cltbl + 1;	 
	cl = (DWORD)(ofs / ((UINT)512) / fs->csize);	 
	for (;;) {
		ncl = *tbl++;			 
		if (ncl == 0) return 0;	 
		if (cl < ncl) break;	 
		cl -= ncl; tbl++;		 
	}
	return cl + *tbl;	 
}






 
 
 


static FRESULT dir_clear (	 
	FATFS *fs,		 
	DWORD clst		 
)
{
	LBA_t sect;
	UINT n, szb;
	BYTE *ibuf;


	if (sync_window(fs) != FR_OK) return FR_DISK_ERR;	 
	sect = clst2sect(fs, clst);		 
	fs->winsect = sect;				 
	mem_set(fs->win, 0, sizeof fs->win);	 

	 
	for (szb = ((DWORD)fs->csize * ((UINT)512) >= 0x8000) ? 0x8000 : fs->csize * ((UINT)512), ibuf = 0; szb > ((UINT)512) && (ibuf = ff_memalloc(szb)) == 0; szb /= 2) ;
	if (szb > ((UINT)512)) {		 
		mem_set(ibuf, 0, szb);
		szb /= ((UINT)512);		 
		for (n = 0; n < fs->csize && disk_write(fs->pdrv, ibuf, sect + n, szb) == RES_OK; n += szb) ;	 
		ff_memfree(ibuf);
	} else

	{
		ibuf = fs->win; szb = 1;	 
		for (n = 0; n < fs->csize && disk_write(fs->pdrv, ibuf, sect + n, szb) == RES_OK; n += szb) ;	 
	}
	return (n == fs->csize) ? FR_OK : FR_DISK_ERR;
}





 
 
 


	FRESULT dir_sdi (	 
	DIR* dp,		 
	DWORD ofs		 
)
{
	DWORD csz, clst;
	FATFS *fs = dp->obj.fs;


	if (ofs >= (DWORD)((0 && fs->fs_type == 4) ? 0x10000000 : 0x200000) || ofs % 32) {	 
		return FR_INT_ERR;
	}
	dp->dptr = ofs;				 
	clst = dp->obj.sclust;		 
	if (clst == 0 && fs->fs_type >= 3) {	 
		clst = (DWORD)fs->dirbase;
		if (0) dp->obj.stat = 0;	 
	}

	if (clst == 0) {	 
		if (ofs / 32 >= fs->n_rootdir) return FR_INT_ERR;	 
		dp->sect = fs->dirbase;

	} else {			 
		csz = (DWORD)fs->csize * ((UINT)512);	 
		while (ofs >= csz) {				 
			clst = get_fat(&dp->obj, clst);				 
			if (clst == 0xFFFFFFFF) return FR_DISK_ERR;	 
			if (clst < 2 || clst >= fs->n_fatent) return FR_INT_ERR;	 
			ofs -= csz;
		}
		dp->sect = clst2sect(fs, clst);
	}
	dp->clust = clst;					 
	if (dp->sect == 0) return FR_INT_ERR;
	dp->sect += ofs / ((UINT)512);			 
	dp->dir = fs->win + (ofs % ((UINT)512));	 

	return FR_OK;
}




 
 
 

static FRESULT dir_next (	 
	DIR* dp,				 
	int stretch				 
)
{
	DWORD ofs, clst;
	FATFS *fs = dp->obj.fs;


	ofs = dp->dptr + 32;	 
	if (ofs >= (DWORD)((0 && fs->fs_type == 4) ? 0x10000000 : 0x200000)) dp->sect = 0;	 
	if (dp->sect == 0) return FR_NO_FILE;	 

	if (ofs % ((UINT)512) == 0) {	 
		dp->sect++;				 

		if (dp->clust == 0) {	 
			if (ofs / 32 >= fs->n_rootdir) {	 
				dp->sect = 0; return FR_NO_FILE;
			}
		}
		else {					 
			if ((ofs / ((UINT)512) & (fs->csize - 1)) == 0) {	 
				clst = get_fat(&dp->obj, dp->clust);		 
				if (clst <= 1) return FR_INT_ERR;			 
				if (clst == 0xFFFFFFFF) return FR_DISK_ERR;	 
				if (clst >= fs->n_fatent) {					 

					if (!stretch) {								 
						dp->sect = 0; return FR_NO_FILE;
					}
					clst = create_chain(&dp->obj, dp->clust);	 
					if (clst == 0) return FR_DENIED;			 
					if (clst == 1) return FR_INT_ERR;			 
					if (clst == 0xFFFFFFFF) return FR_DISK_ERR;	 
					if (dir_clear(fs, clst) != FR_OK) return FR_DISK_ERR;	 
					if (0) dp->obj.stat |= 4;			 




				}
				dp->clust = clst;		 
				dp->sect = clst2sect(fs, clst);
			}
		}
	}
	dp->dptr = ofs;						 
	dp->dir = fs->win + ofs % ((UINT)512);	 

	return FR_OK;
}





 
 
 

static FRESULT dir_alloc (	 
	DIR* dp,				 
	UINT nent				 
)
{
	FRESULT res;
	UINT n;
	FATFS *fs = dp->obj.fs;


	res = dir_sdi(dp, 0);
	if (res == FR_OK) {
		n = 0;
		do {
			res = move_window(fs, dp->sect);
			if (res != FR_OK) break;



			if (dp->dir[0] == 0xE5 || dp->dir[0] == 0) {

				if (++n == nent) break;	 
			} else {
				n = 0;					 
			}
			res = dir_next(dp, 1);
		} while (res == FR_OK);	 
	}

	if (res == FR_NO_FILE) res = FR_DENIED;	 
	return res;
}






 
 
 

static DWORD ld_clust (	 
	FATFS* fs,			 
	const BYTE* dir		 
)
{
	DWORD cl;

	cl = ld_word(dir + 26);
	if (fs->fs_type == 3) {
		cl |= (DWORD)ld_word(dir + 20) << 16;
	}

	return cl;
}



static void st_clust (
	FATFS* fs,	 
	BYTE* dir,	 
	DWORD cl	 
)
{
	st_word(dir + 26, (WORD)cl);
	if (fs->fs_type == 3) {
		st_word(dir + 20, (WORD)(cl >> 16));
	}
}





 
 
 

static int cmp_lfn (		 
	const WCHAR* lfnbuf,	 
	BYTE* dir				 
)
{
	UINT i, s;
	WCHAR wc, uc;


	if (ld_word(dir + 26) != 0) return 0;	 

	i = ((dir[0] & 0x3F) - 1) * 13;	 

	for (wc = 1, s = 0; s < 13; s++) {		 
		uc = ld_word(dir + LfnOfs[s]);		 
		if (wc != 0) {
			if (i >= 255 + 1 || ff_wtoupper(uc) != ff_wtoupper(lfnbuf[i++])) {	 
				return 0;					 
			}
			wc = uc;
		} else {
			if (uc != 0xFFFF) return 0;		 
		}
	}

	if ((dir[0] & 0x40) && wc && lfnbuf[i]) return 0;	 

	return 1;		 
}



 
 
 

static int pick_lfn (	 
	WCHAR* lfnbuf,		 
	BYTE* dir			 
)
{
	UINT i, s;
	WCHAR wc, uc;


	if (ld_word(dir + 26) != 0) return 0;	 

	i = ((dir[0] & ~0x40) - 1) * 13;	 

	for (wc = 1, s = 0; s < 13; s++) {		 
		uc = ld_word(dir + LfnOfs[s]);		 
		if (wc != 0) {
			if (i >= 255 + 1) return 0;	 
			lfnbuf[i++] = wc = uc;			 
		} else {
			if (uc != 0xFFFF) return 0;		 
		}
	}

	if (dir[0] & 0x40 && wc != 0) {	 
		if (i >= 255 + 1) return 0;	 
		lfnbuf[i] = 0;
	}

	return 1;		 
}




 
 
 

static void put_lfn (
	const WCHAR* lfn,	 
	BYTE* dir,			 
	BYTE ord,			 
	BYTE sum			 
)
{
	UINT i, s;
	WCHAR wc;


	dir[13] = sum;			 
	dir[11] = 0x0F;		 
	dir[12] = 0;
	st_word(dir + 26, 0);

	i = (ord - 1) * 13;				 
	s = wc = 0;
	do {
		if (wc != 0xFFFF) wc = lfn[i++];	 
		st_word(dir + LfnOfs[s], wc);		 
		if (wc == 0) wc = 0xFFFF;		 
	} while (++s < 13);
	if (wc == 0xFFFF || !lfn[i]) ord |= 0x40;	 
	dir[0] = ord;			 
}







 
 
 

static void gen_numname (
	BYTE* dst,			 
	const BYTE* src,	 
	const WCHAR* lfn,	 
	UINT seq			 
)
{
	BYTE ns[8], c;
	UINT i, j;
	WCHAR wc;
	DWORD sreg;


	mem_cpy(dst, src, 11);

	if (seq > 5) {	 
		sreg = seq;
		while (*lfn) {	 
			wc = *lfn++;
			for (i = 0; i < 16; i++) {
				sreg = (sreg << 1) + (wc & 1);
				wc >>= 1;
				if (sreg & 0x10000) sreg ^= 0x11021;
			}
		}
		seq = (UINT)sreg;
	}

	 
	i = 7;
	do {
		c = (BYTE)((seq % 16) + '0');
		if (c > '9') c += 7;
		ns[i--] = c;
		seq /= 16;
	} while (seq);
	ns[i] = '~';

	 
	for (j = 0; j < i && dst[j] != ' '; j++) {
		if (dbc_1st(dst[j])) {
			if (j == i - 1) break;
			j++;
		}
	}
	do {
		dst[j++] = (i < 8) ? ns[i++] : ' ';
	} while (j < 8);
}





 
 
 

static BYTE sum_sfn (
	const BYTE* dir		 
)
{
	BYTE sum = 0;
	UINT n = 11;

	do {
		sum = (sum >> 1) + (sum << 7) + *dir++;
	} while (--n);
	return sum;
}





#line 2354 "..\\FATFS\\source\\ff.c"




 
 
 




static FRESULT dir_read (
	DIR* dp,		 
	int vol			 
)
{
	FRESULT res = FR_NO_FILE;
	FATFS *fs = dp->obj.fs;
	BYTE attr, b;

	BYTE ord = 0xFF, sum = 0xFF;


	while (dp->sect) {
		res = move_window(fs, dp->sect);
		if (res != FR_OK) break;
		b = dp->dir[0];	 
		if (b == 0) {
			res = FR_NO_FILE; break;  
		}
#line 2400 "..\\FATFS\\source\\ff.c"
		{	 
			dp->obj.attr = attr = dp->dir[11] & 0x3F;	 

			if (b == 0xE5 || b == '.' || (int)((attr & ~0x20) == 0x08) != vol) {	 
				ord = 0xFF;
			} else {
				if (attr == 0x0F) {			 
					if (b & 0x40) {			 
						sum = dp->dir[13];
						b &= (BYTE)~0x40; ord = b;
						dp->blk_ofs = dp->dptr;
					}
					 
					ord = (b == ord && sum == dp->dir[13] && pick_lfn(fs->lfnbuf, dp->dir)) ? ord - 1 : 0xFF;
				} else {					 
					if (ord != 0 || sum != sum_sfn(dp->dir)) {	 
						dp->blk_ofs = 0xFFFFFFFF;			 
					}
					break;
				}
			}





		}
		res = dir_next(dp, 0);		 
		if (res != FR_OK) break;
	}

	if (res != FR_OK) dp->sect = 0;		 
	return res;
}





 
 
 

static FRESULT dir_find (	 
	DIR* dp					 
)
{
	FRESULT res;
	FATFS *fs = dp->obj.fs;
	BYTE c;

	BYTE a, ord, sum;


	res = dir_sdi(dp, 0);			 
	if (res != FR_OK) return res;
#line 2476 "..\\FATFS\\source\\ff.c"
	 

	ord = sum = 0xFF; dp->blk_ofs = 0xFFFFFFFF;	 

	do {
		res = move_window(fs, dp->sect);
		if (res != FR_OK) break;
		c = dp->dir[0];
		if (c == 0) { res = FR_NO_FILE; break; }	 

		dp->obj.attr = a = dp->dir[11] & 0x3F;
		if (c == 0xE5 || ((a & 0x08) && a != 0x0F)) {	 
			ord = 0xFF; dp->blk_ofs = 0xFFFFFFFF;	 
		} else {
			if (a == 0x0F) {			 
				if (!(dp->fn[11] & 0x40)) {
					if (c & 0x40) {		 
						sum = dp->dir[13];
						c &= (BYTE)~0x40; ord = c;	 
						dp->blk_ofs = dp->dptr;	 
					}
					 
					ord = (c == ord && sum == dp->dir[13] && cmp_lfn(fs->lfnbuf, dp->dir)) ? ord - 1 : 0xFF;
				}
			} else {					 
				if (ord == 0 && sum == sum_sfn(dp->dir)) break;	 
				if (!(dp->fn[11] & 0x01) && !mem_cmp(dp->dir, dp->fn, 11)) break;	 
				ord = 0xFF; dp->blk_ofs = 0xFFFFFFFF;	 
			}
		}




		res = dir_next(dp, 0);	 
	} while (res == FR_OK);

	return res;
}





 
 
 

static FRESULT dir_register (	 
	DIR* dp						 
)
{
	FRESULT res;
	FATFS *fs = dp->obj.fs;

	UINT n, nlen, nent;
	BYTE sn[12], sum;


	if (dp->fn[11] & (0x20 | 0x80)) return FR_INVALID_NAME;	 
	for (nlen = 0; fs->lfnbuf[nlen]; nlen++) ;	 

#line 2569 "..\\FATFS\\source\\ff.c"
	 
	mem_cpy(sn, dp->fn, 12);
	if (sn[11] & 0x01) {			 
		dp->fn[11] = 0x40;		 
		for (n = 1; n < 100; n++) {
			gen_numname(dp->fn, sn, fs->lfnbuf, n);	 
			res = dir_find(dp);				 
			if (res != FR_OK) break;
		}
		if (n == 100) return FR_DENIED;		 
		if (res != FR_NO_FILE) return res;	 
		dp->fn[11] = sn[11];
	}

	 
	nent = (sn[11] & 0x02) ? (nlen + 12) / 13 + 1 : 1;	 
	res = dir_alloc(dp, nent);		 
	if (res == FR_OK && --nent) {	 
		res = dir_sdi(dp, dp->dptr - nent * 32);
		if (res == FR_OK) {
			sum = sum_sfn(dp->fn);	 
			do {					 
				res = move_window(fs, dp->sect);
				if (res != FR_OK) break;
				put_lfn(fs->lfnbuf, dp->dir, (BYTE)nent, sum);
				fs->wflag = 1;
				res = dir_next(dp, 0);	 
			} while (res == FR_OK && --nent);
		}
	}






	 
	if (res == FR_OK) {
		res = move_window(fs, dp->sect);
		if (res == FR_OK) {
			mem_set(dp->dir, 0, 32);	 
			mem_cpy(dp->dir + 0, dp->fn, 11);	 

			dp->dir[12] = dp->fn[11] & (0x08 | 0x10);	 

			fs->wflag = 1;
		}
	}

	return res;
}






 
 
 

static FRESULT dir_remove (	 
	DIR* dp					 
)
{
	FRESULT res;
	FATFS *fs = dp->obj.fs;

	DWORD last = dp->dptr;

	res = (dp->blk_ofs == 0xFFFFFFFF) ? FR_OK : dir_sdi(dp, dp->blk_ofs);	 
	if (res == FR_OK) {
		do {
			res = move_window(fs, dp->sect);
			if (res != FR_OK) break;
			if (0 && fs->fs_type == 4) {	 
				dp->dir[0] &= 0x7F;	 
			} else {									 
				dp->dir[0] = 0xE5;	 
			}
			fs->wflag = 1;
			if (dp->dptr >= last) break;	 
			res = dir_next(dp, 0);	 
		} while (res == FR_OK);
		if (res == FR_NO_FILE) res = FR_INT_ERR;
	}
#line 2663 "..\\FATFS\\source\\ff.c"

	return res;
}






 
 
 

static void get_fileinfo (
	DIR* dp,			 
	FILINFO* fno		 
)
{
	UINT si, di;

	BYTE lcf;
	WCHAR wc, hs;
	FATFS *fs = dp->obj.fs;





	fno->fname[0] = 0;			 
	if (dp->sect == 0) return;	 

#line 2701 "..\\FATFS\\source\\ff.c"
	{	 
		if (dp->blk_ofs != 0xFFFFFFFF) {	 
			si = di = hs = 0;
			while (fs->lfnbuf[si] != 0) {
				wc = fs->lfnbuf[si++];		 
				if (hs == 0 && ((wc) >= 0xD800 && (wc) <= 0xDFFF)) {	 
					hs = wc; continue;		 
				}
				wc = put_utf((DWORD)hs << 16 | wc, &fno->fname[di], 255 - di);	 
				if (wc == 0) { di = 0; break; }	 
				di += wc;
				hs = 0;
			}
			if (hs != 0) di = 0;	 
			fno->fname[di] = 0;		 
		}
	}

	si = di = 0;
	while (si < 11) {		 
		wc = dp->dir[si++];			 
		if (wc == ' ') continue;	 
		if (wc == 0x05) wc = 0xE5;	 
		if (si == 9 && di < 12) fno->altname[di++] = '.';	 
#line 2735 "..\\FATFS\\source\\ff.c"
		fno->altname[di++] = (TCHAR)wc;	 

	}
	fno->altname[di] = 0;	 

	if (fno->fname[0] == 0) {	 
		if (di == 0) {	 
			fno->fname[di++] = '?';
		} else {
			for (si = di = 0, lcf = 0x08; fno->altname[si]; si++, di++) {	 
				wc = (WCHAR)fno->altname[si];
				if (wc == '.') lcf = 0x10;
				if (((wc) >= 'A' && (wc) <= 'Z') && (dp->dir[12] & lcf)) wc += 0x20;
				fno->fname[di] = (TCHAR)wc;
			}
		}
		fno->fname[di] = 0;	 
		if (!dp->dir[12]) fno->altname[0] = 0;	 
	}

#line 2766 "..\\FATFS\\source\\ff.c"

	fno->fattrib = dp->dir[11];					 
	fno->fsize = ld_dword(dp->dir + 28);		 
	fno->ftime = ld_word(dp->dir + 22 + 0);	 
	fno->fdate = ld_word(dp->dir + 22 + 2);	 
}





#line 2853 "..\\FATFS\\source\\ff.c"



 
 
 

static FRESULT create_name (	 
	DIR* dp,					 
	const TCHAR** path			 
)
{

	BYTE b, cf;
	WCHAR wc, *lfn;
	DWORD uc;
	UINT i, ni, si, di;
	const TCHAR *p;


	 
	p = *path; lfn = dp->obj.fs->lfnbuf; di = 0;
	for (;;) {
		uc = tchar2uni(&p);			 
		if (uc == 0xFFFFFFFF) return FR_INVALID_NAME;		 
		if (uc >= 0x10000) lfn[di++] = (WCHAR)(uc >> 16);	 
		wc = (WCHAR)uc;
		if (wc < ' ' || wc == '/' || wc == '\\') break;	 
		if (wc < 0x80 && chk_chr("\"*:<>\?|\x7F", wc)) return FR_INVALID_NAME;	 
		if (di >= 255) return FR_INVALID_NAME;	 
		lfn[di++] = wc;					 
	}
	if (wc < ' ') {				 
		cf = 0x04;			 
	} else {
		cf = 0;					 
		while (*p == '/' || *p == '\\') p++;	 
	}
	*path = p;					 

#line 2904 "..\\FATFS\\source\\ff.c"
	while (di) {						 
		wc = lfn[di - 1];
		if (wc != ' ' && wc != '.') break;
		di--;
	}
	lfn[di] = 0;							 
	if (di == 0) return FR_INVALID_NAME;	 

	 
	for (si = 0; lfn[si] == ' '; si++) ;	 
	if (si > 0 || lfn[si] == '.') cf |= 0x01 | 0x02;	 
	while (di > 0 && lfn[di - 1] != '.') di--;	 

	mem_set(dp->fn, ' ', 11);
	i = b = 0; ni = 8;
	for (;;) {
		wc = lfn[si++];					 
		if (wc == 0) break;				 
		if (wc == ' ' || (wc == '.' && si != di)) {	 
			cf |= 0x01 | 0x02;
			continue;
		}

		if (i >= ni || si == di) {		 
			if (ni == 11) {				 
				cf |= 0x01 | 0x02;
				break;
			}
			if (si != di) cf |= 0x01 | 0x02;	 
			if (si > di) break;						 
			si = di; i = 8; ni = 11; b <<= 2;		 
			continue;
		}

		if (wc >= 0x80) {	 
			cf |= 0x02;	 
#line 2951 "..\\FATFS\\source\\ff.c"
			wc = ff_uni2oem(ff_wtoupper(wc), 936);	 

		}

		if (wc >= 0x100) {				 
			if (i >= ni - 1) {			 
				cf |= 0x01 | 0x02;
				i = ni; continue;		 
			}
			dp->fn[i++] = (BYTE)(wc >> 8);	 
		} else {						 
			if (wc == 0 || chk_chr("+,;=[]", wc)) {	 
				wc = '_'; cf |= 0x01 | 0x02; 
			} else {
				if (((wc) >= 'A' && (wc) <= 'Z')) {		 
					b |= 2;
				}
				if (((wc) >= 'a' && (wc) <= 'z')) {		 
					b |= 1; wc -= 0x20;
				}
			}
		}
		dp->fn[i++] = (BYTE)wc;
	}

	if (dp->fn[0] == 0xE5) dp->fn[0] = 0x05;	 

	if (ni == 8) b <<= 2;				 
	if ((b & 0x0C) == 0x0C || (b & 0x03) == 0x03) cf |= 0x02;	 
	if (!(cf & 0x02)) {				 
		if (b & 0x01) cf |= 0x10;		 
		if (b & 0x04) cf |= 0x08;	 
	}

	dp->fn[11] = cf;	 

	return FR_OK;


#line 3052 "..\\FATFS\\source\\ff.c"
}




 
 
 

static FRESULT follow_path (	 
	DIR* dp,					 
	const TCHAR* path			 
)
{
	FRESULT res;
	BYTE ns;
	FATFS *fs = dp->obj.fs;







	{										 
		while (*path == '/' || *path == '\\') path++;	 
		dp->obj.sclust = 0;					 
	}
#line 3096 "..\\FATFS\\source\\ff.c"

	if ((UINT)*path < ' ') {				 
		dp->fn[11] = 0x80;
		res = dir_sdi(dp, 0);

	} else {								 
		for (;;) {
			res = create_name(dp, &path);	 
			if (res != FR_OK) break;
			res = dir_find(dp);				 
			ns = dp->fn[11];
			if (res != FR_OK) {				 
				if (res == FR_NO_FILE) {	 
					if (0 && (ns & 0x20)) {	 
						if (!(ns & 0x04)) continue;	 
						dp->fn[11] = 0x80;
						res = FR_OK;
					} else {							 
						if (!(ns & 0x04)) res = FR_NO_PATH;	 
					}
				}
				break;
			}
			if (ns & 0x04) break;			 
			 
			if (!(dp->obj.attr & 0x10)) {		 
				res = FR_NO_PATH; break;
			}
#line 3132 "..\\FATFS\\source\\ff.c"
			{
				dp->obj.sclust = ld_clust(fs, fs->win + dp->dptr % ((UINT)512));	 
			}
		}
	}

	return res;
}




 
 
 

static int get_ldnumber (	 
	const TCHAR** path		 
)
{
	const TCHAR *tp, *tt;
	TCHAR tc;
	int i, vol = -1;





	tt = tp = *path;
	if (!tp) return vol;	 
	do tc = *tt++; while ((UINT)tc >= (3 ? ' ' : '!') && tc != ':');	 

	if (tc == ':') {	 
		i = 2;
		if (((*tp) >= '0' && (*tp) <= '9') && tp + 2 == tt) {	 
			i = (int)*tp - '0';	 
		}
#line 3182 "..\\FATFS\\source\\ff.c"
		if (i < 2) {	 
			vol = i;		 
			*path = tt;		 
		}
		return vol;
	}
#line 3206 "..\\FATFS\\source\\ff.c"
	 



	vol = 0;		 

	return vol;		 
}




 
 
 

#line 3285 "..\\FATFS\\source\\ff.c"



 
 
 

 

static UINT check_fs (	 
	FATFS* fs,			 
	LBA_t sect			 
)
{
	fs->wflag = 0; fs->winsect = (LBA_t)0 - 1;		 
	if (move_window(fs, sect) != FR_OK) return 4;	 

	if (ld_word(fs->win + 510) != 0xAA55) return 3;	 

	if (0 && !mem_cmp(fs->win + 0, "\xEB\x76\x90" "EXFAT   ", 11)) return 1;	 

	if (fs->win[0] == 0xE9 || fs->win[0] == 0xEB || fs->win[0] == 0xE8) {	 
		if (!mem_cmp(fs->win + 54, "FAT", 3)) return 0;		 
		if (!mem_cmp(fs->win + 82, "FAT32", 5)) return 0;	 
	}
	return 2;	 
}


 
 

static UINT find_volume (	 
	FATFS* fs,		 
	UINT part		 
)
{
	UINT fmt, i;
	DWORD mbr_pt[4];


	fmt = check_fs(fs, 0);				 
	if (fmt != 2 && (fmt >= 3 || part == 0)) return fmt;	 

	 

#line 3353 "..\\FATFS\\source\\ff.c"
	if (0 && part > 4) return 3;	 
	for (i = 0; i < 4; i++) {		 
		mbr_pt[i] = ld_dword(fs->win + 446 + i * 16 + 8);
	}
	i = part ? part - 1 : 0;		 
	do {							 
		fmt = mbr_pt[i] ? check_fs(fs, mbr_pt[i]) : 3;	 
	} while (part == 0 && fmt >= 2 && ++i < 4);
	return fmt;
}




 
 
 

static FRESULT mount_volume (	 
	const TCHAR** path,			 
	FATFS** rfs,				 
	BYTE mode					 
)
{
	int vol;
	DSTATUS stat;
	LBA_t bsect;
	DWORD tsect, sysect, fasize, nclst, szbfat;
	WORD nrsv;
	FATFS *fs;
	UINT fmt;


	 
	*rfs = 0;
	vol = get_ldnumber(path);
	if (vol < 0) return FR_INVALID_DRIVE;

	 
	fs = FatFs[vol];					 
	if (!fs) return FR_NOT_ENABLED;		 



	*rfs = fs;							 

	mode &= (BYTE)~0x01;				 
	if (fs->fs_type != 0) {				 
		stat = disk_status(fs->pdrv);
		if (!(stat & 0x01)) {		 
			if (!0 && mode && (stat & 0x04)) {	 
				return FR_WRITE_PROTECTED;
			}
			return FR_OK;				 
		}
	}

	 
	 

	fs->fs_type = 0;					 
	fs->pdrv = (BYTE)(vol);				 
	stat = disk_initialize(fs->pdrv);	 
	if (stat & 0x01) { 			 
		return FR_NOT_READY;			 
	}
	if (!0 && mode && (stat & 0x04)) {  
		return FR_WRITE_PROTECTED;
	}





	 
	fmt = find_volume(fs, 0);
	if (fmt == 4) return FR_DISK_ERR;		 
	if (fmt >= 2) return FR_NO_FILESYSTEM;	 
	bsect = fs->winsect;					 

	 

#line 3498 "..\\FATFS\\source\\ff.c"
	{
		if (ld_word(fs->win + 11) != ((UINT)512)) return FR_NO_FILESYSTEM;	 

		fasize = ld_word(fs->win + 22);		 
		if (fasize == 0) fasize = ld_dword(fs->win + 36);
		fs->fsize = fasize;

		fs->n_fats = fs->win[16];				 
		if (fs->n_fats != 1 && fs->n_fats != 2) return FR_NO_FILESYSTEM;	 
		fasize *= fs->n_fats;							 

		fs->csize = fs->win[13];			 
		if (fs->csize == 0 || (fs->csize & (fs->csize - 1))) return FR_NO_FILESYSTEM;	 

		fs->n_rootdir = ld_word(fs->win + 17);	 
		if (fs->n_rootdir % (((UINT)512) / 32)) return FR_NO_FILESYSTEM;	 

		tsect = ld_word(fs->win + 19);		 
		if (tsect == 0) tsect = ld_dword(fs->win + 32);

		nrsv = ld_word(fs->win + 14);		 
		if (nrsv == 0) return FR_NO_FILESYSTEM;			 

		 
		sysect = nrsv + fasize + fs->n_rootdir / (((UINT)512) / 32);	 
		if (tsect < sysect) return FR_NO_FILESYSTEM;	 
		nclst = (tsect - sysect) / fs->csize;			 
		if (nclst == 0) return FR_NO_FILESYSTEM;		 
		fmt = 0;
		if (nclst <= 0x0FFFFFF5) fmt = 3;
		if (nclst <= 0xFFF5) fmt = 2;
		if (nclst <= 0xFF5) fmt = 1;
		if (fmt == 0) return FR_NO_FILESYSTEM;

		 
		fs->n_fatent = nclst + 2;						 
		fs->volbase = bsect;							 
		fs->fatbase = bsect + nrsv; 					 
		fs->database = bsect + sysect;					 
		if (fmt == 3) {
			if (ld_word(fs->win + 42) != 0) return FR_NO_FILESYSTEM;	 
			if (fs->n_rootdir != 0) return FR_NO_FILESYSTEM;	 
			fs->dirbase = ld_dword(fs->win + 44);	 
			szbfat = fs->n_fatent * 4;					 
		} else {
			if (fs->n_rootdir == 0)	return FR_NO_FILESYSTEM;	 
			fs->dirbase = fs->fatbase + fasize;			 
			szbfat = (fmt == 2) ?				 
				fs->n_fatent * 2 : fs->n_fatent * 3 / 2 + (fs->n_fatent & 1);
		}
		if (fs->fsize < (szbfat + (((UINT)512) - 1)) / ((UINT)512)) return FR_NO_FILESYSTEM;	 


		 
		fs->last_clst = fs->free_clst = 0xFFFFFFFF;		 
		fs->fsi_flag = 0x80;

		if (fmt == 3				 
			&& ld_word(fs->win + 48) == 1
			&& move_window(fs, bsect + 1) == FR_OK)
		{
			fs->fsi_flag = 0;
			if (ld_word(fs->win + 510) == 0xAA55	 
				&& ld_dword(fs->win + 0) == 0x41615252
				&& ld_dword(fs->win + 484) == 0x61417272)
			{

				fs->free_clst = ld_dword(fs->win + 488);


				fs->last_clst = ld_dword(fs->win + 492);

			}
		}


	}

	fs->fs_type = (BYTE)fmt; 
	fs->id = ++Fsid;		 
#line 3590 "..\\FATFS\\source\\ff.c"
	return FR_OK;
}




 
 
 

static FRESULT validate (	 
	FFOBJID* obj,			 
	FATFS** rfs				 
)
{
	FRESULT res = FR_INVALID_OBJECT;


	if (obj && obj->fs && obj->fs->fs_type && obj->id == obj->fs->id) {	 
#line 3620 "..\\FATFS\\source\\ff.c"
		if (!(disk_status(obj->fs->pdrv) & 0x01)) {  
			res = FR_OK;
		}

	}
	*rfs = (res == FR_OK) ? obj->fs : 0;	 
	return res;
}








 



 
 
 

FRESULT f_mount (
	FATFS* fs,			 
	const TCHAR* path,	 
	BYTE opt			 
)
{
	FATFS *cfs;
	int vol;
	FRESULT res;
	const TCHAR *rp = path;


	 
	vol = get_ldnumber(&rp);
	if (vol < 0) return FR_INVALID_DRIVE;
	cfs = FatFs[vol];					 

	if (cfs) {
#line 3668 "..\\FATFS\\source\\ff.c"
		cfs->fs_type = 0;				 
	}

	if (fs) {
		fs->fs_type = 0;				 



	}
	FatFs[vol] = fs;					 

	if (opt == 0) return FR_OK;			 

	res = mount_volume(&path, &fs, 0);	 
	return res;
}




 
 
 

FRESULT f_open (
	FIL* fp,			 
	const TCHAR* path,	 
	BYTE mode			 
)
{
	FRESULT res;
	DIR dj;
	FATFS *fs;

	DWORD cl, bcs, clst;
	LBA_t sc;
	FSIZE_t ofs;

	WCHAR *lfn;


	if (!fp) return FR_INVALID_OBJECT;

	 
	mode &= 0 ? 0x01 : 0x01 | 0x02 | 0x08 | 0x04 | 0x10 | 0x30;
	res = mount_volume(&path, &fs, mode);
	if (res == FR_OK) {
		dj.obj.fs = fs;
		{ lfn = ff_memalloc((255+1)*2); if (!lfn) return FR_NOT_ENOUGH_CORE; (fs)->lfnbuf = lfn; };
		res = follow_path(&dj, path);	 

		if (res == FR_OK) {
			if (dj.fn[11] & 0x80) {	 
				res = FR_INVALID_NAME;
			}





		}
		 
		if (mode & (0x08 | 0x10 | 0x04)) {
			if (res != FR_OK) {					 
				if (res == FR_NO_FILE) {		 



					res = dir_register(&dj);

				}
				mode |= 0x08;		 
			}
			else {								 
				if (dj.obj.attr & (0x01 | 0x10)) {	 
					res = FR_DENIED;
				} else {
					if (mode & 0x04) res = FR_EXIST;	 
				}
			}
			if (res == FR_OK && (mode & 0x08)) {	 
#line 3767 "..\\FATFS\\source\\ff.c"
				{
					 
					cl = ld_clust(fs, dj.dir);			 
					st_dword(dj.dir + 14, get_fattime());	 
					dj.dir[11] = 0x20;			 
					st_clust(fs, dj.dir, 0);			 
					st_dword(dj.dir + 28, 0);
					fs->wflag = 1;
					if (cl != 0) {						 
						sc = fs->winsect;
						res = remove_chain(&dj.obj, cl, 0);
						if (res == FR_OK) {
							res = move_window(fs, sc);
							fs->last_clst = cl - 1;		 
						}
					}
				}
			}
		}
		else {	 
			if (res == FR_OK) {					 
				if (dj.obj.attr & 0x10) {		 
					res = FR_NO_FILE;
				} else {
					if ((mode & 0x02) && (dj.obj.attr & 0x01)) {  
						res = FR_DENIED;
					}
				}
			}
		}
		if (res == FR_OK) {
			if (mode & 0x08) mode |= 0x40;	 
			fp->dir_sect = fs->winsect;			 
			fp->dir_ptr = dj.dir;




		}
#line 3817 "..\\FATFS\\source\\ff.c"

		if (res == FR_OK) {
#line 3827 "..\\FATFS\\source\\ff.c"
			{
				fp->obj.sclust = ld_clust(fs, dj.dir);					 
				fp->obj.objsize = ld_dword(dj.dir + 28);
			}

			fp->cltbl = 0;			 

			fp->obj.fs = fs;	 	 
			fp->obj.id = fs->id;
			fp->flag = mode;		 
			fp->err = 0;			 
			fp->sect = 0;			 
			fp->fptr = 0;			 


			mem_set(fp->buf, 0, sizeof fp->buf);	 

			if ((mode & 0x20) && fp->obj.objsize > 0) {	 
				fp->fptr = fp->obj.objsize;			 
				bcs = (DWORD)fs->csize * ((UINT)512);	 
				clst = fp->obj.sclust;				 
				for (ofs = fp->obj.objsize; res == FR_OK && ofs > bcs; ofs -= bcs) {
					clst = get_fat(&fp->obj, clst);
					if (clst <= 1) res = FR_INT_ERR;
					if (clst == 0xFFFFFFFF) res = FR_DISK_ERR;
				}
				fp->clust = clst;
				if (res == FR_OK && ofs % ((UINT)512)) {	 
					sc = clst2sect(fs, clst);
					if (sc == 0) {
						res = FR_INT_ERR;
					} else {
						fp->sect = sc + (DWORD)(ofs / ((UINT)512));

						if (disk_read(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) res = FR_DISK_ERR;

					}
				}
			}

		}

		ff_memfree(lfn);
	}

	if (res != FR_OK) fp->obj.fs = 0;	 

	return res;
}




 
 
 

FRESULT f_read (
	FIL* fp, 	 
	void* buff,	 
	UINT btr,	 
	UINT* br	 
)
{
	FRESULT res;
	FATFS *fs;
	DWORD clst;
	LBA_t sect;
	FSIZE_t remain;
	UINT rcnt, cc, csect;
	BYTE *rbuff = (BYTE*)buff;


	*br = 0;	 
	res = validate(&fp->obj, &fs);				 
	if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) return res;	 
	if (!(fp->flag & 0x01)) return FR_DENIED;  
	remain = fp->obj.objsize - fp->fptr;
	if (btr > remain) btr = (UINT)remain;		 

	for ( ;  btr;								 
		btr -= rcnt, *br += rcnt, rbuff += rcnt, fp->fptr += rcnt) {
		if (fp->fptr % ((UINT)512) == 0) {			 
			csect = (UINT)(fp->fptr / ((UINT)512) & (fs->csize - 1));	 
			if (csect == 0) {					 
				if (fp->fptr == 0) {			 
					clst = fp->obj.sclust;		 
				} else {						 

					if (fp->cltbl) {
						clst = clmt_clust(fp, fp->fptr);	 
					} else

					{
						clst = get_fat(&fp->obj, fp->clust);	 
					}
				}
				if (clst < 2) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
				if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
				fp->clust = clst;				 
			}
			sect = clst2sect(fs, fp->clust);	 
			if (sect == 0) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
			sect += csect;
			cc = btr / ((UINT)512);					 
			if (cc > 0) {						 
				if (csect + cc > fs->csize) {	 
					cc = fs->csize - csect;
				}
				if (disk_read(fs->pdrv, rbuff, sect, cc) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
#line 3943 "..\\FATFS\\source\\ff.c"
				if ((fp->flag & 0x80) && fp->sect - sect < cc) {
					mem_cpy(rbuff + ((fp->sect - sect) * ((UINT)512)), fp->buf, ((UINT)512));
				}


				rcnt = ((UINT)512) * cc;				 
				continue;
			}

			if (fp->sect != sect) {			 

				if (fp->flag & 0x80) {		 
					if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
					fp->flag &= (BYTE)~0x80;
				}

				if (disk_read(fs->pdrv, fp->buf, sect, 1) != RES_OK)	{ fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };	 
			}

			fp->sect = sect;
		}
		rcnt = ((UINT)512) - (UINT)fp->fptr % ((UINT)512);	 
		if (rcnt > btr) rcnt = btr;					 




		mem_cpy(rbuff, fp->buf + fp->fptr % ((UINT)512), rcnt);	 

	}

	return FR_OK;
}





 
 
 

FRESULT f_write (
	FIL* fp,			 
	const void* buff,	 
	UINT btw,			 
	UINT* bw			 
)
{
	FRESULT res;
	FATFS *fs;
	DWORD clst;
	LBA_t sect;
	UINT wcnt, cc, csect;
	const BYTE *wbuff = (const BYTE*)buff;


	*bw = 0;	 
	res = validate(&fp->obj, &fs);			 
	if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) return res;	 
	if (!(fp->flag & 0x02)) return FR_DENIED;	 

	 
	if ((!0 || fs->fs_type != 4) && (DWORD)(fp->fptr + btw) < (DWORD)fp->fptr) {
		btw = (UINT)(0xFFFFFFFF - (DWORD)fp->fptr);
	}

	for ( ;  btw;							 
		btw -= wcnt, *bw += wcnt, wbuff += wcnt, fp->fptr += wcnt, fp->obj.objsize = (fp->fptr > fp->obj.objsize) ? fp->fptr : fp->obj.objsize) {
		if (fp->fptr % ((UINT)512) == 0) {		 
			csect = (UINT)(fp->fptr / ((UINT)512)) & (fs->csize - 1);	 
			if (csect == 0) {				 
				if (fp->fptr == 0) {		 
					clst = fp->obj.sclust;	 
					if (clst == 0) {		 
						clst = create_chain(&fp->obj, 0);	 
					}
				} else {					 

					if (fp->cltbl) {
						clst = clmt_clust(fp, fp->fptr);	 
					} else

					{
						clst = create_chain(&fp->obj, fp->clust);	 
					}
				}
				if (clst == 0) break;		 
				if (clst == 1) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
				if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
				fp->clust = clst;			 
				if (fp->obj.sclust == 0) fp->obj.sclust = clst;	 
			}



			if (fp->flag & 0x80) {		 
				if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
				fp->flag &= (BYTE)~0x80;
			}

			sect = clst2sect(fs, fp->clust);	 
			if (sect == 0) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
			sect += csect;
			cc = btw / ((UINT)512);				 
			if (cc > 0) {					 
				if (csect + cc > fs->csize) {	 
					cc = fs->csize - csect;
				}
				if (disk_write(fs->pdrv, wbuff, sect, cc) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
#line 4060 "..\\FATFS\\source\\ff.c"
				if (fp->sect - sect < cc) {  
					mem_cpy(fp->buf, wbuff + ((fp->sect - sect) * ((UINT)512)), ((UINT)512));
					fp->flag &= (BYTE)~0x80;
				}


				wcnt = ((UINT)512) * cc;		 
				continue;
			}
#line 4075 "..\\FATFS\\source\\ff.c"
			if (fp->sect != sect && 		 
				fp->fptr < fp->obj.objsize &&
				disk_read(fs->pdrv, fp->buf, sect, 1) != RES_OK) {
					{ fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
			}

			fp->sect = sect;
		}
		wcnt = ((UINT)512) - (UINT)fp->fptr % ((UINT)512);	 
		if (wcnt > btw) wcnt = btw;					 





		mem_cpy(fp->buf + fp->fptr % ((UINT)512), wbuff, wcnt);	 
		fp->flag |= 0x80;

	}

	fp->flag |= 0x40;				 

	return FR_OK;
}




 
 
 

FRESULT f_sync (
	FIL* fp		 
)
{
	FRESULT res;
	FATFS *fs;
	DWORD tm;
	BYTE *dir;


	res = validate(&fp->obj, &fs);	 
	if (res == FR_OK) {
		if (fp->flag & 0x40) {	 

			if (fp->flag & 0x80) {	 
				if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) return FR_DISK_ERR;
				fp->flag &= (BYTE)~0x80;
			}

			 
			tm = get_fattime();				 
#line 4159 "..\\FATFS\\source\\ff.c"
			{
				res = move_window(fs, fp->dir_sect);
				if (res == FR_OK) {
					dir = fp->dir_ptr;
					dir[11] |= 0x20;						 
					st_clust(fp->obj.fs, dir, fp->obj.sclust);		 
					st_dword(dir + 28, (DWORD)fp->obj.objsize);	 
					st_dword(dir + 22, tm);				 
					st_word(dir + 18, 0);
					fs->wflag = 1;
					res = sync_fs(fs);					 
					fp->flag &= (BYTE)~0x40;
				}
			}
		}
	}

	return res;
}






 
 
 

FRESULT f_close (
	FIL* fp		 
)
{
	FRESULT res;
	FATFS *fs;


	res = f_sync(fp);					 
	if (res == FR_OK)

	{
		res = validate(&fp->obj, &fs);	 
		if (res == FR_OK) {




			fp->obj.fs = 0;	 




		}
	}
	return res;
}




#line 4395 "..\\FATFS\\source\\ff.c"




 
 
 

FRESULT f_lseek (
	FIL* fp,		 
	FSIZE_t ofs		 
)
{
	FRESULT res;
	FATFS *fs;
	DWORD clst, bcs;
	LBA_t nsect;
	FSIZE_t ifptr;

	DWORD cl, pcl, ncl, tcl, tlen, ulen, *tbl;
	LBA_t dsc;


	res = validate(&fp->obj, &fs);		 
	if (res == FR_OK) res = (FRESULT)fp->err;





	if (res != FR_OK) return res;


	if (fp->cltbl) {	 
		if (ofs == ((FSIZE_t)0 - 1)) {	 
			tbl = fp->cltbl;
			tlen = *tbl++; ulen = 2;	 
			cl = fp->obj.sclust;		 
			if (cl != 0) {
				do {
					 
					tcl = cl; ncl = 0; ulen += 2;	 
					do {
						pcl = cl; ncl++;
						cl = get_fat(&fp->obj, cl);
						if (cl <= 1) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
						if (cl == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
					} while (cl == pcl + 1);
					if (ulen <= tlen) {		 
						*tbl++ = ncl; *tbl++ = tcl;
					}
				} while (cl < fs->n_fatent);	 
			}
			*fp->cltbl = ulen;	 
			if (ulen <= tlen) {
				*tbl = 0;		 
			} else {
				res = FR_NOT_ENOUGH_CORE;	 
			}
		} else {						 
			if (ofs > fp->obj.objsize) ofs = fp->obj.objsize;	 
			fp->fptr = ofs;				 
			if (ofs > 0) {
				fp->clust = clmt_clust(fp, ofs - 1);
				dsc = clst2sect(fs, fp->clust);
				if (dsc == 0) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
				dsc += (DWORD)((ofs - 1) / ((UINT)512)) & (fs->csize - 1);
				if (fp->fptr % ((UINT)512) && dsc != fp->sect) {	 


					if (fp->flag & 0x80) {		 
						if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
						fp->flag &= (BYTE)~0x80;
					}

					if (disk_read(fs->pdrv, fp->buf, dsc, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };	 

					fp->sect = dsc;
				}
			}
		}
	} else


	 
	{



		if (ofs > fp->obj.objsize && (0 || !(fp->flag & 0x02))) {	 
			ofs = fp->obj.objsize;
		}
		ifptr = fp->fptr;
		fp->fptr = nsect = 0;
		if (ofs > 0) {
			bcs = (DWORD)fs->csize * ((UINT)512);	 
			if (ifptr > 0 &&
				(ofs - 1) / bcs >= (ifptr - 1) / bcs) {	 
				fp->fptr = (ifptr - 1) & ~(FSIZE_t)(bcs - 1);	 
				ofs -= fp->fptr;
				clst = fp->clust;
			} else {									 
				clst = fp->obj.sclust;					 

				if (clst == 0) {						 
					clst = create_chain(&fp->obj, 0);
					if (clst == 1) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
					if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
					fp->obj.sclust = clst;
				}

				fp->clust = clst;
			}
			if (clst != 0) {
				while (ofs > bcs) {						 
					ofs -= bcs; fp->fptr += bcs;

					if (fp->flag & 0x02) {			 
						if (0 && fp->fptr > fp->obj.objsize) {	 
							fp->obj.objsize = fp->fptr;
							fp->flag |= 0x40;
						}
						clst = create_chain(&fp->obj, clst);	 
						if (clst == 0) {				 
							ofs = 0; break;
						}
					} else

					{
						clst = get_fat(&fp->obj, clst);	 
					}
					if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
					if (clst <= 1 || clst >= fs->n_fatent) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
					fp->clust = clst;
				}
				fp->fptr += ofs;
				if (ofs % ((UINT)512)) {
					nsect = clst2sect(fs, clst);	 
					if (nsect == 0) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
					nsect += (DWORD)(ofs / ((UINT)512));
				}
			}
		}
		if (!0 && fp->fptr > fp->obj.objsize) {	 
			fp->obj.objsize = fp->fptr;
			fp->flag |= 0x40;
		}
		if (fp->fptr % ((UINT)512) && nsect != fp->sect) {	 


			if (fp->flag & 0x80) {			 
				if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
				fp->flag &= (BYTE)~0x80;
			}

			if (disk_read(fs->pdrv, fp->buf, nsect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };	 

			fp->sect = nsect;
		}
	}

	return res;
}




 
 
 

FRESULT f_opendir (
	DIR* dp,			 
	const TCHAR* path	 
)
{
	FRESULT res;
	FATFS *fs;
	WCHAR *lfn;


	if (!dp) return FR_INVALID_OBJECT;

	 
	res = mount_volume(&path, &fs, 0);
	if (res == FR_OK) {
		dp->obj.fs = fs;
		{ lfn = ff_memalloc((255+1)*2); if (!lfn) return FR_NOT_ENOUGH_CORE; (fs)->lfnbuf = lfn; };
		res = follow_path(dp, path);			 
		if (res == FR_OK) {						 
			if (!(dp->fn[11] & 0x80)) {	 
				if (dp->obj.attr & 0x10) {		 
#line 4595 "..\\FATFS\\source\\ff.c"
					{
						dp->obj.sclust = ld_clust(fs, dp->dir);	 
					}
				} else {						 
					res = FR_NO_PATH;
				}
			}
			if (res == FR_OK) {
				dp->obj.id = fs->id;
				res = dir_sdi(dp, 0);			 
#line 4615 "..\\FATFS\\source\\ff.c"
			}
		}
		ff_memfree(lfn);
		if (res == FR_NO_FILE) res = FR_NO_PATH;
	}
	if (res != FR_OK) dp->obj.fs = 0;		 

	return res;
}




 
 
 

FRESULT f_closedir (
	DIR *dp		 
)
{
	FRESULT res;
	FATFS *fs;


	res = validate(&dp->obj, &fs);	 
	if (res == FR_OK) {




		dp->obj.fs = 0;	 




	}
	return res;
}




 
 
 

FRESULT f_readdir (
	DIR* dp,			 
	FILINFO* fno		 
)
{
	FRESULT res;
	FATFS *fs;
	WCHAR *lfn;


	res = validate(&dp->obj, &fs);	 
	if (res == FR_OK) {
		if (!fno) {
			res = dir_sdi(dp, 0);			 
		} else {
			{ lfn = ff_memalloc((255+1)*2); if (!lfn) return FR_NOT_ENOUGH_CORE; (fs)->lfnbuf = lfn; };
			res = dir_read(dp, 0);		 
			if (res == FR_NO_FILE) res = FR_OK;	 
			if (res == FR_OK) {				 
				get_fileinfo(dp, fno);		 
				res = dir_next(dp, 0);		 
				if (res == FR_NO_FILE) res = FR_OK;	 
			}
			ff_memfree(lfn);
		}
	}
	return res;
}



#line 4742 "..\\FATFS\\source\\ff.c"




 
 
 

FRESULT f_stat (
	const TCHAR* path,	 
	FILINFO* fno		 
)
{
	FRESULT res;
	DIR dj;
	WCHAR *lfn;


	 
	res = mount_volume(&path, &dj.obj.fs, 0);
	if (res == FR_OK) {
		{ lfn = ff_memalloc((255+1)*2); if (!lfn) return FR_NOT_ENOUGH_CORE; (dj . obj . fs)->lfnbuf = lfn; };
		res = follow_path(&dj, path);	 
		if (res == FR_OK) {				 
			if (dj.fn[11] & 0x80) {	 
				res = FR_INVALID_NAME;
			} else {							 
				if (fno) get_fileinfo(&dj, fno);
			}
		}
		ff_memfree(lfn);
	}

	return res;
}




 
 
 

FRESULT f_getfree (
	const TCHAR* path,	 
	DWORD* nclst,		 
	FATFS** fatfs		 
)
{
	FRESULT res;
	FATFS *fs;
	DWORD nfree, clst, stat;
	LBA_t sect;
	UINT i;
	FFOBJID obj;


	 
	res = mount_volume(&path, &fs, 0);
	if (res == FR_OK) {
		*fatfs = fs;				 
		 
		if (fs->free_clst <= fs->n_fatent - 2) {
			*nclst = fs->free_clst;
		} else {
			 
			nfree = 0;
			if (fs->fs_type == 1) {	 
				clst = 2; obj.fs = fs;
				do {
					stat = get_fat(&obj, clst);
					if (stat == 0xFFFFFFFF) { res = FR_DISK_ERR; break; }
					if (stat == 1) { res = FR_INT_ERR; break; }
					if (stat == 0) nfree++;
				} while (++clst < fs->n_fatent);
			} else {
#line 4839 "..\\FATFS\\source\\ff.c"
				{	 
					clst = fs->n_fatent;	 
					sect = fs->fatbase;		 
					i = 0;					 
					do {	 
						if (i == 0) {
							res = move_window(fs, sect++);
							if (res != FR_OK) break;
						}
						if (fs->fs_type == 2) {
							if (ld_word(fs->win + i) == 0) nfree++;
							i += 2;
						} else {
							if ((ld_dword(fs->win + i) & 0x0FFFFFFF) == 0) nfree++;
							i += 4;
						}
						i %= ((UINT)512);
					} while (--clst);
				}
			}
			*nclst = nfree;			 
			fs->free_clst = nfree;	 
			fs->fsi_flag |= 1;		 
		}
	}

	return res;
}




 
 
 

FRESULT f_truncate (
	FIL* fp		 
)
{
	FRESULT res;
	FATFS *fs;
	DWORD ncl;


	res = validate(&fp->obj, &fs);	 
	if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) return res;
	if (!(fp->flag & 0x02)) return FR_DENIED;	 

	if (fp->fptr < fp->obj.objsize) {	 
		if (fp->fptr == 0) {	 
			res = remove_chain(&fp->obj, fp->obj.sclust, 0);
			fp->obj.sclust = 0;
		} else {				 
			ncl = get_fat(&fp->obj, fp->clust);
			res = FR_OK;
			if (ncl == 0xFFFFFFFF) res = FR_DISK_ERR;
			if (ncl == 1) res = FR_INT_ERR;
			if (res == FR_OK && ncl < fs->n_fatent) {
				res = remove_chain(&fp->obj, ncl, fp->clust);
			}
		}
		fp->obj.objsize = fp->fptr;	 
		fp->flag |= 0x40;

		if (res == FR_OK && (fp->flag & 0x80)) {
			if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) {
				res = FR_DISK_ERR;
			} else {
				fp->flag &= (BYTE)~0x80;
			}
		}

		if (res != FR_OK) { fp->err = (BYTE)(res); return res; };
	}

	return res;
}




 
 
 

FRESULT f_unlink (
	const TCHAR* path		 
)
{
	FRESULT res;
	DIR dj, sdj;
	DWORD dclst = 0;
	FATFS *fs;



	WCHAR *lfn;


	 
	res = mount_volume(&path, &fs, 0x02);
	if (res == FR_OK) {
		dj.obj.fs = fs;
		{ lfn = ff_memalloc((255+1)*2); if (!lfn) return FR_NOT_ENOUGH_CORE; (fs)->lfnbuf = lfn; };
		res = follow_path(&dj, path);		 
		if (0 && res == FR_OK && (dj.fn[11] & 0x20)) {
			res = FR_INVALID_NAME;			 
		}



		if (res == FR_OK) {					 
			if (dj.fn[11] & 0x80) {
				res = FR_INVALID_NAME;		 
			} else {
				if (dj.obj.attr & 0x01) {
					res = FR_DENIED;		 
				}
			}
			if (res == FR_OK) {
#line 4967 "..\\FATFS\\source\\ff.c"
				{
					dclst = ld_clust(fs, dj.dir);
				}
				if (dj.obj.attr & 0x10) {			 





					{
						sdj.obj.fs = fs;				 
						sdj.obj.sclust = dclst;
#line 4985 "..\\FATFS\\source\\ff.c"
						res = dir_sdi(&sdj, 0);
						if (res == FR_OK) {
							res = dir_read(&sdj, 0);			 
							if (res == FR_OK) res = FR_DENIED;	 
							if (res == FR_NO_FILE) res = FR_OK;	 
						}
					}
				}
			}
			if (res == FR_OK) {
				res = dir_remove(&dj);			 
				if (res == FR_OK && dclst != 0) {	 



					res = remove_chain(&dj.obj, dclst, 0);

				}
				if (res == FR_OK) res = sync_fs(fs);
			}
		}
		ff_memfree(lfn);
	}

	return res;
}




 
 
 

FRESULT f_mkdir (
	const TCHAR* path		 
)
{
	FRESULT res;
	DIR dj;
	FFOBJID sobj;
	FATFS *fs;
	DWORD dcl, pcl, tm;
	WCHAR *lfn;


	res = mount_volume(&path, &fs, 0x02);	 
	if (res == FR_OK) {
		dj.obj.fs = fs;
		{ lfn = ff_memalloc((255+1)*2); if (!lfn) return FR_NOT_ENOUGH_CORE; (fs)->lfnbuf = lfn; };
		res = follow_path(&dj, path);			 
		if (res == FR_OK) res = FR_EXIST;		 
		if (0 && res == FR_NO_FILE && (dj.fn[11] & 0x20)) {	 
			res = FR_INVALID_NAME;
		}
		if (res == FR_NO_FILE) {				 
			sobj.fs = fs;						 
			dcl = create_chain(&sobj, 0);		 
			res = FR_OK;
			if (dcl == 0) res = FR_DENIED;		 
			if (dcl == 1) res = FR_INT_ERR;		 
			if (dcl == 0xFFFFFFFF) res = FR_DISK_ERR;	 
			tm = get_fattime();
			if (res == FR_OK) {
				res = dir_clear(fs, dcl);		 
				if (res == FR_OK) {
					if (!0 || fs->fs_type != 4) {	 
						mem_set(fs->win + 0, ' ', 11);	 
						fs->win[0] = '.';
						fs->win[11] = 0x10;
						st_dword(fs->win + 22, tm);
						st_clust(fs, fs->win, dcl);
						mem_cpy(fs->win + 32, fs->win, 32);  
						fs->win[32 + 1] = '.'; pcl = dj.obj.sclust;
						st_clust(fs, fs->win + 32, pcl);
						fs->wflag = 1;
					}
					res = dir_register(&dj);	 
				}
			}
			if (res == FR_OK) {
#line 5077 "..\\FATFS\\source\\ff.c"
				{
					st_dword(dj.dir + 22, tm);	 
					st_clust(fs, dj.dir, dcl);			 
					dj.dir[11] = 0x10;			 
					fs->wflag = 1;
				}
				if (res == FR_OK) {
					res = sync_fs(fs);
				}
			} else {
				remove_chain(&sobj, dcl, 0);		 
			}
		}
		ff_memfree(lfn);
	}

	return res;
}




 
 
 

FRESULT f_rename (
	const TCHAR* path_old,	 
	const TCHAR* path_new	 
)
{
	FRESULT res;
	DIR djo, djn;
	FATFS *fs;
	BYTE buf[0 ? 32 * 2 : 32], *dir;
	LBA_t sect;
	WCHAR *lfn;


	get_ldnumber(&path_new);						 
	res = mount_volume(&path_old, &fs, 0x02);	 
	if (res == FR_OK) {
		djo.obj.fs = fs;
		{ lfn = ff_memalloc((255+1)*2); if (!lfn) return FR_NOT_ENOUGH_CORE; (fs)->lfnbuf = lfn; };
		res = follow_path(&djo, path_old);		 
		if (res == FR_OK && (djo.fn[11] & (0x20 | 0x80))) res = FR_INVALID_NAME;	 





		if (res == FR_OK) {						 
#line 5155 "..\\FATFS\\source\\ff.c"
			{	 
				mem_cpy(buf, djo.dir, 32);			 
				mem_cpy(&djn, &djo, sizeof (DIR));		 
				res = follow_path(&djn, path_new);		 
				if (res == FR_OK) {						 
					res = (djn.obj.sclust == djo.obj.sclust && djn.dptr == djo.dptr) ? FR_NO_FILE : FR_EXIST;
				}
				if (res == FR_NO_FILE) { 				 
					res = dir_register(&djn);			 
					if (res == FR_OK) {
						dir = djn.dir;					 
						mem_cpy(dir + 13, buf + 13, 32 - 13);
						dir[11] = buf[11];
						if (!(dir[11] & 0x10)) dir[11] |= 0x20;	 
						fs->wflag = 1;
						if ((dir[11] & 0x10) && djo.obj.sclust != djn.obj.sclust) {	 
							sect = clst2sect(fs, ld_clust(fs, dir));
							if (sect == 0) {
								res = FR_INT_ERR;
							} else {
 
								res = move_window(fs, sect);
								dir = fs->win + 32 * 1;	 
								if (res == FR_OK && dir[1] == '.') {
									st_clust(fs, dir, djn.obj.sclust);
									fs->wflag = 1;
								}
							}
						}
					}
				}
			}
			if (res == FR_OK) {
				res = dir_remove(&djo);		 
				if (res == FR_OK) {
					res = sync_fs(fs);
				}
			}
 
		}
		ff_memfree(lfn);
	}

	return res;
}








#line 5299 "..\\FATFS\\source\\ff.c"




 
 
 

FRESULT f_getlabel (
	const TCHAR* path,	 
	TCHAR* label,		 
	DWORD* vsn			 
)
{
	FRESULT res;
	DIR dj;
	FATFS *fs;
	UINT si, di;
	WCHAR wc;

	 
	res = mount_volume(&path, &fs, 0);

	 
	if (res == FR_OK && label) {
		dj.obj.fs = fs; dj.obj.sclust = 0;	 
		res = dir_sdi(&dj, 0);
		if (res == FR_OK) {
		 	res = dir_read(&dj, 1);		 
		 	if (res == FR_OK) {
#line 5347 "..\\FATFS\\source\\ff.c"
				{
					si = di = 0;		 
					while (si < 11) {
						wc = dj.dir[si++];
#line 5358 "..\\FATFS\\source\\ff.c"
						label[di++] = (TCHAR)wc;

					}
					do {				 
						label[di] = 0;
						if (di == 0) break;
					} while (label[--di] == ' ');
				}
			}
		}
		if (res == FR_NO_FILE) {	 
			label[0] = 0;
			res = FR_OK;
		}
	}

	 
	if (res == FR_OK && vsn) {
		res = move_window(fs, fs->volbase);
		if (res == FR_OK) {
			switch (fs->fs_type) {
			case 4:
				di = 100; break;

			case 3:
				di = 67; break;

			default:
				di = 39;
			}
			*vsn = ld_dword(fs->win + di);
		}
	}

	return res;
}




 
 
 

FRESULT f_setlabel (
	const TCHAR* label	 
)
{
	FRESULT res;
	DIR dj;
	FATFS *fs;
	BYTE dirvn[22];
	UINT di;
	WCHAR wc;
	static const char badchr[] = "+.,;=[]/\\\"*:<>\?|\x7F";	 

	DWORD dc;


	 
	res = mount_volume(&label, &fs, 0x02);
	if (res != FR_OK) return res;

#line 5441 "..\\FATFS\\source\\ff.c"
	{	 
		mem_set(dirvn, ' ', 11);
		di = 0;
		while ((UINT)*label >= ' ') {	 

			dc = tchar2uni(&label);
			wc = (dc < 0x10000) ? ff_uni2oem(ff_wtoupper(dc), 936) : 0;
#line 5458 "..\\FATFS\\source\\ff.c"
			if (wc == 0 || chk_chr(badchr + 0, (int)wc) || di >= (UINT)((wc >= 0x100) ? 10 : 11)) {	 
				return FR_INVALID_NAME;
			}
			if (wc >= 0x100) dirvn[di++] = (BYTE)(wc >> 8);
			dirvn[di++] = (BYTE)wc;
		}
		if (dirvn[0] == 0xE5) return FR_INVALID_NAME;	 
		while (di && dirvn[di - 1] == ' ') di--;				 
	}

	 
	dj.obj.fs = fs; dj.obj.sclust = 0;	 
	res = dir_sdi(&dj, 0);
	if (res == FR_OK) {
		res = dir_read(&dj, 1);	 
		if (res == FR_OK) {
			if (0 && fs->fs_type == 4) {
				dj.dir[1] = (BYTE)di;	 
				mem_cpy(dj.dir + 2, dirvn, 22);
			} else {
				if (di != 0) {
					mem_cpy(dj.dir, dirvn, 11);	 
				} else {
					dj.dir[0] = 0xE5;	 
				}
			}
			fs->wflag = 1;
			res = sync_fs(fs);
		} else {			 
			if (res == FR_NO_FILE) {
				res = FR_OK;
				if (di != 0) {	 
					res = dir_alloc(&dj, 1);	 
					if (res == FR_OK) {
						mem_set(dj.dir, 0, 32);	 
						if (0 && fs->fs_type == 4) {
							dj.dir[0] = 0x83;	 
							dj.dir[1] = (BYTE)di;
							mem_cpy(dj.dir + 2, dirvn, 22);
						} else {
							dj.dir[11] = 0x08;		 
							mem_cpy(dj.dir, dirvn, 11);
						}
						fs->wflag = 1;
						res = sync_fs(fs);
					}
				}
			}
		}
	}

	return res;
}






#line 5604 "..\\FATFS\\source\\ff.c"



#line 5676 "..\\FATFS\\source\\ff.c"




 
 
 






 

static FRESULT create_partition (
	BYTE drv,			 
	const LBA_t plst[],	 
	UINT sys,			 
	BYTE* buf			 
)
{
	UINT i, cy;
	LBA_t sz_drv;
	DWORD sz_drv32, s_lba32, n_lba32;
	BYTE *pte, hd, n_hd, sc, n_sc;

	 
	if (disk_ioctl(drv, 1, &sz_drv) != RES_OK) return FR_DISK_ERR;

#line 5789 "..\\FATFS\\source\\ff.c"
	{					 
		sz_drv32 = (DWORD)sz_drv;
		n_sc = 63;		 
		for (n_hd = 8; n_hd != 0 && sz_drv32 / n_hd / n_sc > 1024; n_hd *= 2) ;
		if (n_hd == 0) n_hd = 255;	 

		mem_set(buf, 0, 512);	 
		pte = buf + 446;	 
		for (i = 0, s_lba32 = n_sc; i < 4 && s_lba32 != 0 && s_lba32 < sz_drv32; i++, s_lba32 += n_lba32) {
			n_lba32 = (DWORD)plst[i];	 
			if (n_lba32 <= 100) n_lba32 = (n_lba32 == 100) ? sz_drv32 : sz_drv32 / 100 * n_lba32;	 
			if (s_lba32 + n_lba32 > sz_drv32 || s_lba32 + n_lba32 < s_lba32) n_lba32 = sz_drv32 - s_lba32;	 
			if (n_lba32 == 0) break;	 

			st_dword(pte + 8, s_lba32);		 
			st_dword(pte + 12, n_lba32);	 
			pte[4] = (BYTE)sys;			 

			cy = (UINT)(s_lba32 / n_sc / n_hd);		 
			hd = (BYTE)(s_lba32 / n_sc % n_hd);		 
			sc = (BYTE)(s_lba32 % n_sc + 1);		 
			pte[1] = hd;
			pte[2] = (BYTE)((cy >> 2 & 0xC0) | sc);
			pte[3] = (BYTE)cy;

			cy = (UINT)((s_lba32 + n_lba32 - 1) / n_sc / n_hd);	 
			hd = (BYTE)((s_lba32 + n_lba32 - 1) / n_sc % n_hd);	 
			sc = (BYTE)((s_lba32 + n_lba32 - 1) % n_sc + 1);	 
			pte[5] = hd;
			pte[6] = (BYTE)((cy >> 2 & 0xC0) | sc);
			pte[7] = (BYTE)cy;

			pte += 16;		 
		}

		st_word(buf + 510, 0xAA55);		 
		if (disk_write(drv, buf, 0, 1) != RES_OK) return FR_DISK_ERR;	 
	}

	return FR_OK;
}



FRESULT f_mkfs (
	const TCHAR* path,		 
	const MKFS_PARM* opt,	 
	void* work,				 
	UINT len				 
)
{
	static const WORD cst[] = {1, 4, 16, 64, 256, 512, 0};	 
	static const WORD cst32[] = {1, 2, 4, 8, 16, 32, 0};	 
	static const MKFS_PARM defopt = {0x07, 0, 0, 0, 0};	 
	BYTE fsopt, fsty, sys, *buf, *pte, pdrv, ipart;
	WORD ss;	 
	DWORD sz_buf, sz_blk, n_clst, pau, nsect, n;
	LBA_t sz_vol, b_vol, b_fat, b_data;		 
	LBA_t sect, lba[2];
	DWORD sz_rsv, sz_fat, sz_dir, sz_au;	 
	UINT n_fat, n_root, i;					 
	int vol;
	DSTATUS ds;
	FRESULT fr;


	 
	vol = get_ldnumber(&path);					 
	if (vol < 0) return FR_INVALID_DRIVE;
	if (FatFs[vol]) FatFs[vol]->fs_type = 0;	 
	pdrv = (BYTE)(vol);			 
	ipart = 0;			 
	if (!opt) opt = &defopt;	 

	 
	ds = disk_initialize(pdrv);
	if (ds & 0x01) return FR_NOT_READY;
	if (ds & 0x04) return FR_WRITE_PROTECTED;
	sz_blk = opt->align;
	if (sz_blk == 0 && disk_ioctl(pdrv, 3, &sz_blk) != RES_OK) sz_blk = 1;
 	if (sz_blk == 0 || sz_blk > 0x8000 || (sz_blk & (sz_blk - 1))) sz_blk = 1;




	ss = 512;

	 
	fsopt = opt->fmt & (0x07 | 0x08);
	n_fat = (opt->n_fat >= 1 && opt->n_fat <= 2) ? opt->n_fat : 1;
	n_root = (opt->n_root >= 1 && opt->n_root <= 32768 && (opt->n_root % (ss / 32)) == 0) ? opt->n_root : 512;
	sz_au = (opt->au_size <= 0x1000000 && (opt->au_size & (opt->au_size - 1)) == 0) ? opt->au_size : 0;
	sz_au /= ss;	 

	 
	sz_buf = len / ss;		 
	if (sz_buf == 0) return FR_NOT_ENOUGH_CORE;
	buf = (BYTE*)work;		 

	if (!buf) buf = ff_memalloc(sz_buf * ss);	 

	if (!buf) return FR_NOT_ENOUGH_CORE;

	 
	b_vol = sz_vol = 0;
	if (0 && ipart != 0) {	 
		 
		if (disk_read(pdrv, buf, 0, 1) != RES_OK) { if (!work) ff_memfree(buf); return FR_DISK_ERR; };	 
		if (ld_word(buf + 510) != 0xAA55) { if (!work) ff_memfree(buf); return FR_MKFS_ABORTED; };	 
#line 5922 "..\\FATFS\\source\\ff.c"
		{	 
			pte = buf + (446 + (ipart - 1) * 16);
			if (ipart > 4 || pte[4] == 0) { if (!work) ff_memfree(buf); return FR_MKFS_ABORTED; };	 
			b_vol = ld_dword(pte + 8);		 
			sz_vol = ld_dword(pte + 12);	 
		}
	} else {	 
		if (disk_ioctl(pdrv, 1, &sz_vol) != RES_OK) { if (!work) ff_memfree(buf); return FR_DISK_ERR; };
		if (!(fsopt & 0x08)) {	 
			 
#line 5938 "..\\FATFS\\source\\ff.c"
			{	 
				if (sz_vol > 63) {
					b_vol = 63; sz_vol -= b_vol;	 
				}
			}
		}
	}
	if (sz_vol < 128) { if (!work) ff_memfree(buf); return FR_MKFS_ABORTED; };	 

	 

	do {	 
		if (0 && (fsopt & 0x04)) {	 
			if ((fsopt & 0x07) == 0x04 || sz_vol >= 0x4000000 || sz_au > 128) {	 
				fsty = 4; break;
			}
		}



		if (sz_au > 128) sz_au = 128;	 
		if (fsopt & 0x02) {	 
			if (!(fsopt & 0x01)) {	 
				fsty = 3; break;
			}
		}
		if (!(fsopt & 0x01)) { if (!work) ff_memfree(buf); return FR_INVALID_PARAMETER; };	 
		fsty = 2;
	} while (0);

#line 6131 "..\\FATFS\\source\\ff.c"
	{	 
		do {
			pau = sz_au;
			 
			if (fsty == 3) {	 
				if (pau == 0) {	 
					n = (DWORD)sz_vol / 0x20000;	 
					for (i = 0, pau = 1; cst32[i] && cst32[i] <= n; i++, pau <<= 1) ;	 
				}
				n_clst = (DWORD)sz_vol / pau;	 
				sz_fat = (n_clst * 4 + 8 + ss - 1) / ss;	 
				sz_rsv = 32;	 
				sz_dir = 0;		 
				if (n_clst <= 0xFFF5 || n_clst > 0x0FFFFFF5) { if (!work) ff_memfree(buf); return FR_MKFS_ABORTED; };
			} else {				 
				if (pau == 0) {	 
					n = (DWORD)sz_vol / 0x1000;	 
					for (i = 0, pau = 1; cst[i] && cst[i] <= n; i++, pau <<= 1) ;	 
				}
				n_clst = (DWORD)sz_vol / pau;
				if (n_clst > 0xFF5) {
					n = n_clst * 2 + 4;		 
				} else {
					fsty = 1;
					n = (n_clst * 3 + 1) / 2 + 3;	 
				}
				sz_fat = (n + ss - 1) / ss;		 
				sz_rsv = 1;						 
				sz_dir = (DWORD)n_root * 32 / ss;	 
			}
			b_fat = b_vol + sz_rsv;						 
			b_data = b_fat + sz_fat * n_fat + sz_dir;	 

			 
			n = (DWORD)(((b_data + sz_blk - 1) & ~(sz_blk - 1)) - b_data);	 
			if (fsty == 3) {		 
				sz_rsv += n; b_fat += n;
			} else {					 
				if (n % n_fat) {	 
					n--; sz_rsv++; b_fat++;
				}
				sz_fat += n / n_fat;
			}

			 
			if (sz_vol < b_data + pau * 16 - b_vol) { if (!work) ff_memfree(buf); return FR_MKFS_ABORTED; };	 
			n_clst = ((DWORD)sz_vol - sz_rsv - sz_fat * n_fat - sz_dir) / pau;
			if (fsty == 3) {
				if (n_clst <= 0xFFF5) {	 
					if (sz_au == 0 && (sz_au = pau / 2) != 0) continue;	 
					{ if (!work) ff_memfree(buf); return FR_MKFS_ABORTED; };
				}
			}
			if (fsty == 2) {
				if (n_clst > 0xFFF5) {	 
					if (sz_au == 0 && (pau * 2) <= 64) {
						sz_au = pau * 2; continue;		 
					}
					if ((fsopt & 0x02)) {
						fsty = 3; continue;	 
					}
					if (sz_au == 0 && (sz_au = pau * 2) <= 128) continue;	 
					{ if (!work) ff_memfree(buf); return FR_MKFS_ABORTED; };
				}
				if  (n_clst <= 0xFF5) {	 
					if (sz_au == 0 && (sz_au = pau * 2) <= 128) continue;	 
					{ if (!work) ff_memfree(buf); return FR_MKFS_ABORTED; };
				}
			}
			if (fsty == 1 && n_clst > 0xFF5) { if (!work) ff_memfree(buf); return FR_MKFS_ABORTED; };	 

			 
			break;
		} while (1);





		 
		mem_set(buf, 0, ss);
		mem_cpy(buf + 0, "\xEB\xFE\x90" "MSDOS5.0", 11); 
		st_word(buf + 11, ss);				 
		buf[13] = (BYTE)pau;				 
		st_word(buf + 14, (WORD)sz_rsv);	 
		buf[16] = (BYTE)n_fat;					 
		st_word(buf + 17, (WORD)((fsty == 3) ? 0 : n_root));	 
		if (sz_vol < 0x10000) {
			st_word(buf + 19, (WORD)sz_vol);	 
		} else {
			st_dword(buf + 32, (DWORD)sz_vol);	 
		}
		buf[21] = 0xF8;							 
		st_word(buf + 24, 63);				 
		st_word(buf + 26, 255);				 
		st_dword(buf + 28, (DWORD)b_vol);		 
		if (fsty == 3) {
			st_dword(buf + 67, get_fattime());	 
			st_dword(buf + 36, sz_fat);		 
			st_dword(buf + 44, 2);			 
			st_word(buf + 48, 1);				 
			st_word(buf + 50, 6);			 
			buf[64] = 0x80;					 
			buf[66] = 0x29;					 
			mem_cpy(buf + 71, "NO NAME    " "FAT32   ", 19);	 
		} else {
			st_dword(buf + 39, get_fattime());	 
			st_word(buf + 22, (WORD)sz_fat);	 
			buf[36] = 0x80;						 
			buf[38] = 0x29;						 
			mem_cpy(buf + 43, "NO NAME    " "FAT     ", 19);	 
		}
		st_word(buf + 510, 0xAA55);					 
		if (disk_write(pdrv, buf, b_vol, 1) != RES_OK) { if (!work) ff_memfree(buf); return FR_DISK_ERR; };	 

		 
		if (fsty == 3) {
			disk_write(pdrv, buf, b_vol + 6, 1);		 
			mem_set(buf, 0, ss);
			st_dword(buf + 0, 0x41615252);
			st_dword(buf + 484, 0x61417272);
			st_dword(buf + 488, n_clst - 1);	 
			st_dword(buf + 492, 2);			 
			st_word(buf + 510, 0xAA55);
			disk_write(pdrv, buf, b_vol + 7, 1);		 
			disk_write(pdrv, buf, b_vol + 1, 1);		 
		}

		 
		mem_set(buf, 0, sz_buf * ss);
		sect = b_fat;		 
		for (i = 0; i < n_fat; i++) {			 
			if (fsty == 3) {
				st_dword(buf + 0, 0xFFFFFFF8);	 
				st_dword(buf + 4, 0xFFFFFFFF);	 
				st_dword(buf + 8, 0x0FFFFFFF);	 
			} else {
				st_dword(buf + 0, (fsty == 1) ? 0xFFFFF8 : 0xFFFFFFF8);	 
			}
			nsect = sz_fat;		 
			do {	 
				n = (nsect > sz_buf) ? sz_buf : nsect;
				if (disk_write(pdrv, buf, sect, (UINT)n) != RES_OK) { if (!work) ff_memfree(buf); return FR_DISK_ERR; };
				mem_set(buf, 0, ss);	 
				sect += n; nsect -= n;
			} while (nsect);
		}

		 
		nsect = (fsty == 3) ? pau : sz_dir;	 
		do {
			n = (nsect > sz_buf) ? sz_buf : nsect;
			if (disk_write(pdrv, buf, sect, (UINT)n) != RES_OK) { if (!work) ff_memfree(buf); return FR_DISK_ERR; };
			sect += n; nsect -= n;
		} while (nsect);
	}

	 

	 
	if (0 && fsty == 4) {
		sys = 0x07;			 
	} else {
		if (fsty == 3) {
			sys = 0x0C;		 
		} else {
			if (sz_vol >= 0x10000) {
				sys = 0x06;	 
			} else {
				sys = (fsty == 2) ? 0x04 : 0x01;	 
			}
		}
	}

	 
	if (0 && ipart != 0) {	 
		if (!0 || !(fsopt & 0x80)) {
			 
			if (disk_read(pdrv, buf, 0, 1) != RES_OK) { if (!work) ff_memfree(buf); return FR_DISK_ERR; };	 
			buf[446 + (ipart - 1) * 16 + 4] = sys;			 
			if (disk_write(pdrv, buf, 0, 1) != RES_OK) { if (!work) ff_memfree(buf); return FR_DISK_ERR; };	 
		}
	} else {								 
		if (!(fsopt & 0x08)) {	 
			lba[0] = sz_vol, lba[1] = 0;
			fr = create_partition(pdrv, lba, sys, buf);
			if (fr != FR_OK) { if (!work) ff_memfree(buf); return fr; };
		}
	}

	if (disk_ioctl(pdrv, 0, 0) != RES_OK) { if (!work) ff_memfree(buf); return FR_DISK_ERR; };

	{ if (!work) ff_memfree(buf); return FR_OK; };
}




#line 6357 "..\\FATFS\\source\\ff.c"








 
 
 

TCHAR* f_gets (
	TCHAR* buff,	 
	int len,		 
	FIL* fp			 
)
{
	int nc = 0;
	TCHAR *p = buff;
	BYTE s[4];
	UINT rc;
	DWORD dc;
#line 6386 "..\\FATFS\\source\\ff.c"

#line 6475 "..\\FATFS\\source\\ff.c"
	len -= 1;	 
	while (nc < len) {
		f_read(fp, s, 1, &rc);	 
		if (rc != 1) break;		 
		dc = s[0];
		if (1 == 2 && dc == '\r') continue;
		*p++ = (TCHAR)dc; nc++;
		if (dc == '\n') break;
	}


	*p = 0;		 
	return nc ? buff : 0;	 
}




#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
 
 
 





 










#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"








 

 
 
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
    typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 







#line 138 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"



#line 147 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"

 

#line 6495 "..\\FATFS\\source\\ff.c"
 
 
 

 

typedef struct {
	FIL *fp;		 
	int idx, nchr;	 
#line 6510 "..\\FATFS\\source\\ff.c"
	BYTE buf[64];	 
} putbuff;


 

static void putc_bfd (putbuff* pb, TCHAR c)
{
	UINT n;
	int i, nc;
#line 6527 "..\\FATFS\\source\\ff.c"

	if (1 == 2 && c == '\n') {	  
		putc_bfd(pb, '\r');
	}

	i = pb->idx;			 
	if (i < 0) return;
	nc = pb->nchr;			 

#line 6633 "..\\FATFS\\source\\ff.c"
	pb->buf[i++] = (BYTE)c;


	if (i >= (int)(sizeof pb->buf) - 4) {	 
		f_write(pb->fp, pb->buf, (UINT)i, &n);
		i = (n == (UINT)i) ? 0 : -1;
	}
	pb->idx = i;
	pb->nchr = nc + 1;
}


 

static int putc_flush (putbuff* pb)
{
	UINT nw;

	if (   pb->idx >= 0	 
		&& f_write(pb->fp, pb->buf, (UINT)pb->idx, &nw) == FR_OK
		&& (UINT)pb->idx == nw) return pb->nchr;
	return (-1);
}


 

static void putc_init (putbuff* pb, FIL* fp)
{
	mem_set(pb, 0, sizeof (putbuff));
	pb->fp = fp;
}



int f_putc (
	TCHAR c,	 
	FIL* fp		 
)
{
	putbuff pb;


	putc_init(&pb, fp);
	putc_bfd(&pb, c);	 
	return putc_flush(&pb);
}




 
 
 

int f_puts (
	const TCHAR* str,	 
	FIL* fp				 
)
{
	putbuff pb;


	putc_init(&pb, fp);
	while (*str) putc_bfd(&pb, *str++);		 
	return putc_flush(&pb);
}




 
 
 

int f_printf (
	FIL* fp,			 
	const TCHAR* fmt,	 
	...					 
)
{
	va_list arp;
	putbuff pb;
	BYTE f, r;
	UINT i, j, w;
	DWORD v;
	TCHAR c, d, str[32], *p;


	putc_init(&pb, fp);

	__va_start(arp, fmt);

	for (;;) {
		c = *fmt++;
		if (c == 0) break;			 
		if (c != '%') {				 
			putc_bfd(&pb, c);
			continue;
		}
		w = f = 0;
		c = *fmt++;
		if (c == '0') {				 
			f = 1; c = *fmt++;
		} else {
			if (c == '-') {			 
				f = 2; c = *fmt++;
			}
		}
		if (c == '*') {				 
			w = __va_arg(arp, int);
			c = *fmt++;
		} else {
			while (((c) >= '0' && (c) <= '9')) {	 
				w = w * 10 + c - '0';
				c = *fmt++;
			}
		}
		if (c == 'l' || c == 'L') {	 
			f |= 4; c = *fmt++;
		}
		if (c == 0) break;
		d = c;
		if (((d) >= 'a' && (d) <= 'z')) d -= 0x20;
		switch (d) {				 
		case 'S' :					 
			p = __va_arg(arp, TCHAR*);
			for (j = 0; p[j]; j++) ;
			if (!(f & 2)) {						 
				while (j++ < w) putc_bfd(&pb, ' ') ;
			}
			while (*p) putc_bfd(&pb, *p++) ;		 
			while (j++ < w) putc_bfd(&pb, ' ') ;	 
			continue;

		case 'C' :					 
			putc_bfd(&pb, (TCHAR)__va_arg(arp, int)); continue;

		case 'B' :					 
			r = 2; break;

		case 'O' :					 
			r = 8; break;

		case 'D' :					 
		case 'U' :					 
			r = 10; break;

		case 'X' :					 
			r = 16; break;

		default:					 
			putc_bfd(&pb, c); continue;
		}

		 
		v = (f & 4) ? (DWORD)__va_arg(arp, long) : ((d == 'D') ? (DWORD)(long)__va_arg(arp, int) : (DWORD)__va_arg(arp, unsigned int));
		if (d == 'D' && (v & 0x80000000)) {
			v = 0 - v;
			f |= 8;
		}
		i = 0;
		do {
			d = (TCHAR)(v % r); v /= r;
			if (d > 9) d += (c == 'x') ? 0x27 : 0x07;
			str[i++] = d + '0';
		} while (v && i < sizeof str / sizeof *str);
		if (f & 8) str[i++] = '-';
		j = i; d = (f & 1) ? '0' : ' ';
		if (!(f & 2)) {
			while (j++ < w) putc_bfd(&pb, d);	 
		}
		do {
			putc_bfd(&pb, str[--i]);			 
		} while (i);
		while (j++ < w) putc_bfd(&pb, d);		 
	}

	__va_end(arp);

	return putc_flush(&pb);
}






#line 6849 "..\\FATFS\\source\\ff.c"

