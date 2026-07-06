; --------------------------------------------------------------
; Cast
; --------------------------------------------------------------

FONT_CAST macro text

i = 0

	while i<strlen(\text)
	
c substr 1+i,1+i,\text
	

			; Space
			if ("\c"=" ")
				dc.b	0

			; 0-9
			elseif ("\c">="0")&("\c"<="9")
				dc.b	("\c"-47)*2
			
			; A-Z
			elseif ("\c">="A")&("\c"<="Z")
				dc.b	("\c"-54)*2

			; -
			elseif ("\c"="-")
				dc.b	74
				
			; .
			elseif ("\c"=".")
				dc.b	76
										
			else
				dc.b	0
		
			endif
		
i = i+1
	endw

	endm