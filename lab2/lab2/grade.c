#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "my_string.h"
#include <time.h>


#define STR_EQUAL(a, b) (strcmp(a, b) == 0)


int main(int argc, char** argv)
{
    srand (time(NULL));

     if ( STR_EQUAL(argv[1], "strlen") ) {
        char* s1 = argv[2];
        printf("%s\n", s1);
        printf("%d\n", strlen(s1) == my_strlen(s1));
    }

/*
 *
 *  As you do the assignment, uncomment the functions so you can test them incrementally, otherwise
 *  the compiler would complain about a function not being declared.
 */

/*

    if ( STR_EQUAL(argv[1], "strcmp") ) {
        char* s1 = argv[2];
        char* s2 = argv[3];

        int my = my_strcmp(s1, s2);
        int df = strcmp(s1, s2);
        int eq = (my == 0 && df == 0) ||  (my != 0 && df != 0);

        printf("%d\n", eq);
    }

    if ( STR_EQUAL(argv[1], "strncmp") ) {
        char* s1 = argv[2];
        char* s2 = argv[3];
        int n = atoi(argv[4]);

        int my = my_strncmp(s1, s2, n);
        int df = strncmp(s1, s2, n);
        int eq = (my == 0 && df == 0) ||  (my != 0 && df != 0);

        printf("%d\n", eq);
    }

    if ( STR_EQUAL(argv[1], "strcpy") ) {
        char* s1 = argv[2];
        char* s2 = malloc( strlen(s1) + 1) ;
        char* s3 = malloc( strlen(s1) + 1) ;

        my_strcpy(s2, s1);
        strcpy(s3, s1);

        printf("%d\n", STR_EQUAL(s2, s3));

        free(s2);
        free(s3);
    }

   if ( STR_EQUAL(argv[1], "strncpy") ) {
        char* s1 = argv[2];
        int n = atoi(argv[3]);
        char* s2 = malloc(strlen(s1) + 1) ;
        char* s3 = malloc(strlen(s1) + 1) ;

        my_strncpy(s2, s1, n);
        strncpy(s3, s1, n);

        printf("%d\n", STR_EQUAL(s2, s3));

        free(s2);
        free(s3);
    }

    if ( STR_EQUAL(argv[1], "strchr") ) {
        char* s1 = argv[2];
        char* s2 = argv[3];

        printf("%d\n", my_strchr(s1, *s2) == strchr(s1, *s2) ? 1 : 0 );
    }

    if ( STR_EQUAL(argv[1], "strrchr") ) {
        char* s1 = argv[2];
        char* s2 = argv[3];

        printf("%d\n", my_strrchr(s1, *s2) == strrchr(s1, *s2) ? 1 : 0 );
    }


    if ( STR_EQUAL(argv[1], "strcat") ) {
        char* s1 = argv[2];
        char* s2 = argv[3];

        char* r1 = malloc(strlen(s1) + strlen(s2) + 1);
        char* r2 = malloc(strlen(s1) + strlen(s2) + 1);

        strcpy(r1, s1);
        strcpy(r2, s1);

        my_strcat(r1, s2);
        strcat(r2, s2);

        printf("%d\n", STR_EQUAL(r1, r2));

        free(r1);
        free(r2);
    }

    if ( STR_EQUAL(argv[1], "strncat") ) {
        char* s1 = argv[2];
        char* s2 = argv[3];
        int n = atoi(argv[4]);

        char* r1 = malloc(strlen(s1) + strlen(s2) + 1);
        char* r2 = malloc(strlen(s1) + strlen(s2) + 1);

        strcpy(r1, s1);
        strcpy(r2, s1);

        my_strncat(r1, s2, n);
        strncat(r2, s2, n);

        printf("%d\n", STR_EQUAL(r1, r2));

        free(r1);
        free(r2);
    }

    if ( STR_EQUAL(argv[1], "memmove") ) {
        int len = (rand() % 200) + 20;

        char* a = malloc(len);
        char* b = malloc(len);
        for (int i = 0 ; i < len ; i++) {
            a[i] = rand() % 255;
            b[i] = a[i];
        }

        int n = (rand() % len) / 2;
        int offset = (rand() % len) / 2;

        memmove(a+offset, a, n);
        my_memmove(b+offset, b, n);

        int eq = memcmp(a, b, n);

        printf("%d\n", eq == 0);

        free(a);
        free(b);
    }

    if ( STR_EQUAL(argv[1], "strstr") ) {
        char* s1 = argv[2];
        char* s2 = argv[3];

        printf("%d\n", strstr(s1, s2) == my_strstr(s1, s2));
    }

    if ( STR_EQUAL(argv[1], "memset") ) {
        int len = (rand() % 200) + 20;

        char* a = malloc(len);
        char* b = malloc(len);

        char byte = rand() % 255;

        memset(a, byte, len);
        my_memset(b, byte, len);

        int eq = memcmp(a, b, len);

        printf("%d\n", eq == 0);

        free(a);
        free(b);
    }

    if ( STR_EQUAL(argv[1], "strcspn") ) {
        char* s1 = argv[2];
        char* s2 = argv[3];

        printf("%d\n", strcspn(s1, s2) == my_strcspn(s1, s2));
    }
*/


    return 0;
}
