# 100003/CS722S COMPILER LAB PROGRAMS 

## Tested by yours truly

    as of November 2023

## Compile and Run Methods

1. For C Programs

    ```
    gcc filename.c // compiling
    ./a.out // executing
    ```

    or

    ```
    gcc filename.c -o somename // compiling
    ./somename //executing
    ```

2. For Lex only Programs

    ```
    lex filename.l // compiling lex file
    gcc lex.yy.c -ll // compiling generated C file
    ./a.out // executing
    ```

3. For Lex and Yacc Programs

    ```
    lex filename.l // compiling lex file
    yacc -d filename.y // compiling yacc file
    gcc lex.yy.c y.tab.c -ll // compiling generated C files
    ./a.out // executing
    ```

For Lex and Yacc programs, after command line input, enter 'CTRL + D' for output.
