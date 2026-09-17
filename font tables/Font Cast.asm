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
				
			; Á
			elseif ("\c"="Á")
				dc.b	96
				
			; É
			elseif ("\c"="É")
				dc.b	98

			; Í
			elseif ("\c"="Í")
				dc.b	100
				
			; Ó
			elseif ("\c"="Ó")
				dc.b	102
				
			; Ú
			elseif ("\c"="Ú")
				dc.b	104
				
			; Ñ
			elseif ("\c"="Ñ")
				dc.b	106
				
			; Ü
			elseif ("\c"="Ü")
				dc.b	108
										
			else
				dc.b	0
		
			endif
		
i = i+1
	endw

	endm