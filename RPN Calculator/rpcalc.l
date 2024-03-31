%{
  #include <stdio.h>
  #include "rpcalc.tab.h"
%}
%option noyywrap

%%

[ \t]	;
([0-9]+\.[0-9]+)|[0-9]+ 	{yylval = atof(yytext); return NUM;}
\n				{return NEWLINE;}
\+				{return PLUS;}
\-				{return MINUS;}
\*				{return MULTIPLY;}
\/				{return DIVIDE;}
\^				{return POWER;}
\sqrt				{return SQRT;}
n				{return NEG;}

%%
