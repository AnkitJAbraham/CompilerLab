%{
    #include<stdio.h>
    int flag=0;
%}

%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%
ArithmeticExpression:  E{
                            printf("\n\tResult - %d\n", $$);
                            return 0;
                        };

E: E'+'E {$$=$1+$3;} |E'-'E {$$=$1-$3;} |E'*'E {$$=$1*$3;} |E'/'E {$$=$1/$3;} |E'%'E {$$=$1%$3;} |'('E')' {$$=$2;} | NUMBER {$$=$1;};
%%

int main()
{
    printf("\n\tEnter any arithmetic expression : \n");
    yyparse();
    if(flag == 0)
        printf("\n\tEntered arithmetic expression is valid.\n\n");
    return 0;
}

void yyerror()
{
   printf("\n\tEntered arithmetic expression is invalid.\n\n");
   flag=1;
}
