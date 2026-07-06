
Stage_7:	; Zombie

; ---------------------------------------------------------------------------------
		
		Animation_Arle		11
		Frames_Pause		40
		
						   ; X   Y   W  L  Speak
		New_Frame			 3,  9, 20, 3, Arle
					
		Animation_Arle		10
					
		Font_Story 			"Ugh...^"
		Animation_Arle		11
		Frames_Pause		45
		Animation_Arle		10
		Font_Story 			"What's that terrible"
		Font_Story 			"smell?"
		
		Animation_Arle		11
		Frames_Pause		70
		
		Close_Frame

; ---------------------------------------------------------------------------------	
		
		Frames_Pause		60
					
						   ; X   Y   W  L  Speak
		New_Frame			21, 13, 11, 1, Enemy
																									
		Font_Story 			"GRA"		
		Cutscene_Enemy		6
		Cutscene_Enemy		7
		Animation_Enemy		1		
		Font_Story 			"AAAAAGH!"
		
		Animation_Arle		3
		Frames_Pause		60
			   
		Close_Frame
					
; ---------------------------------------------------------------------------------
		
		Frames_Pause		20
		
						   ; X   Y   W  L  Speak
		New_Frame			 7, 13,  7, 1, Arle				
										
		Font_Story 			"AAAAAH!"
		
		Frames_Pause		45
		
		Close_Frame
		
; ---------------------------------------------------------------------------------

		Frames_Pause		30

						   ; X   Y   W  L  Speak
		New_Frame			18, 11, 16, 2, Enemy
			  
										
		Font_Story 			"You shall not..."
		Frames_Pause 		16
		Font_Story 			"PASS!!!"
		
		Frames_Pause 		80
		
		Close_Frame

; ---------------------------------------------------------------------------------
		
		Dialog_End
												
		even
									
; ---------------------------------------------------------------------------------
