// DELETE THIS CONTENT IF YOU PUT COMBINED GRAMMAR IN Parser TAB
lexer grammar CongruentLexemes;

KW_VAR: 'var';
KW_FUNCTION: 'function';
KW_RETURN: 'return';
ASSIGN: '=';
PLUS: '+';
MINUS: '-';
MULTIPLY: '*';
DIVIDE: '/';
COLON: ':';
SEMICOLON: ';';
LPAREN: '(';
RPAREN: ')';
COMMA: ',';
LCURLY: '{';
RCURLY: '}';
QUOTE: '"';

INT : [0-9]+ ;
ID: [a-zA-Z_][a-zA-Z_0-9]* ;
WS: [ \t\n\r\f]+ -> skip ;