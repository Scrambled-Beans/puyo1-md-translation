
				; !!DO NOT CHANGE THE LENGTH OF THE TEXT!!
				
; ---------------------------------------------------------------------------------	

	if SetRegion=1	; UK

Title_Local:	DC.b "PUYO PUYO (ENG-UK)                              " ; Domestic name
Title_Int:		DC.b "PUYO PUYO (ENG-UK)                              " ; International name

; ---------------------------------------------------------------------------------		

	elseif SetRegion=2	; EU Spanish

Title_Local:	DC.b "PUYO PUYO (ESP-ES)                              " ; Domestic name
Title_Int:		DC.b "PUYO PUYO (ESP-ES)                              " ; International name

; ---------------------------------------------------------------------------------		

	elseif SetRegion=3	; LAT Spanish

Title_Local:	DC.b "PUYO PUYO (ESP-LA)                              " ; Domestic name
Title_Int:		DC.b "PUYO PUYO (ESP-LA)                              " ; International name

; ---------------------------------------------------------------------------------
		
	else			; USA

Title_Local:	DC.b "PUYO PUYO (ENG)                                 " ; Domestic name
Title_Int:		DC.b "PUYO PUYO (ENG)                                 " ; International name

; ---------------------------------------------------------------------------------	

	endc
