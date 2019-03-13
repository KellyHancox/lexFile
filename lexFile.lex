%{
  #include <stdio.h>
  #include <stdlib.h>
%}

%%
[A-Z]{1}[a-z]*	{printf("NAME %s\n", yytext);}

\([0-9]{3}\)[0-9]{3}-[0-9]{4}	{printf("PHONE %s\n", yytext);}

(sun|mon|tues|wednes|thurs|fri|sat)day     {printf("DAY %s\n", yytext);}

[\t\n\r]

%%

int main(int argc, char** argv){
  yylex();
  return 0;
}
