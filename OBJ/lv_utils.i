#line 1 "..\\GUI\\lvgl_src\\lv_misc\\lv_utils.c"



 



 
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 10 "..\\GUI\\lvgl_src\\lv_misc\\lv_utils.c"

#line 1 "..\\GUI\\lvgl_src\\lv_misc\\lv_utils.h"



 










 
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






 
#line 17 "..\\GUI\\lvgl_src\\lv_misc\\lv_utils.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 18 "..\\GUI\\lvgl_src\\lv_misc\\lv_utils.h"



 



 



 





 
char * _lv_utils_num_to_str(int32_t num, char * buf);

















 
void * _lv_utils_bsearch(const void * key, const void * base, uint32_t n, uint32_t size,
                         int32_t (*cmp)(const void * pRef, const void * pElement));



 





#line 12 "..\\GUI\\lvgl_src\\lv_misc\\lv_utils.c"
#line 1 "..\\GUI\\lvgl_src\\lv_misc\\lv_math.h"



 










 
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

#line 17 "..\\GUI\\lvgl_src\\lv_misc\\lv_math.h"
#line 18 "..\\GUI\\lvgl_src\\lv_misc\\lv_math.h"



 

























 

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



 





#line 13 "..\\GUI\\lvgl_src\\lv_misc\\lv_utils.c"
#line 1 "..\\GUI\\lvgl_src\\lv_misc\\lv_printf.h"







































#line 41 "..\\GUI\\lvgl_src\\lv_misc\\lv_printf.h"



#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
 
 
 





 










#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"








 

 
 
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
    typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 







#line 138 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"



#line 147 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"

 

#line 45 "..\\GUI\\lvgl_src\\lv_misc\\lv_printf.h"
#line 46 "..\\GUI\\lvgl_src\\lv_misc\\lv_printf.h"










 
int  lv_snprintf(char * buffer, size_t count, const char * format, ...);
int lv_vsnprintf(char * buffer, size_t count, const char * format, va_list va);











#line 14 "..\\GUI\\lvgl_src\\lv_misc\\lv_utils.c"
#line 1 "..\\GUI\\lvgl_src\\lv_misc\\lv_txt.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_misc\\lv_txt.h"

#line 19 "..\\GUI\\lvgl_src\\lv_misc\\lv_txt.h"
#line 1 "..\\GUI\\lvgl_src\\lv_misc\\lv_area.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_misc\\lv_area.h"
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



 

#line 18 "..\\GUI\\lvgl_src\\lv_misc\\lv_area.h"
#line 19 "..\\GUI\\lvgl_src\\lv_misc\\lv_area.h"
#line 20 "..\\GUI\\lvgl_src\\lv_misc\\lv_area.h"
#line 1 "..\\GUI\\lvgl_src\\lv_misc\\lv_mem.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_misc\\lv_mem.h"

#line 19 "..\\GUI\\lvgl_src\\lv_misc\\lv_mem.h"
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








 





#line 21 "..\\GUI\\lvgl_src\\lv_misc\\lv_area.h"



 
 



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



 





#line 20 "..\\GUI\\lvgl_src\\lv_misc\\lv_txt.h"
#line 21 "..\\GUI\\lvgl_src\\lv_misc\\lv_txt.h"
#line 1 "..\\GUI\\lvgl_src\\lv_misc\\../lv_font/lv_font.h"



 










 
#line 17 "..\\GUI\\lvgl_src\\lv_misc\\../lv_font/lv_font.h"
#line 18 "..\\GUI\\lvgl_src\\lv_misc\\../lv_font/lv_font.h"
#line 19 "..\\GUI\\lvgl_src\\lv_misc\\../lv_font/lv_font.h"
#line 20 "..\\GUI\\lvgl_src\\lv_misc\\../lv_font/lv_font.h"

#line 1 "..\\GUI\\lvgl_src\\lv_misc\\../lv_font/lv_symbol_def.h"


 





#line 10 "..\\GUI\\lvgl_src\\lv_misc\\../lv_font/lv_symbol_def.h"



 








 

#line 81 "..\\GUI\\lvgl_src\\lv_misc\\../lv_font/lv_symbol_def.h"

 




 





 
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












