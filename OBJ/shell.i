#line 1 "..\\LETTER_SHELL\\shell.c"








 

#line 1 "..\\LETTER_SHELL\\shell.h"









 




#line 1 "..\\LETTER_SHELL\\shell_cfg.h"









 









 






 




 




 




 




 





 





 





 





 




 





 




 





 






 




 





 







 


#line 16 "..\\LETTER_SHELL\\shell.h"









 









 







 










#line 63 "..\\LETTER_SHELL\\shell.h"



    






 
#line 85 "..\\LETTER_SHELL\\shell.h"

    






 
#line 105 "..\\LETTER_SHELL\\shell.h"

    






 
#line 126 "..\\LETTER_SHELL\\shell.h"

    






 
#line 215 "..\\LETTER_SHELL\\shell.h"



 
typedef enum
{
    SHELL_TYPE_CMD_MAIN = 0,                                     
    SHELL_TYPE_CMD_FUNC,                                         
    SHELL_TYPE_VAR_INT,                                          
    SHELL_TYPE_VAR_SHORT,                                        
    SHELL_TYPE_VAR_CHAR,                                         
    SHELL_TYPE_VAR_POINT,                                        
    SHELL_TYPE_VAL,                                              
    SHELL_TYPE_USER,                                             
    SHELL_TYPE_KEY,                                              
} ShellCommandType;




 
typedef struct
{
    struct
    {
        const struct shell_command *user;                        
        int activeTime;                                          
    } info;
    struct
    {
        unsigned short length;                                   
        unsigned short cursor;                                   
        char *buffer;                                            
        unsigned short bufferSize;                               
        char *param[8];                 
        unsigned short paramCount;                               
        int keyValue;                                            
    } parser;
    struct
    {
        char *item[5];                    
        unsigned short number;                                   
        unsigned short record;                                   
        signed short offset;                                     
    } history;
    struct
    {
        void *base;                                              
        unsigned short count;                                    
    } commandList;
    struct
    {
        unsigned char isChecked : 1;                             
        unsigned char isActive : 1;                              
        unsigned char tabFlag : 1;                               
    } status;
    signed char (*read)(char *);                                 
    void (*write)(const char);                                   
} Shell;




 
typedef struct shell_command
{
    union
    {
        struct
        {
            unsigned char permission : 8;                        
            ShellCommandType type : 4;                           
            unsigned char enableUnchecked : 1;                   
            unsigned char disableReturn : 1;                     
        } attrs;
        int value;
    } attr;                                                      
    union
    {
        struct
        {
            const char *name;                                    
            int (*function)();                                   
            const char *desc;                                    
        } cmd;                                                   
        struct
        {
            const char *name;                                    
            void *value;                                         
            const char *desc;                                    
        } var;                                                   
        struct
        {
            const char *name;                                    
            const char *password;                                
            const char *desc;                                    
        } user;                                                  
        struct
        {
            int value;                                           
            void (*function)(Shell *);                           
            const char *desc;                                    
        } key;                                                   
    } data; 
} ShellCommand;


void shellInit(Shell *shell, char *buffer, unsigned short size);
unsigned short shellWriteString(Shell *shell, const char *string);
void shellPrint(Shell *shell, char *fmt, ...);
Shell* shellGetCurrent(void);
void shellHandler(Shell *shell, char data);
void shellTask(void *param);



#line 12 "..\\LETTER_SHELL\\shell.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"




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
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
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
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"



 

#line 13 "..\\LETTER_SHELL\\shell.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int __ARM_vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int __ARM_vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int __ARM_vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));
   








 

extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 1021 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"



 

#line 14 "..\\LETTER_SHELL\\shell.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdarg.h"
 
 
 





 










#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdarg.h"








 

 
 
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdarg.h"
    typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 







#line 138 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdarg.h"



#line 147 "C:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdarg.h"

 

#line 15 "..\\LETTER_SHELL\\shell.c"
#line 1 "..\\LETTER_SHELL\\shell_ext.h"









 




#line 16 "..\\LETTER_SHELL\\shell_ext.h"




 
typedef enum
{
    NUM_TYPE_INT,                                            
    NUM_TYPE_BIN,                                            
    NUM_TYPE_OCT,                                            
    NUM_TYPE_HEX,                                            
    NUM_TYPE_FLOAT                                           
} NUM_Type;

unsigned int shellExtParsePara(Shell *shell, char *string);
int shellExtRun(Shell *shell, int (*function)(), int argc, char *argv[]);

#line 16 "..\\LETTER_SHELL\\shell.c"





 
const char shellCmdDefaultUser[] = "LHC";
const char shellPasswordDefaultUser[] = "";
const char shellDesDefaultUser[] = "defalut user";
const ShellCommand shellUserDefault __attribute__((section("shellCommand"))) =
{
    .attr.value = (0 & 0x000000FF)|((SHELL_TYPE_USER & 0x0000000F) << 8),
    .data.user.name = shellCmdDefaultUser,
    .data.user.password = shellPasswordDefaultUser,
    .data.user.desc = shellDesDefaultUser
};










 
enum
{
    SHELL_TEXT_INFO,                                     
    SHELL_TEXT_CMD_TOO_LONG,                             
    SHELL_TEXT_CMD_LIST,                                 
    SHELL_TEXT_VAR_LIST,                                 
    SHELL_TEXT_USER_LIST,                                
    SHELL_TEXT_KEY_LIST,                                 
    SHELL_TEXT_CMD_NOT_FOUND,                            
    SHELL_TEXT_POINT_CANNOT_MODIFY,                      
    SHELL_TEXT_VAL_CANNOT_MODIFY,                        
    SHELL_TEXT_NOT_VAR,                                  
    SHELL_TEXT_VAR_NOT_FOUND,                            
    SHELL_TEXT_HELP_HEADER,                              
    SHELL_TEXT_PASSWORD_HINT,                            
    SHELL_TEXT_PASSWORD_ERROR,                           
    SHELL_TEXT_CLEAR_CONSOLE,                            
    SHELL_TEXT_TYPE_CMD,                                 
    SHELL_TEXT_TYPE_VAR,                                 
    SHELL_TEXT_TYPE_USER,                                
    SHELL_TEXT_TYPE_KEY,                                 
    SHELL_TEXT_TYPE_NONE,                                
};


