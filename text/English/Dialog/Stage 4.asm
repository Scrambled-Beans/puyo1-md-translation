
Stage_4:	; Harpy	

; ---------------------------------------------------------------------------------	

		Cutscene_Enemy		1
		Cutscene_Enemy		2

		Frames_Pause		80
		
		Animation_Enemy		1
		
		Frames_Pause		40
		
		Animation_Enemy		0
		
; ---------------------------------------------------------------------------------					
			
						   ; X   Y   W  L  Speak
		New_Frame			 3,  9, 18, 3, Arle
			
		Animation_Arle		10
							
		Font_Story		 	"Ugh...^"	
		Animation_Arle		11
		Frames_Pause		35
		Animation_Arle		10
		Font_Story 			"I don't have time^"
		Font_Story 			"to listen to this!"	

		Animation_Arle		11
		Frames_Pause		70
		
		Close_Frame
					
; ---------------------------------------------------------------------------------					
					
		Animation_Arle		14
		Frames_Pause		40

						   ; X   Y   W  L  Speak
		New_Frame			 4, 11, 14, 2, Arle

		Animation_Arle		16				
					
		Font_Story 			"Let me through"	
		Font_Story 			"already!"	

		Animation_Arle		17
		Frames_Pause		80
		
		Close_Frame							

; ---------------------------------------------------------------------------------	
		
		Dialog_End
												
		even
									
; ---------------------------------------------------------------------------------
