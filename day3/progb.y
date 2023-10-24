%{
    #include <stdio.h>
    int yylex(void);
    int yyerror();
    int valid = 1;
%}

%token digit letter

%%
    start: letter s
    s: letter s | digit s |;
%%

int yyerror()
{
    printf("\tIt is an invalid identifier.\n");
    valid = 0;
    return 0;
}

int main()
{
    printf("\n\tAnkit John Abraham\nRoll: 36 S7 CSA\n");
    printf("\tEnter the identifier: ");
    yyparse();
    if(valid)
    {
        printf("\tIt is a valid identifier.\n");
    }
}