static const char *shellText[] =
{
    [SHELL_TEXT_INFO] =
        "\r\n"
        " _         _   _                  _          _ _ \r\n"
        "| |    ___| |_| |_ ___ _ __   ___| |__   ___| | |\r\n"
        "| |   / _ \\ __| __/ _ \\ '__| / __| '_ \\ / _ \\ | |\r\n"
        "| |__|  __/ |_| ||  __/ |    \\__ \\ | | |  __/ | |\r\n"
        "|_____\\___|\\__|\\__\\___|_|    |___/_| |_|\\___|_|_|\r\n"
        "\r\n"
        "Build:       " "Jun 12 2021" " " "00:10:24" "\r\n"
        "Version:     " "3.0.0-beta2" "\r\n"
        "Copyright:   (c) 2020 Letter\r\n",
    [SHELL_TEXT_CMD_TOO_LONG] = 
        "\r\nWarning: Command is too long\r\n",
    [SHELL_TEXT_CMD_LIST] = 
        "\r\nCommand List:\r\n",
    [SHELL_TEXT_VAR_LIST] = 
        "\r\nVar List:\r\n",
    [SHELL_TEXT_USER_LIST] = 
        "\r\nUser List:\r\n",
    [SHELL_TEXT_KEY_LIST] =
        "\r\nKey List:\r\n",
    [SHELL_TEXT_CMD_NOT_FOUND] = 
        "Command not Found\r\n",
    [SHELL_TEXT_POINT_CANNOT_MODIFY] = 
        "can't set pointer\r\n",
    [SHELL_TEXT_VAL_CANNOT_MODIFY] = 
        "can't set val\r\n",
    [SHELL_TEXT_NOT_VAR] =
        " is not a var\r\n",
    [SHELL_TEXT_VAR_NOT_FOUND] = 
        "Var not Fount\r\n",
    [SHELL_TEXT_HELP_HEADER] =
        "command help of ",
    [SHELL_TEXT_PASSWORD_HINT] = 
        "\r\nPlease input password:",
    [SHELL_TEXT_PASSWORD_ERROR] = 
        "\r\npasswrod error\r\n",
    [SHELL_TEXT_CLEAR_CONSOLE] = 
        "\033[2J\033[1H",
    [SHELL_TEXT_TYPE_CMD] = 
        "CMD ",
    [SHELL_TEXT_TYPE_VAR] = 
        "VAR ",
    [SHELL_TEXT_TYPE_USER] = 
        "USER",
    [SHELL_TEXT_TYPE_KEY] = 
        "KEY ",
    [SHELL_TEXT_TYPE_NONE] = 
        "NONE",
};




 
static Shell *shellList[5] = {0};


static void shellAdd(Shell *shell);
static void shellWriteCommandLine(Shell *shell);
static void shellWirteReturnValue(Shell *shell, int value);
static void shellShowVar(Shell *shell, ShellCommand *command);
static void shellSetUser(Shell *shell, const ShellCommand *user);
ShellCommand* shellSeekCommand(Shell *shell,
                               const char *cmd,
                               ShellCommand *base,
                               unsigned short compareLength);





 
