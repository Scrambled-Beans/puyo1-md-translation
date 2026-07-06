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
				
			; o = ON
			elseif ("\c"="o")
				dc.b	60, 61
				
			; x = OFF
			elseif ("\c"="x")
				dc.b	62, 63
				
			; ©
			elseif ("\c"="©")
				dc.b	37
				
			else
				dc.b	0
		
			endif
		
i = i+1
	endw

	endm