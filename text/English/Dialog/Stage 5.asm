
Stage_5:	; Sasori-Man

; ---------------------------------------------------------------------------------
		
		Frames_Pause		20
					
						   ; X   Y   W  L  Speak
		New_Frame			15,  9, 22, 3, Enemy
																				
		Animation_Enemy		2
					
		Font_Story 			"Welcome!^"
		
		Frames_Pause		45
		Animation_Enemy		1
		
		Font_Story 			"It's mighty fine tah^"
		Font_Story 			"make yer acquaintance."
		
		Animation_Enemy		3
		Frames_Pause		80
			   
		Close_Frame
					
; ---------------------------------------------------------------------------------

						   ; X   Y   W  L  Speak
		New_Frame			 3, 11, 17, 2, Arle
			  
		Animation_Arle		2
										
		Font_Story 			"Huh? "
		Animation_Arle		21
		Frames_Pause 		35
		Animation_Arle		5
		Font_Story 			"Umm...^"
		Animation_Arle		6
		Frames_Pause 		35
		Animation_Arle		5		
		Font_Story 			"Nice to meet you."	
		
		Animation_Arle		6	
		Frames_Pause 		70
		
		Close_Frame

; ---------------------------------------------------------------------------------
					
						   ; X   Y   W  L  Speak
		New_Frame			15,  7, 22, 4, Enemy
					
		Animation_Enemy		1
					
		Font_Story 			"Mah name's Sasori-Man."
		Frames_Pause		40
		Font_Story 			"I reckon I've got the^"
		Font_Story 			"priv'lege of being^"
		Font_Story 			"yer next opponent."						
					
		Animation_Enemy		0
		Frames_Pause		80
		
		Close_Frame

; ---------------------------------------------------------------------------------					
					
						   ; X   Y   W  L  Speak
		New_Frame			16, 11, 21, 2, Enemy				
					
		Animation_Enemy		1
					
		Font_Story 			"Well then, "
		Frames_Pause		35
		Font_Story 			"let's get^"
		Font_Story 			"commencin', "
		Frames_Pause		35
		Font_Story 			"shall we?"
		
		Animation_Enemy		4
		Frames_Pause		70
		
		Close_Frame

; ---------------------------------------------------------------------------------	
		
		Dialog_End
												
		even
									
; ---------------------------------------------------------------------------------