void shellInit(Shell *shell, char *buffer, unsigned short size)
{
    shell->parser.length = 0;
    shell->parser.cursor = 0;
    shell->history.offset = 0;
    shell->history.number = 0;
    shell->history.record = 0;
    shell->info.user = 0;
    shell->status.isChecked = 1;

    shell->parser.buffer = buffer;
    shell->parser.bufferSize = size / (5 + 1);
    for (short i = 0; i < 5; i++)
    {
        shell->history.item[i] = buffer + shell->parser.bufferSize * (i + 1);
    }



        extern const unsigned int shellCommand$$Base;
        extern const unsigned int shellCommand$$Limit;

        shell->commandList.base = (ShellCommand *)(&shellCommand$$Base);
        shell->commandList.count = ((unsigned int)(&shellCommand$$Limit)
                                - (unsigned int)(&shellCommand$$Base))
                                / sizeof(ShellCommand);

#line 190 "..\\LETTER_SHELL\\shell.c"

    shellAdd(shell);

    shellSetUser(shell, shellSeekCommand(shell,
                                         "LHC",
                                         shell->commandList.base,
                                         0));
    shellWriteCommandLine(shell);
}






 
static void shellAdd(Shell *shell)
{
    for (short i = 0; i < 5; i++)
    {
        if (shellList[i] == 0)
        {
            shellList[i] = shell;
            return;
        }
    }
}






 
Shell* shellGetCurrent(void)
{
    for (short i = 0; i < 5; i++)
    {
        if (shellList[i] && shellList[i]->status.isActive)
        {
            return shellList[i];
        }
    }
    return 0;
}







 
static void shellWriteByte(Shell *shell, const char data)
{
    shell->write(data);
}









 
unsigned short shellWriteString(Shell *shell, const char *string)
{
    unsigned short count = 0;
    if (!(shell->write)) { return 0; };
    while(*string)
    {
        shell->write(*string ++);
        count ++;
    }
    return count;
}









 
static unsigned short shellWriteCommandDesc(Shell *shell, const char *string)
{
    unsigned short count = 0;
    if (!(shell->write)) { return 0; };
    while(*string
        && *string != '\r'
        && *string != '\n'
        && count < 36)
    {
        shell->write(*string ++);
        count ++;
        if (count >= 36 && *(string + 1))
        {
            shell->write('.');
            shell->write('.');
            shell->write('.');
        }
    }
    return count;
}







 
static void shellWriteCommandLine(Shell *shell)
{
    if (shell->status.isChecked)
    {
        shellWriteString(shell, "\r\n");
        shellWriteString(shell, shell->info.user->data.user.name);
        shellWriteString(shell, ":/$ ");
    }
    else
    {
        shellWriteString(shell, shellText[SHELL_TEXT_PASSWORD_HINT]);
    }
}









 
void shellPrint(Shell *shell, char *fmt, ...)
{
    char buffer[128];
    va_list vargs;

    if (!(shell)) { return; };

    __va_start(vargs, fmt);
    vsnprintf(buffer, 128 - 1, fmt, vargs);
    __va_end(vargs);
    
    shellWriteString(shell, buffer);
}











 
signed char shellCheckPermission(Shell *shell, ShellCommand *command)
{
    return ((!command->attr.attrs.permission
                || command->attr.attrs.type == SHELL_TYPE_USER
                || (command->attr.attrs.permission 
                    & shell->info.user->attr.attrs.permission))
            && (shell->status.isChecked
                || command->attr.attrs.enableUnchecked))
            ? 0 : -1;
}









 
signed char shellToHex(unsigned int value, char *buffer)
{
    char byte;
    unsigned char i = 8;
    buffer[8] = 0;
    while (value)
    {
        byte = value & 0x0000000F;
        buffer[--i] = (byte > 9) ? (byte + 87) : (byte + 48);
        value >>= 4;
    }
    return 8 - i;
}









 
signed char shellToDec(int value, char *buffer)
{
    unsigned char i = 11;
    int v = value;
    if (value < 0)
    {
        v = -value;
    }
    buffer[11] = 0;
    while (v)
    {
        buffer[--i] = v % 10 + 48;
        v /= 10;
    }
    if (value < 0)
    {
        buffer[--i] = '-';
    }
    if (value == 0) {
        buffer[--i] = '0';
    }
    return 11 - i;
}








 
static unsigned short shellStringCopy(char *dest, char* src)
{
    unsigned short count = 0;
    while (*(src + count))
    {
        *(dest + count) = *(src + count);
        count++;
    }
    *(dest + count) = 0;
    return count;
}








 
static unsigned short shellStringCompare(char* dest, char *src)
{
    unsigned short match = 0;
    unsigned short i = 0;

    while (*(dest +i) && *(src + i))
    {
        if (*(dest + i) != *(src +i))
        {
            break;
        }
        match ++;
        i++;
    }
    return match;
}







 
static const char* shellGetCommandName(ShellCommand *command)
{
    static char buffer[9];
    for (unsigned char i = 0; i < 9; i++)
    {
        buffer[i] = '0';
    }
    if (command->attr.attrs.type <= SHELL_TYPE_CMD_FUNC)
    {
        return command->data.cmd.name;
    }
    else if (command->attr.attrs.type <= SHELL_TYPE_VAL)
    {
        return command->data.var.name;
    }
    else if (command->attr.attrs.type <= SHELL_TYPE_USER)
    {
        return command->data.user.name;
    }
    else
    {
        shellToHex(command->data.key.value, buffer);
        return buffer;
    }
}







 
static const char* shellGetCommandDesc(ShellCommand *command)
{
    if (command->attr.attrs.type <= SHELL_TYPE_CMD_FUNC)
    {
        return command->data.cmd.desc;
    }
    else if (command->attr.attrs.type <= SHELL_TYPE_VAL)
    {
        return command->data.var.desc;
    }
    else if (command->attr.attrs.type <= SHELL_TYPE_USER)
    {
        return command->data.user.desc;
    }
    else
    {
        return command->data.key.desc;
    }
}






 
void shellListItem(Shell *shell, ShellCommand *item)
{
    short spaceLength;

    spaceLength = 22 - shellWriteString(shell, shellGetCommandName(item));
    spaceLength = (spaceLength > 0) ? spaceLength : 4;
    do {
        shellWriteByte(shell, ' ');
    } while (--spaceLength);
    if (item->attr.attrs.type <= SHELL_TYPE_CMD_FUNC)
    {
        shellWriteString(shell, shellText[SHELL_TEXT_TYPE_CMD]);
    }
    else if (item->attr.attrs.type <= SHELL_TYPE_VAL)
    {
        shellWriteString(shell, shellText[SHELL_TEXT_TYPE_VAR]);
    }
    else if (item->attr.attrs.type <= SHELL_TYPE_USER)
    {
        shellWriteString(shell, shellText[SHELL_TEXT_TYPE_USER]);
    }
    else if (item->attr.attrs.type <= SHELL_TYPE_KEY)
    {
        shellWriteString(shell, shellText[SHELL_TEXT_TYPE_KEY]);
    }
    else
    {
        shellWriteString(shell, shellText[SHELL_TEXT_TYPE_NONE]);
    }

    shellWriteString(shell, "  ");
    for (signed char i = 7; i >= 0; i--)
    {
        shellWriteByte(shell, item->attr.attrs.permission & (1 << i) ? 'x' : '-');
    }

    shellWriteString(shell, "  ");
    shellWriteCommandDesc(shell, shellGetCommandDesc(item));
    shellWriteString(shell, "\r\n");
}






 
void shellListCommand(Shell *shell)
{
    ShellCommand *base = (ShellCommand *)shell->commandList.base;
    shellWriteString(shell, shellText[SHELL_TEXT_CMD_LIST]);
    for (short i = 0; i < shell->commandList.count; i++)
    {
        if (base[i].attr.attrs.type <= SHELL_TYPE_CMD_FUNC
            && shellCheckPermission(shell, &base[i]) == 0)
        {
            shellListItem(shell, &base[i]);
        }
    }
}






 
void shellListVar(Shell *shell)
{
    ShellCommand *base = (ShellCommand *)shell->commandList.base;
    shellWriteString(shell, shellText[SHELL_TEXT_VAR_LIST]);
    for (short i = 0; i < shell->commandList.count; i++)
    {
        if (base[i].attr.attrs.type > SHELL_TYPE_CMD_FUNC
            && base[i].attr.attrs.type <= SHELL_TYPE_VAL
            && shellCheckPermission(shell, &base[i]) == 0)
        {
            shellListItem(shell, &base[i]);
        }
    }
}






 
void shellListUser(Shell *shell)
{
    ShellCommand *base = (ShellCommand *)shell->commandList.base;
    shellWriteString(shell, shellText[SHELL_TEXT_USER_LIST]);
    for (short i = 0; i < shell->commandList.count; i++)
    {
        if (base[i].attr.attrs.type > SHELL_TYPE_VAL
            && base[i].attr.attrs.type <= SHELL_TYPE_USER
            && shellCheckPermission(shell, &base[i]) == 0)
        {
            shellListItem(shell, &base[i]);
        }
    }
}






 
void shellListKey(Shell *shell)
{
    ShellCommand *base = (ShellCommand *)shell->commandList.base;
    shellWriteString(shell, shellText[SHELL_TEXT_KEY_LIST]);
    for (short i = 0; i < shell->commandList.count; i++)
    {
        if (base[i].attr.attrs.type > SHELL_TYPE_USER
            && base[i].attr.attrs.type <= SHELL_TYPE_KEY
            && shellCheckPermission(shell, &base[i]) == 0)
        {
            shellListItem(shell, &base[i]);
        }
    }
}






 
void shellListAll(Shell *shell)
{



    shellListCommand(shell);
#line 674 "..\\LETTER_SHELL\\shell.c"
}







 
void shellDeleteCommandLine(Shell *shell, unsigned char length)
{
    while (length--)
    {
        shellWriteString(shell, "\b \b");
    }
}






 
void shellClearCommandLine(Shell *shell)
{
    for (short i = shell->parser.length - shell->parser.cursor; i > 0; i--)
    {
        shellWriteByte(shell, ' ');
    }
    shellDeleteCommandLine(shell, shell->parser.length);
}







 
void shellInsertByte(Shell *shell, char data)
{
     
    if (shell->parser.length >= shell->parser.bufferSize - 1)
    {
        shellWriteString(shell, shellText[SHELL_TEXT_CMD_TOO_LONG]);
        shellWriteCommandLine(shell);
        shellWriteString(shell, shell->parser.buffer);
        return;
    }

     
    if (shell->parser.cursor == shell->parser.length)
    {
        shell->parser.buffer[shell->parser.length++] = data;
        shell->parser.buffer[shell->parser.length] = 0;
        shell->parser.cursor++;
        shellWriteByte(shell, data);
    }
    else if (shell->parser.cursor < shell->parser.length)
    {
        for (short i = shell->parser.length - shell->parser.cursor; i > 0; i--)
        {
            shell->parser.buffer[shell->parser.cursor + i] = 
                shell->parser.buffer[shell->parser.cursor + i - 1];
        }
        shell->parser.buffer[shell->parser.cursor++] = data;
        shell->parser.buffer[++shell->parser.length] = 0;
        for (short i = shell->parser.cursor - 1; i < shell->parser.length; i++)
        {
            shellWriteByte(shell, shell->parser.buffer[i]);
        }
        for (short i = shell->parser.length - shell->parser.cursor; i > 0; i--)
        {
            shellWriteByte(shell, '\b');
        }
    }
}







 
void shellDeleteByte(Shell *shell, signed char direction)
{
    char offset = (direction == -1) ? 1 : 0;

    if ((shell->parser.cursor == 0 && direction == 1)
        || (shell->parser.cursor == shell->parser.length && direction == -1))
    {
        return;
    }
    if (shell->parser.cursor == shell->parser.length && direction == 1)
    {
        shell->parser.cursor--;
        shell->parser.length--;
        shell->parser.buffer[shell->parser.length] = 0;
        shellDeleteCommandLine(shell, 1);
    }
    else
    {
        for (short i = offset; i < shell->parser.length - shell->parser.cursor; i++)
        {
            shell->parser.buffer[shell->parser.cursor + i - 1] = 
                shell->parser.buffer[shell->parser.cursor + i];
        }
        shell->parser.length--;
        if (!offset)
        {
            shell->parser.cursor--;
            shellWriteByte(shell, '\b');
        }
        shell->parser.buffer[shell->parser.length] = 0;
        for (short i = shell->parser.cursor; i < shell->parser.length; i++)
        {
            shellWriteByte(shell, shell->parser.buffer[i]);
        }
        shellWriteByte(shell, ' ');
        for (short i = shell->parser.length - shell->parser.cursor + 1; i > 0; i--)
        {
            shellWriteByte(shell, '\b');
        }
    }
}






 
static void shellParserParam(Shell *shell)
{
    unsigned char quotes = 0;
    unsigned char record = 1;

    shell->parser.paramCount = 0;
    for (unsigned short i = 0; i < shell->parser.length; i++)
    {
        if (quotes != 0
            || (shell->parser.buffer[i] != ' '
                && shell->parser.buffer[i] != 0))
        {
            if (record == 1)
            {
                shell->parser.param[shell->parser.paramCount ++] = 
                    &(shell->parser.buffer[i]);
                record = 0;
            }
            if (shell->parser.buffer[i] == '\\'
                && shell->parser.buffer[i + 1] != 0)
            {
                i++;
            }
        }
        else
        {
            shell->parser.buffer[i] = 0;
            record = 1;
        }
    }
}






 
static void shellRemoveParamQuotes(Shell *shell)
{
    unsigned short paramLength;
    for (unsigned short i = 0; i < shell->parser.paramCount; i++)
    {
        if (shell->parser.param[i][0] == '\"')
        {
            shell->parser.param[i][0] = 0;
            shell->parser.param[i] = &shell->parser.param[i][1];
        }
        paramLength = strlen(shell->parser.param[i]);
        if (shell->parser.param[i][paramLength - 1] == '\"')
        {
            shell->parser.param[i][paramLength - 1] = 0;
        }
    }
}










 
ShellCommand* shellSeekCommand(Shell *shell,
                               const char *cmd,
                               ShellCommand *base,
                               unsigned short compareLength)
{
    const char *name;
    unsigned short count = shell->commandList.count -
        ((int)base - (int)shell->commandList.base) / sizeof(ShellCommand);
    for (unsigned short i = 0; i < count; i++)
    {
        if (base[i].attr.attrs.type == SHELL_TYPE_KEY
            || shellCheckPermission(shell, &base[i]) != 0)
        {
            continue;
        }
        name = shellGetCommandName(&base[i]);
        if (!compareLength)
        {
            if (strcmp(cmd, name) == 0)
            {
                return &base[i];
            }
        }
        else
        {
            if (strncmp(cmd, name, compareLength) == 0)
            {
                return &base[i];
            }
        }
    }
    return 0;
}








 
int shellGetVarValue(Shell *shell, ShellCommand *command)
{
    int value = 0;
    switch (command->attr.attrs.type)
    {
    case SHELL_TYPE_VAR_INT:
        value = *((int *)(command->data.var.value));
        break;
    case SHELL_TYPE_VAR_SHORT:
        value = *((short *)(command->data.var.value));
        break;
    case SHELL_TYPE_VAR_CHAR:
        value = *((char *)(command->data.var.value));
        break;
    case SHELL_TYPE_VAR_POINT:
    case SHELL_TYPE_VAL:
        value = (int)(command->data.var.value);
        break;
    default:
        break;
    }
    return value;
}








 
void shellSetVarValue(Shell *shell, ShellCommand *command, int value)
{
    switch (command->attr.attrs.type)
    {
    case SHELL_TYPE_VAR_INT:
        *((int *)(command->data.var.value)) = value;
        break;
    case SHELL_TYPE_VAR_SHORT:
        *((short *)(command->data.var.value)) = value;
        break;
    case SHELL_TYPE_VAR_CHAR:
        *((char *)(command->data.var.value)) = value;
        break;
    case SHELL_TYPE_VAR_POINT:
        shellWriteString(shell, shellText[SHELL_TEXT_POINT_CANNOT_MODIFY]);
        break;
    case SHELL_TYPE_VAL:
        shellWriteString(shell, shellText[SHELL_TEXT_VAL_CANNOT_MODIFY]);
        break;
    default:
        break;
    }
    shellShowVar(shell, command);
}







 
static void shellShowVar(Shell *shell, ShellCommand *command)
{
    char buffer[12] = "00000000000";
    int value = shellGetVarValue(shell, command);
    shellWriteString(shell, command->data.var.name);
    shellWriteString(shell, " = ");
    shellWriteString(shell, &buffer[11 - shellToDec(value, buffer)]);
    shellWriteString(shell, ", 0x");
    for (short i = 0; i < 11; i++)
    {
        buffer[i] = '0';
    }
    shellToHex(value, buffer);
    shellWriteString(shell, buffer);
    shellWriteString(shell, "\r\n");
}








 
int shellSetVar(char *name, int value)
{
    Shell *shell = shellGetCurrent();
    if (shell == 0)
    {
        return 0;
    }
    ShellCommand *command = shellSeekCommand(shell,
                                             name,
                                             shell->commandList.base,
                                             0);
    if (!command)
    {
        shellWriteString(shell, shellText[SHELL_TEXT_VAR_NOT_FOUND]);
        return 0;
    }
    if (command->attr.attrs.type < SHELL_TYPE_VAR_INT
        || command->attr.attrs.type > SHELL_TYPE_VAL)
    {
        shellWriteString(shell, name);
        shellWriteString(shell, shellText[SHELL_TEXT_NOT_VAR]);
        return 0;
    }
    shellSetVarValue(shell, command, value);
    return shellGetVarValue(shell, command);
}


