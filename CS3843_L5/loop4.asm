		ORG $E000
		LDX		#$0100
		TXS 			;sets SP to $00FF
		CLI		
LOOP 	ADDD	#1	
		BRA 	LOOP

		ORG 	$E100
		PSHX
		LDAA	$1005	;read pins on Port C
		STAA	$1004	;write data to Port B
		PULX
		RTI
		;interrupt service

		ORG 	$FFF2
		FCB 	$E1		;interrupt vector for IRQ interrupt
		FCB		$00 	;Note $E100 is the starting address of the interrupt service routine