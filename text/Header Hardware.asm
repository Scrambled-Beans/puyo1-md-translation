
				; !!DO NOT CHANGE THE LENGTH OF THE TEXT!!
				
; ---------------------------------------------------------------------------------	

	if ConsoleHeader=1	; Sega Genesis

Console:		DC.b "SEGA GENESIS    " 								; Hardware system ID (Console name)

; ---------------------------------------------------------------------------------		

	else 				; Sega Mega Drive

Console:		DC.b "SEGA MEGA DRIVE " 								; Hardware system ID (Console name)

; ---------------------------------------------------------------------------------		

	endc