const char shellCmdsetVar[] = "setVar"; const char shellDescsetVar[] = "set var"; const ShellCommand shellCommandsetVar __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|((SHELL_TYPE_CMD_FUNC & 0x0000000F) << 8)|(1 << 13), . data . cmd . name = shellCmdsetVar, . data . cmd . function = (int (*)())shellSetVar, . data . cmd . desc = shellDescsetVar };







 
static void shellRunCommand(Shell *shell, ShellCommand *command)
{
    int returnValue;
    shell->status.isActive = 1;
    if (command->attr.attrs.type == SHELL_TYPE_CMD_MAIN)
    {
        shellRemoveParamQuotes(shell);
        returnValue = command->data.cmd.function(shell->parser.paramCount,
                                                 shell->parser.param);
        if (!command->attr.attrs.disableReturn)
        {
            shellWirteReturnValue(shell, returnValue);
        }
    }
    else if (command->attr.attrs.type == SHELL_TYPE_CMD_FUNC)
    {
        returnValue = shellExtRun(shell,
                                  command->data.cmd.function,
                                  shell->parser.paramCount,
                                  shell->parser.param);
        if (!command->attr.attrs.disableReturn)
        {
            shellWirteReturnValue(shell, returnValue);
        }
    }
    else if (command->attr.attrs.type >= SHELL_TYPE_VAR_INT
        && command->attr.attrs.type <= SHELL_TYPE_VAL)
    {
        shellShowVar(shell, command);
    }
    else if (command->attr.attrs.type == SHELL_TYPE_USER)
    {
        shellSetUser(shell, command);
    }
    shell->status.isActive = 0;
}






 
static void shellCheckPassword(Shell *shell)
{
    if (strcmp(shell->parser.buffer, shell->info.user->data.user.password) == 0)
    {
        shell->status.isChecked = 1;
        shellWriteString(shell, shellText[SHELL_TEXT_INFO]);
    }
    else
    {
        shellWriteString(shell, shellText[SHELL_TEXT_PASSWORD_ERROR]);
    }
    shell->parser.length = 0;
    shell->parser.cursor = 0;
}







 
static void shellSetUser(Shell *shell, const ShellCommand *user)
{
    shell->info.user = user;
    shell->status.isChecked = 
        ((user->data.user.password && strlen(user->data.user.password) != 0)
            && (shell->parser.paramCount == 1
                || strcmp(user->data.user.password, shell->parser.param[1]) != 0))
         ? 0 : 1;
        
    shellWriteString(shell, shellText[SHELL_TEXT_CLEAR_CONSOLE]);
    if (shell->status.isChecked)
    {
        shellWriteString(shell, shellText[SHELL_TEXT_INFO]);
    }
}







 
static void shellWirteReturnValue(Shell *shell, int value)
{
    char buffer[12] = "00000000000";
    shellWriteString(shell, "Return: ");
    shellWriteString(shell, &buffer[11 - shellToDec(value, buffer)]);
    shellWriteString(shell, ", 0x");
    for (short i = 0; i < 11; i++)
    {
        buffer[i] = '0';
    }
    shellToHex(value, buffer);
    shellWriteString(shell, buffer);
    shellWriteString(shell, "\r\n");
}






 
static void shellHistoryAdd(Shell *shell)
{
    shell->history.offset = 0;
    if (shell->history.number > 0
        && strcmp(shell->history.item[(shell->history.record == 0 ? 
                5 : shell->history.record) - 1],
                shell->parser.buffer) == 0)
    {
        return;
    }
    if (shellStringCopy(shell->history.item[shell->history.record],
                        shell->parser.buffer) != 0)
    {
        shell->history.record++;
    }
    if (++shell->history.number > 5)
    {
        shell->history.number = 5;
    }
    if (shell->history.record >= 5)
    {
        shell->history.record = 0;
    }
}







 
static void shellHistory(Shell *shell, signed char dir)
{
    if (dir > 0)
    {
        if (shell->history.offset-- <= 
            -((shell->history.number > shell->history.record) ?
                shell->history.number : shell->history.record))
        {
            shell->history.offset = -((shell->history.number > shell->history.record)
                                    ? shell->history.number : shell->history.record);
        }
    }
    else if (dir < 0)
    {
        if (++shell->history.offset > 0)
        {
            shell->history.offset = 0;
            return;
        }
    }
    else
    {
        return;
    }
    shellClearCommandLine(shell);
    if (shell->history.offset == 0)
    {
        shell->parser.cursor = shell->parser.length = 0;
    }
    else
    {
        if ((shell->parser.length = shellStringCopy(shell->parser.buffer,
                shell->history.item[(shell->history.record + 5
                    + shell->history.offset) % 5])) == 0)
        {
            return;
        }
        shell->parser.cursor = shell->parser.length;
        shellWriteString(shell, shell->parser.buffer);
    }
    
}







 
void shellNormalInput(Shell *shell, char data)
{
    shell->status.tabFlag = 0;
    shellInsertByte(shell, data);
}






 
void shellUp(Shell *shell)
{
    shellHistory(shell, 1);
}
const char shellDesc0x1B5B4100[] = "up"; const ShellCommand shellKey0x1B5B4100 __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|((SHELL_TYPE_KEY & 0x0000000F) << 8), . data . key . value = 0x1B5B4100, . data . key . function = (void (*)(Shell *))shellUp, . data . key . desc = shellDesc0x1B5B4100 };






 
void shellDown(Shell *shell)
{
    shellHistory(shell, -1);
}
const char shellDesc0x1B5B4200[] = "down"; const ShellCommand shellKey0x1B5B4200 __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|((SHELL_TYPE_KEY & 0x0000000F) << 8), . data . key . value = 0x1B5B4200, . data . key . function = (void (*)(Shell *))shellDown, . data . key . desc = shellDesc0x1B5B4200 };






 
void shellRight(Shell *shell)
{
    if (shell->parser.cursor < shell->parser.length)
    {
        shellWriteByte(shell, shell->parser.buffer[shell->parser.cursor++]);
    }
}

