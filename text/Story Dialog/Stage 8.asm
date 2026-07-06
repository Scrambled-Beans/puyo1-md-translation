
Stage_8:	; Witch

; ---------------------------------------------------------------------------------
		
		Frames_Pause		40
		
						   ; X   Y   W  L  Speak
		New_Frame			17,  7, 20, 4, Enemy
																									
		Font_Story 			"Oh-hohoho!^"		
		Frames_Pause		55
		Font_Story 			"What a fool you are,"	
		Frames_Pause		35
		Animation_Arle		21
		Font_Story 			"coming to a place^"
		Font_Story 			"like this."
		
		Frames_Pause		60
			   
		Close_Frame
					
; ---------------------------------------------------------------------------------

						   ; X   Y   W  L  Speak
		New_Frame			 5,  9, 13, 3, Arle
			  
		Animation_Arle		2
										
		Font_Story 			"Why you...^"
		Frames_Pause 		45
		Font_Story 			"Mind your own"
		Font_Story 			"business!"
		
		Animation_Arle		21
		Frames_Pause 		20
		Animation_Enemy		1
		Frames_Pause 		40
		
		Close_Frame

; ---------------------------------------------------------------------------------
					
						   ; X   Y   W  L  Speak
		New_Frame			17,  9, 20, 3, Enemy
					
		Animation_Enemy		2
					
		Font_Story 			"I shall make it my^"
		Font_Story 			"business by becoming"
		Font_Story 			"your opponent."	
					
		Animation_Enemy		3
		Frames_Pause		80
		
		Close_Frame

; ---------------------------------------------------------------------------------					
					
						   ; X   Y   W  L  Speak
		New_Frame			22, 13, 12, 1, Enemy				
					
		Animation_Enemy		0
					
		Font_Story 			"Oh-hohohoho!"
		
		Frames_Pause		90	
		
		Close_Frame

; ---------------------------------------------------------------------------------	
		
		Dialog_End
												
		even
									
; ---------------------------------------------------------------------------------
