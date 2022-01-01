#line 1 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_buf.c"



 



 
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 10 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_buf.c"
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



 

#line 11 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_buf.c"
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_buf.h"



 










 
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 17 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_buf.h"
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"



 










 
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"




 



 

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






 
#line 12 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
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

 


 


 



 


 


 


 






 







 


 



 


 



 




 







 



#line 25 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 

#line 31 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 

 
#line 51 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"






 
#line 65 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 75 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 
#line 86 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 95 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 104 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 114 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 
#line 125 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"







 
#line 154 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 



 


 

 
#line 232 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 242 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 275 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 


 

 
#line 291 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 300 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 309 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 319 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 329 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 339 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 348 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 

 
#line 362 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 



 
#line 376 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 
#line 388 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 397 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 406 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 415 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 424 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 433 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 442 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 453 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 469 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 478 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 








 




 




 
#line 509 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 518 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 527 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 543 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 

 
#line 556 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 565 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"






 
#line 579 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 



 

 
#line 594 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 603 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 612 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 621 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 








 
#line 639 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 649 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 659 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"






 
#line 673 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 683 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 


 
#line 713 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"




 

 
#line 753 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 









 
#line 775 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 784 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 793 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 802 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 
#line 813 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 823 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 832 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"





 





 


 
#line 994 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1024 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 1034 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"






 
#line 1048 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 
#line 1059 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 
#line 1070 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1080 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 
#line 1092 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 



 

 


 
#line 1110 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 1120 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"







 
#line 1135 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"





 
#line 1148 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

#line 1212 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 





 
#line 1229 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

  
#line 1238 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 1248 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 1258 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"


 
#line 1268 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1277 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"




 
#line 1302 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 
#line 1313 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1353 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 

#line 1386 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1395 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"





 
#line 1408 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 


 

 
#line 1424 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1433 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1442 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1451 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1469 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1478 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1487 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1505 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1514 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1523 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1533 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"
 
#line 1542 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1551 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1560 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1570 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"
 
#line 1579 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1588 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1598 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"
 
#line 1606 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1615 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1624 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1634 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1659 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1668 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1678 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"
 
#line 1687 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1697 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"





 
#line 1711 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1720 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1729 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1739 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"
 
#line 1748 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1780 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1790 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"
 
#line 1798 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1808 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1817 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1826 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1835 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1860 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1878 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1888 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"
 
#line 1897 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1907 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"
 
#line 1916 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

 
#line 1925 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 

#line 1939 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"



 
#line 1973 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/../lv_conf_internal.h"

#line 17 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_math.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_math.h"
#line 18 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_math.h"



 

























 

typedef struct {
    uint16_t i;
    uint16_t f;
} lv_sqrt_res_t;




 






 
 int16_t _lv_trigo_sin(int16_t angle);











 
int32_t _lv_bezier3(uint32_t t, int32_t u0, int32_t u1, int32_t u2, int32_t u3);






 
uint16_t _lv_atan2(int x, int y);













 
 void _lv_sqrt(uint32_t x, lv_sqrt_res_t * q, uint32_t mask);








 
int64_t _lv_pow(int64_t base, int8_t exp);









 
int16_t _lv_map(int32_t x, int32_t min_in, int32_t max_in, int32_t min, int32_t max);



 





#line 18 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"

 












#line 33 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"



 
#line 55 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"



 
enum {
    LV_OPA_TRANSP = 0,
    LV_OPA_0      = 0,
    LV_OPA_10     = 25,
    LV_OPA_20     = 51,
    LV_OPA_30     = 76,
    LV_OPA_40     = 102,
    LV_OPA_50     = 127,
    LV_OPA_60     = 153,
    LV_OPA_70     = 178,
    LV_OPA_80     = 204,
    LV_OPA_90     = 229,
    LV_OPA_100    = 255,
    LV_OPA_COVER  = 255,
};




#line 89 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"









 
#line 106 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"




 














































 
#line 189 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"

#line 198 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"

#line 210 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"



 

typedef union {
    union {
        uint8_t blue : 1;
        uint8_t green : 1;
        uint8_t red : 1;
    } ch;
    uint8_t full;
} lv_color1_t;

typedef union {
    struct {
        uint8_t blue : 2;
        uint8_t green : 3;
        uint8_t red : 3;
    } ch;
    uint8_t full;
} lv_color8_t;

typedef union {
    struct {

        uint16_t blue : 5;
        uint16_t green : 6;
        uint16_t red : 5;
#line 245 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"
    } ch;
    uint16_t full;
} lv_color16_t;

typedef union {
    struct {
        uint8_t blue;
        uint8_t green;
        uint8_t red;
        uint8_t alpha;
    } ch;
    uint32_t full;
} lv_color32_t;

#line 266 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"
typedef uint16_t lv_color_int_t;
typedef lv_color16_t lv_color_t;
#line 274 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"


typedef struct {
    uint16_t h;
    uint8_t s;
    uint8_t v;
} lv_color_hsv_t;


 
typedef uint8_t lv_opa_t;




 













 
static inline uint8_t lv_color_to1(lv_color_t color)
{
#line 316 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"
    if(((color). ch . red & 0x10) || ((color). ch . green & 0x20) || ((color). ch . blue & 0x10)) {
        return 1;
    }
    else {
        return 0;
    }
#line 330 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"
}

static inline uint8_t lv_color_to8(lv_color_t color)
{
#line 342 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"
    lv_color8_t ret;
    (ret). ch . red = (uint8_t)((color). ch . red >> 2) & 0x7U;;    
    (ret). ch . green = (uint8_t)((color). ch . green >> 3) & 0x7U;;  
    (ret). ch . blue = (uint8_t)((color). ch . blue >> 3) & 0x3U;;   
    return ret.full;
#line 354 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"
}

static inline uint16_t lv_color_to16(lv_color_t color)
{
#line 374 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"
    return color.full;
#line 387 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"
}

static inline uint32_t lv_color_to32(lv_color_t color)
{
#line 404 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"
    


























 

    lv_color32_t ret;
    (ret). ch . red = (uint32_t)((((color). ch . red * 263 + 7) >> 5) & 0xFF);;
    (ret). ch . green = (uint32_t)((((color). ch . green * 259 + 3) >> 6) & 0xFF);;
    (ret). ch . blue = (uint32_t)((((color). ch . blue * 263 + 7) >> 5) & 0xFF);;
    (ret). ch . alpha = (uint32_t)((0xFF) & 0xFF);;
    return ret.full;



}










 
 static inline lv_color_t lv_color_mix(lv_color_t c1, lv_color_t c2, uint8_t mix)
{
    lv_color_t ret;

     
    (ret). ch . red = (uint8_t)(((uint32_t)((uint32_t) ((uint16_t) (c1). ch . red * mix + (c2). ch . red * (255 - mix) + 128) * 0x8081) >> 0x17)) & 0x1FU;;

    (ret). ch . green = (uint8_t)(((uint32_t)((uint32_t) ((uint16_t) (c1). ch . green * mix + (c2). ch . green * (255 - mix) + 128) * 0x8081) >> 0x17)) & 0x3FU;;

    (ret). ch . blue = (uint8_t)(((uint32_t)((uint32_t) ((uint16_t) (c1). ch . blue * mix + (c2). ch . blue * (255 - mix) + 128) * 0x8081) >> 0x17)) & 0x1FU;;

    do {} while(0);





    return ret;
}

 static inline void lv_color_premult(lv_color_t c, uint8_t mix, uint16_t * out)
{

    out[0] = (uint16_t) (c). ch . red * mix;
    out[1] = (uint16_t) (c). ch . green * mix;
    out[2] = (uint16_t) (c). ch . blue * mix;
#line 487 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"

}










 
 static inline lv_color_t lv_color_mix_premult(uint16_t * premult_c1, lv_color_t c2, uint8_t mix)
{
    lv_color_t ret;

     
    (ret). ch . red = (uint8_t)(((uint32_t)((uint32_t) ((uint16_t) premult_c1[0] + (c2). ch . red * mix + 128) * 0x8081) >> 0x17)) & 0x1FU;;
    (ret). ch . green = (uint8_t)(((uint32_t)((uint32_t) ((uint16_t) premult_c1[1] + (c2). ch . green * mix + 128) * 0x8081) >> 0x17)) & 0x3FU;;
    (ret). ch . blue = (uint8_t)(((uint32_t)((uint32_t) ((uint16_t) premult_c1[2] + (c2). ch . blue * mix + 128) * 0x8081) >> 0x17)) & 0x1FU;;
    do {} while(0);
#line 518 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"

    return ret;
}










 
 static inline void lv_color_mix_with_alpha(lv_color_t bg_color, lv_opa_t bg_opa,
                                                                 lv_color_t fg_color, lv_opa_t fg_opa,
                                                                 lv_color_t * res_color, lv_opa_t * res_opa)
{
     
    if(fg_opa >= 253 || bg_opa <= 2) {
        res_color->full = fg_color.full;
        *res_opa = fg_opa;
    }
     
    else if(fg_opa <= 2) {
        res_color->full = bg_color.full;
        *res_opa = bg_opa;
    }
     
    else if(bg_opa >= 253) {
        *res_color = lv_color_mix(fg_color, bg_color, fg_opa);
        *res_opa = LV_OPA_COVER;
    }
     
    else {
         
        static lv_opa_t fg_opa_save     = 0;
        static lv_opa_t bg_opa_save     = 0;
        static lv_color_t fg_color_save = {.full = 0};
        static lv_color_t bg_color_save = {.full = 0};
        static lv_color_t res_color_saved = {.full = 0};
        static lv_opa_t res_opa_saved = 0;

        if(fg_opa != fg_opa_save || bg_opa != bg_opa_save || fg_color.full != fg_color_save.full ||
           bg_color.full != bg_color_save.full) {
            fg_opa_save        = fg_opa;
            bg_opa_save        = bg_opa;
            fg_color_save.full = fg_color.full;
            bg_color_save.full = bg_color.full;
            
 
            res_opa_saved = 255 - ((uint16_t)((uint16_t)(255 - fg_opa) * (255 - bg_opa)) >> 8);
            if(res_opa_saved == 0) {
                while(1)
                    ;
            }
            lv_opa_t ratio = (uint16_t)((uint16_t)fg_opa * 255) / res_opa_saved;
            res_color_saved  = lv_color_mix(fg_color, bg_color, ratio);

        }

        res_color->full = res_color_saved.full;
        *res_opa = res_opa_saved;
    }
}







 
static inline uint8_t lv_color_brightness(lv_color_t color)
{
    lv_color32_t c32;
    c32.full        = lv_color_to32(color);
    uint16_t bright = (uint16_t)(3u * (c32). ch . red + (c32). ch . blue + 4u * (c32). ch . green);
    return (uint8_t)(bright >> 3);
}

#line 615 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"





#line 626 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"

 
#line 641 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_color.h"

static inline lv_color_t lv_color_make(uint8_t r, uint8_t g, uint8_t b)
{
    return ((lv_color_t){{(uint16_t)((b >> 3) & 0x1FU), (uint16_t)((g >> 2) & 0x3FU), (uint16_t)((r >> 3) & 0x1FU)}});
}

