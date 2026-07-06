
Stage_11:	; Minotauros

; ---------------------------------------------------------------------------------
		
		Animation_Enemy		1
		Animation_Arle		11
		Frames_Pause		20
					
						   ; X   Y   W  L  Speak
		New_Frame			23, 13,  9, 1, Enemy
					
		Font_Story 			"MOOOOOOO!"
		
		Frames_Pause		75
			   
		Close_Frame
					
; ---------------------------------------------------------------------------------
		
		Frames_Pause		60
					
						   ; X   Y   W  L  Speak
		New_Frame			 3, 11, 17, 2, Arle
		
		Animation_Arle		10
					
		Font_Story 			"Minotauros!"
		
		Animation_Arle		11
		Frames_Pause		42
		
		Same_Frame
				
		Animation_Arle		10
					
		Font_Story 			"That's dangerous!"		
		Animation_Arle		11
		Frames_Pause		35
		Animation_Arle		10
		Font_Story 			"Cut that out!"		
		Animation_Arle		11
		Frames_Pause		70
			   
		Close_Frame
					
; ---------------------------------------------------------------------------------

						   ; X   Y   W  L  Speak
		New_Frame			20, 11, 16, 2, Enemy
			  
		Animation_Enemy		2
										
		Font_Story 			"I'm under orders"
		Font_Story 			"from Lady Rulue."
		
		Animation_Enemy		0
		Frames_Pause 		75
		Animation_Enemy		3
		Cutscene_Enemy		8
		
		Close_Frame

; ---------------------------------------------------------------------------------
					
						   ; X   Y   W  L  Speak
		New_Frame			 7, 13,  7, 1, Arle
					
		Animation_Arle		10
					
		Font_Story 			"W-WAIT!"	
		
		Frames_Pause		12					
		Animation_Arle		15
		Frames_Pause		114
		
		Close_Frame

; ---------------------------------------------------------------------------------	
					
						   ; X   Y   W  L  Speak
		New_Frame			 3, 11, 20, 2, Arle
					
		Animation_Enemy		3
		Animation_Arle		18
					
		Font_Story 			"Okay..."						
					
		Animation_Arle		19
		Frames_Pause		44
		
		Same_Frame
		
		Animation_Arle		18
		
		Font_Story 			"Can't we just settle"
		Font_Story 			"this with puyo!?"
		
		Animation_Arle		19

		Frames_Pause		76
		
		Close_Frame

; ---------------------------------------------------------------------------------					
			
		Animation_Enemy		0
		Frames_Pause		40
			
						   ; X   Y   W  L  Speak
		New_Frame			16, 13,  5, 1, Enemy				
					
		Animation_Enemy		2
					
		Font_Story 			"Fine!"
		
		Animation_Enemy		0		
		Frames_Pause		75
		
		Close_Frame

; ---------------------------------------------------------------------------------	
		
		Dialog_End
												
		even
									
; ---------------------------------------------------------------------------------