const char shellDesc0x1B5B4300[] = "right"; const ShellCommand shellKey0x1B5B4300 __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|(1 << 12)|((SHELL_TYPE_KEY & 0x0000000F) << 8), . data . key . value = 0x1B5B4300, . data . key . function = (void (*)(Shell *))shellRight, . data . key . desc = shellDesc0x1B5B4300 };






 
void shellLeft(Shell *shell)
{
    if (shell->parser.cursor > 0)
    {
        shellWriteByte(shell, '\b');
        shell->parser.cursor--;
    }
}

const char shellDesc0x1B5B4400[] = "left"; const ShellCommand shellKey0x1B5B4400 __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|(1 << 12)|((SHELL_TYPE_KEY & 0x0000000F) << 8), . data . key . value = 0x1B5B4400, . data . key . function = (void (*)(Shell *))shellLeft, . data . key . desc = shellDesc0x1B5B4400 };






 
void shellTab(Shell *shell)
{
    unsigned short maxMatch = shell->parser.bufferSize;
    unsigned short lastMatchIndex = 0;
    unsigned short matchNum = 0;
    unsigned short length;

    if (shell->parser.length == 0)
    {
        shellListAll(shell);
        shellWriteCommandLine(shell);
    }
    else if (shell->parser.length > 0)
    {
        shell->parser.buffer[shell->parser.length] = 0;
        ShellCommand *base = (ShellCommand *)shell->commandList.base;
        for (short i = 0; i < shell->commandList.count; i++)
        {
            if (shellCheckPermission(shell, &base[i]) == 0
                && shellStringCompare(shell->parser.buffer,
                                   (char *)shellGetCommandName(&base[i]))
                        == shell->parser.length)
            {
                if (matchNum != 0)
                {
                    if (matchNum == 1)
                    {
                        shellWriteString(shell, "\r\n");
                    }
                    shellListItem(shell, &base[lastMatchIndex]);
                    length = 
                        shellStringCompare((char *)shellGetCommandName(&base[lastMatchIndex]),
                                           (char *)shellGetCommandName(&base[i]));
                    maxMatch = (maxMatch > length) ? length : maxMatch;
                }
                lastMatchIndex = i;
                matchNum++;
            }
        }
        if (matchNum == 0)
        {
            return;
        }
        if (matchNum == 1)
        {
            shellClearCommandLine(shell);
        }
        if (matchNum != 0)
        {
            shell->parser.length = 
                shellStringCopy(shell->parser.buffer,
                                (char *)shellGetCommandName(&base[lastMatchIndex]));
        }
        if (matchNum > 1)
        {
            shellListItem(shell, &base[lastMatchIndex]);
            shellWriteCommandLine(shell);
            shell->parser.length = maxMatch;
        }
        shell->parser.buffer[shell->parser.length] = 0;
        shell->parser.cursor = shell->parser.length;
        shellWriteString(shell, shell->parser.buffer);
    }

    if (0)
    {
        if (matchNum == 1
            && shell->status.tabFlag
            && 0 - shell->info.activeTime < 200)
        {
            shellClearCommandLine(shell);
            for (short i = shell->parser.length; i >= 0; i--)
            {
                shell->parser.buffer[i + 5] = shell->parser.buffer[i];
            }
            shellStringCopy(shell->parser.buffer, "help");
            shell->parser.buffer[4] = ' ';
            shell->parser.length += 5;
            shell->parser.cursor = shell->parser.length;
            shellWriteString(shell, shell->parser.buffer);
        }
        else
        {
            shell->status.tabFlag = 1;
        }
    }
}
const char shellDesc0x09000000[] = "tab"; const ShellCommand shellKey0x09000000 __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|((SHELL_TYPE_KEY & 0x0000000F) << 8), . data . key . value = 0x09000000, . data . key . function = (void (*)(Shell *))shellTab, . data . key . desc = shellDesc0x09000000 };






 
void shellBackspace(Shell *shell)
{
    shellDeleteByte(shell, 1);
}

