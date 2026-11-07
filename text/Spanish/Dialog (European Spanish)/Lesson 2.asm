
Lesson_2:	; Nasu Grave

; ---------------------------------------------------------------------------------
		
		Cutscene_Enemy		4
		Animation_Arle		6		
		Frames_Pause		30
					
						   ; X   Y   W  L  Speak
		New_Frame			 9, 13,  5, 1, Arle
																				
		Animation_Arle		5	
					
		Font_Story 			"Um..."
		
		Animation_Arle		6
		Frames_Pause		60
			   
		Close_Frame
					
; ---------------------------------------------------------------------------------

		Frames_Pause		40

						   ; X   Y   W  L  Speak
		New_Frame			 5, 11, 13, 2, Arle
			  
		Animation_Arle		6
										
		Font_Story 			"Hello?^"
		Animation_Arle		5
		Frames_Pause 		35
		Animation_Arle		8
		Font_Story 			"Who's there!?"
		
		Animation_Arle		7
		Frames_Pause 		60
		
		Close_Frame

; ---------------------------------------------------------------------------------
			
		Frames_Pause 		30
		Cutscene_Enemy		3
		Animation_Arle		3
		Frames_Pause 		80
			
						   ; X   Y   W  L  Speak
		New_Frame			20, 13, 12, 1, Enemy
									
		Font_Story 			"NAA"
		Frames_Pause 		24
		Font_Story 			"SUUUUU!!!"
		
		Frames_Pause		100
		
		Close_Frame

; ---------------------------------------------------------------------------------					
			
		Frames_Pause		20
			
						   ; X   Y   W  L  Speak
		New_Frame			 8, 13,  6, 1, Arle				
										
		Font_Story 			"AAAAH!"
		
		Frames_Pause		80			
		
		Close_Frame

; ---------------------------------------------------------------------------------	
		
		Dialog_End
												
		even
									
; ---------------------------------------------------------------------------------
