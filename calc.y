/* Definition Section */
%{
#include <stdio.h>
int flag = 0;
%}

%token  NUMBER

%left   '+' '-'
%left   '*' '/' '%'
%left   '(' ')'
%left   UMINUS      /* unary minus */

/*  Grammar Section */
%%
ArithmeticExpression:   expr{
                            printf("\nResult = %d\n", $$);
                            return 0;
                        };

expr:    expr '+' expr          {$$ = $1 + $3;}
       | expr '-' expr          {$$ = $1 - $3;}
       | '-'expr  %prec UMINUS  {$$ = -$2;}
       | expr '*' expr          {$$ = $1 * $3;}
       | expr '/' expr          {$$ = $1 / $3;}
       | '('expr')'             {$$ = $2;}
       | NUMBER                 {$$ = $1;}
        ;
%%

/* Program Section */
void main() {
    printf("\nEnter the expression: \n");

    yyparse();
}

void yyerror() {
    printf("Entered expression is invalid!\n");
    flag = 1;
}
