
Tutorial_Score:
					; Score
					
							; Set of Graphics
		 Set_of_Graphics	1
			
			
				; Graphic 1				
							; X | Y | Address
		   Position_Text	33, 21, $C000
		   
							; Pal | Tile ID | Priority | Hori Flip | Vert Flip
			 Plane_Piece	Green_VS, $500, High, No, No
					
							; Text
			 Font_Battle 	"SCORE"
			 
				End_Text	; End
					even		

; ---------------------------------------------------------------------------------

Tutorial_1:			

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Use LEFT or RIGHT", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"to move them to", Mode_Tutorial
		
				           ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"and fro.", Mode_Tutorial
				
		Text_End
		
		even
											
; ---------------------------------------------------------------------------------

Tutorial_2:	

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Press the BUTTON", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"to make them swirl", Mode_Tutorial
		
				           ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"round and round.", Mode_Tutorial
		
		Frames_Delay		60
		
				           ; X  L
		Line_Number			 1, 5
		Font_Tutorial 		"Spin, spin, spin!", Mode_Tutorial
		
		Text_End
		
		even
				
; ---------------------------------------------------------------------------------

Tutorial_3:	

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Hold DOWN to make", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"them fall faster.", Mode_Tutorial
		
		Text_End
		
		even
										
; ---------------------------------------------------------------------------------

Tutorial_4:

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Match four or more", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		
	if SetRegion=1	; UK
		Font_Tutorial 		"of the same colour", Mode_Tutorial
	else			; USA
		Font_Tutorial 		"of the same color", Mode_Tutorial
	endc
				
				           ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"to make them pop.", Mode_Tutorial
		
		Text_End
		
		even			
				
; ---------------------------------------------------------------------------------

Tutorial_5:	

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"When they are", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"piled up to the", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"top of the board,", Mode_Tutorial
		
		Frames_Delay		35
		
						   ; X  L
		Line_Number			 1, 4
		Font_Tutorial 		"it's GAME OVER!", Mode_Tutorial
		
		Text_End
		
		even		
					
; ---------------------------------------------------------------------------------

Tutorial_6:	

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Chains!", Mode_Tutorial
		
		Frames_Delay		14
				
				           ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"Get a high score", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 4
		Font_Tutorial 		"using chains!", Mode_Tutorial
		
		Frames_Delay		70
		
		
		
		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"During a match,", Mode_Tutorial		
				
		Frames_Delay		35
		
						   ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"this will cause", Mode_Tutorial	
				
				           ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"garbage puyo to", Mode_Tutorial			
		
				           ; X  L
		Line_Number			 1, 4
		Font_Tutorial 		"rain down on the ", Mode_Tutorial	
		
				           ; X  L
		Line_Number			 1, 5
		Font_Tutorial 		"opponent's board.", Mode_Tutorial	
		
		Frames_Delay		45
		
				           ; X  L
		Line_Number			 1, 7
		Font_Tutorial 		"How delightful!", Mode_Tutorial	
		
		Text_End
		
		even	
					
; ---------------------------------------------------------------------------------

Tutorial_7:

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Let's start with", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"a 2-chain.", Mode_Tutorial
		
		Text_End
		
		even
					
; ---------------------------------------------------------------------------------

Tutorial_8:				

		Frames_Delay		70

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"See?", Mode_Tutorial
		
		Frames_Delay		35
		
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"Just like this.", Mode_Tutorial
		
		Text_End
		
		even
					
; ---------------------------------------------------------------------------------

Tutorial_9:			

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Okay,", Mode_Tutorial
		
		Frames_Delay		35
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"here's another.", Mode_Tutorial
		
		Text_End
		
		even
					
; ---------------------------------------------------------------------------------

Tutorial_10:		

		Frames_Delay		70

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Ta-da!", Mode_Tutorial
		
		Text_End
		
		even
					
; ---------------------------------------------------------------------------------

Tutorial_11:			

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Here's one more.", Mode_Tutorial
		
		Text_End
		
		even
					
; ---------------------------------------------------------------------------------

Tutorial_12:			

		Frames_Delay		70
		
		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Just keep this in", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"mind, ", Mode_Tutorial
		
		Frames_Delay		35
				
				           ; X  L
		Line_Number			 7, 2
		Font_Tutorial 		"okay?", Mode_Tutorial
		
		Text_End

		even	
					
; ---------------------------------------------------------------------------------

Tutorial_13:			

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Depending on how", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"things go, ", Mode_Tutorial
		
		Frames_Delay		35
				
				           ; X  L
		Line_Number			12, 2
		Font_Tutorial 		"you can", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"also make 3-chains,", Mode_Tutorial	

		Frames_Delay		35
		
						   ; X  L
		Line_Number			 1, 4
		Font_Tutorial 		"or even 4-chains!", Mode_Tutorial
		
		Text_End	

		even
					
; ---------------------------------------------------------------------------------

Tutorial_14:							

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"KER-THUD!", Mode_Tutorial

		Frames_Delay		60

		                   ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"The garbage puyo", Mode_Tutorial

		                   ; X  L
		Line_Number			 1, 4
		Font_Tutorial 		"are making a mess", Mode_Tutorial

		                   ; X  L
		Line_Number			 1, 5
		Font_Tutorial 		"of things!", Mode_Tutorial
		
		Frames_Delay		75
		
		
		Text_Start
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"When matching puyo,", Mode_Tutorial		
		
		Frames_Delay		35
		
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"the reaction will", Mode_Tutorial
		
				           ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"cause any adjacent", Mode_Tutorial
		
				           ; X  L
		Line_Number			 1, 4
		Font_Tutorial 		"garbage puyo to", Mode_Tutorial
		
				           ; X  L
		Line_Number			 1, 5
		Font_Tutorial 		"also pop!", Mode_Tutorial		
		
		Text_End
		
		even
		
; ---------------------------------------------------------------------------------

Tutorial_15:									
		
		Text_End
					
		even
					
; ---------------------------------------------------------------------------------
