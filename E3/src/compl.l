%option noyywrap yylineno
%{

#include "token.h"  // Inclusão do arquivo de tokens

%}

%%

// Palavras-chave
"if"        { return IF; }
"else"      { return ELSE; }
"while"     { return WHILE; }
"for"       { return FOR; }
"return"    { return RETURN; }
"int"       { return INT; }
"float"     { return FLOAT; }

// Operadores compostos
"<="        { return LEQ; }
">="        { return GEQ; }
"=="        { return EQ; }
"!="        { return NEQ; }

// Operadores simples
"<"         { return '<'; }
">"         { return '>'; }
"+"         { return '+'; }
"-"         { return '-'; }
"*"         { return '*'; }
"/"         { return '/'; }
"="         { return '='; }

// Delimitadores e outros símbolos
"("         { return '('; }
")"         { return ')'; }
"{"         { return '{'; }
"}"         { return '}'; }
";"         { return ';'; }
","         { return ','; }

// Identificadores e números
[a-zA-Z_][a-zA-Z0-9_]*    { return ID; }
[0-9]+                    { return NUM; }

// Tratamento de erros
.           { return ERROR; }

%%

int yywrap(void) {
    return 1;
}



