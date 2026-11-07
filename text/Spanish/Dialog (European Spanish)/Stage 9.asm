
Stage_9:	; Zoh Daimaoh

; ---------------------------------------------------------------------------------
			
		Animation_Arle		6
		Frames_Pause		40		
			
						   ; X   Y   W  L  Speak
		New_Frame			 3, 11, 23, 2, Arle
		
		Animation_Arle		5
	
		Font_Story 			"Excuse me, "
		Frames_Pause		35
		Font_Story 			"but I'd like"
		Font_Story 			"to pass through...."
		
		Animation_Arle		6
		Frames_Pause		80
		
		Close_Frame

; ---------------------------------------------------------------------------------	

						   ; X   Y   W  L  Speak
		New_Frame			19,  9, 15, 3, Enemy
			  
		Animation_Enemy		2
										
		Font_Story 			"Tusk,"
		Frames_Pause 		25
		Font_Story 			" tusk!^"
		Frames_Pause 		35
		Cutscene_Enemy		0
		Cutscene_Arle		0
		Animation_Enemy		1
		Font_Story 			"Your pleas fall"
		Font_Story 			"on deaf ears!"
		
		Frames_Pause 		120
		
		Close_Frame

; ---------------------------------------------------------------------------------
					
						   ; X   Y   W  L  Speak
		New_Frame			 3, 11, 23, 2, Arle
					
		Animation_Arle		8
					
		Font_Story 			"Those floppy ears must^"
		Font_Story 			"be pretty useless then!"		
					
		Animation_Arle		7
		Frames_Pause		80
		
		Close_Frame

; ---------------------------------------------------------------------------------					
					
						   ; X   Y   W  L  Speak
		New_Frame			18,  7, 18, 4, Enemy				
					
		Animation_Enemy		2
					
		Font_Story 			"You dare mock my^"			
		Font_Story 			"glorious ears!?^"
		Frames_Pause		55
		Font_Story 			"I'll stomp you out"
		Font_Story 			"here and now!"
		
		Animation_Enemy		0
		Frames_Pause		120	
		
		Close_Frame

; ---------------------------------------------------------------------------------	
					
						   ; X   Y   W  L  Speak
		New_Frame			16,  7, 21, 4, Enemy
		
		Animation_Enemy		2
					
		Font_Story 			"I wouldn't even spare"			
		Font_Story 			"a fellow Indian my^"
		Font_Story 			"astonishing wrath^"
		Font_Story 			"after such a slight!"
		
		Cutscene_Enemy		0
		Cutscene_Arle		0
		Animation_Enemy		1
		Frames_Pause		160	
		
		Close_Frame		

; ---------------------------------------------------------------------------------	
		
		Dialog_End
												
		even
									
; ---------------------------------------------------------------------------------
