%option noyywrap yylineno
%{

#include <stdio.h>
#include <stdlib.h>   
#include "token.h"


int lines = 0;
int words = 0;
int chars = 0;
int yylval;   

%}

%%

"if"        { return IF; }
"else"      { return ELSE; }
"while"     { return WHILE; }
"for"       { return FOR; }
"return"    { return RETURN; }
"int"       { return INT; }
"float"     { return FLOAT; }

"<="        { return LEQ; }
">="        { return GEQ; }
"=="        { return EQ; }
"!="        { return NEQ; }

"<"         { return '<'; }
">"         { return '>'; }
"+"         { return '+'; }
"-"         { return '-'; }
"*"         { return '*'; }
"/"         { return '/'; }
"="         { return '='; }

"("         { return '('; }
")"         { return ')'; }
"{"         { return '{'; }
"}"         { return '}'; }
";"         { return ';'; }
","         { return ','; }
[a-zA-Z_][a-zA-Z0-9_]*    { return ID; }
[0-9]+                    { return NUM; }

%%