static inline lv_color_t lv_color_hex(uint32_t c)
{
    return lv_color_make((uint8_t)((c >> 16) & 0xFF), (uint8_t)((c >> 8) & 0xFF), (uint8_t)(c & 0xFF));
}

static inline lv_color_t lv_color_hex3(uint32_t c)
{
    return lv_color_make((uint8_t)(((c >> 4) & 0xF0) | ((c >> 8) & 0xF)), (uint8_t)((c & 0xF0) | ((c & 0xF0) >> 4)),
                         (uint8_t)((c & 0xF) | ((c & 0xF) << 4)));
}




 void lv_color_fill(lv_color_t * buf, lv_color_t color, uint32_t px_num);


lv_color_t lv_color_lighten(lv_color_t c, lv_opa_t lvl);

lv_color_t lv_color_darken(lv_color_t c, lv_opa_t lvl);







 
lv_color_t lv_color_hsv_to_rgb(uint16_t h, uint8_t s, uint8_t v);







 
lv_color_hsv_t lv_color_rgb_to_hsv(uint8_t r8, uint8_t g8, uint8_t b8);





 
lv_color_hsv_t lv_color_to_hsv(lv_color_t color);




 





#line 18 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_buf.h"
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_area.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_area.h"
#line 18 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_area.h"
#line 19 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_area.h"
#line 20 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_area.h"
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_mem.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_mem.h"

#line 19 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_mem.h"
#line 20 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_mem.h"
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_log.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_log.h"
#line 18 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_log.h"



 

 

#line 32 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_log.h"

struct _silence_gcc_warning;
struct _silence_gcc_warning;
struct _silence_gcc_warning;
struct _silence_gcc_warning;
struct _silence_gcc_warning;
struct _silence_gcc_warning;

typedef int8_t lv_log_level_t;

#line 110 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_log.h"

 
#line 119 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_log.h"





#line 21 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_mem.h"
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_types.h"



 










 



 

#line 23 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_types.h"




#line 38 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_types.h"




 



 
enum {
    LV_RES_INV = 0, 
 
    LV_RES_OK,       
};
typedef uint8_t lv_res_t;





typedef uintptr_t lv_uintptr_t;

#line 70 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_types.h"




 



 









#line 22 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_mem.h"







 







 



 
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




#line 200 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_mem.h"





 
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








 





#line 21 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_area.h"



 
 



struct _silence_gcc_warning;
struct _silence_gcc_warning;



 



 
typedef struct {
    lv_coord_t x;
    lv_coord_t y;
} lv_point_t;

 
typedef struct {
    lv_coord_t x1;
    lv_coord_t y1;
    lv_coord_t x2;
    lv_coord_t y2;
} lv_area_t;



 
enum {
    LV_ALIGN_CENTER = 0,
    LV_ALIGN_IN_TOP_LEFT,
    LV_ALIGN_IN_TOP_MID,
    LV_ALIGN_IN_TOP_RIGHT,
    LV_ALIGN_IN_BOTTOM_LEFT,
    LV_ALIGN_IN_BOTTOM_MID,
    LV_ALIGN_IN_BOTTOM_RIGHT,
    LV_ALIGN_IN_LEFT_MID,
    LV_ALIGN_IN_RIGHT_MID,
    LV_ALIGN_OUT_TOP_LEFT,
    LV_ALIGN_OUT_TOP_MID,
    LV_ALIGN_OUT_TOP_RIGHT,
    LV_ALIGN_OUT_BOTTOM_LEFT,
    LV_ALIGN_OUT_BOTTOM_MID,
    LV_ALIGN_OUT_BOTTOM_RIGHT,
    LV_ALIGN_OUT_LEFT_TOP,
    LV_ALIGN_OUT_LEFT_MID,
    LV_ALIGN_OUT_LEFT_BOTTOM,
    LV_ALIGN_OUT_RIGHT_TOP,
    LV_ALIGN_OUT_RIGHT_MID,
    LV_ALIGN_OUT_RIGHT_BOTTOM,
};
typedef uint8_t lv_align_t;




 








 
void lv_area_set(lv_area_t * area_p, lv_coord_t x1, lv_coord_t y1, lv_coord_t x2, lv_coord_t y2);





 
inline static void lv_area_copy(lv_area_t * dest, const lv_area_t * src)
{
    _lv_memcpy_small(dest, src, sizeof(lv_area_t));
}





 
static inline lv_coord_t lv_area_get_width(const lv_area_t * area_p)
{
    return (lv_coord_t)(area_p->x2 - area_p->x1 + 1);
}





 
static inline lv_coord_t lv_area_get_height(const lv_area_t * area_p)
{
    return (lv_coord_t)(area_p->y2 - area_p->y1 + 1);
}





 
void lv_area_set_width(lv_area_t * area_p, lv_coord_t w);





 
void lv_area_set_height(lv_area_t * area_p, lv_coord_t h);






 
void _lv_area_set_pos(lv_area_t * area_p, lv_coord_t x, lv_coord_t y);





 
uint32_t lv_area_get_size(const lv_area_t * area_p);







 
_Bool _lv_area_intersect(lv_area_t * res_p, const lv_area_t * a1_p, const lv_area_t * a2_p);






 
void _lv_area_join(lv_area_t * a_res_p, const lv_area_t * a1_p, const lv_area_t * a2_p);







 
_Bool _lv_area_is_point_on(const lv_area_t * a_p, const lv_point_t * p_p, lv_coord_t radius);






 
_Bool _lv_area_is_on(const lv_area_t * a1_p, const lv_area_t * a2_p);







 
_Bool _lv_area_is_in(const lv_area_t * ain_p, const lv_area_t * aholder_p, lv_coord_t radius);








 
void _lv_area_align(const lv_area_t * base, const lv_area_t * to_align, lv_align_t align, lv_point_t * res);



 





#line 19 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_buf.h"




 
 
#line 32 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_buf.h"





 





 












 

 
enum {
    LV_IMG_CF_UNKNOWN = 0,

    LV_IMG_CF_RAW,               
    LV_IMG_CF_RAW_ALPHA,        
 
    LV_IMG_CF_RAW_CHROMA_KEYED, 
 

    LV_IMG_CF_TRUE_COLOR,               
    LV_IMG_CF_TRUE_COLOR_ALPHA,         
    LV_IMG_CF_TRUE_COLOR_CHROMA_KEYED, 
 

    LV_IMG_CF_INDEXED_1BIT,  
    LV_IMG_CF_INDEXED_2BIT,  
    LV_IMG_CF_INDEXED_4BIT,  
    LV_IMG_CF_INDEXED_8BIT,  

    LV_IMG_CF_ALPHA_1BIT,  
    LV_IMG_CF_ALPHA_2BIT,  
    LV_IMG_CF_ALPHA_4BIT,  
    LV_IMG_CF_ALPHA_8BIT,  

    LV_IMG_CF_RESERVED_15,               
    LV_IMG_CF_RESERVED_16,               
    LV_IMG_CF_RESERVED_17,               
    LV_IMG_CF_RESERVED_18,               
    LV_IMG_CF_RESERVED_19,               
    LV_IMG_CF_RESERVED_20,               
    LV_IMG_CF_RESERVED_21,               
    LV_IMG_CF_RESERVED_22,               
    LV_IMG_CF_RESERVED_23,               

    LV_IMG_CF_USER_ENCODED_0,           
    LV_IMG_CF_USER_ENCODED_1,           
    LV_IMG_CF_USER_ENCODED_2,           
    LV_IMG_CF_USER_ENCODED_3,           
    LV_IMG_CF_USER_ENCODED_4,           
    LV_IMG_CF_USER_ENCODED_5,           
    LV_IMG_CF_USER_ENCODED_6,           
    LV_IMG_CF_USER_ENCODED_7,           
};
typedef uint8_t lv_img_cf_t;




 




 
#line 126 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_buf.h"
typedef struct {

    uint32_t cf : 5;           
    uint32_t always_zero : 3; 
 

    uint32_t reserved : 2;  

    uint32_t w : 11;  
    uint32_t h : 11;  
} lv_img_header_t;



 
typedef struct {
    lv_img_header_t header;
    uint32_t data_size;
    const uint8_t * data;
} lv_img_dsc_t;

