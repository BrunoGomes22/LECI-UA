grammar FracLang;

program: (stat ';')* EOF;

stat:   
        'display' expr      #statDisplay
    |   VAR '<=' expr      #statAssign
    ;

expr:   
        sign=('+' | '-') expr       #exprSign
    |   '(' expr ')'                #exprParenthesis
    |   expr op=('*' | ':') expr    #exprMultDiv
    |   expr op=('+' | '-') expr    #exprSumSub
    |   'reduce' expr               #exprReduce
    |   'read' TEXT                 #exprRead
    |   NUMBER                      #exprNumber
    |   NUMBER'/'NUMBER             #exprFrac
    |   VAR                         #exprVar
    ;


WS: [ \t\r\n]+ -> skip;
COMMENT: '--' .*? '\n' -> skip;
NUMBER: [0-9]+;
VAR: [a-z]+;
TEXT: '"' .*? '"';