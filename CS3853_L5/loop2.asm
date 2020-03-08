		ORG		$E000
LOOP	LDAA	$1008
		ASRA
		BCC		LOOP
		LDAA	$1005	;read pins on Port C
		STAA	$1004	;write data to Port B
		BRA		LOOP