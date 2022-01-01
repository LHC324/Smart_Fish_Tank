#line 1 "..\\GUI\\lvgl_src\\lv_misc\\lv_ll.c"




 



 
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






 
#line 11 "..\\GUI\\lvgl_src\\lv_misc\\lv_ll.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 12 "..\\GUI\\lvgl_src\\lv_misc\\lv_ll.c"

#line 1 "..\\GUI\\lvgl_src\\lv_misc\\lv_ll.h"



 










 
#line 1 "..\\GUI\\lvgl_src\\lv_misc\\lv_mem.h"



 










 
#line 1 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"




 



 

#line 12 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1 "..\\GUI\\lv_conf.h"



 



 





 

#line 17 "..\\GUI\\lv_conf.h"



 

 








 



 




 


 


 



 




 








 




 
typedef int16_t lv_coord_t;



 


 

 
#line 99 "..\\GUI\\lv_conf.h"


 



 
#line 112 "..\\GUI\\lv_conf.h"



 


 

 


 


 



 



 



 


 




 

 



 
typedef void * lv_anim_user_data_t;



 





 



 


 


 


 


 


 


 


typedef void * lv_group_user_data_t;


 



 


 






 


 


 






 


 


 





 

 


 







 


 
typedef void * lv_img_decoder_user_data_t;



 

 


 


 


 


 






 



 



 







 



 




 


 






typedef void * lv_disp_drv_user_data_t;              
typedef void * lv_indev_drv_user_data_t;             



 

 
#line 330 "..\\GUI\\lv_conf.h"



 









 



 


 


 




 



 


 






 





 


 
#line 403 "..\\GUI\\lv_conf.h"

 






 







 




 




 


 





 



 
typedef void * lv_font_user_data_t;



 

 


 



 








 






 


#line 484 "..\\GUI\\lv_conf.h"



 





 


  



 



 



 


 





 
#line 526 "..\\GUI\\lv_conf.h"



 


 
#line 541 "..\\GUI\\lv_conf.h"



 

#line 557 "..\\GUI\\lv_conf.h"

 






 




 


 

 


 


 


 


 





 


 


 





 


 


 


 



 


 


 


 



 


 


 


 


 


 



 






 


 


 



 







 



 


 


 


 



 
#line 699 "..\\GUI\\lv_conf.h"

 


 


 



 


 


 


 






 







 


 



 


 



 




 







 



#line 25 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 

#line 31 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 

 
#line 51 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"






 
#line 65 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 75 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 
#line 86 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 95 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 104 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 114 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 
#line 125 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"







 
#line 154 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 



 


 

 
#line 232 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 242 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 275 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 


 

 
#line 291 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 300 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 309 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 319 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 329 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 339 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 348 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 

 
#line 362 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 



 
#line 376 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 
#line 388 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 397 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 406 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 415 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 424 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 433 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 442 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 453 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 469 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 478 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 








 




 




 
#line 509 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 518 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 527 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 543 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 

 
#line 556 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 565 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"






 
#line 579 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 



 

 
#line 594 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 603 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 612 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 621 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 








 
#line 639 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 649 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 659 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"






 
#line 673 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 683 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 


 
#line 713 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"




 

 
#line 753 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 









 
#line 775 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 784 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 793 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 802 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 
#line 813 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 823 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 832 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"





 





 


 
#line 994 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1024 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 1034 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"






 
#line 1048 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 
#line 1059 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 
#line 1070 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1080 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 
#line 1092 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 



 

 


 
#line 1110 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 1120 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"







 
#line 1135 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"





 
#line 1148 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

#line 1212 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 





 
#line 1229 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

  
#line 1238 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 1248 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 1258 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"


 
#line 1268 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1277 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"




 
#line 1302 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 
#line 1313 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1353 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 

#line 1386 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1395 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"





 
#line 1408 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 


 

 
#line 1424 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1433 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1442 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1451 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1469 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1478 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1487 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1505 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1514 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1523 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1533 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"
 
#line 1542 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1551 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1560 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1570 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"
 
#line 1579 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1588 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1598 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"
 
#line 1606 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1615 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1624 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1634 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1659 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1668 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1678 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"
 
#line 1687 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1697 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"





 
#line 1711 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1720 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1729 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1739 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"
 
#line 1748 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1780 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1790 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"
 
#line 1798 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1808 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1817 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1826 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1835 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1860 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1878 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1888 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"
 
#line 1897 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1907 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"
 
#line 1916 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

 
#line 1925 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 

#line 1939 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"



 
#line 1973 "..\\GUI\\lvgl_src\\lv_misc\\../lv_conf_internal.h"

#line 17 "..\\GUI\\lvgl_src\\lv_misc\\lv_mem.h"

