grammar Vector;

program: (stat ';')* EOF;

stat:
		'show' expr			#statShow
	|	expr '->' VAR		#statAssign
	;

expr:
		sign=('+' | '-') expr			#exprSign
	|	expr '*' expr					#exprMultiply
	|	expr '.' expr					#exprInternalProduct
	|	expr op=('+' | '-') expr 		#exprSumSub
	|	'(' expr ')'					#exprParenthesis
	|	VECTOR							#exprVector
	|	NUMBER							#exprNumber
	|	VAR								#exprVar
	;

VECTOR: '[' NUMBER (',' NUMBER)*  ']';
WS:[ \t\r\n]+ -> skip;
COMMENT: '#' .*? '\n' -> skip;
NUMBER: INT | FLOAT;
INT: [0-9]+;
FLOAT: [0-9]+ '.' [0-9]+;
VAR: [a-z]+[a-z0-9]*;