typedef struct {
    struct {
        const void * src;            
        lv_coord_t src_w;            
        lv_coord_t src_h;            
        lv_coord_t pivot_x;          
        lv_coord_t pivot_y;          
        int16_t angle;               
        uint16_t zoom;               
        lv_color_t color;            
        lv_img_cf_t cf;              
        _Bool antialias;
    } cfg;

    struct {
        lv_color_t color;
        lv_opa_t opa;
    } res;


    struct {
        lv_img_dsc_t img_dsc;
        int32_t pivot_x_256;
        int32_t pivot_y_256;
        int32_t sinma;
        int32_t cosma;

        uint8_t chroma_keyed : 1;
        uint8_t has_alpha : 1;
        uint8_t native_color : 1;

        uint32_t zoom_inv;

         
        lv_coord_t xs;
        lv_coord_t ys;
        lv_coord_t xs_int;
        lv_coord_t ys_int;
        uint32_t pxi;
        uint8_t px_size;
    } tmp;
} lv_img_transform_dsc_t;



 







 
lv_img_dsc_t * lv_img_buf_alloc(lv_coord_t w, lv_coord_t h, lv_img_cf_t cf);










 
lv_color_t lv_img_buf_get_px_color(lv_img_dsc_t * dsc, lv_coord_t x, lv_coord_t y, lv_color_t color);








 
lv_opa_t lv_img_buf_get_px_alpha(lv_img_dsc_t * dsc, lv_coord_t x, lv_coord_t y);








 
void lv_img_buf_set_px_color(lv_img_dsc_t * dsc, lv_coord_t x, lv_coord_t y, lv_color_t c);








 
void lv_img_buf_set_px_alpha(lv_img_dsc_t * dsc, lv_coord_t x, lv_coord_t y, lv_opa_t opa);










 
void lv_img_buf_set_palette(lv_img_dsc_t * dsc, uint8_t id, lv_color_t c);




 
void lv_img_buf_free(lv_img_dsc_t * dsc);







 
uint32_t lv_img_buf_get_img_size(lv_coord_t w, lv_coord_t h, lv_img_cf_t cf);






 
void _lv_img_buf_transform_init(lv_img_transform_dsc_t * dsc);




 
_Bool _lv_img_buf_transform_anti_alias(lv_img_transform_dsc_t * dsc);









 
static inline _Bool _lv_img_buf_transform(lv_img_transform_dsc_t * dsc, lv_coord_t x, lv_coord_t y)
{
    const uint8_t * src_u8 = (const uint8_t *)dsc->cfg.src;

     
    int32_t xt = x - dsc->cfg.pivot_x;
    int32_t yt = y - dsc->cfg.pivot_y;

    int32_t xs;
    int32_t ys;
    if(dsc->cfg.zoom == 256) {
         
        xs = ((dsc->tmp.cosma * xt - dsc->tmp.sinma * yt) >> (10 - 8)) + dsc->tmp.pivot_x_256;
        ys = ((dsc->tmp.sinma * xt + dsc->tmp.cosma * yt) >> (10 - 8)) + dsc->tmp.pivot_y_256;
    }
    else if(dsc->cfg.angle == 0) {
        xt = (int32_t)((int32_t)xt * dsc->tmp.zoom_inv) >> 5;
        yt = (int32_t)((int32_t)yt * dsc->tmp.zoom_inv) >> 5;
        xs = xt + dsc->tmp.pivot_x_256;
        ys = yt + dsc->tmp.pivot_y_256;
    }
    else {
        xt = (int32_t)((int32_t)xt * dsc->tmp.zoom_inv) >> 5;
        yt = (int32_t)((int32_t)yt * dsc->tmp.zoom_inv) >> 5;
        xs = ((dsc->tmp.cosma * xt - dsc->tmp.sinma * yt) >> (10)) + dsc->tmp.pivot_x_256;
        ys = ((dsc->tmp.sinma * xt + dsc->tmp.cosma * yt) >> (10)) + dsc->tmp.pivot_y_256;
    }

     
    int32_t xs_int = xs >> 8;
    int32_t ys_int = ys >> 8;

    if(xs_int >= dsc->cfg.src_w) return 0;
    else if(xs_int < 0) return 0;

    if(ys_int >= dsc->cfg.src_h) return 0;
    else if(ys_int < 0) return 0;

    uint8_t px_size;
    uint32_t pxi;
    if(dsc->tmp.native_color) {
        if(dsc->tmp.has_alpha == 0) {
            px_size = 16 >> 3;

            pxi     = dsc->cfg.src_w * ys_int * px_size + xs_int * px_size;
            _lv_memcpy_small(&dsc->res.color, &src_u8[pxi], px_size);
        }
        else {
            px_size = 3;
            pxi     = dsc->cfg.src_w * ys_int * px_size + xs_int * px_size;
            _lv_memcpy_small(&dsc->res.color, &src_u8[pxi], px_size - 1);
            dsc->res.opa = src_u8[pxi + px_size - 1];
        }
    }
    else {
        pxi = 0;  
        px_size = 0;     
        dsc->res.color = lv_img_buf_get_px_color(&dsc->tmp.img_dsc, xs_int, ys_int, dsc->cfg.color);
        dsc->res.opa = lv_img_buf_get_px_alpha(&dsc->tmp.img_dsc, xs_int, ys_int);
    }

    if(dsc->tmp.chroma_keyed) {
        lv_color_t ct = ((lv_color_t){{(uint16_t)((0x00 >> 3) & 0x1FU), (uint16_t)((0xFF >> 2) & 0x3FU), (uint16_t)((0x00 >> 3) & 0x1FU)}});
        if(dsc->res.color.full == ct.full) return 0;
    }

    if(dsc->cfg.antialias == 0) return 1;

    dsc->tmp.xs = xs;
    dsc->tmp.ys = ys;
    dsc->tmp.xs_int = xs_int;
    dsc->tmp.ys_int = ys_int;
    dsc->tmp.pxi = pxi;
    dsc->tmp.px_size = px_size;

    _Bool ret;
    ret = _lv_img_buf_transform_anti_alias(dsc);

    return ret;
}









 
void _lv_img_buf_get_transformed_area(lv_area_t * res, lv_coord_t w, lv_coord_t h, int16_t angle, uint16_t zoom,
                                      const lv_point_t * pivot);



 





#line 12 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_buf.c"
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\lv_draw_img.h"



 










 
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_decoder.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_decoder.h"

#line 19 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_decoder.h"
#line 20 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_decoder.h"
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_fs.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_fs.h"

#line 288 "..\\GUI\\lvgl_src\\lv_draw\\../lv_misc/lv_fs.h"





#line 21 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_decoder.h"
#line 22 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_decoder.h"
#line 23 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_decoder.h"
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/lv_style.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/lv_style.h"
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_font/lv_font.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_font/lv_font.h"
#line 18 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_font/lv_font.h"
#line 19 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_font/lv_font.h"
#line 20 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_font/lv_font.h"

#line 1 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_font/lv_symbol_def.h"


 





#line 10 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_font/lv_symbol_def.h"



 








 

#line 81 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_font/lv_symbol_def.h"

 




 





 
enum {
    _LV_STR_SYMBOL_AUDIO,
    _LV_STR_SYMBOL_VIDEO,
    _LV_STR_SYMBOL_LIST,
    _LV_STR_SYMBOL_OK,
    _LV_STR_SYMBOL_CLOSE,
    _LV_STR_SYMBOL_POWER,
    _LV_STR_SYMBOL_SETTINGS,
    _LV_STR_SYMBOL_HOME,
    _LV_STR_SYMBOL_DOWNLOAD,
    _LV_STR_SYMBOL_DRIVE,
    _LV_STR_SYMBOL_REFRESH,
    _LV_STR_SYMBOL_MUTE,
    _LV_STR_SYMBOL_VOLUME_MID,
    _LV_STR_SYMBOL_VOLUME_MAX,
    _LV_STR_SYMBOL_IMAGE,
    _LV_STR_SYMBOL_EDIT,
    _LV_STR_SYMBOL_PREV,
    _LV_STR_SYMBOL_PLAY,
    _LV_STR_SYMBOL_PAUSE,
    _LV_STR_SYMBOL_STOP,
    _LV_STR_SYMBOL_NEXT,
    _LV_STR_SYMBOL_EJECT,
    _LV_STR_SYMBOL_LEFT,
    _LV_STR_SYMBOL_RIGHT,
    _LV_STR_SYMBOL_PLUS,
    _LV_STR_SYMBOL_MINUS,
    _LV_STR_SYMBOL_EYE_OPEN,
    _LV_STR_SYMBOL_EYE_CLOSE,
    _LV_STR_SYMBOL_WARNING,
    _LV_STR_SYMBOL_SHUFFLE,
    _LV_STR_SYMBOL_UP,
    _LV_STR_SYMBOL_DOWN,
    _LV_STR_SYMBOL_LOOP,
    _LV_STR_SYMBOL_DIRECTORY,
    _LV_STR_SYMBOL_UPLOAD,
    _LV_STR_SYMBOL_CALL,
    _LV_STR_SYMBOL_CUT,
    _LV_STR_SYMBOL_COPY,
    _LV_STR_SYMBOL_SAVE,
    _LV_STR_SYMBOL_CHARGE,
    _LV_STR_SYMBOL_PASTE,
    _LV_STR_SYMBOL_BELL,
    _LV_STR_SYMBOL_KEYBOARD,
    _LV_STR_SYMBOL_GPS,
    _LV_STR_SYMBOL_FILE,
    _LV_STR_SYMBOL_WIFI,
    _LV_STR_SYMBOL_BATTERY_FULL,
    _LV_STR_SYMBOL_BATTERY_3,
    _LV_STR_SYMBOL_BATTERY_2,
    _LV_STR_SYMBOL_BATTERY_1,
    _LV_STR_SYMBOL_BATTERY_EMPTY,
    _LV_STR_SYMBOL_USB,
    _LV_STR_SYMBOL_BLUETOOTH,
    _LV_STR_SYMBOL_TRASH,
    _LV_STR_SYMBOL_BACKSPACE,
    _LV_STR_SYMBOL_SD_CARD,
    _LV_STR_SYMBOL_NEW_LINE,
    _LV_STR_SYMBOL_DUMMY,
};












#line 22 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_font/lv_font.h"
#line 23 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_font/lv_font.h"



 
 







 



 

 
typedef struct {
    uint16_t adv_w;  
    uint16_t box_w;   
    uint16_t box_h;   
    int16_t ofs_x;    
    int16_t ofs_y;   
    uint8_t bpp;    
} lv_font_glyph_dsc_t;


 
enum {
    LV_FONT_SUBPX_NONE,
    LV_FONT_SUBPX_HOR,
    LV_FONT_SUBPX_VER,
    LV_FONT_SUBPX_BOTH,
};

typedef uint8_t lv_font_subpx_t;

 
typedef struct _lv_font_struct {
     
    _Bool (*get_glyph_dsc)(const struct _lv_font_struct *, lv_font_glyph_dsc_t *, uint32_t letter, uint32_t letter_next);

     
    const uint8_t * (*get_glyph_bitmap)(const struct _lv_font_struct *, uint32_t);

     
    lv_coord_t line_height;          
    lv_coord_t base_line;            
    uint8_t subpx  : 2;              

    int8_t underline_position;       
    int8_t  underline_thickness;      

    void * dsc;                      





} lv_font_t;



 






 
const uint8_t * lv_font_get_glyph_bitmap(const lv_font_t * font_p, uint32_t letter);








 
_Bool lv_font_get_glyph_dsc(const lv_font_t * font_p, lv_font_glyph_dsc_t * dsc_out, uint32_t letter,
                           uint32_t letter_next);







 
uint16_t lv_font_get_glyph_width(const lv_font_t * font, uint32_t letter, uint32_t letter_next);





 
static inline lv_coord_t lv_font_get_line_height(const lv_font_t * font_p)
{
    return font_p->line_height;
}



 












extern lv_font_t lv_font_montserrat_12;






























































































 








#line 18 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/lv_style.h"
#line 19 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/lv_style.h"
#line 20 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/lv_style.h"
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_misc/lv_anim.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_misc/lv_anim.h"

#line 19 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_misc/lv_anim.h"
#line 20 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_misc/lv_anim.h"
#line 21 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_misc/lv_anim.h"
#line 22 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_misc/lv_anim.h"



 



 

 
enum {
    LV_ANIM_OFF,
    LV_ANIM_ON,
};

typedef uint8_t lv_anim_enable_t;

 
typedef lv_coord_t lv_anim_value_t;






struct _lv_anim_t;
struct _lv_anim_path_t;
 
typedef lv_anim_value_t (*lv_anim_path_cb_t)(const struct _lv_anim_path_t *, const struct _lv_anim_t *);

