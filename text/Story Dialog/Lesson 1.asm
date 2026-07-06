
Lesson_1:	; Skeleton-T

; ---------------------------------------------------------------------------------
		
		Frames_Pause		40
		
		Animation_Enemy		1
		
		Frames_Pause		80
					
						   ; X   Y   W  L  Speak
		New_Frame			15, 11, 22, 2, Enemy
					
		Font_Story 			"Mmmmm,^"
		Frames_Pause		35
		Font_Story 			"this tea is delicious."
		
		Animation_Enemy		0
		
		Frames_Pause		60
			   
		Close_Frame

; ---------------------------------------------------------------------------------			
					
						   ; X   Y   W  L  Speak
		New_Frame			10, 13,  3, 1, Arle
					
		Font_Story 			"..."
		
		Frames_Pause		70
		
		Close_Frame

; ---------------------------------------------------------------------------------

						   ; X   Y   W  L  Speak
		New_Frame			14,  9, 23, 3, Enemy
			  
		Animation_Enemy		0
										
		Font_Story 			"What's this?^"
		Frames_Pause		35
		Animation_Enemy		3
		Font_Story 			"There's a stem standing"
		Font_Story 			"upright in my cup..."	
		
		Frames_Pause 		80
		
		Close_Frame

; ---------------------------------------------------------------------------------					
					
						   ; X   Y   W  L  Speak
		New_Frame			16,  9, 21, 3, Enemy				
					
		Font_Story 			"Since I'm now steeped"	
		Font_Story 			"in luck, "
		Frames_Pause		35
		Font_Story 			"this will be"
		Font_Story 			"a piece of cake."
		
		Frames_Pause		90
		
		Close_Frame

; ---------------------------------------------------------------------------------	
					
						   ; X   Y   W  L  Speak
		New_Frame			13, 11, 24, 2, Enemy
			  	
		Font_Story 			"Now, "
		Frames_Pause		35
		
		Animation_Enemy		2
		Animation_Arle		3
		
		Font_Story 			"prepare yourself!^"
		Frames_Pause		40	

		Font_Story 			"You're no matcha for me!"

		Frames_Pause		80
		
		Close_Frame		

; ---------------------------------------------------------------------------------	
	
						   ; X   Y   W  L  Speak
		New_Frame			 3, 11, 17, 2, Arle
			  	
		Font_Story 			"Augh!^"
		Frames_Pause		35	
		Font_Story 			"Such absurdi-tea!"

		Frames_Pause		80
		
		Close_Frame		

; ---------------------------------------------------------------------------------	
		
		Dialog_End
												
		even
									
; ---------------------------------------------------------------------------------
