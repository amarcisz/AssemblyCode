               ORG      $0000    start data at 0000
NUM1           FCB      $99      reserve storage for the first number
NUM2           FCB      $A0      reserve storage for the second number
 
               ORG      $E000    continue with program at E000
               LDX      #NUM1    load the address of the first number
               LDY      #NUM2    load the address of the second number
 
               JSR      SWAP1    call the subroutine SWAP
               NOP              this is where your program ends
;
;
SWAP1		   LDAA		0,X
			   LDAB		0,Y
			   
			   STAA		0,Y
			   STAB		0,X
			   RTS