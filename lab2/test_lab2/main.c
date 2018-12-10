#include <stdio.h>

#include <string.h>
#include "my_string.h"



int main(int argc, char** argv)
{
    char *str1, *str2;
    //allocate dynamic memory, 100 bytes for each string
    str1 = (char*) malloc(100);
    str2 = (char*) malloc(100);

    //this is static memory, does not need malloc or free since
    //the compiler knows how much memory it needs, it reserves on
    //compile time, NOT run time
    char str3[100];

    strcpy(str1, "this is a string");
    strcpy(str2, "this is another string");


    /*****************************
     *  Testing strlen
     *****************************/

    //printf("str1 strlen: %zu  my_strlen: %zu   are they equal?  %s\n",
    //    strlen(str1), my_strlen(str1),  
    //    strlen(str1) == my_strlen(str1) ? "yes" : "no" ); 
    //'zu' is the format used to print the type size_t, which is what strlen returns
    //third print is a ternary operator, not necessary to know, just cool, pretty much a if-else in one statement

    //TODO: you should do more tests, especially corner cases, like empty strings.
    

    /*****************************
     *  Testing strcpy
     *****************************/

    //copying the same string as str1 into str3, compare to see if equal
    my_strcpy(str3, "this is a string");
    printf("str1 == str3 ?  %s\n", strcmp(str1, str3) == 0 ? "yes" : "no" );

    //TODO: more tests...
    printf("test my_strchr: 3 cases\n");
    my_strcpy(str3, "this is a string");
    printf("strchr are they equal?  %s\n",
        strchr(str3, 's') == my_strchr(str3, 's') ? "yes" : "no" ); 
    printf("strchr are they equal?  %s\n",
        strchr(str3, 0) == my_strchr(str3, 0) ? "yes" : "no" ); 
    printf("strchr are they equal?  %s\n",
        strchr(str3, 'f') == my_strchr(str3, 'f') ? "yes" : "no" ); 
    
    //*************************************

    printf("test my_memmove: 2 cases\n");
    char str4[100];
    char str5[100];

    my_memmove((void*) str4, (void*) "this is a string", 7);
    my_memmove((void*) str5, (void*) "this is a string", 7);
    printf("str4 == str5 ?  %s\n", memcmp(str4, str5, 7) == 0 ? "yes" : "no" );
    my_memmove((void*) str5, (void*) "not a string", 5);
    printf("str4 != str5 ?  %s\n", memcmp(str4, str5, 5) != 0 ? "yes" : "no" );


    //**************************************
    printf("test my_strncat: 3 cases\n");
    strcpy(str1, "Hello");
    strcpy(str2, "Hello");
    // printf("%s %s\n", str1, str2);
    // printf("str1 == str2 ?  %s || %s\n", my_strncat(str1, "Word", 3), strncat(str2, "Word", 3));
    printf("str1 == str2 ?  %s\n", strcmp(my_strncat(str1, "Word", 3), strncat(str2, "Word", 3)) == 0 ? "yes" : "no" );

    strcpy(str1, "Hello");
    strcpy(str2, "Hello");
    printf("str1 == str2 ?  %s\n", strcmp(my_strncat(str1, "Word", 10), strncat(str2, "Word", 10)) == 0 ? "yes" : "no" );
    strcpy(str1, "Hello");
    strcpy(str2, "Hello");
    printf("str1 == str2 ?  %s\n", strcmp(my_strncat(str1, "", 3), strncat(str2, "", 3)) == 0 ? "yes" : "no" );

    //*************************************
    printf("test my_strncmp: 7 cases\n");
    printf("Case1 ?  %s\n", my_strncmp("string", "string", 3) == strncmp("string", "string", 3) ? "yes" : "no" );
    printf("Case2 ?  %s\n", my_strncmp("string", "string", 100) == strncmp("string", "string", 100) ? "yes" : "no" );
    printf("Case3 ?  %s\n", my_strncmp("strgood", "strbad", 3) == strncmp("strgood", "strbad", 3) ? "yes" : "no" );
    printf("Case4 ?  %s\n", my_strncmp("strgood", "strbad", 4) == strncmp("strgood", "strbad", 4) ? "yes" : "no" );
    printf("Case5 ?  %s\n", my_strncmp("strbad", "strgood", 4) == strncmp("strbad", "strgood", 4) ? "yes" : "no" );
    printf("Case6 ?  %s\n", my_strncmp("strlong", "strs", 6) == strncmp("strlong", "strshort", 6) ? "yes" : "no" );
    printf("Case7 ?  %s\n", my_strncmp("strs", "strlong", 6) == my_strncmp("strs", "strlong", 6)? "yes" : "no" );


    //*****************************************
    printf("test my_strcmp: 8 cases\n");
    printf("Case1 ?  %s\n", my_strcmp("string", "string") == strcmp("string", "string") ? "yes" : "no" );
    printf("Case2 ?  %s\n", my_strcmp("string", "string") == strcmp("string", "string") ? "yes" : "no" );
    printf("Case3 ?  %s\n", my_strcmp("strgood", "strbad") == strcmp("strgood", "strbad") ? "yes" : "no" );
    printf("Case4 ?  %s\n", my_strcmp("strgood", "strbad") == strcmp("strgood", "strbad") ? "yes" : "no" );
    printf("Case5 ?  %s\n", my_strcmp("strbad", "strgood") == strcmp("strbad", "strgood") ? "yes" : "no" );
    printf("Case6 ?  %s\n", my_strcmp("strlong", "strs") == strcmp("strlong", "strshort") ? "yes" : "no" );
    printf("Case7 ?  %s\n", my_strcmp("strs", "strlong") == strcmp("strs", "strlong")? "yes" : "no" );
    printf("Case8 ?  %s\n", my_strcmp("", "") == strcmp("", "")? "yes" : "no" );

    //*****************************************
    printf("test my_strrchr: 4 cases\n");
    my_strcpy(str3, "this is a string");
    printf("Case1 ?  %s\n",
        strrchr(str3, 'i') == my_strrchr(str3, 'i') ? "yes" : "no" ); 
    printf("Case2 ?  %s\n",
        strrchr(str3, 0) == my_strrchr(str3, 0) ? "yes" : "no" ); 
    printf("Case3 ?  %s\n",
        strrchr(str3, 'f') == my_strrchr(str3, 'f') ? "yes" : "no" ); 
    printf("Case4 ?  %s\n",
        strrchr(str3, 'a') == my_strrchr(str3, 'a') ? "yes" : "no" ); 
    
    //*****************************************
    printf("test my_strstr: 6 cases\n");
    my_strcpy(str3, "xxxstrxxx");
    printf("Case1 ?  %s\n", strstr(str3, "str") == my_strstr(str3, "str") ? "yes" : "no" ); 
    my_strcpy(str3, "str");
    printf("Case2 ?  %s\n", strstr(str3, "") == my_strstr(str3, "") ? "yes" : "no" ); 
    printf("Case3 ?  %s\n", strstr(str3, "strxxx") == my_strstr(str3, "strxxx") ? "yes" : "no" ); 
    my_strcpy(str3, "");
    printf("Case4 ?  %s\n", strstr(str3, "str") == my_strstr(str3, "str") ? "yes" : "no" );
    my_strcpy(str3, "xxxxst");
    printf("Case5 ?  %s\n", strstr(str3, "str") == my_strstr(str3, "str") ? "yes" : "no" ); 
    my_strcpy(str3, "xxstrxxstrxx");
    printf("Case6 ?  %s\n", strstr(str3, "str") == my_strstr(str3, "str") ? "yes" : "no" ); 

    /***************************
     *  Testing <insert function here>
     *****************************/

    //TODO: this is where you test the other functions to make sure they work...
    //like in the real world, after you implement something, you have to test it
    //to make sure it works and doesn't break other parts of the code, or other
    //collaborators may be a little angry at you




    //before quiting the program, free all memory you allocated
    free(str1);
    free(str2);
    

    return 0;
}