const char shellDesc0x08000000[] = "backspace"; const ShellCommand shellKey0x08000000 __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|(1 << 12)|((SHELL_TYPE_KEY & 0x0000000F) << 8), . data . key . value = 0x08000000, . data . key . function = (void (*)(Shell *))shellBackspace, . data . key . desc = shellDesc0x08000000 };






 
void shellDelete(Shell *shell)
{
    shellDeleteByte(shell, -1);
}

const char shellDesc0x7F000000[] = "delete"; const ShellCommand shellKey0x7F000000 __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|(1 << 12)|((SHELL_TYPE_KEY & 0x0000000F) << 8), . data . key . value = 0x7F000000, . data . key . function = (void (*)(Shell *))shellDelete, . data . key . desc = shellDesc0x7F000000 };

const char shellDesc0x1B5B337E[] = "delete"; const ShellCommand shellKey0x1B5B337E __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|(1 << 12)|((SHELL_TYPE_KEY & 0x0000000F) << 8), . data . key . value = 0x1B5B337E, . data . key . function = (void (*)(Shell *))shellDelete, . data . key . desc = shellDesc0x1B5B337E };





 
void shellEnter(Shell *shell)
{
    if (shell->parser.length == 0)
    {
        shellWriteCommandLine(shell);
        return;
    }

    shell->parser.buffer[shell->parser.length] = 0;

    if (shell->status.isChecked)
    {
        shellHistoryAdd(shell);
        shellParserParam(shell);
        shell->parser.length = shell->parser.cursor = 0;
        if (shell->parser.paramCount == 0)
        {
            shellWriteCommandLine(shell);
            return;
        }
        shellWriteString(shell, "\r\n");

        ShellCommand *command = shellSeekCommand(shell,
                                                 shell->parser.param[0],
                                                 shell->commandList.base,
                                                 0);
        if (command != 0)
        {
            shellRunCommand(shell, command);
        }
        else
        {
            shellWriteString(shell, shellText[SHELL_TEXT_CMD_NOT_FOUND]);
        }
    }
    else
    {
        shellCheckPassword(shell);
    }
    shellWriteCommandLine(shell);
}


