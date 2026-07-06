; --------------------------------------------------------------
; Story
; --------------------------------------------------------------

FONT_STORY macro text

i = 0

	while i<strlen(\text)
	
c substr 1+i,1+i,\text


			; Space
			if ("\c"=" ")
				dc.b	0

			; 0-9
			elseif ("\c">="0")&("\c"<="9")
				dc.b	("\c"-47)
			
			; A-Z
			elseif ("\c">="A")&("\c"<="Z")
				dc.b	("\c"-49)
				
			; a-z
			elseif ("\c">="a")&("\c"<="z")
				dc.b	("\c"-49)
				
			; .
			elseif ("\c"=".")
				dc.b	96
				
			; ,
			elseif ("\c"=",")
				dc.b	97
				
			; '
			elseif ("\c"="'")
				dc.b	98
				
			; -
			elseif ("\c"="-")
				dc.b	99	
				
			; ?
			elseif ("\c"="?")
				dc.b	100
											
			; !
			elseif ("\c"="!")
				dc.b	101

			; “
			elseif ("\c"="“")
				dc.b	102
				
			; ”
			elseif ("\c"="”")
				dc.b	103
				
			; ^ = Start on Next Line
			elseif ("\c"="^")
				dc.b	$86
				
			; é
			elseif ("\c"="é")
				dc.b	80
							
			else
				dc.b	0
		
			endif

i = i+1
	endw

	endm