//include stdlib to have size_t, which is just an int
#include <stdlib.h>


//http://www.cplusplus.com/reference/cstring/strstr/
const char * my_strstr ( const char * str1, const char * str2 );

//http://www.cplusplus.com/reference/cstring/strrchr/
const char * my_strrchr ( const char * str, int character );

//http://www.cplusplus.com/reference/cstring/strcmp/
int my_strcmp ( const char * str1, const char * str2 );

//http://www.cplusplus.com/reference/cstring/strncmp/
int my_strncmp ( const char * str1, const char * str2, size_t num );

//http://www.cplusplus.com/reference/cstring/strncat/
char * my_strncat ( char * destination, const char * source, size_t num );

//http://www.cplusplus.com/reference/cstring/memmove
void * my_memmove ( void * destination, const void * source, size_t num );

//http://www.cplusplus.com/reference/cstring/strchrextern 
const char * my_strchr ( const char * str, int character );

//http://www.cplusplus.com/reference/cstring/strcpy
char * my_strcpy ( char * destination, const char * source );

//http://www.cplusplus.com/reference/cstring/strlen
size_t my_strlen ( const char * str );

//http://www.cplusplus.com/reference/cstring/strcpy/
char * my_strcpy ( char * destination, const char * source );

//http://www.cplusplus.com/reference/cstring/memset/
void * my_memset ( void * ptr, int value, size_t num );

//http://www.cplusplus.com/reference/cstring/strcat/
char * my_strcat ( char * destination, const char * source );

//http://www.cplusplus.com/reference/cstring/strncpy/
char * my_strncpy ( char * destination, const char * source, size_t num );

//http://www.cplusplus.com/reference/cstring/strcspn/
size_t my_strcspn ( const char * str1, const char * str2 );


//other functions go here...
//copy the signature (their name, return type and parameters, from the reference
// http://www.cplusplus.com/reference/cstring/ 
