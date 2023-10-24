%{
	#include<stdio.h>
	#include<stdlib.h>
	int flag=0;
%}

%%
^[a-z.0-9]+@[a-z]+".com"|".in" {flag=1;}
. 
%%

int main()
{
	yylex();
	if(flag==1)
		printf("\tValid Email\n");
	else
		printf("\tNot a valid email\n");
}

int yywrap() 
{
	return 1;
}