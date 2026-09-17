; --------------------------------------------------------------
; Options
; --------------------------------------------------------------

FONT_OPTIONS macro text

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
				dc.b	("\c"-54)
				
			; <
			elseif ("\c"="<")
				dc.b	38
				
			; >
			elseif ("\c"=">")
				dc.b	39
			
			; .
			elseif ("\c"=".")
				dc.b	40
				
			; ,
			elseif ("\c"=",")
				dc.b	41
				
			; :
			elseif ("\c"=":")
				dc.b	42
				
			; ;
			elseif ("\c"=";")
				dc.b	43
											
			; ?
			elseif ("\c"="?")
				dc.b	44				
							
			; !
			elseif ("\c"="!")
				dc.b	45			
							
			; -
			elseif ("\c"="-")
				dc.b	46
						
			; +
			elseif ("\c"="+")
				dc.b	47			
				
			; =
			elseif ("\c"="=")
				dc.b	48
				
			; '
			elseif ("\c"="'")
				dc.b	49

			; “
			elseif ("\c"="“")
				dc.b	50
											
			; ”
			elseif ("\c"="”")
				dc.b	51
					
			; *
			elseif ("\c"="*")
				dc.b	52
							
			; &
			elseif ("\c"="&")
				dc.b	53
						
			; (
			elseif ("\c"="(")
				dc.b	54
				
			; )
			elseif ("\c"=")")
				dc.b	55
						
			; $ = S. (for VS. text)
			elseif ("\c"="$")
				dc.b	56
				
			; /
			elseif ("\c"="/")
				dc.b	57
				
			; ¿
			elseif ("\c"="¿")
				dc.b	58
				
			; ¡
			elseif ("\c"="¡")
				dc.b	59	
											
			; Á
			elseif ("\c"="Á")
				dc.b	64
				
			; É
			elseif ("\c"="É")
				dc.b	65

			; Í
			elseif ("\c"="Í")
				dc.b	66
				
			; Ó
			elseif ("\c"="Ó")
				dc.b	67
				
			; Ú
			elseif ("\c"="Ú")
				dc.b	68
				
			; Ñ
			elseif ("\c"="Ñ")
				dc.b	69

			; Ü
			elseif ("\c"="Ü")
				dc.b	70

				
			; ON/OFF Letters	
				
			; # = OFF
			elseif ("\c"="#")
				dc.b	80, 81				
				
			; o
			elseif ("\c"="o")
				dc.b	82	
				
			; n
			elseif ("\c"="n")
				dc.b	83	
				
			; s
			elseif ("\c"="s")
				dc.b	84	
				
			; í
			elseif ("\c"="í")
				dc.b	85		

				
			else
				dc.b	0
		
			endif
		
i = i+1
	endw

	endm