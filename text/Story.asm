
Story_Score_1:
					; Next, Score (Lessons 1-3 & Stages 1-8)
					
							; Set of Graphics
		 Set_of_Graphics	2
			
			
				; Graphic 1				
							; X | Y | Address
		   Position_Text	19, 3, $C000
		   
							; Pal | Tile ID | Priority | Hori Flip | Vert Flip
			 Plane_Piece	Green_VS, $500, High, No, No
					
							; Text
			 Font_Battle 	"NEXT"
			 
				End_Text	; End
					even	
					
					
				; Graphic 2				

		   Position_Text	17, 21, $C000
			 Plane_Piece	Green_VS, $500, High, No, No
			 Font_Battle 	"SCORE"
				End_Text
					even						

; ---------------------------------------------------------------------------------
						
	; You only need to use "Story_Score_2" if you want to use a
	; different text for Stages 9-13.
	
	; For example, the Spanish translation for NEXT would be: SIGUIENTE
	; Since this won't fit in Stages 9-13 (has to be four letters),
	; the text SIG. would be used.

Story_Score_2:
					; Next, Score (Stages 9 - 13)
					
							; Set of Graphics
		 Set_of_Graphics	2
			
			
				; Graphic 1				
		   Position_Text	19, 3, $C000
			 Plane_Piece	Green_VS, $500, High, No, No
			 Font_Battle 	"TEST"
				End_Text
					even	
					
					
				; Graphic 2				

		   Position_Text	17, 21, $C000
			 Plane_Piece	Green_VS, $500, High, No, No
			 Font_Battle 	"PTS"
				End_Text
					even						

; ---------------------------------------------------------------------------------

Story_Lesson:
					; Lesson 1-3 (12 letters)

			 FONT_BATTLE 	"  lesson    "			; Text
			 
					even					


Story_Stage_1:
					; Stage 1-9 (12 letters)

			 FONT_BATTLE 	"  stage     "			; Text
			 
					even			


Story_Stage_10:
					; Stage 10-12 (12 letters)

			 FONT_BATTLE 	"  stage 1   "			; Text		
			 
					even	


Story_Stage_13:
					; Stage 13 (12 letters)

							; FINAL STAGE
			 FONT_BATTLE 	"~"						; Text		
			 
					even					
				
					
					; Positions for Stage #
				
Lesson_Number_Position_X:		equ 10			;  Story Lesson 1-3 - X Position
Stage_1_Number_Position_X:		equ 9			;   Story Stage 1-9 - X Position
Stage_10_Number_Position_X:		equ 10			; Story Stage 10-13 - X Position		
		
; ---------------------------------------------------------------------------------

Story_Player:
					; Names (4 letters)

			 FONT_BATTLE 	"arle"					; Player
			 
			 
Story_Opponenets:
			 			 
			 FONT_BATTLE 	"skel"					; Lesson 1			 
			 
			 FONT_BATTLE 	"suke"					; Stage 2
			 
			 FONT_BATTLE 	"zomb"					; Stage 7
						 
			 FONT_BATTLE 	"drco"					; Stage 1	  
			 
			 FONT_BATTLE 	"nasu"					; Lesson 2
			 
			 FONT_BATTLE 	"wich"					; Stage 8
			 
			 FONT_BATTLE 	"saso"					; Stage 5
			 
			 FONT_BATTLE 	"hpry"					; Stage 4 
			 
			 FONT_BATTLE 	"zoh "					; Stage 9
			
			 FONT_BATTLE 	"shzo"					; Stage 10
			 
			 FONT_BATTLE 	"mino"					; Stage 11
			 
			 FONT_BATTLE 	"rulu"					; Stage 12	 
			 
			 FONT_BATTLE 	"satn"					; Stage 13
			 
			 FONT_BATTLE 	"mumy"					; Lesson 3
			
			 FONT_BATTLE 	"skya"					; Stage 3
			 
			 FONT_BATTLE 	"pano"					; Stage 6
			 
					even
					
; ---------------------------------------------------------------------------------

Story_Time:
					; Play Time (10 letters)
			 			 
			 FONT_BATTLE 	"time      "			; Text
			 
			 
Story_Bonus:
					; Bonus (10 letters)
			 			 
			 FONT_BATTLE 	"bonus     "			; Text
			 
			 
Story_Seconds:
					; Sec (10 letters)
			 			 
			 FONT_BATTLE 	"       sec"			; Text
			 

Story_Points:
					; Pts (10 letters)
			 			 
			 FONT_BATTLE 	"       pts"			; Text
			 
					even
			 
; ---------------------------------------------------------------------------------

Story_Win:
					; YOU  WIN (10 Letters)
					
		 Set_of_Graphics	1
			
			
				; Graphic 1				

							; X | Y	
		  Position_Board	3, 5				
			 Plane_Piece	Green_VS, $500, High, No, No
			 Font_Battle 	"YOU  WIN"
				End_Text
					even
					
; ---------------------------------------------------------------------------------

Story_No_Bonus:
					; No Bonus (10 Letters)
					
		 Set_of_Graphics	1
			
			
				; Graphic 1				

							; X | Y	
		  Position_Board	3, 15				
			 Plane_Piece	Blue_VS, $500, High, No, No
			 Font_Battle 	"NO BONUS"
				End_Text
					even

; ---------------------------------------------------------------------------------
									
Lesson_Hints:
					; Lesson Hints
					
							; Set of Sprites
		  Set_of_Sprites	6					
					
							; Pal | Tile | Priority | X | Y | Hori Flip | Vert Flip | Width | Height | Link
			Sprite_Piece	White_VS, $80, Low, -48,  0, No, No, Pixels_32, Pixels_24, 0
			Sprite_Piece	White_VS, $8C, Low, -16,  0, No, No, Pixels_32, Pixels_24, 0	
			Sprite_Piece	White_VS, $98, Low,  16,  0, No, No, Pixels_32, Pixels_24, 0	
			Sprite_Piece	White_VS, $A4, Low, -48, 24, No, No, Pixels_32, Pixels_24, 0	
			Sprite_Piece	White_VS, $B0, Low, -16, 24, No, No, Pixels_32, Pixels_24, 0
			Sprite_Piece	White_VS, $bc, Low,  16, 24, No, No, Pixels_32, Pixels_24, 0
					
					even	

; ---------------------------------------------------------------------------------