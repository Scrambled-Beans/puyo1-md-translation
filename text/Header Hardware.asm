
				; !!DO NOT CHANGE THE LENGTH OF THE TEXT!!

	if SetRegion=1	; UK

Console:		DC.b "SEGA MEGA DRIVE " 								; Hardware system ID (Console name)

; ---------------------------------------------------------------------------------		

	else			; USA

Console:		DC.b "SEGA GENESIS    " 								; Hardware system ID (Console name)

	endc
