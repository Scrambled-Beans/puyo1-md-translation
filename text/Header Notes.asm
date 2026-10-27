
				; !!DO NOT CHANGE THE LENGTH OF THE TEXT!!
				
				; Notes (unused, anything can be put in this space)

; ---------------------------------------------------------------------------------	

	if SetRegion=1			; UK

Notes:			DC.b "TRANSLATION V1.2 - 15/09/2026 (DMY)     "

; ---------------------------------------------------------------------------------	

	elseif SetRegion=0		; USA

Notes:			DC.b "TRANSLATION V1.2 - 09/15/2026 (MDY)     "

; ---------------------------------------------------------------------------------	

	elseif SetRegion=3		; LAT Spanish

Notes:			DC.b "TRADUCCION V0.9 - 15/09/2026 (DMA)      "

; ---------------------------------------------------------------------------------	

	elseif SetRegion=2		; EU Spanish

Notes:			DC.b "TRADUCCION V0.1 - 15/09/2026 (DMA)      "

; ---------------------------------------------------------------------------------	

	else					; Other

Notes:			DC.b "TRANSLATION V?.? - ??/??/???? (DMY)     "

; ---------------------------------------------------------------------------------	

	endc