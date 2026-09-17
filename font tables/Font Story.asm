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
				
			; ¿
			elseif ("\c"="¿")
				dc.b	104
				
			; ¡
			elseif ("\c"="¡")
				dc.b	105
				
			; ^ = Start on Next Line
			elseif ("\c"="^")
				dc.b	$86
				
			; Á
			elseif ("\c"="Á")
				dc.b	80
				
			; É
			elseif ("\c"="É")
				dc.b	81

			; Í
			elseif ("\c"="Í")
				dc.b	82
				
			; Ó
			elseif ("\c"="Ó")
				dc.b	83
				
			; Ú
			elseif ("\c"="Ú")
				dc.b	84
				
			; Ñ
			elseif ("\c"="Ñ")
				dc.b	85
				
			; á
			elseif ("\c"="á")
				dc.b	88
				
			; é
			elseif ("\c"="é")
				dc.b	89

			; í
			elseif ("\c"="í")
				dc.b	90
				
			; ó
			elseif ("\c"="ó")
				dc.b	91
				
			; ú
			elseif ("\c"="ú")
				dc.b	92
				
			; ñ
			elseif ("\c"="ñ")
				dc.b	93
				
			; Ü
			elseif ("\c"="Ü")
				dc.b	94
				
			; ü
			elseif ("\c"="ü")
				dc.b	95
							
			else
				dc.b	0
		
			endif

i = i+1
	endw

	endm