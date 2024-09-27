grammar setlang;

program: (stat ';')* EOF;

stat: 
      variableDecl  #VariableStat
    | assignment    #AssignmentStat
    | writeStmt     #WriteStat
    | writelnStmt   #WritelnStat
    | ifStmt        #IfStat
    | loopStmt      #LoopStat
    ;

writelnStmt: 'writeln' expr ;

writeStmt: 'write' expr ;

ifStmt:
    'if' booleanExpr 'then' (stat)* ('else' (stat)*)? 'end'
    ;

loopStmt: 'loop' (writelnStmt | stat ';')* loopCondition ('do' (writelnStmt | stat ';')*)? 'end' ;

loopCondition:
      'until' booleanExpr
    | 'while' booleanExpr
    ;


booleanExpr:
      '(' booleanExpr ')'                           #BooleanPar
    | expr op=('='|'/='|'>'|'<'|'>='|'<=') expr     #Relational
    | 'not' booleanExpr                             #Not
    | booleanExpr 'and' booleanExpr                 #And
    | booleanExpr 'or' booleanExpr                  #Or
    | BOOLEAN                                       #BooleanLit
    ;

variableDecl:
      'set<' type '>' TEXT ':=' 'set<' type '>(' readFunction ')'   #SetDeclRead
    | 'set<' type '>' TEXT ':=' setLiteral                          #Set
    | 'set<' type '>' TEXT                                          #SetDecl
    | TEXT ':=' 'set<' type '>(' readFunction ')'                   #VarRead 
    | type TEXT ':=' expr                                           #Var    
    ;

readFunction:
     'read' STRING
    |'read'
    ;

assignment:
    TEXT ':=' expr
    ;

type:
    'integer' | 'real' | 'text'
    ;

setLiteral:
    '{' expr (',' expr)* '}'
    ;

expr:
      '(' expr ')'                      #ExprPar
    | expr op=('//'|'\\'|'*'|'/') expr  #ExprMultDiv
    | expr op=('+'|'-') expr            #ExprSumSub
    | STRING '+' expr                   #ExprConcat
    | setLiteral                        #ExprSetLiteral
    | TEXT                              #ExprText
    | literal                           #ExprLit
    | setConstructor                    #ExprSetConst
    | '{}'                              #ExprEmptySet
    | 'text' '(' expr ')'               #ExprTextFunc
    ;


setConstructor:
    'set<' type '>' '(' readFunction ')'
    ;

literal:
      INT       #IntLit
    | REAL      #RealLit
    | STRING    #StringLit
    | TEXT      #TextLit
    ;


BOOLEAN : 'true' | 'false';
STRING: '"' .*? '"';
INT: [0-9]+;
REAL: [0-9]+ '.' [0-9]+;
TEXT: [a-zA-Z0-9]+;
COMMENT: '--' .*? '\n' -> skip;
WS: [ \t\n\r]+ -> skip;