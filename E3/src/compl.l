%option noyywrap yylineno
%{

#include "token.h"

// Definições dos tokens específicos
#define IF 257
#define LEQ 258
#define GEQ 259
#define EQ 260
#define NEQ 261
#define LT 262
#define GT 263
#define PLUS 264
#define MINUS 265
#define MULT 266
#define DIV 267
#define LPAREN 268
#define RPAREN 269
#define LBRACE 270
#define RBRACE 271
#define SEMICOLON 272
#define ASSIGN 273

%}

%%

// Palavras-chave
"if"               { return IF; } 

// Operadores relacionais compostos
"<="               { return LEQ; }
">="               { return GEQ; }
"=="               { return EQ; }
"!="               { return NEQ; }

// Operadores relacionais simples
"<"                { return LT; }
">"                { return GT; }

// Operadores aritméticos
"+"                { return PLUS; }
"-"                { return MINUS; }
"*"                { return MULT; }
"/"                { return DIV; }

// Símbolos
"("                { return LPAREN; }
")"                { return RPAREN; }
"{"                { return LBRACE; }
"}"                { return RBRACE; }
";"                { return SEMICOLON; }
"="                { return ASSIGN; }

// Tratamento de erro
.                  { return ERROR; }

%%

int yywrap(void) {
    return 1;
}


