#include "my_string.h"

char* my_strcpy(char* destination, const char* source )
{
    //your code goes here
    char* dst = destination;
    while((*source) != 0)
    {
        * dst = * source;
        ++source;
        ++dst;
    }
    * dst = * source;

    return destination;
}

const char* my_strchr ( const char* str, int character )
{
    const char * first_ch = str;
    while((* first_ch) != 0)
    {
        if ((* first_ch) == character)
        {
            return first_ch;
        }
        ++first_ch;
    }

    if ((* first_ch) == character)
    {
        return first_ch;
    }
    return NULL;
}

void * my_memmove ( void * destination, const void * source, size_t num )
{
    const char* src = (const char*) source;
    char* dst = (char*) destination;
    
    for (size_t i = 0; i < num; ++i)
    {
        *dst = *src;
        ++src;
        ++dst;
    }

    return destination;
}

// needs check
char * my_strncat ( char * destination, const char * source, size_t num )
{   
    char * dst = destination;
    while((*dst) != 0)
    {
        ++dst;
    }

    for (size_t i = 0; i < num; ++i)
    {
        *dst = *source;
        if ((*source) == 0)
        {
            break;
        }
        ++dst;
        ++source;
    }
    *dst = 0;

    return destination;
}

int my_strncmp ( const char * str1, const char * str2, size_t num )
{
    for (size_t i = 0; i < num; ++i)
    {
        int ch1 = *str1;
        int ch2 = *str2;

        if ((ch1 == 0) || (ch2 == 0))
        {   
            if (ch1 == ch2) {
                return 0;
            }
            return (ch1 > ch2) ? 1: -1;
        }
        if (ch1 != ch2)
        {
            return (ch1 > ch2) ? 1: -1;
        }

        ++str1;
        ++str2;
    }

    return 0;
}

int my_strcmp ( const char * str1, const char * str2 )
{
    for (size_t i = 0;; ++i)
    {
        int ch1 = *str1;
        int ch2 = *str2;

        if ((ch1 == 0) || (ch2 == 0))
        {   
            if (ch1 == ch2) {
                return 0;
            }
            return (ch1 > ch2) ? 1: -1;
        }
        if (ch1 != ch2)
        {
            return (ch1 > ch2) ? 1: -1;
        }

        ++str1;
        ++str2;
    }

    return 0;
}

const char * my_strrchr ( const char * str, int character )
{
    int showed_up = 0;
    const char * last_ch = NULL;
    
    const char * iter = str;
    while((* iter) != 0)
    {
        if ((* iter) == character)
        {
            last_ch = iter;
        }
        ++iter;
    }

    if (character == 0)
    {
        return iter;
    }

    return last_ch;
}

// A pointer to the first occurrence in str1 of 
// the entire sequence of characters specified in str2,
//  or a null pointer if the sequence is not present in str1.
const char * my_strstr ( const char * str1, const char * str2 )
{
    const char * pos = str1;

    while((*pos) != 0)
    {
        const char * s2 = str2;
        const char * s1 = pos;
        
        while(((*s2) != 0) && ((*s1) != 0))
        {
            if ((*s2) != (*s1))
            {
                break;
            }
            ++s1;
            ++s2;
        }
        if ((*s2) == 0) {
            return pos;
        }
        ++pos;
    }

    return NULL;
}

