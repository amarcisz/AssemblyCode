; Exchange locations NUM1 and NUM2 (1 byte positive integers)
;
 ORG $0000 start data at 0000
NUM1 FCB $99 reserve storage for the first number
NUM2 FCB $A0 reserve storage for the second number
 ORG $E000 continue with program at E000
 LDAA NUM1 load the first number
 LDAB NUM2 load the second number
 STAA NUM2 store the first number
 STAB NUM1 store the second number
 NOP this is where your program ends