typedef struct _lv_anim_path_t {
    lv_anim_path_cb_t cb;
    void * user_data;
} lv_anim_path_t;








 
typedef void (*lv_anim_exec_xcb_t)(void *, lv_anim_value_t);


 
typedef void (*lv_anim_custom_exec_cb_t)(struct _lv_anim_t *, lv_anim_value_t);

 
typedef void (*lv_anim_ready_cb_t)(struct _lv_anim_t *);

 
typedef void (*lv_anim_start_cb_t)(struct _lv_anim_t *);

 
typedef struct _lv_anim_t {
    void * var;                   
    lv_anim_exec_xcb_t exec_cb;    
    lv_anim_start_cb_t start_cb;  
    lv_anim_ready_cb_t ready_cb;  
    lv_anim_path_t path;          
    int32_t start;                
    int32_t current;              
    int32_t end;                  
    int32_t time;                
    int32_t act_time;             
    uint32_t playback_delay;      
    uint32_t playback_time;       
    uint32_t repeat_delay;        
    uint16_t repeat_cnt;          
    uint8_t early_apply  : 1;     




     
    uint32_t time_orig;
    uint8_t playback_now : 1;  
    uint32_t has_run : 1;      
} lv_anim_t;




 



 
void _lv_anim_core_init(void);








 
void lv_anim_init(lv_anim_t * a);





 
static inline void lv_anim_set_var(lv_anim_t * a, void * var)
{
    a->var     = var;
}







 
static inline void lv_anim_set_exec_cb(lv_anim_t * a, lv_anim_exec_xcb_t exec_cb)
{
    a->exec_cb = exec_cb;
}





 
static inline void lv_anim_set_time(lv_anim_t * a, uint32_t duration)
{
    a->time     = duration;
}





 
static inline void lv_anim_set_delay(lv_anim_t * a, uint32_t delay)
{
    a->act_time = -(int32_t)(delay);
}






 
static inline void lv_anim_set_values(lv_anim_t * a, lv_anim_value_t start, lv_anim_value_t end)
{
    a->start = start;
    a->current = start;
    a->end   = end;
}









 
static inline void lv_anim_set_custom_exec_cb(lv_anim_t * a, lv_anim_custom_exec_cb_t exec_cb)
{
    a->var     = a;
    a->exec_cb = (lv_anim_exec_xcb_t)exec_cb;
}






 
static inline void lv_anim_set_path(lv_anim_t * a, const lv_anim_path_t * path)
{
    _lv_memcpy_small(&a->path, path, sizeof(lv_anim_path_t));
}






 
static inline void lv_anim_set_start_cb(lv_anim_t * a, lv_anim_ready_cb_t start_cb)
{
    a->start_cb = start_cb;
}





 
static inline void lv_anim_set_ready_cb(lv_anim_t * a, lv_anim_ready_cb_t ready_cb)
{
    a->ready_cb = ready_cb;
}





 
static inline void lv_anim_set_playback_time(lv_anim_t * a, uint16_t time)
{
    a->playback_time = time;
}





 
static inline void lv_anim_set_playback_delay(lv_anim_t * a, uint16_t delay)
{
    a->playback_delay = delay;
}





 
static inline void lv_anim_set_repeat_count(lv_anim_t * a, uint16_t cnt)
{
    a->repeat_cnt       = cnt;
}





 
static inline void lv_anim_set_repeat_delay(lv_anim_t * a, uint16_t delay)
{
    a->repeat_delay = delay;
}




 
void lv_anim_start(lv_anim_t * a);




 
static inline void lv_anim_path_init(lv_anim_path_t * path)
{
    _lv_memset_00(path, sizeof(lv_anim_path_t));
}





 
static inline void lv_anim_path_set_cb(lv_anim_path_t * path, lv_anim_path_cb_t cb)
{
    path->cb = cb;
}





 
static inline void lv_anim_path_set_user_data(lv_anim_path_t * path, void * user_data)
{
    path->user_data = user_data;
}





 
static inline int32_t lv_anim_get_delay(lv_anim_t * a)
{
    return -a->act_time;
}







 
_Bool lv_anim_del(void * var, lv_anim_exec_xcb_t exec_cb);








 
lv_anim_t * lv_anim_get(void * var, lv_anim_exec_xcb_t exec_cb);











 
static inline _Bool lv_anim_custom_del(lv_anim_t * a, lv_anim_custom_exec_cb_t exec_cb)
{
    return lv_anim_del(a->var, (lv_anim_exec_xcb_t)exec_cb);
}




 
uint16_t lv_anim_count_running(void);







 
uint16_t lv_anim_speed_to_time(uint16_t speed, lv_anim_value_t start, lv_anim_value_t end);






 
void lv_anim_refr_now(void);





 
lv_anim_value_t lv_anim_path_linear(const lv_anim_path_t * path, const lv_anim_t * a);





 
lv_anim_value_t lv_anim_path_ease_in(const lv_anim_path_t * path, const lv_anim_t * a);





 
lv_anim_value_t lv_anim_path_ease_out(const lv_anim_path_t * path, const lv_anim_t * a);





 
lv_anim_value_t lv_anim_path_ease_in_out(const lv_anim_path_t * path, const lv_anim_t * a);





 
lv_anim_value_t lv_anim_path_overshoot(const lv_anim_path_t * path, const lv_anim_t * a);





 
lv_anim_value_t lv_anim_path_bounce(const lv_anim_path_t * path, const lv_anim_t * a);






 
lv_anim_value_t lv_anim_path_step(const lv_anim_path_t * path, const lv_anim_t * a);



 
extern const lv_anim_path_t lv_anim_path_def;



 







#line 21 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/lv_style.h"
#line 22 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/lv_style.h"
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_misc/lv_debug.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_misc/lv_debug.h"

#line 20 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_misc/lv_debug.h"



 



 



 
_Bool lv_debug_check_null(const void * p);

_Bool lv_debug_check_mem_integrity(void);

_Bool lv_debug_check_str(const void * str);

void lv_debug_log_error(const char * msg, uint64_t value);



 

#line 54 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_misc/lv_debug.h"



 

















 

 

#line 86 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_misc/lv_debug.h"

#line 94 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_misc/lv_debug.h"

#line 102 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_misc/lv_debug.h"

#line 114 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_misc/lv_debug.h"


#line 127 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_misc/lv_debug.h"
 





#line 23 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/lv_style.h"
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_draw/lv_draw_blend.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_draw/lv_draw_blend.h"
#line 18 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_draw/lv_draw_blend.h"
#line 1 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_draw/lv_draw_mask.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_draw/lv_draw_mask.h"
#line 18 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_draw/lv_draw_mask.h"
#line 19 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_draw/lv_draw_mask.h"



 





 

enum {
    LV_DRAW_MASK_RES_TRANSP,
    LV_DRAW_MASK_RES_FULL_COVER,
    LV_DRAW_MASK_RES_CHANGED,
    LV_DRAW_MASK_RES_UNKNOWN
};

typedef uint8_t lv_draw_mask_res_t;


enum {
    LV_DRAW_MASK_TYPE_LINE,
    LV_DRAW_MASK_TYPE_ANGLE,
    LV_DRAW_MASK_TYPE_RADIUS,
    LV_DRAW_MASK_TYPE_FADE,
    LV_DRAW_MASK_TYPE_MAP,
};

typedef uint8_t lv_draw_mask_type_t;

enum {
    LV_DRAW_MASK_LINE_SIDE_LEFT = 0,
    LV_DRAW_MASK_LINE_SIDE_RIGHT,
    LV_DRAW_MASK_LINE_SIDE_TOP,
    LV_DRAW_MASK_LINE_SIDE_BOTTOM,
};




 
typedef lv_draw_mask_res_t (*lv_draw_mask_xcb_t)(lv_opa_t * mask_buf, lv_coord_t abs_x, lv_coord_t abs_y,
                                                 lv_coord_t len,
                                                 void * p);

typedef uint8_t lv_draw_mask_line_side_t;

typedef struct {
    lv_draw_mask_xcb_t cb;
    lv_draw_mask_type_t type;
} lv_draw_mask_common_dsc_t;

typedef struct {
     
    lv_draw_mask_common_dsc_t dsc;

    struct {
         
        lv_point_t p1;

         
        lv_point_t p2;

         
        lv_draw_mask_line_side_t side : 2;
    } cfg;

     
    lv_point_t origo;

     
    int32_t xy_steep;

     
    int32_t yx_steep;

     
    int32_t steep;

     
    int32_t spx;

     
    uint8_t flat : 1;


    
 
    uint8_t inv: 1;
} lv_draw_mask_line_param_t;

typedef struct {
     
    lv_draw_mask_common_dsc_t dsc;

    struct {
        lv_point_t vertex_p;
        lv_coord_t start_angle;
        lv_coord_t end_angle;
    } cfg;

    lv_draw_mask_line_param_t start_line;
    lv_draw_mask_line_param_t end_line;
    uint16_t delta_deg;
} lv_draw_mask_angle_param_t;

typedef struct {
     
    lv_draw_mask_common_dsc_t dsc;

    struct {
        lv_area_t rect;
        lv_coord_t radius;
         
        uint8_t outer: 1;
    } cfg;
    int32_t y_prev;
    lv_sqrt_res_t y_prev_x;

} lv_draw_mask_radius_param_t;

typedef struct {
     
    lv_draw_mask_common_dsc_t dsc;

    struct {
        lv_area_t coords;
        lv_coord_t y_top;
        lv_coord_t y_bottom;
        lv_opa_t opa_top;
        lv_opa_t opa_bottom;
    } cfg;

} lv_draw_mask_fade_param_t;

typedef struct _lv_draw_mask_map_param_t {
     
    lv_draw_mask_common_dsc_t dsc;

    struct {
        lv_area_t coords;
        const lv_opa_t * map;
    } cfg;
} lv_draw_mask_map_param_t;

typedef struct {
    void * param;
    void * custom_id;
} _lv_draw_mask_saved_t;

typedef _lv_draw_mask_saved_t _lv_draw_mask_saved_arr_t[16];



 






 
int16_t lv_draw_mask_add(void * param, void * custom_id);














 
 lv_draw_mask_res_t lv_draw_mask_apply(lv_opa_t * mask_buf, lv_coord_t abs_x, lv_coord_t abs_y,
                                                            lv_coord_t len);









 
void * lv_draw_mask_remove_id(int16_t id);






 
void * lv_draw_mask_remove_custom(void * custom_id);






 
 uint8_t lv_draw_mask_get_cnt(void);














 
void lv_draw_mask_line_points_init(lv_draw_mask_line_param_t * param, lv_coord_t p1x, lv_coord_t p1y, lv_coord_t p2x,
                                   lv_coord_t p2y, lv_draw_mask_line_side_t side);










 
void lv_draw_mask_line_angle_init(lv_draw_mask_line_param_t * param, lv_coord_t p1x, lv_coord_t py, int16_t angle,
                                  lv_draw_mask_line_side_t side);








 
void lv_draw_mask_angle_init(lv_draw_mask_angle_param_t * param, lv_coord_t vertex_x, lv_coord_t vertex_y,
                             lv_coord_t start_angle, lv_coord_t end_angle);







 
void lv_draw_mask_radius_init(lv_draw_mask_radius_param_t * param, const lv_area_t * rect, lv_coord_t radius, _Bool inv);









 
void lv_draw_mask_fade_init(lv_draw_mask_fade_param_t * param, const lv_area_t * coords, lv_opa_t opa_top,
                            lv_coord_t y_top,
                            lv_opa_t opa_bottom, lv_coord_t y_bottom);






 
void lv_draw_mask_map_init(lv_draw_mask_map_param_t * param, const lv_area_t * coords, const lv_opa_t * map);



 





#line 19 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/../lv_draw/lv_draw_blend.h"



 



 
enum {
    LV_BLEND_MODE_NORMAL,

    LV_BLEND_MODE_ADDITIVE,
    LV_BLEND_MODE_SUBTRACTIVE,

};

typedef uint8_t lv_blend_mode_t;



 


 void _lv_blend_fill(const lv_area_t * clip_area, const lv_area_t * fill_area, lv_color_t color,
                                          lv_opa_t * mask, lv_draw_mask_res_t mask_res, lv_opa_t opa, lv_blend_mode_t mode);


 void _lv_blend_map(const lv_area_t * clip_area, const lv_area_t * map_area,
                                         const lv_color_t * map_buf,
                                         lv_opa_t * mask, lv_draw_mask_res_t mask_res, lv_opa_t opa, lv_blend_mode_t mode);




 





