; --------------------------------------------------------------
; Staff
; --------------------------------------------------------------

FONT_STAFF macro text

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
				
			; <
			elseif ("\c"="<")
				dc.b	76
				
			; >
			elseif ("\c"=">")
				dc.b	78
			
			; .
			elseif ("\c"=".")
				dc.b	80
				
			; ,
			elseif ("\c"=",")
				dc.b	82
				
			; :
			elseif ("\c"=":")
				dc.b	84
				
			; ;
			elseif ("\c"=";")
				dc.b	86
											
			; ?
			elseif ("\c"="?")
				dc.b	88				
							
			; !
			elseif ("\c"="!")
				dc.b	90			
							
			; -
			elseif ("\c"="-")
				dc.b	92
						
			; +
			elseif ("\c"="+")
				dc.b	94			
				
			; =
			elseif ("\c"="=")
				dc.b	96
				
			; '
			elseif ("\c"="'")
				dc.b	98
				
			; “
			elseif ("\c"="“")
				dc.b	100
											
			; ”
			elseif ("\c"="”")
				dc.b	102
							
			; *
			elseif ("\c"="*")
				dc.b	104
							
			; &
			elseif ("\c"="&")
				dc.b	106
						
			; (
			elseif ("\c"="(")
				dc.b	108
				
			; )
			elseif ("\c"=")")
				dc.b	110
						
			; $ = S. (for VS. text)
			elseif ("\c"="$")
				dc.b	112
				
			; /
			elseif ("\c"="/")
				dc.b	114
				
			; Star
			elseif ("\c"="¤")
				dc.b	154
							
			; ™
			elseif ("\c"="™")
				dc.b	156, 158
				
			; ©
			elseif ("\c"="©")
				dc.b	74
							
			else
				dc.b	0
		
			endif
		
i = i+1
	endw

	endm