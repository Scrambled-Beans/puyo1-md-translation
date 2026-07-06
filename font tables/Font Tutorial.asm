; --------------------------------------------------------------
; Tutorial
; --------------------------------------------------------------

FONT_TUTORIAL macro text, game_mode

i = 0

	while i<strlen(\text)
	
c substr 1+i,1+i,\text


			; Space
			if ("\c"=" ")
				dc.w	$350+game_mode		

			; 0-9
			elseif ("\c">="0")&("\c"<="9")
				dc.w	("\c"+377)*2+game_mode	
			
			; A-Z
			elseif ("\c">="A")&("\c"<="Z")
				dc.w	("\c"+375)*2+game_mode	
				
			; a-z
			elseif ("\c">="a")&("\c"<="z")
				dc.w	("\c"+375)*2+game_mode	
				
			; .
			elseif ("\c"=".")
				dc.w	$430+game_mode	
				
			; ,
			elseif ("\c"=",")
				dc.w	$432+game_mode	
				
			; '
			elseif ("\c"="'")
				dc.w	$434+game_mode	
						
			; -
			elseif ("\c"="-")
				dc.w	$436+game_mode	
							
			; ?
			elseif ("\c"="?")
				dc.w	$438+game_mode	
											
			; !
			elseif ("\c"="!")
				dc.w	$43A+game_mode						
				
			; “
			elseif ("\c"="“")
				dc.w	$43C+game_mode	
				
			; ”
			elseif ("\c"="”")
				dc.w	$43E+game_mode	
				
			; é
			elseif ("\c"="é")
				dc.w	$410+game_mode
							
			else
				dc.w	$350+game_mode	

			endif


i = i+1
	endw

	endm