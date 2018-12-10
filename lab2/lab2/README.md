# cs429-lab2-test


## Introduction
Here's how this works:

grade.c has the code to test each function, you can run "./grade" to do a single test, for example"

$./grade strcpy hello

will test the strcpy function, you can check grade.c to see how many parameters it takes, strcpy test only takes one. The grade binary will print one number as output: 0 or 1. 0 means the output is different, which says that your code is wrong, 1 means your code is right.

To know how many parameters it takes, see how many argv it uses. If the function uses only argv[2], it takes one, argv[2-3], two. And argv[2], argv[3] and argv[4], three parameters. You can easily read the code and figure out what the parameters are.

The python script is a helper to run a set of tests in a row, so you don't have to run one at a time. Fill the tests array with tests and run the python script once.



## To use this

1. Copy all files to your assignment lab, note that this will overwrite the Makefile if you changed it. In this case, copy the grade rule to it.
2. Run "make grade", to build the C file, this will link to your assembly and C files to the grading script
3. Run "python grade.py". This will run all the tests that are in the "tests" array in the python file.


As you finish a function and you want to test it, write the tests to the tests array in the python file and uncomment the function that tests it in grade.c. Then recompile by doing: "make clean ; make".

If you find any errors (and you probably will, post on Piazza and I'll fix it ASAP).


