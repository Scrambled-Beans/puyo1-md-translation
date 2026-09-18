
Stage_6:	; Panotty

; ---------------------------------------------------------------------------------
		
		Cutscene_Enemy		9		
		Animation_Arle		6		
		Frames_Pause		60
					
						   ; X   Y   W  L  Speak
		New_Frame			10, 13,  4, 1, Arle
					
		Font_Story 			"...?"
		
		Frames_Pause		70
			   
		Close_Frame
					
; ---------------------------------------------------------------------------------

		Frames_Pause		40	
		Animation_Enemy		6		
		Frames_Pause		80	
		Animation_Enemy		1

						   ; X   Y   W  L  Speak
		New_Frame			20, 11, 14, 2, Enemy
			  										
		Font_Story 			"WHY AREN'T YOU"
		Font_Story 			"DANCING!?"
		
		Animation_Enemy		2
		Frames_Pause 		75
		
		Close_Frame

; ---------------------------------------------------------------------------------
				
		Frames_Pause 		10
		Animation_Arle		10
				
						   ; X   Y   W  L  Speak
		New_Frame			 4, 11, 15, 2, Arle
					
		Font_Story 			"Why should I be"
		Font_Story 			"dancing?"			
					
		Animation_Arle		11
		Frames_Pause		75
		
		Close_Frame

; ---------------------------------------------------------------------------------					
			
		Frames_Pause		40
			
						   ; X   Y   W  L  Speak
		New_Frame			14,  9, 23, 3, Enemy
		
		Animation_Enemy		3
			  										
		Font_Story 			"My beautiful music is^"
		Font_Story 			"wasted on an uncultured"
		Font_Story 			"snob like you!"
		
		Animation_Enemy		4		
		Frames_Pause		100	
		
		Close_Frame

; ---------------------------------------------------------------------------------	
					
						   ; X   Y   W  L  Speak
		New_Frame			 4, 11, 17, 2, Arle
			  
		Animation_Arle		2
				
		Font_Story 			"Well excuuuse me,"	
		Frames_Pause		35
		Font_Story 			"geez!"
		
		Animation_Arle		21
		
		Frames_Pause		80
		
		Close_Frame		

; ---------------------------------------------------------------------------------	
			
		Frames_Pause		10
			
						   ; X   Y   W  L  Speak
		New_Frame			11,  9, 26, 3, Enemy
		
		Animation_Enemy		3
			  										
		Font_Story 			"Not dancing to my flute..."
		Frames_Pause		45
		Animation_Enemy		5
		Font_Story 			"I won't stand for this^"
		Font_Story 			"disrespect!"
		
		Frames_Pause		90	
		
		Close_Frame

; ---------------------------------------------------------------------------------	
			
		Animation_Arle		14
		Frames_Pause		40
		Animation_Arle		16
			
						   ; X   Y   W  L  Speak
		New_Frame			 3, 11, 23, 2, Arle
				
		Font_Story 			"Then let's just settle^"	
		Font_Story 			"this with a puyo match!"
		
		Animation_Arle		17
		Frames_Pause		80
		
		Close_Frame		

; ---------------------------------------------------------------------------------	
		
		Dialog_End
												
		even
									
; ---------------------------------------------------------------------------------
