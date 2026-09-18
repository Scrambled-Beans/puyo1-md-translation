
Stage_2:	; Suketoudara

; ---------------------------------------------------------------------------------
		
		Animation_Arle		6
				
		Frames_Pause		60
		
		Animation_Arle		5
					
						   ; X   Y   W  L  Speak
		New_Frame			 7, 11, 10, 2, Arle
					
		Font_Story 			"Um...^"
		Animation_Arle		6		
		Frames_Pause		35
		Animation_Arle		5
		Font_Story 			"Pardon me?"	
		
		Animation_Arle		4
		
		Frames_Pause		60
			   
		Close_Frame
					
; ---------------------------------------------------------------------------------

		Frames_Pause		60

						   ; X   Y   W  L  Speak
		New_Frame			 7, 13, 10, 1, Arle
			  
		Animation_Arle		5
										
		Font_Story 			"Excuse me?"
		Frames_Pause 		25
		
		Animation_Arle		6
		
		Frames_Pause 		60
		
		Close_Frame

; ---------------------------------------------------------------------------------
			
		Frames_Pause 		20
			
						   ; X   Y   W  L  Speak
		New_Frame			10,  9, 27, 3, Enemy
					
		Animation_Enemy		2
					
		Font_Story 			"GAAAH!^"
		Frames_Pause		28
		Animation_Arle		9		
		Font_Story 			"Who's this small fry that's"
		Font_Story 			"interrupting my daaance!?"	

		Animation_Enemy		3	
					
		Frames_Pause		80
		
		Close_Frame	
		
; ---------------------------------------------------------------------------------	
		
		Dialog_End
												
		even
									
; ---------------------------------------------------------------------------------
