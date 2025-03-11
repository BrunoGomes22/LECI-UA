grammar StrLang;

program: stat* EOF;

stat:
        'print' expr    #statPrint
    |    VAR':' expr    #statAssign
    ;

expr:
        STR             #exprStr
    |   VAR             #exprVar
    |  'input''(' expr ')' #exprInput
    |  expr '+' expr    #exprConcat
    |  expr '-' expr    #exprRem
    |  'trim' expr      #exprTrim
    |  '(' expr ')'     #exprParenthesis
    |  expr'/'expr'/'expr #exprReplace
    ;

WS: [ \t\r\n]+ -> skip;
COMMENT: '//' .*? '\n' -> skip;
STR: '"'.*? '"';
VAR: [a-z0-9]+;   