#line 19 "..\\GUI\\lvgl_src\\lv_misc\\lv_mem.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 20 "..\\GUI\\lvgl_src\\lv_misc\\lv_mem.h"
#line 1 "..\\GUI\\lvgl_src\\lv_misc\\lv_log.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_misc\\lv_log.h"
#line 18 "..\\GUI\\lvgl_src\\lv_misc\\lv_log.h"



 

 

#line 32 "..\\GUI\\lvgl_src\\lv_misc\\lv_log.h"

struct _silence_gcc_warning;
struct _silence_gcc_warning;
struct _silence_gcc_warning;
struct _silence_gcc_warning;
struct _silence_gcc_warning;
struct _silence_gcc_warning;

typedef int8_t lv_log_level_t;

#line 110 "..\\GUI\\lvgl_src\\lv_misc\\lv_log.h"

 
#line 119 "..\\GUI\\lvgl_src\\lv_misc\\lv_log.h"





#line 21 "..\\GUI\\lvgl_src\\lv_misc\\lv_mem.h"
#line 1 "..\\GUI\\lvgl_src\\lv_misc\\lv_types.h"



 










 



 

#line 23 "..\\GUI\\lvgl_src\\lv_misc\\lv_types.h"




#line 38 "..\\GUI\\lvgl_src\\lv_misc\\lv_types.h"




 



 
enum {
    LV_RES_INV = 0, 
 
    LV_RES_OK,       
};
typedef uint8_t lv_res_t;





typedef uintptr_t lv_uintptr_t;

#line 70 "..\\GUI\\lvgl_src\\lv_misc\\lv_types.h"




 



 









#line 22 "..\\GUI\\lvgl_src\\lv_misc\\lv_mem.h"







 







 



 
typedef struct {
    uint32_t total_size;  
    uint32_t free_cnt;
    uint32_t free_size;  
    uint32_t free_biggest_size;
    uint32_t used_cnt;
    uint32_t max_used;  
    uint8_t used_pct;  
    uint8_t frag_pct;  
} lv_mem_monitor_t;

typedef struct {
    void * p;
    uint16_t size;
    uint8_t used    : 1;
} lv_mem_buf_t;

typedef lv_mem_buf_t lv_mem_buf_arr_t[16];
extern lv_mem_buf_arr_t _lv_mem_buf;



 



 
void _lv_mem_init(void);




 
void _lv_mem_deinit(void);





 
void * lv_mem_alloc(size_t size);




 
void lv_mem_free(const void * data);







 
void * lv_mem_realloc(void * data_p, size_t new_size);



 
void lv_mem_defrag(void);




 
lv_res_t lv_mem_test(void);





 
void lv_mem_monitor(lv_mem_monitor_t * mon_p);





 
uint32_t _lv_mem_get_size(const void * data);




 
void * _lv_mem_buf_get(uint32_t size);




 
void _lv_mem_buf_release(void * p);



 
void _lv_mem_buf_free_all(void);




#line 200 "..\\GUI\\lvgl_src\\lv_misc\\lv_mem.h"





 
 void * _lv_memcpy(void * dst, const void * src, size_t len);






 
 static inline void * _lv_memcpy_small(void * dst, const void * src, size_t len)
{
    uint8_t * d8 = (uint8_t *)dst;
    const uint8_t * s8 = (const uint8_t *)src;

    while(len) {
        *d8 = *s8;
        d8++;
        s8++;
        len--;
    }

    return dst;
}






 
 void _lv_memset(void * dst, uint8_t v, size_t len);





 
 void _lv_memset_00(void * dst, size_t len);





 
 void _lv_memset_ff(void * dst, size_t len);








 





#line 17 "..\\GUI\\lvgl_src\\lv_misc\\lv_ll.h"
#line 18 "..\\GUI\\lvgl_src\\lv_misc\\lv_ll.h"
#line 19 "..\\GUI\\lvgl_src\\lv_misc\\lv_ll.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 20 "..\\GUI\\lvgl_src\\lv_misc\\lv_ll.h"



 



 

 
typedef uint8_t lv_ll_node_t;

 
typedef struct {
    uint32_t n_size;
    lv_ll_node_t * head;
    lv_ll_node_t * tail;
} lv_ll_t;



 





 
void _lv_ll_init(lv_ll_t * ll_p, uint32_t node_size);





 
void * _lv_ll_ins_head(lv_ll_t * ll_p);






 
void * _lv_ll_ins_prev(lv_ll_t * ll_p, void * n_act);





 
void * _lv_ll_ins_tail(lv_ll_t * ll_p);






 
void _lv_ll_remove(lv_ll_t * ll_p, void * node_p);




 
void _lv_ll_clear(lv_ll_t * ll_p);








 
void _lv_ll_chg_list(lv_ll_t * ll_ori_p, lv_ll_t * ll_new_p, void * node, _Bool head);





 
void * _lv_ll_get_head(const lv_ll_t * ll_p);





 
void * _lv_ll_get_tail(const lv_ll_t * ll_p);






 
void * _lv_ll_get_next(const lv_ll_t * ll_p, const void * n_act);






 
void * _lv_ll_get_prev(const lv_ll_t * ll_p, const void * n_act);





 
uint32_t _lv_ll_get_len(const lv_ll_t * ll_p);







 






 
void _lv_ll_move_before(lv_ll_t * ll_p, void * n_act, void * n_after);





 
_Bool _lv_ll_is_empty(lv_ll_t * ll_p);



 









