#line 1 "..\\LETTER_SHELL\\shell_cmd_list.c"









 

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



#line 13 "..\\LETTER_SHELL\\shell_cmd_list.c"

