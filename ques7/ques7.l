%{
  #include <stdio.h>  
%}
%%
[a-zA-Z]+ {
    for(int i =yyleng-1 ; i>=0 ; i--){
        for(int j = 0 ; j<= i ; j++ ){
            printf("%c", yytext[j]);
        }
        printf("\n");
    }
 }
.|\n { ; }
%%
int main() {
  yyin = fopen("input.txt", "r");
  yylex();
  return 0;
}

int yywrap() {
  return 1;
}