
Stage_1:	; Draco Centauros

; ---------------------------------------------------------------------------------
		
		Frames_Pause		20
					
						   ; X   Y   W  L  Speak
		New_Frame			23, 13, 10, 1, Enemy
																				
		Animation_Enemy		3
					
		Font_Story 			"You there!"
		
		Frames_Pause		52
			   
		Close_Frame
					
; ---------------------------------------------------------------------------------

						   ; X   Y   W  L  Speak
		New_Frame			12,  9, 25, 3, Enemy
			  
		Animation_Enemy		1
										
		Font_Story 			"If you wanna get past me,"
		Frames_Pause 		35
		Font_Story 			"you'll have to best me^"
		Font_Story 			"in a contest!"	
		
		Animation_Enemy		0
		Frames_Pause 		60
		
		Close_Frame

; ---------------------------------------------------------------------------------
					
						   ; X   Y   W  L  Speak
		New_Frame			 3,  9, 19, 3, Arle
					
		Animation_Arle		10
					
		Font_Story 			"A contest?^"
		Frames_Pause		45
		Font_Story 			"Y-you can't mean..."
		Frames_Pause		35
		Font_Story 			"a beauty contest!?"						
					
		Animation_Arle		11
		Frames_Pause		60
		
		Close_Frame

; ---------------------------------------------------------------------------------					
					
						   ; X   Y   W  L  Speak
		New_Frame			12,  9, 25, 3, Enemy				
					
		Animation_Enemy		2
					
		Font_Story 			"I see...^"
		Frames_Pause		35			
		Font_Story 			"You think you can compete"
		Font_Story 			"against my beauty..."
		
		Frames_Pause		60
		
		Close_Frame

; ---------------------------------------------------------------------------------	
					
						   ; X   Y   W  L  Speak
		New_Frame			16,  9, 21, 3, Enemy
		
		Animation_Enemy		4
			  	
		FONT_STORY 			"NO WAY!!!^"
		Frames_Pause		50	
		Animation_Enemy		1
		FONT_STORY 			"This will be one hell"
		FONT_STORY 			"of a puyo contest!"

		Animation_Enemy		0
		Frames_Pause		70
		
		Close_Frame		

; ---------------------------------------------------------------------------------	
		
		Dialog_End
												
		even
									
; ---------------------------------------------------------------------------------
