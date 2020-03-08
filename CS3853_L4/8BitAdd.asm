; add two 8 bit numbers)
;
 ORG $0000 start data at 0000
NUM1 FCB $02 reserve storage for the first number
NUM2 FCB $02 reserve storage for the second number
SUM8 FCB $00 reserve storage for the sum
 ORG $E000 continue with program at E000
 LDAA NUM1 load the first number
 LDAB NUM2 load the second number
 ABA
 STAA SUM8
 NOP this is where your program ends