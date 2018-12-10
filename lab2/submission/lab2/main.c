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

    printf("str1 strlen: %zu  my_strlen: %zu   are they equal?  %s\n",
        strlen(str1), my_strlen(str1),  
        strlen(str1) == my_strlen(str1) ? "yes" : "no" ); 
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



    /*****************************
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