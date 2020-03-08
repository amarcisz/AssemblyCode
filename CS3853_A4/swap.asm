		ORG	$FFF6
		FCB	$E1
		FCB	$00

		ORG $E000
		LDS #$FF 	;sets SP to $00FF	
		LDAA	#1
		LDAB	#2
		SWI
		NOP

		ORG	$E100
		STAA	$F8
		STAB	$F9
		RTI
