%{
#include<stdio.h>
#include<math.h>

int yylex (void);
extern int yyparse();
extern FILE* yyin;

void yyerror (char const *);
%}

%define api.value.type {double}

%token NUM
%token PLUS MINUS MULTIPLY DIVIDE
%token NEWLINE
%token NEG POWER
%token SQRT
%start input


%%

input:
  %empty
| input line
;

line:
  NEWLINE
| exp NEWLINE {printf("%.10g\n", $1); }
;

exp:
  NUM
| exp exp PLUS {$$ = $1 + $2;}
| exp exp MINUS {$$ = $1 - $2;}
| exp exp MULTIPLY {$$ = $1 * $2;}
| exp exp DIVIDE {$$ = $1 / $2;}
| exp exp POWER {$$ = pow($1,$2);}
| exp NEG {$$ = -$1;}
| exp SQRT {$$ = sqrt($1);}
;
%%


void yyerror (char const *s){
  fprintf(stderr, "%s\n",s);
}

int main(void){
  yyin = stdin;
  do {
	yyparse();
  } while (!feof(yyin));
  return 0;
}  
