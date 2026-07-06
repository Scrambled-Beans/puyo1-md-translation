
Lesson_End:	; Lesson End (Satan)

; ---------------------------------------------------------------------------------
		
		Animation_Enemy		9
		Frames_Pause		20
					
						   ; X   Y   W  L  Speak
		New_Frame			11,  7, 19, 4, Enemy
		
		Animation_Enemy		6
		
		Font_Story 			"Oh?^"
		Animation_Enemy		9
		Frames_Pause		35
		Animation_Enemy		6		
		Font_Story 			"You have made it^"
		Font_Story 			"this far, "
		Animation_Enemy		9
		Frames_Pause		35
		Animation_Enemy		6		
		Font_Story 			"have you?"
		Animation_Enemy		9
		Frames_Pause		35
		Animation_Enemy		6		
		Font_Story 			"Most impressive."
		Animation_Enemy		9
		
		Frames_Pause		80
			   
		Close_Frame
					
; ---------------------------------------------------------------------------------
		
		Frames_Pause		20
					
						   ; X   Y   W  L  Speak
		New_Frame			 7,  9, 26, 3, Enemy
		
		Animation_Enemy		6
		
		Font_Story 			"I suppose...^"
		Animation_Enemy		9
		Frames_Pause		35
		Animation_Enemy		6		
		Font_Story 			"I may have underestimated^"
		Font_Story 			"you just a little bit, "
		Animation_Enemy		9
		Frames_Pause		35
		Animation_Enemy		6		
		Font_Story 			"hm?"
		Animation_Enemy		9
		
		Frames_Pause		80
			   
		Close_Frame
					
; ---------------------------------------------------------------------------------

		Frames_Pause		20

						   ; X   Y   W  L  Speak
		New_Frame			15, 13, 10, 1, Enemy
			  
		Animation_Enemy		2
										
		Font_Story 			"No matter."
		
		Animation_Enemy		3
		Frames_Pause 		60
		
		Close_Frame

; ---------------------------------------------------------------------------------

		Frames_Pause		20

						   ; X   Y   W  L  Speak
		New_Frame			10, 11, 20, 2, Enemy
			  
		Animation_Enemy		6
										
		Font_Story 			"I shall withdraw for"
		Font_Story 			"the time being."
		
		Animation_Enemy		9
		Frames_Pause 		80
		
		Close_Frame

; ---------------------------------------------------------------------------------

		Frames_Pause		20

						   ; X   Y   W  L  Speak
		New_Frame			 8,  9, 24, 3, Enemy
			  
		Animation_Enemy		2
										
		Font_Story 			"However, "		
		Animation_Enemy		3
		Frames_Pause		35
		Animation_Enemy		2
		Font_Story 			"I am many times"
		Font_Story 			"stronger than those you^"	
		Font_Story 			"have faced thus far."
		
		Animation_Enemy		3
		Frames_Pause 		80
		
		Close_Frame

; ---------------------------------------------------------------------------------

		Frames_Pause		20

						   ; X   Y   W  L  Speak
		New_Frame			 8, 11, 25, 2, Enemy
			  
		Animation_Enemy		2
										
		Font_Story 			"If you want to defeat me,"		
		Animation_Enemy		3
		Frames_Pause		35
		Animation_Enemy		2										
		Font_Story 			"come give chase."		
		Animation_Enemy		3
		Frames_Pause 		80
		
		Close_Frame

; ---------------------------------------------------------------------------------

		Animation_Enemy		10
		Frames_Pause		10
		Cutscene_Enemy		11
		Frames_Pause		240

; ---------------------------------------------------------------------------------
		
		Dialog_End
												
		even
									
; ---------------------------------------------------------------------------------
