%{
	#include <stdio.h>
	int vowels = 0;
	int consonants = 0;
%}

%%
[aeiouAEIOU] {vowels++;}
[\t ] {ECHO;}
. {consonants++;}
%%

int main()
{
	yylex();
	printf("\tNumber of Vowels: %d\n", vowels);
	printf("\tNumber of Consonants: %d\n", consonants);
	return 0;
}

int yywrap()
{
	return 1;
}