#line 22 "..\\GUI\\lvgl_src\\lv_misc\\../lv_font/lv_font.h"
#line 23 "..\\GUI\\lvgl_src\\lv_misc\\../lv_font/lv_font.h"



 
 







 



 

 
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






























































































 








#line 22 "..\\GUI\\lvgl_src\\lv_misc\\lv_txt.h"



 









 


 
enum {
    LV_TXT_FLAG_NONE    = 0x00,
    LV_TXT_FLAG_RECOLOR = 0x01,  
    LV_TXT_FLAG_EXPAND  = 0x02,  
    LV_TXT_FLAG_CENTER  = 0x04,  
    LV_TXT_FLAG_RIGHT   = 0x08,  
    LV_TXT_FLAG_FIT     = 0x10,  
};
typedef uint8_t lv_txt_flag_t;


 
enum {
    LV_TXT_CMD_STATE_WAIT,  
    LV_TXT_CMD_STATE_PAR,   
    LV_TXT_CMD_STATE_IN,    
};
typedef uint8_t lv_txt_cmd_state_t;



 











 
void _lv_txt_get_size(lv_point_t * size_res, const char * text, const lv_font_t * font, lv_coord_t letter_space,
                      lv_coord_t line_space, lv_coord_t max_width, lv_txt_flag_t flag);











 
uint32_t _lv_txt_get_next_line(const char * txt, const lv_font_t * font, lv_coord_t letter_space, lv_coord_t max_width,
                               lv_txt_flag_t flag);










 
lv_coord_t _lv_txt_get_width(const char * txt, uint32_t length, const lv_font_t * font, lv_coord_t letter_space,
                             lv_txt_flag_t flag);








 
_Bool _lv_txt_is_cmd(lv_txt_cmd_state_t * state, uint32_t c);






 
void _lv_txt_ins(char * txt_buf, uint32_t pos, const char * ins_txt);







 
void _lv_txt_cut(char * txt, uint32_t pos, uint32_t len);



 





 
extern uint8_t (*_lv_txt_encoded_size)(const char *);





 
extern uint32_t (*_lv_txt_unicode_to_encoded)(uint32_t);





 
extern uint32_t (*_lv_txt_encoded_conv_wc)(uint32_t c);








 
extern uint32_t (*_lv_txt_encoded_next)(const char *, uint32_t *);







 
extern uint32_t (*_lv_txt_encoded_prev)(const char *, uint32_t *);







 
extern uint32_t (*_lv_txt_encoded_get_byte_id)(const char *, uint32_t);







 
extern uint32_t (*_lv_txt_encoded_get_char_id)(const char *, uint32_t);






 
extern uint32_t (*_lv_txt_get_encoded_length)(const char *);



 





#line 15 "..\\GUI\\lvgl_src\\lv_misc\\lv_utils.c"



 



 



 



 



 



 






 
char * _lv_utils_num_to_str(int32_t num, char * buf)
{
    if(num == 0) {
        buf[0] = '0';
        buf[1] = '\0';
        return buf;
    }
    int8_t digitCount = 0;
    int8_t i          = 0;
    if(num < 0) {
        buf[digitCount++] = '-';
        num               = ((num) > 0 ? (num) : (-(num)));
        ++i;
    }
    while(num) {
        char digit        = num % 10;
        buf[digitCount++] = digit + 48;
        num /= 10;
    }
    buf[digitCount] = '\0';
    digitCount--;
    while(digitCount > i) {
        char temp       = buf[i];
        buf[i]          = buf[digitCount];
        buf[digitCount] = temp;
        digitCount--;
        i++;
    }
    return buf;
}

















 
void * _lv_utils_bsearch(const void * key, const void * base, uint32_t n, uint32_t size,
                         int32_t (*cmp)(const void * pRef, const void * pElement))
{
    const char * middle;
    int32_t c;

    for(middle = base; n != 0;) {
        middle += (n / 2) * size;
        if((c = (*cmp)(key, middle)) > 0) {
            n    = (n / 2) - ((n & 1) == 0);
            base = (middle += size);
        }
        else if(c < 0) {
            n /= 2;
            middle = base;
        }
        else {
            return (char *)middle;
        }
    }
    return 0;
}



 
