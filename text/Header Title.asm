
				; !!DO NOT CHANGE THE LENGTH OF THE TEXT!!
				
; ---------------------------------------------------------------------------------	

	if SetRegion=1			; English (UK)

Title_Local:	DC.b "PUYO PUYO (ENG-UK)                              " ; Domestic name
Title_Int:		DC.b "PUYO PUYO (ENG-UK)                              " ; International name

; ---------------------------------------------------------------------------------		

	elseif SetRegion=0		; English (USA)

Title_Local:	DC.b "PUYO PUYO (ENG)                                 " ; Domestic name
Title_Int:		DC.b "PUYO PUYO (ENG)                                 " ; International name

; ---------------------------------------------------------------------------------		

	elseif SetRegion=3		; Latin Spanish

Title_Local:	DC.b "PUYO PUYO (ESP-LA)                              " ; Domestic name
Title_Int:		DC.b "PUYO PUYO (ESP-LA)                              " ; International name

; ---------------------------------------------------------------------------------
		
	elseif SetRegion=2		; European Spanish

Title_Local:	DC.b "PUYO PUYO (ESP-ES)                              " ; Domestic name
Title_Int:		DC.b "PUYO PUYO (ESP-ES)                              " ; International name

; ---------------------------------------------------------------------------------	
		
	else					; Other

Title_Local:	DC.b "PUYO PUYO (???)                                 " ; Domestic name
Title_Int:		DC.b "PUYO PUYO (???)                                 " ; International name

; ---------------------------------------------------------------------------------	

	endc
