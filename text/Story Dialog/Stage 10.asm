
Stage_10:	; Schezo Wegey

; ---------------------------------------------------------------------------------
		
		Frames_Pause		20
					
						   ; X   Y   W  L  Speak
		New_Frame			 3, 13, 18, 1, Arle
																				
		Animation_Arle		2
					
		Font_Story 			"What do YOU want!?"
		
		Animation_Arle		21
		Frames_Pause		65
			   
		Close_Frame
					
; ---------------------------------------------------------------------------------

						   ; X   Y   W  L  Speak
		New_Frame			22, 13, 11, 1, Enemy
			  
		Animation_Enemy		1
										
		Font_Story 			"I want you."
	
		Animation_Enemy		0
		Frames_Pause 		65
		
		Close_Frame

; ---------------------------------------------------------------------------------
							
						   ; X   Y   W  L  Speak
		New_Frame			 8, 13,  6, 1, Arle
																				
		Animation_Arle		12
					
		Font_Story 			"WHAT!?"
		
		Frames_Pause		55
			   
		Close_Frame

; ---------------------------------------------------------------------------------					
			
		Animation_Enemy		2
		Frames_Pause		60
		Animation_Enemy		1
			
						   ; X   Y   W  L  Speak
		New_Frame			14, 11, 23, 2, Enemy				
										
		Font_Story 			"I mean,^"
		Animation_Enemy		0
		Frames_Pause		35
		Animation_Enemy		1
		Font_Story 			"I just want your power."
		
		Animation_Enemy		0		
		Frames_Pause		60
		
		Close_Frame

; ---------------------------------------------------------------------------------	
					
						   ; X   Y   W  L  Speak
		New_Frame			 3,  9, 26, 3, Arle
		
		Animation_Arle		2
			  	
		Font_Story 			"Y-you... "
		Frames_Pause		35	
		Font_Story 			"You're still^"
		Font_Story 			"doing that sort of thing!?"		
		Animation_Arle		21
		Frames_Pause		40
		Animation_Arle		14		
		Font_Story 			"Just, "
		Frames_Pause		35
		Animation_Arle		16
		Font_Story 			"get a life already!"
		
		Animation_Arle		17
		Frames_Pause		60
		
		Close_Frame		

; ---------------------------------------------------------------------------------	

						   ; X   Y   W  L  Speak
		New_Frame			12,  7, 25, 4, Enemy
			  
		Animation_Enemy		1										
		Font_Story 			"By absorbing your magical"
		Font_Story 			"power, "
		Animation_Enemy		0
		Frames_Pause		35
		Animation_Enemy		1
		Font_Story 			"I, "
		Animation_Enemy		0
		Frames_Pause		35
		Animation_Enemy		1
		Font_Story 			"the great and^"
		Font_Story 			"powerful dark mage,^"
		Animation_Enemy		0
		Frames_Pause		35
		Animation_Enemy		1
		Font_Story 			"Schezo Wegey,"
		
		Animation_Enemy		0
		Frames_Pause		70
		
		Same_Frame
	
		Animation_Enemy		1
		Font_Story 			"shall become the^"
		Font_Story 			"king of puyo!"
		
		Animation_Enemy		0
		Frames_Pause		70
		
		Close_Frame

; ---------------------------------------------------------------------------------
							
						   ; X   Y   W  L  Speak
		New_Frame			 5, 13, 12, 1, Arle
																				
		Animation_Arle		20
					
		Font_Story 			"Wait, "
		Frames_Pause		35
		Font_Story 			"WHAT!?"
		
		Frames_Pause		75
			   
		Close_Frame
					
; ---------------------------------------------------------------------------------

						   ; X   Y   W  L  Speak
		New_Frame			23, 13, 9, 1, Enemy
			  
		Animation_Enemy		3
										
		Font_Story 			"En garde!"
	
		Frames_Pause 		75
		
		Close_Frame

; ---------------------------------------------------------------------------------
		
		Dialog_End
												
		even
									
; ---------------------------------------------------------------------------------