#line 14 "..\\GUI\\lvgl_src\\lv_misc\\lv_ll.c"
#line 15 "..\\GUI\\lvgl_src\\lv_misc\\lv_ll.c"



 






 



 
static void node_set_prev(lv_ll_t * ll_p, lv_ll_node_t * act, lv_ll_node_t * prev);
static void node_set_next(lv_ll_t * ll_p, lv_ll_node_t * act, lv_ll_node_t * next);



 



 



 





 
void _lv_ll_init(lv_ll_t * ll_p, uint32_t node_size)
{
    ll_p->head = 0;
    ll_p->tail = 0;




     
    node_size = (node_size + 3) & (~0x3);


    ll_p->n_size = node_size;
}





 
void * _lv_ll_ins_head(lv_ll_t * ll_p)
{
    lv_ll_node_t * n_new;

    n_new = lv_mem_alloc(ll_p->n_size + (sizeof(lv_ll_node_t *) + sizeof(lv_ll_node_t *)));

    if(n_new != 0) {
        node_set_prev(ll_p, n_new, 0);        
        node_set_next(ll_p, n_new, ll_p->head);  

        if(ll_p->head != 0) {  
            node_set_prev(ll_p, ll_p->head, n_new);
        }

        ll_p->head = n_new;       
        if(ll_p->tail == 0) {  
            ll_p->tail = n_new;
        }
    }

    return n_new;
}






 
void * _lv_ll_ins_prev(lv_ll_t * ll_p, void * n_act)
{
    lv_ll_node_t * n_new;

    if(0 == ll_p || 0 == n_act) return 0;

    if(_lv_ll_get_head(ll_p) == n_act) {
        n_new = _lv_ll_ins_head(ll_p);
        if(n_new == 0) return 0;
    }
    else {
        n_new = lv_mem_alloc(ll_p->n_size + (sizeof(lv_ll_node_t *) + sizeof(lv_ll_node_t *)));
        if(n_new == 0) return 0;

        lv_ll_node_t * n_prev;
        n_prev = _lv_ll_get_prev(ll_p, n_act);
        node_set_next(ll_p, n_prev, n_new);
        node_set_prev(ll_p, n_new, n_prev);
        node_set_prev(ll_p, n_act, n_new);
        node_set_next(ll_p, n_new, n_act);
    }

    return n_new;
}





 
void * _lv_ll_ins_tail(lv_ll_t * ll_p)
{
    lv_ll_node_t * n_new;

    n_new = lv_mem_alloc(ll_p->n_size + (sizeof(lv_ll_node_t *) + sizeof(lv_ll_node_t *)));

    if(n_new != 0) {
        node_set_next(ll_p, n_new, 0);        
        node_set_prev(ll_p, n_new, ll_p->tail);  
        if(ll_p->tail != 0) {                 
            node_set_next(ll_p, ll_p->tail, n_new);
        }

        ll_p->tail = n_new;       
        if(ll_p->head == 0) {  
            ll_p->head = n_new;
        }
    }

    return n_new;
}






 
void _lv_ll_remove(lv_ll_t * ll_p, void * node_p)
{
    if(_lv_ll_get_head(ll_p) == node_p) {
         
        ll_p->head = _lv_ll_get_next(ll_p, node_p);
        if(ll_p->head == 0) {
            ll_p->tail = 0;
        }
        else {
            node_set_prev(ll_p, ll_p->head, 0);
        }
    }
    else if(_lv_ll_get_tail(ll_p) == node_p) {
         
        ll_p->tail = _lv_ll_get_prev(ll_p, node_p);
        if(ll_p->tail == 0) {
            ll_p->head = 0;
        }
        else {
            node_set_next(ll_p, ll_p->tail, 0);
        }
    }
    else {
        lv_ll_node_t * n_prev = _lv_ll_get_prev(ll_p, node_p);
        lv_ll_node_t * n_next = _lv_ll_get_next(ll_p, node_p);

        node_set_next(ll_p, n_prev, n_next);
        node_set_prev(ll_p, n_next, n_prev);
    }
}




 
void _lv_ll_clear(lv_ll_t * ll_p)
{
    void * i;
    void * i_next;

    i      = _lv_ll_get_head(ll_p);
    i_next = 0;

    while(i != 0) {
        i_next = _lv_ll_get_next(ll_p, i);

        _lv_ll_remove(ll_p, i);
        lv_mem_free(i);

        i = i_next;
    }
}








 
void _lv_ll_chg_list(lv_ll_t * ll_ori_p, lv_ll_t * ll_new_p, void * node, _Bool head)
{
    _lv_ll_remove(ll_ori_p, node);

    if(head) {
         
        node_set_prev(ll_new_p, node, 0);
        node_set_next(ll_new_p, node, ll_new_p->head);

        if(ll_new_p->head != 0) {  
            node_set_prev(ll_new_p, ll_new_p->head, node);
        }

        ll_new_p->head = node;        
        if(ll_new_p->tail == 0) {  
            ll_new_p->tail = node;
        }
    }
    else {
         
        node_set_prev(ll_new_p, node, ll_new_p->tail);
        node_set_next(ll_new_p, node, 0);

        if(ll_new_p->tail != 0) {  
            node_set_next(ll_new_p, ll_new_p->tail, node);
        }

        ll_new_p->tail = node;        
        if(ll_new_p->head == 0) {  
            ll_new_p->head = node;
        }
    }
}





 
void * _lv_ll_get_head(const lv_ll_t * ll_p)
{
    void * head = 0;

    if(ll_p != 0) {
        head = ll_p->head;
    }

    return head;
}





 
void * _lv_ll_get_tail(const lv_ll_t * ll_p)
{
    void * tail = 0;

    if(ll_p != 0) {
        tail = ll_p->tail;
    }

    return tail;
}






 
void * _lv_ll_get_next(const lv_ll_t * ll_p, const void * n_act)
{
    if(ll_p == 0) return 0;

    
 
    const lv_ll_node_t * n_act_d = n_act;
    n_act_d += (ll_p->n_size + sizeof(lv_ll_node_t *));
    return *((lv_ll_node_t **)n_act_d);
}






 
void * _lv_ll_get_prev(const lv_ll_t * ll_p, const void * n_act)
{
    if(ll_p == 0) return 0;

    
 
    const lv_ll_node_t * n_act_d = n_act;
    n_act_d += (ll_p->n_size);
    return *((lv_ll_node_t **)n_act_d);
}





 
uint32_t _lv_ll_get_len(const lv_ll_t * ll_p)
{
    uint32_t len = 0;
    void * node;

    for(node = _lv_ll_get_head(ll_p); node != 0; node = _lv_ll_get_next(ll_p, node)) {
        len++;
    }

    return len;
}






 
void _lv_ll_move_before(lv_ll_t * ll_p, void * n_act, void * n_after)
{
    if(n_act == n_after) return;  

    void * n_before;
    if(n_after != 0)
        n_before = _lv_ll_get_prev(ll_p, n_after);
    else
        n_before = _lv_ll_get_tail(ll_p);  

    if(n_act == n_before) return;  

     
    _lv_ll_remove(ll_p, n_act);

     
    node_set_next(ll_p, n_before, n_act);
    node_set_prev(ll_p, n_act, n_before);
    node_set_prev(ll_p, n_after, n_act);
    node_set_next(ll_p, n_act, n_after);

     
    if(n_after == 0) ll_p->tail = n_act;

     
    if(n_before == 0) ll_p->head = n_act;
}





 
_Bool _lv_ll_is_empty(lv_ll_t * ll_p)
{
    if(ll_p == 0) return 1;

    if(ll_p->head == 0 && ll_p->tail == 0) return 1;

    return 0;
}



 






 
static void node_set_prev(lv_ll_t * ll_p, lv_ll_node_t * act, lv_ll_node_t * prev)
{
    if(act == 0) return;  

    uint8_t * act8 = (uint8_t *) act;

    act8 += (ll_p->n_size);

    lv_ll_node_t ** act_node_p = (lv_ll_node_t **) act8;
    lv_ll_node_t ** prev_node_p = (lv_ll_node_t **) &prev;

    *act_node_p = *prev_node_p;
}






 
static void node_set_next(lv_ll_t * ll_p, lv_ll_node_t * act, lv_ll_node_t * next)
{
    if(act == 0) return;  
    uint8_t * act8 = (uint8_t *) act;

    act8 += (ll_p->n_size + sizeof(lv_ll_node_t *));
    lv_ll_node_t ** act_node_p = (lv_ll_node_t **) act8;
    lv_ll_node_t ** next_node_p = (lv_ll_node_t **) &next;

    *act_node_p = *next_node_p;
}
