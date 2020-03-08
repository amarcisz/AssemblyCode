; add two 8 bit numbers)
;
 ORG $0000 start data at 0000
NUM1 FCB $3D reserve storage for the first number
 FCB $FF
NUM2 FCB $55 reserve storage for the second number
 FCB $CC
SUM16 FCB $00 reserve storage for the sum
 FCB $00
 ORG $E000 continue with program at E000
 LDAA NUM1+1 load the first number
 ADCA NUM2+1
 STAA SUM16+1
 LDAB NUM1
 ADCB NUM2
 STAB SUM16
 NOP this is where your program ends