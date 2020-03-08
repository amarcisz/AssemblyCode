            ORG       $0000     
NUM1        FCB       $99       
NUM2        FCB       $A0       
 
            ORG       $E000     
            LDS		  #$FFFF
			LDX       #NUM1     load the address of the first number
 
            PSHX                push the address of NUM1 onto the stack
            LDX       #NUM2     load the address of the second number
 
            PSHX                push the address of NUM2 onto the stack
            JSR       SWAP2
            NOP       this is where your program ends
;
;
SWAP2       PSHA
			PSHB
			PSHX
			PSHY
			
			TSX
						
			
			LDY		10,X
			LDAB	0,Y
			LDY		8,X
			LDAA	0,Y
			
			STAB	0,Y
			LDY		10,X
			STAA	0,Y

			LDY		6,X
			STY		7,X
			
			PULY
			PULX
			PULB
			PULA
			
			INS
			
			RTS