#line 24 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/lv_style.h"



 


struct _silence_gcc_warning;



















 

 
enum {
    LV_BORDER_SIDE_NONE     = 0x00,
    LV_BORDER_SIDE_BOTTOM   = 0x01,
    LV_BORDER_SIDE_TOP      = 0x02,
    LV_BORDER_SIDE_LEFT     = 0x04,
    LV_BORDER_SIDE_RIGHT    = 0x08,
    LV_BORDER_SIDE_FULL     = 0x0F,
    LV_BORDER_SIDE_INTERNAL = 0x10,  
    _LV_BORDER_SIDE_LAST
};
typedef uint8_t lv_border_side_t;

enum {
    LV_GRAD_DIR_NONE,
    LV_GRAD_DIR_VER,
    LV_GRAD_DIR_HOR,
    _LV_GRAD_DIR_LAST
};

typedef uint8_t lv_grad_dir_t;

 
enum {
    LV_TEXT_DECOR_NONE          = 0x00,
    LV_TEXT_DECOR_UNDERLINE     = 0x01,
    LV_TEXT_DECOR_STRIKETHROUGH = 0x02,
    _LV_TEXT_DECOR_LAST
};

typedef uint8_t lv_text_decor_t;

typedef uint8_t lv_style_attr_t;









enum {
     
