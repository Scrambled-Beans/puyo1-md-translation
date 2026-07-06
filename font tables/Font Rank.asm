; --------------------------------------------------------------
; Rank
; --------------------------------------------------------------

FONT_RANK macro text

i = 0

	while i<strlen(\text)
	
c substr 1+i,1+i,\text
		

			; Space
			if ("\c"=" ")
				dc.b	0
											
			; A-Z
			elseif ("\c">="A")&("\c"<="Z")
				dc.b	("\c"-64)

			; .
			elseif ("\c"=".")
				dc.b	27
				
			; !
			elseif ("\c"="!")
				dc.b	28
							
			else
				dc.b	0
		
			endif

i = i+1
	endw

	endm
