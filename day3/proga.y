%{
    #include <stdio.h>
    int yylex(void);
    int yyerror();
    int valid = 1;
%}

%token num id op

%%
start: id '=' s ';'
s: id x | num x | '-' num x |
'(' s ')' x;
x: op s | '-' s |;
%%

int yyerror()
{
    valid = 0;
    printf("It is an invalid expression.\n");
    return 0;
}

int main()
{
    printf("\n\tAnkit John Abraham\nRoll: 36 S7 CSA\n");
    printf("\tEnter the expression: ");
    yyparse();
    if(valid)
    {
        printf("It is a valid expression.\n");
    }
}