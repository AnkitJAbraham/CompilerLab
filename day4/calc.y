 %{

    #include<stdio.h>

    int flag=0;

   

%}

%token NUMBER



%left '+' '-'

%left '*' '/' '%'

%left '(' ')'

%%

ArithmeticExpression: E {
                            if (yylex() == 0) {
                                printf("\n\tResult - %d\n", $1);
                                return 0;
                            } else {
                                yyerror("Invalid characters after expression");
                                return 1;  // Indicate parsing error
                            }
                        };

E: '(' E ')' { $$ = $2; } | E '+' E { $$ = $1 + $3; }
   | E '-' E { $$ = $1 - $3; } | E '*' E { $$ = $1 * $3; }
   | E '/' E { $$ = $1 / $3; } | E '%' E { $$ = $1 % $3; }
   | NUMBER { $$ = $1; };


%%



void main()

{

   printf("\nEnter any arithmetic expression : \n");

   yyparse();

  if(flag==0)

   printf("\nEntered arithmetic expression is Valid\n\n");

 

}

void yyerror(const char *s) {
    printf("\nError: %s\n", s);
    printf("Entered arithmetic expression is Invalid\n");
    flag = 1;
}