    LV_STYLE_RADIUS = (((0x0 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_CLIP_CORNER = (((0x0 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_SIZE = (((0x0 << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_TRANSFORM_WIDTH = (((0x0 << 4) + 0x0 + 4) | ((0) << 8)),
    LV_STYLE_TRANSFORM_HEIGHT = (((0x0 << 4) + 0x0 + 5) | ((0) << 8)),
    LV_STYLE_TRANSFORM_ANGLE = (((0x0 << 4) + 0x0 + 6) | ((0) << 8)),
    LV_STYLE_TRANSFORM_ZOOM = (((0x0 << 4) + 0x0 + 7) | ((0) << 8)),
    LV_STYLE_OPA_SCALE = (((0x0 << 4) + 0xC + 0) | (((1 << 7)) << 8)),

    LV_STYLE_PAD_TOP = (((0x1 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_PAD_BOTTOM = (((0x1 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_PAD_LEFT = (((0x1 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_PAD_RIGHT = (((0x1 << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_PAD_INNER = (((0x1 << 4) + 0x0 + 4) | ((0) << 8)),
    LV_STYLE_MARGIN_TOP = (((0x1 << 4) + 0x0 + 5) | ((0) << 8)),
    LV_STYLE_MARGIN_BOTTOM = (((0x1 << 4) + 0x0 + 6) | ((0) << 8)),
    LV_STYLE_MARGIN_LEFT = (((0x1 << 4) + 0x0 + 7) | ((0) << 8)),
    LV_STYLE_MARGIN_RIGHT = (((0x1 << 4) + 0x0 + 8) | ((0) << 8)),

    LV_STYLE_BG_BLEND_MODE = (((0x2 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_BG_MAIN_STOP = (((0x2 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_BG_GRAD_STOP = (((0x2 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_BG_GRAD_DIR = (((0x2 << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_BG_COLOR = (((0x2 << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_BG_GRAD_COLOR = (((0x2 << 4) + 0x9 + 1) | ((0) << 8)),
    LV_STYLE_BG_OPA = (((0x2 << 4) + 0xC + 0) | ((0) << 8)),

    LV_STYLE_BORDER_WIDTH = (((0x3 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_BORDER_SIDE = (((0x3 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_BORDER_BLEND_MODE = (((0x3 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_BORDER_POST = (((0x3 << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_BORDER_COLOR = (((0x3 << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_BORDER_OPA = (((0x3 << 4) + 0xC + 0) | ((0) << 8)),

    LV_STYLE_OUTLINE_WIDTH = (((0x4 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_OUTLINE_PAD = (((0x4 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_OUTLINE_BLEND_MODE = (((0x4 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_OUTLINE_COLOR = (((0x4 << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_OUTLINE_OPA = (((0x4 << 4) + 0xC + 0) | ((0) << 8)),

    LV_STYLE_SHADOW_WIDTH = (((0x5 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_SHADOW_OFS_X = (((0x5 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_SHADOW_OFS_Y = (((0x5 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_SHADOW_SPREAD = (((0x5 << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_SHADOW_BLEND_MODE = (((0x5 << 4) + 0x0 + 4) | ((0) << 8)),
    LV_STYLE_SHADOW_COLOR = (((0x5 << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_SHADOW_OPA = (((0x5 << 4) + 0xC + 0) | ((0) << 8)),

    LV_STYLE_PATTERN_BLEND_MODE = (((0x6 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_PATTERN_REPEAT = (((0x6 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_PATTERN_RECOLOR = (((0x6 << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_PATTERN_OPA = (((0x6 << 4) + 0xC + 0) | ((0) << 8)),
    LV_STYLE_PATTERN_RECOLOR_OPA = (((0x6 << 4) + 0xC + 1) | ((0) << 8)),
    LV_STYLE_PATTERN_IMAGE = (((0x6 << 4) + 0xE + 0) | ((0) << 8)),

    LV_STYLE_VALUE_LETTER_SPACE = (((0x7 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_VALUE_LINE_SPACE = (((0x7 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_VALUE_BLEND_MODE = (((0x7 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_VALUE_OFS_X = (((0x7 << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_VALUE_OFS_Y = (((0x7 << 4) + 0x0 + 4) | ((0) << 8)),
    LV_STYLE_VALUE_ALIGN = (((0x7 << 4) + 0x0 + 5) | ((0) << 8)),
    LV_STYLE_VALUE_COLOR = (((0x7 << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_VALUE_OPA = (((0x7 << 4) + 0xC + 0) | ((0) << 8)),
    LV_STYLE_VALUE_FONT = (((0x7 << 4) + 0xE + 0) | ((0) << 8)),
    LV_STYLE_VALUE_STR = (((0x7 << 4) + 0xE + 1) | ((0) << 8)),

    LV_STYLE_TEXT_LETTER_SPACE = (((0x8 << 4) + 0x0 + 0) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_LINE_SPACE = (((0x8 << 4) + 0x0 + 1) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_DECOR = (((0x8 << 4) + 0x0 + 2) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_BLEND_MODE = (((0x8 << 4) + 0x0 + 3) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_COLOR = (((0x8 << 4) + 0x9 + 0) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_SEL_COLOR = (((0x8 << 4) + 0x9 + 1) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_SEL_BG_COLOR = (((0x8 << 4) + 0x9 + 2) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_OPA = (((0x8 << 4) + 0xC + 0) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_FONT = (((0x8 << 4) + 0xE + 0) | (((1 << 7)) << 8)),

    LV_STYLE_LINE_WIDTH = (((0x9 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_LINE_BLEND_MODE = (((0x9 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_LINE_DASH_WIDTH = (((0x9 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_LINE_DASH_GAP = (((0x9 << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_LINE_ROUNDED = (((0x9 << 4) + 0x0 + 4) | ((0) << 8)),
    LV_STYLE_LINE_COLOR = (((0x9 << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_LINE_OPA = (((0x9 << 4) + 0xC + 0) | ((0) << 8)),

    LV_STYLE_IMAGE_BLEND_MODE = (((0xA << 4) + 0x0 + 0) | (((1 << 7)) << 8)),
    LV_STYLE_IMAGE_RECOLOR = (((0xA << 4) + 0x9 + 0) | (((1 << 7)) << 8)),
    LV_STYLE_IMAGE_OPA = (((0xA << 4) + 0xC + 0) | (((1 << 7)) << 8)),
    LV_STYLE_IMAGE_RECOLOR_OPA = (((0xA << 4) + 0xC + 1) | (((1 << 7)) << 8)),

    LV_STYLE_TRANSITION_TIME = (((0xB << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_TRANSITION_DELAY = (((0xB << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_TRANSITION_PROP_1 = (((0xB << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_TRANSITION_PROP_2 = (((0xB << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_TRANSITION_PROP_3 = (((0xB << 4) + 0x0 + 4) | ((0) << 8)),
    LV_STYLE_TRANSITION_PROP_4 = (((0xB << 4) + 0x0 + 5) | ((0) << 8)),
    LV_STYLE_TRANSITION_PROP_5 = (((0xB << 4) + 0x0 + 6) | ((0) << 8)),
    LV_STYLE_TRANSITION_PROP_6 = (((0xB << 4) + 0x0 + 7) | ((0) << 8)),
    LV_STYLE_TRANSITION_PATH = (((0xB << 4) + 0xE + 0) | ((0) << 8)),

    LV_STYLE_SCALE_WIDTH = (((0xC << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_SCALE_BORDER_WIDTH = (((0xC << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_SCALE_END_BORDER_WIDTH = (((0xC << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_SCALE_END_LINE_WIDTH = (((0xC << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_SCALE_GRAD_COLOR = (((0xC << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_SCALE_END_COLOR = (((0xC << 4) + 0x9 + 1) | ((0) << 8)),
};

typedef uint16_t lv_style_property_t;





typedef uint16_t lv_style_state_t;

typedef struct {
    uint8_t * map;



} lv_style_t;

typedef int16_t lv_style_int_t;

typedef struct {
    lv_style_t ** style_list;



    uint32_t style_cnt     : 6;
    uint32_t has_local     : 1;
    uint32_t has_trans     : 1;
    uint32_t skip_trans    : 1;       
    uint32_t ignore_trans  : 1;       
    uint32_t valid_cache   : 1;       
    uint32_t ignore_cache  : 1;       

    uint32_t radius_zero : 1;
    uint32_t opa_scale_cover      : 1;
    uint32_t clip_corner_off       : 1;
    uint32_t transform_all_zero  : 1;
    uint32_t pad_all_zero : 1;
    uint32_t margin_all_zero : 1;
    uint32_t blend_mode_all_normal : 1;
    uint32_t bg_opa_transp : 1;
    uint32_t bg_opa_cover : 1;

    uint32_t border_width_zero : 1;
    uint32_t border_side_full : 1;
    uint32_t border_post_off : 1;

    uint32_t outline_width_zero : 1;
    uint32_t pattern_img_null : 1;
    uint32_t shadow_width_zero : 1;
    uint32_t value_txt_str : 1;
    uint32_t img_recolor_opa_transp : 1;

    uint32_t text_space_zero : 1;
    uint32_t text_decor_none : 1;
    uint32_t text_font_normal : 1;
} lv_style_list_t;



 




 
void lv_style_init(lv_style_t * style);





 
void lv_style_copy(lv_style_t * style_dest, const lv_style_t * style_src);




 
void lv_style_list_init(lv_style_list_t * list);





 
void lv_style_list_copy(lv_style_list_t * list_dest, const lv_style_list_t * list_src);







 
void _lv_style_list_add_style(lv_style_list_t * list, lv_style_t * style);





 
void _lv_style_list_remove_style(lv_style_list_t * list, lv_style_t * style);





 
void _lv_style_list_reset(lv_style_list_t * style_list);

static inline lv_style_t * lv_style_list_get_style(lv_style_list_t * list, uint8_t id)
{
    if(list->has_trans && list->skip_trans) id++;
    if(list->style_cnt == 0 || id >= list->style_cnt) return 0;
    return list->style_list[id];
}




 
void lv_style_reset(lv_style_t * style);





 
uint16_t _lv_style_get_mem_size(const lv_style_t * style);





 
void lv_style_copy(lv_style_t * dest, const lv_style_t * src);







 
_Bool lv_style_remove_prop(lv_style_t * style, lv_style_property_t prop);










 
void _lv_style_set_int(lv_style_t * style, lv_style_property_t prop, lv_style_int_t value);










 
void _lv_style_set_color(lv_style_t * style, lv_style_property_t prop, lv_color_t color);










 
void _lv_style_set_opa(lv_style_t * style, lv_style_property_t prop, lv_opa_t opa);










 
void _lv_style_set_ptr(lv_style_t * style, lv_style_property_t prop, const void * p);













 
int16_t _lv_style_get_int(const lv_style_t * style, lv_style_property_t prop, void * res);













 
int16_t _lv_style_get_color(const lv_style_t * style, lv_style_property_t prop, void * res);













 
int16_t _lv_style_get_opa(const lv_style_t * style, lv_style_property_t prop, void * res);













 
int16_t _lv_style_get_ptr(const lv_style_t * style, lv_style_property_t prop, void * res);





 
lv_style_t * lv_style_list_get_local_style(lv_style_list_t * list);





 
lv_style_t * _lv_style_list_get_transition_style(lv_style_list_t * list);





 
lv_style_t * _lv_style_list_add_trans_style(lv_style_list_t * list);








 
void _lv_style_list_set_local_int(lv_style_list_t * list, lv_style_property_t prop, lv_style_int_t value);








 
void _lv_style_list_set_local_color(lv_style_list_t * list, lv_style_property_t prop, lv_color_t value);








 
void _lv_style_list_set_local_opa(lv_style_list_t * list, lv_style_property_t prop, lv_opa_t value);








 
void _lv_style_list_set_local_ptr(lv_style_list_t * list, lv_style_property_t prop, const void * value);











 
lv_res_t _lv_style_list_get_int(lv_style_list_t * list, lv_style_property_t prop, lv_style_int_t * res);











 
lv_res_t _lv_style_list_get_color(lv_style_list_t * list, lv_style_property_t prop, lv_color_t * res);












 
lv_res_t _lv_style_list_get_opa(lv_style_list_t * list, lv_style_property_t prop, lv_opa_t * res);











 
lv_res_t _lv_style_list_get_ptr(lv_style_list_t * list, lv_style_property_t prop, const void ** res);





 
_Bool lv_debug_check_style(const lv_style_t * style);





 
_Bool lv_debug_check_style_list(const lv_style_list_t * list);



 



 









 














#line 625 "..\\GUI\\lvgl_src\\lv_draw\\../lv_core/lv_style.h"










#line 24 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_decoder.h"



 



 


 
enum {
    LV_IMG_SRC_VARIABLE,  
    LV_IMG_SRC_FILE,  
    LV_IMG_SRC_SYMBOL,  
    LV_IMG_SRC_UNKNOWN,  
};

typedef uint8_t lv_img_src_t;

 

struct _lv_img_decoder;
struct _lv_img_decoder_dsc;







 
typedef lv_res_t (*lv_img_decoder_info_f_t)(struct _lv_img_decoder * decoder, const void * src,
                                            lv_img_header_t * header);





 
typedef lv_res_t (*lv_img_decoder_open_f_t)(struct _lv_img_decoder * decoder, struct _lv_img_decoder_dsc * dsc);











 
typedef lv_res_t (*lv_img_decoder_read_line_f_t)(struct _lv_img_decoder * decoder, struct _lv_img_decoder_dsc * dsc,
                                                 lv_coord_t x, lv_coord_t y, lv_coord_t len, uint8_t * buf);





 
typedef void (*lv_img_decoder_close_f_t)(struct _lv_img_decoder * decoder, struct _lv_img_decoder_dsc * dsc);

typedef struct _lv_img_decoder {
    lv_img_decoder_info_f_t info_cb;
    lv_img_decoder_open_f_t open_cb;
    lv_img_decoder_read_line_f_t read_line_cb;
    lv_img_decoder_close_f_t close_cb;




} lv_img_decoder_t;

 
typedef struct _lv_img_decoder_dsc {
     
    lv_img_decoder_t * decoder;

     
    const void * src;

     
    lv_color_t color;

     
    lv_img_src_t src_type;

     
    lv_img_header_t header;

    
 
    const uint8_t * img_data;

    
 
    uint32_t time_to_open;

    
 
    const char * error_msg;

     
    void * user_data;
} lv_img_decoder_dsc_t;



 



 
void _lv_img_decoder_init(void);










 
lv_res_t lv_img_decoder_get_info(const char * src, lv_img_header_t * header);












 
lv_res_t lv_img_decoder_open(lv_img_decoder_dsc_t * dsc, const void * src, lv_color_t color);









 
lv_res_t lv_img_decoder_read_line(lv_img_decoder_dsc_t * dsc, lv_coord_t x, lv_coord_t y, lv_coord_t len,
                                  uint8_t * buf);




 
void lv_img_decoder_close(lv_img_decoder_dsc_t * dsc);




 
lv_img_decoder_t * lv_img_decoder_create(void);




 
void lv_img_decoder_delete(lv_img_decoder_t * decoder);





 
void lv_img_decoder_set_info_cb(lv_img_decoder_t * decoder, lv_img_decoder_info_f_t info_cb);





 
void lv_img_decoder_set_open_cb(lv_img_decoder_t * decoder, lv_img_decoder_open_f_t open_cb);





 
void lv_img_decoder_set_read_line_cb(lv_img_decoder_t * decoder, lv_img_decoder_read_line_f_t read_line_cb);





 
void lv_img_decoder_set_close_cb(lv_img_decoder_t * decoder, lv_img_decoder_close_f_t close_cb);







 
lv_res_t lv_img_decoder_built_in_info(lv_img_decoder_t * decoder, const void * src, lv_img_header_t * header);






 
lv_res_t lv_img_decoder_built_in_open(lv_img_decoder_t * decoder, lv_img_decoder_dsc_t * dsc);











 
lv_res_t lv_img_decoder_built_in_read_line(lv_img_decoder_t * decoder, lv_img_decoder_dsc_t * dsc, lv_coord_t x,
                                           lv_coord_t y, lv_coord_t len, uint8_t * buf);





 
void lv_img_decoder_built_in_close(lv_img_decoder_t * decoder, lv_img_decoder_dsc_t * dsc);



 





#line 17 "..\\GUI\\lvgl_src\\lv_draw\\lv_draw_img.h"
#line 18 "..\\GUI\\lvgl_src\\lv_draw\\lv_draw_img.h"



 



 



 

typedef struct {
    lv_opa_t opa;

    uint16_t angle;
    lv_point_t pivot;
    uint16_t zoom;

    lv_opa_t recolor_opa;
    lv_color_t recolor;

    lv_blend_mode_t blend_mode;

    uint8_t antialias       : 1;
} lv_draw_img_dsc_t;



 

void lv_draw_img_dsc_init(lv_draw_img_dsc_t * dsc);






 
void lv_draw_img(const lv_area_t * coords, const lv_area_t * mask, const void * src, const lv_draw_img_dsc_t * dsc);








 
lv_img_src_t lv_img_src_get_type(const void * src);





 
uint8_t lv_img_cf_get_px_size(lv_img_cf_t cf);





 
_Bool lv_img_cf_is_chroma_keyed(lv_img_cf_t cf);





 
_Bool lv_img_cf_has_alpha(lv_img_cf_t cf);






#line 13 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_buf.c"
#line 14 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_buf.c"
#line 15 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_buf.c"
#line 16 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_buf.c"



 



 



 



 



 



 











 
lv_color_t lv_img_buf_get_px_color(lv_img_dsc_t * dsc, lv_coord_t x, lv_coord_t y, lv_color_t color)
{
    lv_color_t p_color = ((lv_color_t){{(uint16_t)((0x00 >> 3) & 0x1FU), (uint16_t)((0x00 >> 2) & 0x3FU), (uint16_t)((0x00 >> 3) & 0x1FU)}});
    uint8_t * buf_u8 = (uint8_t *)dsc->data;

    if(dsc->header.cf == LV_IMG_CF_TRUE_COLOR || dsc->header.cf == LV_IMG_CF_TRUE_COLOR_CHROMA_KEYED ||
       dsc->header.cf == LV_IMG_CF_TRUE_COLOR_ALPHA) {
        uint8_t px_size = lv_img_cf_get_px_size(dsc->header.cf) >> 3;
        uint32_t px     = dsc->header.w * y * px_size + x * px_size;
        _lv_memcpy_small(&p_color, &buf_u8[px], sizeof(lv_color_t));



    }
    else if(dsc->header.cf == LV_IMG_CF_INDEXED_1BIT) {
        buf_u8 += 4 * 2;
        uint8_t bit = x & 0x7;
        x           = x >> 3;

        

 
        uint32_t px  = ((dsc->header.w + 7) >> 3) * y + x;
        p_color.full = (buf_u8[px] & (1 << (7 - bit))) >> (7 - bit);
    }
    else if(dsc->header.cf == LV_IMG_CF_INDEXED_2BIT) {
        buf_u8 += 4 * 4;
        uint8_t bit = (x & 0x3) * 2;
        x           = x >> 2;

        

 
        uint32_t px  = ((dsc->header.w + 3) >> 2) * y + x;
        p_color.full = (buf_u8[px] & (3 << (6 - bit))) >> (6 - bit);
    }
    else if(dsc->header.cf == LV_IMG_CF_INDEXED_4BIT) {
        buf_u8 += 4 * 16;
        uint8_t bit = (x & 0x1) * 4;
        x           = x >> 1;

        

 
        uint32_t px  = ((dsc->header.w + 1) >> 1) * y + x;
        p_color.full = (buf_u8[px] & (0xF << (4 - bit))) >> (4 - bit);
    }
    else if(dsc->header.cf == LV_IMG_CF_INDEXED_8BIT) {
        buf_u8 += 4 * 256;
        uint32_t px  = dsc->header.w * y + x;
        p_color.full = buf_u8[px];
    }
    else if(dsc->header.cf == LV_IMG_CF_ALPHA_1BIT || dsc->header.cf == LV_IMG_CF_ALPHA_2BIT ||
            dsc->header.cf == LV_IMG_CF_ALPHA_4BIT || dsc->header.cf == LV_IMG_CF_ALPHA_8BIT) {
        p_color = color;
    }
    return p_color;
}








 
lv_opa_t lv_img_buf_get_px_alpha(lv_img_dsc_t * dsc, lv_coord_t x, lv_coord_t y)
{
    uint8_t * buf_u8 = (uint8_t *)dsc->data;

    if(dsc->header.cf == LV_IMG_CF_TRUE_COLOR_ALPHA) {
        uint32_t px = dsc->header.w * y * 3 + x * 3;
        return buf_u8[px + 3 - 1];
    }
    else if(dsc->header.cf == LV_IMG_CF_ALPHA_1BIT) {
        uint8_t bit = x & 0x7;
        x           = x >> 3;

        

 
        uint32_t px    = ((dsc->header.w + 7) >> 3) * y + x;
        uint8_t px_opa = (buf_u8[px] & (1 << (7 - bit))) >> (7 - bit);
        return px_opa ? LV_OPA_TRANSP : LV_OPA_COVER;
    }
    else if(dsc->header.cf == LV_IMG_CF_ALPHA_2BIT) {
        const uint8_t opa_table[4] = {0, 85, 170, 255};  

        uint8_t bit = (x & 0x3) * 2;
        x           = x >> 2;

        

 
        uint32_t px    = ((dsc->header.w + 3) >> 2) * y + x;
        uint8_t px_opa = (buf_u8[px] & (3 << (6 - bit))) >> (6 - bit);
        return opa_table[px_opa];
    }
    else if(dsc->header.cf == LV_IMG_CF_ALPHA_4BIT) {
        const uint8_t opa_table[16] = {0,  17, 34,  51,  
                                       68, 85, 102, 119, 136, 153, 170, 187, 204, 221, 238, 255
                                      };

        uint8_t bit = (x & 0x1) * 4;
        x           = x >> 1;

        

 
        uint32_t px    = ((dsc->header.w + 1) >> 1) * y + x;
        uint8_t px_opa = (buf_u8[px] & (0xF << (4 - bit))) >> (4 - bit);
        return opa_table[px_opa];
    }
    else if(dsc->header.cf == LV_IMG_CF_ALPHA_8BIT) {
        uint32_t px = dsc->header.w * y + x;
        return buf_u8[px];
    }

    return LV_OPA_COVER;
}








 
void lv_img_buf_set_px_alpha(lv_img_dsc_t * dsc, lv_coord_t x, lv_coord_t y, lv_opa_t opa)
{
    uint8_t * buf_u8 = (uint8_t *)dsc->data;

    if(dsc->header.cf == LV_IMG_CF_TRUE_COLOR_ALPHA) {
        uint8_t px_size          = lv_img_cf_get_px_size(dsc->header.cf) >> 3;
        uint32_t px              = dsc->header.w * y * px_size + x * px_size;
        buf_u8[px + px_size - 1] = opa;
    }
    else if(dsc->header.cf == LV_IMG_CF_ALPHA_1BIT) {
        opa         = opa >> 7;  
        uint8_t bit = x & 0x7;
        x           = x >> 3;

        

 
        uint32_t px = ((dsc->header.w + 7) >> 3) * y + x;
        buf_u8[px]  = buf_u8[px] & ~(1 << (7 - bit));
        buf_u8[px]  = buf_u8[px] | ((opa & 0x1) << (7 - bit));
    }
    else if(dsc->header.cf == LV_IMG_CF_ALPHA_2BIT) {
        opa         = opa >> 6;  
        uint8_t bit = (x & 0x3) * 2;
        x           = x >> 2;

        

 
        uint32_t px = ((dsc->header.w + 3) >> 2) * y + x;
        buf_u8[px]  = buf_u8[px] & ~(3 << (6 - bit));
        buf_u8[px]  = buf_u8[px] | ((opa & 0x3) << (6 - bit));
    }
    else if(dsc->header.cf == LV_IMG_CF_ALPHA_4BIT) {
        opa         = opa >> 4;  
        uint8_t bit = (x & 0x1) * 4;
        x           = x >> 1;

        

 
        uint32_t px = ((dsc->header.w + 1) >> 1) * y + x;
        buf_u8[px]  = buf_u8[px] & ~(0xF << (4 - bit));
        buf_u8[px]  = buf_u8[px] | ((opa & 0xF) << (4 - bit));
    }
    else if(dsc->header.cf == LV_IMG_CF_ALPHA_8BIT) {
        uint32_t px = dsc->header.w * y + x;
        buf_u8[px]  = opa;
    }
}








 
void lv_img_buf_set_px_color(lv_img_dsc_t * dsc, lv_coord_t x, lv_coord_t y, lv_color_t c)
{
    uint8_t * buf_u8 = (uint8_t *)dsc->data;

    if(dsc->header.cf == LV_IMG_CF_TRUE_COLOR || dsc->header.cf == LV_IMG_CF_TRUE_COLOR_CHROMA_KEYED) {
        uint8_t px_size = lv_img_cf_get_px_size(dsc->header.cf) >> 3;
        uint32_t px     = dsc->header.w * y * px_size + x * px_size;
        _lv_memcpy_small(&buf_u8[px], &c, px_size);
    }
    else if(dsc->header.cf == LV_IMG_CF_TRUE_COLOR_ALPHA) {
        uint8_t px_size = lv_img_cf_get_px_size(dsc->header.cf) >> 3;
        uint32_t px     = dsc->header.w * y * px_size + x * px_size;
        _lv_memcpy_small(&buf_u8[px], &c, px_size - 1);  
    }
    else if(dsc->header.cf == LV_IMG_CF_INDEXED_1BIT) {
        buf_u8 += sizeof(lv_color32_t) * 2;  

        uint8_t bit = x & 0x7;
        x           = x >> 3;

        

 
        uint32_t px = ((dsc->header.w + 7) >> 3) * y + x;
        buf_u8[px]  = buf_u8[px] & ~(1 << (7 - bit));
        buf_u8[px]  = buf_u8[px] | ((c.full & 0x1) << (7 - bit));
    }
    else if(dsc->header.cf == LV_IMG_CF_INDEXED_2BIT) {
        buf_u8 += sizeof(lv_color32_t) * 4;  
        uint8_t bit = (x & 0x3) * 2;
        x           = x >> 2;

        

 
        uint32_t px = ((dsc->header.w + 3) >> 2) * y + x;

        buf_u8[px] = buf_u8[px] & ~(3 << (6 - bit));
        buf_u8[px] = buf_u8[px] | ((c.full & 0x3) << (6 - bit));
    }
    else if(dsc->header.cf == LV_IMG_CF_INDEXED_4BIT) {
        buf_u8 += sizeof(lv_color32_t) * 16;  
        uint8_t bit = (x & 0x1) * 4;
        x           = x >> 1;

        

 
        uint32_t px = ((dsc->header.w + 1) >> 1) * y + x;
        buf_u8[px]  = buf_u8[px] & ~(0xF << (4 - bit));
        buf_u8[px]  = buf_u8[px] | ((c.full & 0xF) << (4 - bit));
    }
    else if(dsc->header.cf == LV_IMG_CF_INDEXED_8BIT) {
        buf_u8 += sizeof(lv_color32_t) * 256;  
        uint32_t px = dsc->header.w * y + x;
        buf_u8[px]  = c.full;
    }
}










 
void lv_img_buf_set_palette(lv_img_dsc_t * dsc, uint8_t id, lv_color_t c)
{
    if((dsc->header.cf == LV_IMG_CF_ALPHA_1BIT && id > 1) || (dsc->header.cf == LV_IMG_CF_ALPHA_2BIT && id > 3) ||
       (dsc->header.cf == LV_IMG_CF_ALPHA_4BIT && id > 15) || (dsc->header.cf == LV_IMG_CF_ALPHA_8BIT)) {
        ;
        return;
    }

    lv_color32_t c32;
    c32.full      = lv_color_to32(c);
    uint8_t * buf = (uint8_t *)dsc->data;
    _lv_memcpy_small(&buf[id * sizeof(c32)], &c32, sizeof(c32));
}







 
lv_img_dsc_t * lv_img_buf_alloc(lv_coord_t w, lv_coord_t h, lv_img_cf_t cf)
{
     
    lv_img_dsc_t * dsc = lv_mem_alloc(sizeof(lv_img_dsc_t));
    if(dsc == 0)
        return 0;

    _lv_memset_00(dsc, sizeof(lv_img_dsc_t));

     
    dsc->data_size = lv_img_buf_get_img_size(w, h, cf);
    if(dsc->data_size == 0) {
        lv_mem_free(dsc);
        return 0;
    }

     
    dsc->data = lv_mem_alloc(dsc->data_size);
    if(dsc->data == 0) {
        lv_mem_free(dsc);
        return 0;
    }
    _lv_memset_00((uint8_t *)dsc->data, dsc->data_size);

     
    dsc->header.always_zero = 0;
    dsc->header.w = w;
    dsc->header.h = h;
    dsc->header.cf = cf;
    return dsc;
}




 
void lv_img_buf_free(lv_img_dsc_t * dsc)
{
    if(dsc != 0) {
        if(dsc->data != 0)
            lv_mem_free(dsc->data);

        lv_mem_free(dsc);
    }
}







 
uint32_t lv_img_buf_get_img_size(lv_coord_t w, lv_coord_t h, lv_img_cf_t cf)
{
    switch(cf) {
        case LV_IMG_CF_TRUE_COLOR:
            return ((16 / 8) * w * h);
        case LV_IMG_CF_TRUE_COLOR_ALPHA:
            return (3 * w * h);
        case LV_IMG_CF_TRUE_COLOR_CHROMA_KEYED:
            return ((16 / 8) * w * h);
        case LV_IMG_CF_ALPHA_1BIT:
            return ((((w / 8) + 1) * h));
        case LV_IMG_CF_ALPHA_2BIT:
            return ((((w / 4) + 1) * h));
        case LV_IMG_CF_ALPHA_4BIT:
            return ((((w / 2) + 1) * h));
        case LV_IMG_CF_ALPHA_8BIT:
            return ((w * h));
        case LV_IMG_CF_INDEXED_1BIT:
            return (((((w / 8) + 1) * h)) + 4 * 2);
        case LV_IMG_CF_INDEXED_2BIT:
            return (((((w / 4) + 1) * h)) + 4 * 4);
        case LV_IMG_CF_INDEXED_4BIT:
            return (((((w / 2) + 1) * h)) + 4 * 16);
        case LV_IMG_CF_INDEXED_8BIT:
            return (((w * h)) + 4 * 256);
        default:
            return 0;
    }
}






 
void _lv_img_buf_transform_init(lv_img_transform_dsc_t * dsc)
{
    dsc->tmp.pivot_x_256 = dsc->cfg.pivot_x * 256;
    dsc->tmp.pivot_y_256 = dsc->cfg.pivot_y * 256;

    int32_t angle_low = dsc->cfg.angle / 10;
    int32_t angle_hight = angle_low + 1;
    int32_t angle_rem = dsc->cfg.angle  - (angle_low * 10);

    int32_t s1 = _lv_trigo_sin(-angle_low);
    int32_t s2 = _lv_trigo_sin(-angle_hight);

    int32_t c1 = _lv_trigo_sin(-angle_low + 90);
    int32_t c2 = _lv_trigo_sin(-angle_hight + 90);

    dsc->tmp.sinma = (s1 * (10 - angle_rem) + s2 * angle_rem) / 10;
    dsc->tmp.cosma = (c1 * (10 - angle_rem) + c2 * angle_rem) / 10;

     
    dsc->tmp.sinma = dsc->tmp.sinma >> (15 - 10);
    dsc->tmp.cosma = dsc->tmp.cosma >> (15 - 10);

    dsc->tmp.chroma_keyed = lv_img_cf_is_chroma_keyed(dsc->cfg.cf) ? 1 : 0;
    dsc->tmp.has_alpha = lv_img_cf_has_alpha(dsc->cfg.cf) ? 1 : 0;
    if(dsc->cfg.cf == LV_IMG_CF_TRUE_COLOR || dsc->cfg.cf == LV_IMG_CF_TRUE_COLOR_ALPHA ||
       dsc->cfg.cf == LV_IMG_CF_TRUE_COLOR_CHROMA_KEYED) {
        dsc->tmp.native_color = 1;
    }
    else {
        dsc->tmp.native_color = 0;
    }

    dsc->tmp.img_dsc.data = dsc->cfg.src;
    dsc->tmp.img_dsc.header.always_zero = 0;
    dsc->tmp.img_dsc.header.cf = dsc->cfg.cf;
    dsc->tmp.img_dsc.header.w = dsc->cfg.src_w;
    dsc->tmp.img_dsc.header.h = dsc->cfg.src_h;

    
 
    dsc->tmp.zoom_inv = (((256 * 256) << 5) + dsc->cfg.zoom / 2) / dsc->cfg.zoom;

    dsc->res.opa = LV_OPA_COVER;
    dsc->res.color = dsc->cfg.color;
}










 
void _lv_img_buf_get_transformed_area(lv_area_t * res, lv_coord_t w, lv_coord_t h, int16_t angle, uint16_t zoom,
                                      const lv_point_t * pivot)
{

    if(angle == 0 && zoom == 256) {
        res->x1 = 0;
        res->y1 = 0;
        res->x2 = w - 1;
        res->y2 = h - 1;
        return;
    }


    res->x1 = (((-pivot->x) * zoom) >> 8) - 1;
    res->y1 = (((-pivot->y) * zoom) >> 8) - 1;
    res->x2 = (((w - pivot->x) * zoom) >> 8) + 2;
    res->y2 = (((h - pivot->y) * zoom) >> 8) + 2;

    if(angle == 0) {
        res->x1 += pivot->x;
        res->y1 += pivot->y;
        res->x2 += pivot->x;
        res->y2 += pivot->y;
        return;
    }

    int32_t angle_low = angle / 10;
    int32_t angle_hight = angle_low + 1;
    int32_t angle_rem = angle  - (angle_low * 10);

    int32_t s1 = _lv_trigo_sin(angle_low);
    int32_t s2 = _lv_trigo_sin(angle_hight);

    int32_t c1 = _lv_trigo_sin(angle_low + 90);
    int32_t c2 = _lv_trigo_sin(angle_hight + 90);

    int32_t sinma = (s1 * (10 - angle_rem) + s2 * angle_rem) / 10;
    int32_t cosma = (c1 * (10 - angle_rem) + c2 * angle_rem) / 10;

     
    sinma = sinma >> (15 - 10);
    cosma = cosma >> (15 - 10);

    lv_point_t lt;
    lv_point_t rt;
    lv_point_t lb;
    lv_point_t rb;

    lv_coord_t xt;
    lv_coord_t yt;

    xt = res->x1;
    yt = res->y1;
    lt.x = ((cosma * xt - sinma * yt) >> 10) + pivot->x;
    lt.y = ((sinma * xt + cosma * yt) >> 10) + pivot->y;

    xt = res->x2;
    yt = res->y1;
    rt.x = ((cosma * xt - sinma * yt) >> 10) + pivot->x;
    rt.y = ((sinma * xt + cosma * yt) >> 10) + pivot->y;

    xt = res->x1;
    yt = res->y2;
    lb.x = ((cosma * xt - sinma * yt) >> 10) + pivot->x;
    lb.y = ((sinma * xt + cosma * yt) >> 10) + pivot->y;

    xt = res->x2;
    yt = res->y2;
    rb.x = ((cosma * xt - sinma * yt) >> 10) + pivot->x;
    rb.y = ((sinma * xt + cosma * yt) >> 10) + pivot->y;

    res->x1 = (((((lb . x) < (lt . x) ? (lb . x) : (lt . x))) < (((rb . x) < (rt . x) ? (rb . x) : (rt . x))) ? (((lb . x) < (lt . x) ? (lb . x) : (lt . x))) : (((rb . x) < (rt . x) ? (rb . x) : (rt . x)))));
    res->x2 = (((((lb . x) > (lt . x) ? (lb . x) : (lt . x))) > (((rb . x) > (rt . x) ? (rb . x) : (rt . x))) ? (((lb . x) > (lt . x) ? (lb . x) : (lt . x))) : (((rb . x) > (rt . x) ? (rb . x) : (rt . x)))));
    res->y1 = (((((lb . y) < (lt . y) ? (lb . y) : (lt . y))) < (((rb . y) < (rt . y) ? (rb . y) : (rt . y))) ? (((lb . y) < (lt . y) ? (lb . y) : (lt . y))) : (((rb . y) < (rt . y) ? (rb . y) : (rt . y)))));
    res->y2 = (((((lb . y) > (lt . y) ? (lb . y) : (lt . y))) > (((rb . y) > (rt . y) ? (rb . y) : (rt . y))) ? (((lb . y) > (lt . y) ? (lb . y) : (lt . y))) : (((rb . y) > (rt . y) ? (rb . y) : (rt . y)))));
#line 560 "..\\GUI\\lvgl_src\\lv_draw\\lv_img_buf.c"
}





 
_Bool _lv_img_buf_transform_anti_alias(lv_img_transform_dsc_t * dsc)
{
    const uint8_t * src_u8 = dsc->cfg.src;

     
    int xs_fract = dsc->tmp.xs & 0xff;
    int ys_fract = dsc->tmp.ys & 0xff;
    int32_t xn;       
    lv_opa_t xr;  

    if(xs_fract < 0x70) {
        xn = - 1;
        if(dsc->tmp.xs_int + xn < 0) xn = 0;
        xr = xs_fract + 0x80;
    }
    else if(xs_fract > 0x90) {
        xn =  1;
        if(dsc->tmp.xs_int + xn >= dsc->cfg.src_w) xn = 0;
        xr = (0xFF - xs_fract) + 0x80;
    }
    else {
        xn = 0;
        xr = 0xFF;
    }

    int32_t yn;       
    lv_opa_t yr;  

    if(ys_fract < 0x70) {
        yn = - 1;
        if(dsc->tmp.ys_int + yn < 0) yn = 0;

        yr = ys_fract + 0x80;
    }
    else if(ys_fract > 0x90) {
        yn =  1;
        if(dsc->tmp.ys_int + yn >= dsc->cfg.src_h) yn = 0;

        yr = (0xFF - ys_fract) + 0x80;
    }
    else {
        yn = 0;
        yr = 0xFF;
    }

    lv_color_t c00 = dsc->res.color;
    lv_color_t c01;
    lv_color_t c10;
    lv_color_t c11;

    lv_opa_t a00 = dsc->res.opa;
    lv_opa_t a10 = 0;
    lv_opa_t a01 = 0;
    lv_opa_t a11 = 0;

    if(dsc->tmp.native_color) {
        _lv_memcpy_small(&c01, &src_u8[dsc->tmp.pxi + dsc->tmp.px_size * xn], sizeof(lv_color_t));
        _lv_memcpy_small(&c10, &src_u8[dsc->tmp.pxi + dsc->cfg.src_w * dsc->tmp.px_size * yn], sizeof(lv_color_t));
        _lv_memcpy_small(&c11, &src_u8[dsc->tmp.pxi + dsc->cfg.src_w * dsc->tmp.px_size * yn + dsc->tmp.px_size * xn],
                         sizeof(lv_color_t));
        if(dsc->tmp.has_alpha) {
            a10 = src_u8[dsc->tmp.pxi + dsc->tmp.px_size * xn + dsc->tmp.px_size - 1];
            a01 = src_u8[dsc->tmp.pxi + dsc->cfg.src_w * dsc->tmp.px_size * yn + dsc->tmp.px_size - 1];
            a11 = src_u8[dsc->tmp.pxi + dsc->cfg.src_w * dsc->tmp.px_size * yn + dsc->tmp.px_size * xn + dsc->tmp.px_size - 1];
        }
    }
    else {
        c01 = lv_img_buf_get_px_color(&dsc->tmp.img_dsc, dsc->tmp.xs_int + xn, dsc->tmp.ys_int, dsc->cfg.color);
        c10 = lv_img_buf_get_px_color(&dsc->tmp.img_dsc, dsc->tmp.xs_int, dsc->tmp.ys_int + yn, dsc->cfg.color);
        c11 = lv_img_buf_get_px_color(&dsc->tmp.img_dsc, dsc->tmp.xs_int + xn, dsc->tmp.ys_int + yn, dsc->cfg.color);

        if(dsc->tmp.has_alpha) {
            a10 = lv_img_buf_get_px_alpha(&dsc->tmp.img_dsc, dsc->tmp.xs_int + xn, dsc->tmp.ys_int);
            a01 = lv_img_buf_get_px_alpha(&dsc->tmp.img_dsc, dsc->tmp.xs_int, dsc->tmp.ys_int + yn);
            a11 = lv_img_buf_get_px_alpha(&dsc->tmp.img_dsc, dsc->tmp.xs_int + xn, dsc->tmp.ys_int + yn);
        }
    }

    lv_opa_t xr0 = xr;
    lv_opa_t xr1 = xr;
    if(dsc->tmp.has_alpha) {
        lv_opa_t a0 = (a00 * xr + (a10 * (255 - xr))) >> 8;
        lv_opa_t a1 = (a01 * xr + (a11 * (255 - xr))) >> 8;
        dsc->res.opa = (a0 * yr + (a1 * (255 - yr))) >> 8;

        if(a0 <= 2 && a1 <= 2) return 0;
        if(a0 <= 2) yr = LV_OPA_TRANSP;
        if(a1 <= 2) yr = LV_OPA_COVER;
        if(a00 <= 2) xr0 = LV_OPA_TRANSP;
        if(a10 <= 2) xr0 = LV_OPA_COVER;
        if(a01 <= 2) xr1 = LV_OPA_TRANSP;
        if(a11 <= 2) xr1 = LV_OPA_COVER;
    }
    else {
        xr0 = xr;
        xr1 = xr;
        dsc->res.opa = LV_OPA_COVER;
    }

    lv_color_t c0;
    if(xr0 == LV_OPA_TRANSP) c0 = c01;
    else if(xr0 == LV_OPA_COVER) c0 = c00;
    else c0 = lv_color_mix(c00, c01, xr0);

    lv_color_t c1;
    if(xr1 == LV_OPA_TRANSP) c1 = c11;
    else if(xr1 == LV_OPA_COVER) c1 = c10;
    else c1 = lv_color_mix(c10, c11, xr1);

    if(yr == LV_OPA_TRANSP) dsc->res.color = c1;
    else if(yr == LV_OPA_COVER) dsc->res.color = c0;
    else dsc->res.color = lv_color_mix(c0, c1, yr);

    return 1;
}



 

