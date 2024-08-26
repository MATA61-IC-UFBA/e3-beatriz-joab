/* token.h */

typedef enum {
    ID = 256, 
    NUM,
    IF,
    ELSE,
    WHILE,
    FOR,
    RETURN,
    INT,
    FLOAT,
    LEQ,     // <=
    GEQ,     // >=
    EQ,      // ==
    NEQ,     // !=
    ERROR    // Token de erro para símbolos não reconhecidos
} token_t;
