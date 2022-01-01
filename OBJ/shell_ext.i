#line 1 "..\\LETTER_SHELL\\shell_ext.c"









 

#line 1 "..\\LETTER_SHELL\\shell_cfg.h"









 









 






 




 




 




 




 





 





 





 





 




 





 




 





 






 




 





 







 


#line 13 "..\\LETTER_SHELL\\shell_ext.c"
#line 1 "..\\LETTER_SHELL\\shell.h"









 




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



#line 14 "..\\LETTER_SHELL\\shell_ext.c"
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

#line 15 "..\\LETTER_SHELL\\shell_ext.c"


extern ShellCommand* shellSeekCommand(Shell *shell,
                                      const char *cmd,
                                      ShellCommand *base,
                                      unsigned short compareLength);
extern int shellGetVarValue(Shell *shell, ShellCommand *command);






 
static NUM_Type shellExtNumType(char *string)
{
    char *p = string;
    NUM_Type type = NUM_TYPE_INT;

    if ((*p == '0') && ((*(p + 1) == 'x') || (*(p + 1) == 'X')))
    {
        type = NUM_TYPE_HEX;
    }
    else if ((*p == '0') && ((*(p + 1) == 'b') || (*(p + 1) == 'B')))
    {
        type = NUM_TYPE_BIN;
    }
    else if (*p == '0')
    {
        type = NUM_TYPE_OCT;
    }
    
    while (*p++)
    {
        if (*p == '.' && *(p + 1) != 0)
        {
            type = NUM_TYPE_FLOAT;
            break;
        }
    }

    return type;
}







 
static char shellExtToNum(char code)
{
    if ((code >= '0') && (code <= '9'))
    {
        return code -'0';
    }
    else if ((code >= 'a') && (code <= 'f'))
    {
        return code - 'a' + 10;
    }
    else if ((code >= 'A') && (code <= 'F'))
    {
        return code - 'A' + 10;
    }
    else
    {
        return 0;
    }
}







 
static char shellExtParseChar(char *string)
{
    char *p = string + 1;
    char value = 0;

    if (*p == '\\')
    {
        switch (*(p + 1))
        {
        case 'b':
            value = '\b';
            break;
        case 'r':
            value = '\r';
            break;
        case 'n':
            value = '\n';
            break;
        case 't':
            value = '\t';
            break;
        case '0':
            value = 0;
            break;
        default:
            value = *(p + 1);
            break;
        }
    }
    else
    {
        value = *p;
    }
    return value;
}







 
static char* shellExtParseString(char *string)
{
    char *p = string;
    unsigned short index = 0;

    if (*string == '\"')
    {
        p = ++string;
    }

    while (*p)
    {
        if (*p == '\\')
        {
            *(string + index) = shellExtParseChar(p - 1);
            p++;
        }
        else if (*p == '\"')
        {
            *(string + index) = 0;
        }
        else
        {
            *(string + index) = *p;
        }
        p++;
        index ++;
    }
    *(string + index) = 0;
    return string;
}







 
static unsigned int shellExtParseNumber(char *string)
{
    NUM_Type type = NUM_TYPE_INT;
    char radix = 10;
    char *p = string;
    char offset = 0;
    signed char sign = 1;
    unsigned int valueInt = 0;
    float valueFloat = 0.0;
    unsigned int devide = 0;

    if (*string == '-')
    {
        sign = -1;
    }

    type = shellExtNumType(string + ((sign == -1) ? 1 : 0));

    switch ((char)type)
    {
    case NUM_TYPE_HEX:
        radix = 16;
        offset = 2;
        break;
    
    case NUM_TYPE_OCT:
        radix = 8;
        offset = 1;
        break;

    case NUM_TYPE_BIN:
        radix = 2;
        offset = 2;
        break;
    
    default:
        break;
    }

    p = string + offset + ((sign == -1) ? 1 : 0);

    while (*p)
    {
        if (*p == '.')
        {
            devide = 1;
            p++;
            continue;
        }
        valueInt = valueInt * radix + shellExtToNum(*p);
        devide *= 10;
        p++;
    }
    if (type == NUM_TYPE_FLOAT && devide != 0)
    {
        valueFloat = (float)valueInt / devide * sign;
        return *(unsigned int *)(&valueFloat);
    }
    else
    {
        return valueInt * sign;
    }
}








 
static unsigned int shellExtParseVar(Shell *shell, char *var)
{
    ShellCommand *command = shellSeekCommand(shell,
                                             var + 1,
                                             shell->commandList.base,
                                             0);
    if (command)
    {
        return shellGetVarValue(shell, command);
    }
    else
    {
        return 0;
    }
}








 
unsigned int shellExtParsePara(Shell *shell, char *string)
{
    if (*string == '\'' && *(string + 1))
    {
        return (unsigned int)shellExtParseChar(string);
    }
    else if (*string == '-' || (*string >= '0' && *string <= '9'))
    {
        return (unsigned int)shellExtParseNumber(string);
    }
    else if (*string == '$' && *(string + 1))
    {
        return shellExtParseVar(shell, string);
    }
    else if (*string)
    {
        return (unsigned int)shellExtParseString(string);
    }
    return 0;
}










 
int shellExtRun(Shell *shell, int (*function)(), int argc, char *argv[])
{
    switch (argc)
    {
    case 1:
        return function();
        
    case 2:
        return function(shellExtParsePara(shell, argv[1]));
        
    case 3:
        return function(shellExtParsePara(shell, argv[1]), shellExtParsePara(shell, argv[2]));
        
    case 4:
        return function(shellExtParsePara(shell, argv[1]), shellExtParsePara(shell, argv[2]),
                        shellExtParsePara(shell, argv[3]));
        
    case 5:
        return function(shellExtParsePara(shell, argv[1]), shellExtParsePara(shell, argv[2]),
                        shellExtParsePara(shell, argv[3]), shellExtParsePara(shell, argv[4]));
        
    case 6:
        return function(shellExtParsePara(shell, argv[1]), shellExtParsePara(shell, argv[2]),
                        shellExtParsePara(shell, argv[3]), shellExtParsePara(shell, argv[4]),
                        shellExtParsePara(shell, argv[5]));
        
    case 7:
        return function(shellExtParsePara(shell, argv[1]), shellExtParsePara(shell, argv[2]),
                        shellExtParsePara(shell, argv[3]), shellExtParsePara(shell, argv[4]),
                        shellExtParsePara(shell, argv[5]), shellExtParsePara(shell, argv[6]));
        
    case 8:
        return function(shellExtParsePara(shell, argv[1]), shellExtParsePara(shell, argv[2]),
                        shellExtParsePara(shell, argv[3]), shellExtParsePara(shell, argv[4]),
                        shellExtParsePara(shell, argv[5]), shellExtParsePara(shell, argv[6]),
                        shellExtParsePara(shell, argv[7]));
        
    default:
        return -1;
        
    }
}