const char shellDesc0x0A000000[] = "enter"; const ShellCommand shellKey0x0A000000 __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|(1 << 12)|((SHELL_TYPE_KEY & 0x0000000F) << 8), . data . key . value = 0x0A000000, . data . key . function = (void (*)(Shell *))shellEnter, . data . key . desc = shellDesc0x0A000000 };



const char shellDesc0x0D000000[] = "enter"; const ShellCommand shellKey0x0D000000 __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|(1 << 12)|((SHELL_TYPE_KEY & 0x0000000F) << 8), . data . key . value = 0x0D000000, . data . key . function = (void (*)(Shell *))shellEnter, . data . key . desc = shellDesc0x0D000000 };












 
void shellHelp(int argc, char *argv[])
{
    Shell *shell = shellGetCurrent();
    if (!(shell)) { return; };
    if (argc == 1)
    {
        shellListAll(shell);
    }
    else if (argc > 1)
    {
        ShellCommand *command = shellSeekCommand(shell,
                                                 argv[1],
                                                 shell->commandList.base,
                                                 0);
        shellWriteString(shell, shellText[SHELL_TEXT_HELP_HEADER]);
        shellWriteString(shell, shellGetCommandName(command));
        shellWriteString(shell, "\r\n");
        shellWriteString(shell, shellGetCommandDesc(command));
        shellWriteString(shell, "\r\n");
    }
}


