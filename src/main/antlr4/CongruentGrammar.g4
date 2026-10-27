parser grammar CongruentGrammar;
options { tokenVocab=CongruentLexemes; }

program
    : toplevel* EOF
    ;
toplevel: stat | funcdef;

stat: vardef ';'
    | ID '=' expr ';'
    | expr ';'
    | KW_RETURN expr ';'
    ;

vardef: KW_VAR realVardef;
realVardef: ID typeSpecification ('=' expr)?;

// Source - https://stackoverflow.com/a/26803910
// Posted by Mephy
// Retrieved 2026-10-27, License - CC BY-SA 3.0

expr: add value
    | expr mult expr
    | expr add expr
    | value
    ;
value: ID
     | INT
     | func
     | '(' expr ')'
     ;
add: '+' | '-';
mult: '*' | '/';

func : ID '(' expr (',' expr)* ')' ;
typeSpecification: COLON ID;
funcdef: KW_FUNCTION ID '(' realVardef (',' realVardef)* ')' typeSpecification? '{' stat*'}';