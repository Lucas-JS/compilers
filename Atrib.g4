grammar Atrib;
prog: atribuicao ;

atribuicao : identificador op_atrib ( identificador | inteiro | decimal ) ( op_arit (identificador | inteiro | decimal ) )* pv;

inteiro : INT 
	;
decimal : FLOAT	
	;
identificador : ID
	;
op_atrib : ATRIB
	;
op_arit : ARIT
	;
pv : PV
   ;

INT : [0-9]+
	;

FLOAT : [0-9]* '.' [0-9]+
	;
ARIT : [+-]|[*/]
	 ;
ID : [a-z]+ ([A-Z]|[0-9])*
   ;
ATRIB : '='
	  ;
PV : ';'
   ;

WS : [ \t\n\r]+ -> skip;
