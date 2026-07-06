
Lesson_3:	; Mummy

; ---------------------------------------------------------------------------------

		Animation_Arle		6
		
		Frames_Pause		40
					
						   ; X   Y   W  L  Speak
		New_Frame			10, 13,  4, 1, Arle
					
		Font_Story 			"...?"
		
		Frames_Pause		70
		
		Close_Frame

; ---------------------------------------------------------------------------------
		
		Frames_Pause		20
					
						   ; X   Y   W  L  Speak
		New_Frame			18, 11, 19, 2, Enemy
					
		Font_Story 			"Ahh, "
		Frames_Pause		35
		Font_Story 			"my bandages..."
		Frames_Pause		45
		Font_Story 			"they came loose...."
		
		Frames_Pause		70
			   
		Close_Frame

; ---------------------------------------------------------------------------------	
		
		Animation_Enemy		1
		
		Frames_Pause		40
		
		Animation_Enemy		3
					
						   ; X   Y   W  L  Speak
		New_Frame			14, 11, 23, 2, Enemy
					
		Font_Story 			"YOU!^"
		Frames_Pause		45
		Font_Story 			"This is all your fault!"
		
		Frames_Pause		70
			   
		Close_Frame

; ---------------------------------------------------------------------------------			

		Frames_Pause		20

						   ; X   Y   W  L  Speak
		New_Frame			 3, 11, 20, 2, Arle
			  
		Animation_Arle		2
		
		Animation_Enemy		2
		
		Font_Story 			"How?^"	
		Frames_Pause		35
		Font_Story 			"How is it my fault!?"
		
		Animation_Arle		21
		
		Frames_Pause		70
		
		Close_Frame

; ---------------------------------------------------------------------------------					
			
		Frames_Pause		20
		
		Animation_Enemy		5
			
						   ; X   Y   W  L  Speak
		New_Frame			16, 11, 21, 2, Enemy				
					
		Font_Story 			"I curse you...^"	
		Frames_Pause		45
		Font_Story 			"to be buried in puyo!"
		
		Animation_Enemy		4
		
		Frames_Pause		80
		
		Close_Frame

; ---------------------------------------------------------------------------------	
		
		Dialog_End
												
		even
									
; ---------------------------------------------------------------------------------
