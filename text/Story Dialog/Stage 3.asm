
Stage_3:	; Skyapodes

; ---------------------------------------------------------------------------------
		
		Frames_Pause		30
					
						   ; X   Y   W  L  Speak
		New_Frame			19,  9, 17, 3, Enemy
																				
		Animation_Enemy		1
					
		Font_Story 			"Heh heh,^"
		Frames_Pause		35
		Font_Story 			"I've been waiting"
		Font_Story 			"for you."
		
		Animation_Enemy		0
		Frames_Pause		70
			   
		Close_Frame
					
; ---------------------------------------------------------------------------------

		Frames_Pause		20

						   ; X   Y   W  L  Speak
		New_Frame			 3, 11, 15, 2, Arle
			  
		Animation_Arle		3
										
		Font_Story 			"YIKES!^"
		Frames_Pause 		45
		Font_Story 			"A big ol' foot!"
		
		Frames_Pause 		60
		
		Close_Frame

; ---------------------------------------------------------------------------------
					
						   ; X   Y   W  L  Speak
		New_Frame			16,  9, 21, 3, Enemy
					
		Animation_Enemy		3
					
		Font_Story 			"HEY!^"
		Frames_Pause		45
		Font_Story 			"Words can be hurtful,"
		Frames_Pause		35
		Font_Story 			"you know..."	

		Animation_Enemy		2
					
		Frames_Pause		80
		
		Close_Frame

; ---------------------------------------------------------------------------------	
					
						   ; X   Y   W  L  Speak
		New_Frame			19, 11, 18, 2, Enemy
					
		Animation_Arle		11
		Animation_Enemy		4
					
		Font_Story 			"Now face the wrath"
		Font_Story 			"of my GIANT KICK!"	
					
		Frames_Pause		80
		
		Close_Frame

; ---------------------------------------------------------------------------------					
					
		Cutscene_Enemy		10
		Animation_Arle		15
		Frames_Pause		40
		Animation_Arle		18

						   ; X   Y   W  L  Speak
		New_Frame			 3,  9, 24, 3, Arle
			  										
		Font_Story 			"HOLD IT!^"
		Frames_Pause 		45
		Font_Story 			"If we're gonna fight,^"
		Frames_Pause 		35
		Font_Story 			"it's gotta be with puyo!"
		
		Animation_Arle		19
		
		Frames_Pause 		80
		
		Close_Frame

; ---------------------------------------------------------------------------------	
		
		Dialog_End
												
		even
									
; ---------------------------------------------------------------------------------
