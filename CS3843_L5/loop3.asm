		ORG		$E000
		LDX		#$0100
		TXS				;sets SP to $00FF
		
LOOP	LDAA	$1008
		ASRA
		BCC		LOOP
		JSR		COPY
		BRA		LOOP
		
COPY	PSHA			;save accumulator A
		LDAA	$1005	;read pins on Port C
		STAA	$1004	;write data to Port B
		PULA			;restore accumulator A
		RTS