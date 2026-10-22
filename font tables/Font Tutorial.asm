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
				dc.w	$410+game_mode	
				
			; ,
			elseif ("\c"=",")
				dc.w	$412+game_mode	
				
			; '
			elseif ("\c"="'")
				dc.w	$414+game_mode	
						
			; -
			elseif ("\c"="-")
				dc.w	$416+game_mode	
							
			; ?
			elseif ("\c"="?")
				dc.w	$418+game_mode	
											
			; !
			elseif ("\c"="!")
				dc.w	$41A+game_mode						
				
			; “
			elseif ("\c"="“")
				dc.w	$41C+game_mode	
				
			; ”
			elseif ("\c"="”")
				dc.w	$41E+game_mode	
				
			; ¿
			elseif ("\c"="¿")
				dc.w	$420+game_mode
				
			; ¡
			elseif ("\c"="¡")
				dc.w	$422+game_mode
				
			; Á
			elseif ("\c"="Á")
				dc.w	$3F0+game_mode
				
			; É
			elseif ("\c"="É")
				dc.w	$3F2+game_mode

			; Í
			elseif ("\c"="Í")
				dc.w	$3F4+game_mode
				
			; Ó
			elseif ("\c"="Ó")
				dc.w	$3F6+game_mode
				
			; Ú
			elseif ("\c"="Ú")
				dc.w	$3F8+game_mode
				
			; Ñ
			elseif ("\c"="Ñ")
				dc.w	$3FA+game_mode
				
			; á
			elseif ("\c"="á")
				dc.w	$400+game_mode
				
			; é
			elseif ("\c"="é")
				dc.w	$402+game_mode

			; í
			elseif ("\c"="í")
				dc.w	$404+game_mode
				
			; ó
			elseif ("\c"="ó")
				dc.w	$406+game_mode
				
			; ú
			elseif ("\c"="ú")
				dc.w	$408+game_mode
				
			; ñ
			elseif ("\c"="ñ")
				dc.w	$40A+game_mode
				
			; Ü
			elseif ("\c"="Ü")
				dc.w	$40C+game_mode
				
			; ü
			elseif ("\c"="ü")
				dc.w	$40E+game_mode
														
			else
				dc.w	$350+game_mode	

			endif


i = i+1
	endw

	endm