const char shellCmdhelp[] = "help"; const char shellDeschelp[] = "show command info\r\nhelp [cmd]"; const ShellCommand shellCommandhelp __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|((SHELL_TYPE_CMD_MAIN & 0x0000000F) << 8)|(1 << 13), . data . cmd . name = shellCmdhelp, . data . cmd . function = (int (*)())shellHelp, . data . cmd . desc = shellDeschelp };






 
void shellHandler(Shell *shell, char data)
{
    if (!(data)) { return; };

#line 1530 "..\\LETTER_SHELL\\shell.c"

     
    char keyByteOffset = 24;
    int keyFilter = 0x00000000;
    if ((shell->parser.keyValue & 0x0000FF00) != 0x00000000)
    {
        keyByteOffset = 0;
        keyFilter = 0xFFFFFF00;
    }
    else if ((shell->parser.keyValue & 0x00FF0000) != 0x00000000)
    {
        keyByteOffset = 8;
        keyFilter = 0xFFFF0000;
    }
    else if ((shell->parser.keyValue & 0xFF000000) != 0x00000000)
    {
        keyByteOffset = 16;
        keyFilter = 0xFF000000;
    }

     
    ShellCommand *base = (ShellCommand *)shell->commandList.base;
    for (short i = 0; i < shell->commandList.count; i++)
    {
         
        if (base[i].attr.attrs.type == SHELL_TYPE_KEY
            && shellCheckPermission(shell, &(base[i])) == 0)
        {
             
            if ((base[i].data.key.value & keyFilter) == shell->parser.keyValue
                && (base[i].data.key.value & (0xFF << keyByteOffset))
                    == (data << keyByteOffset))
            {
                shell->parser.keyValue |= data << keyByteOffset;
                data = 0x00;
                if (keyByteOffset == 0 
                    || (base[i].data.key.value & (0xFF << (keyByteOffset - 8)))
                        == 0x00000000)
                {
                    if (base[i].data.key.function)
                    {
                        base[i].data.key.function(shell);
                    }
                    shell->parser.keyValue = 0x00000000;
                    break;
                }
            }
        }
    }

    if (data != 0x00)
    {
        shellNormalInput(shell, data);
    }

    if (0)
    {
        shell->info.activeTime = 0;
    }
}







 
void shellTask(void *param)
{
    Shell *shell = (Shell *)param;
    char data;

    while(1)
    {

        if (shell->read && shell->read(&data) == 0)
        {
            shellHandler(shell, data);
        }

    }

}




 
void shellUsers(void)
{
    Shell *shell = shellGetCurrent();
    if (shell)
    {
        shellListUser(shell);
    }
}


const char shellCmdusers[] = "users"; const char shellDescusers[] = "list all user"; const ShellCommand shellCommandusers __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|((SHELL_TYPE_CMD_FUNC & 0x0000000F) << 8)|(1 << 13), . data . cmd . name = shellCmdusers, . data . cmd . function = (int (*)())shellUsers, . data . cmd . desc = shellDescusers };




 
void shellCmds(void)
{
    Shell *shell = shellGetCurrent();
    if (shell)
    {
        shellListCommand(shell);
    }
}


const char shellCmdcmds[] = "cmds"; const char shellDesccmds[] = "list all cmd"; const ShellCommand shellCommandcmds __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|((SHELL_TYPE_CMD_FUNC & 0x0000000F) << 8)|(1 << 13), . data . cmd . name = shellCmdcmds, . data . cmd . function = (int (*)())shellCmds, . data . cmd . desc = shellDesccmds };




 
void shellVars(void)
{
    Shell *shell = shellGetCurrent();
    if (shell)
    {
        shellListVar(shell);
    }
}


const char shellCmdvars[] = "vars"; const char shellDescvars[] = "list all var"; const ShellCommand shellCommandvars __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|((SHELL_TYPE_CMD_FUNC & 0x0000000F) << 8)|(1 << 13), . data . cmd . name = shellCmdvars, . data . cmd . function = (int (*)())shellVars, . data . cmd . desc = shellDescvars };




 
void shellKeys(void)
{
    Shell *shell = shellGetCurrent();
    if (shell)
    {
        shellListKey(shell);
    }
}


const char shellCmdkeys[] = "keys"; const char shellDesckeys[] = "list all key"; const ShellCommand shellCommandkeys __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|((SHELL_TYPE_CMD_FUNC & 0x0000000F) << 8)|(1 << 13), . data . cmd . name = shellCmdkeys, . data . cmd . function = (int (*)())shellKeys, . data . cmd . desc = shellDesckeys };




 
void shellClear(void)
{
    Shell *shell = shellGetCurrent();
    if (shell)
    {
        shellWriteString(shell, shellText[SHELL_TEXT_CLEAR_CONSOLE]);
    }
}


const char shellCmdclear[] = "clear"; const char shellDescclear[] = "clear console"; const ShellCommand shellCommandclear __attribute__((section("shellCommand"))) = { . attr . value = (0 & 0x000000FF)|((SHELL_TYPE_CMD_FUNC & 0x0000000F) << 8)|(1 << 13), . data . cmd . name = shellCmdclear, . data . cmd . function = (int (*)())shellClear, . data . cmd . desc = shellDescclear };

