
VS_Level:
					; LV (LEVEL)
					
							; Set of Graphics
		 Set_of_Graphics	1
			
			
				; Graphic 1				
							; X | Y | Address
		   Position_Text	20, 13, $C000
		   
							; Pal | Tile ID | Priority | Hori Flip | Vert Flip
			 Plane_Piece	Green_VS, $500, High, No, No
					
							; Text
			 Font_Battle 	"LV"
			 
				End_Text	; End
					even					
		
; ---------------------------------------------------------------------------------

P1_Level:
					; SELECT LEVEL (1P)
					
		 Set_of_Graphics	1
			
			
				; Graphic 1				

		   Position_Text	3, 4, $C000
			 Plane_Piece	Red_VS, $500, High, No, No
			 Font_Battle 	"SELECT LEVEL"
				End_Text
					even
					
P2_Level:
					; SELECT LEVEL (2P)
					
		 Set_of_Graphics	1
			
			
				; Graphic 1				

		   Position_Text	27, 4, $C000
			 Plane_Piece	Blue_VS, $500, High, No, No
			 Font_Battle 	"SELECT LEVEL"
				End_Text
					even	

; ---------------------------------------------------------------------------------

VS_Player:
					; Next, 1P, 2P, Score
					
		 Set_of_Graphics	4
			
			
				; Graphic 1				

		   Position_Text	19, 3, $C000
			 Plane_Piece	Green_VS, $500, High, No, No
			 Font_Battle 	"NEXT"
				End_Text
					even
					
					
				; Graphic 2				

		   Position_Text	17, 5, $C000
			 Plane_Piece	White_VS, $500, High, No, No
			 Font_Battle 	"1p"
				End_Text
					even
					
					
				; Graphic 3				

		   Position_Text	23, 5, $C000
			 Plane_Piece	White_VS, $500, High, No, No
			 Font_Battle 	"2p"
				End_Text
					even					
					
					
				; Graphic 4				

		   Position_Text	17, 21, $C000
			 Plane_Piece	Green_VS, $500, High, No, No
			 Font_Battle 	"SCORE"
				End_Text
					even						

; ---------------------------------------------------------------------------------

Player_Press:
					; Press Start to Join
					
		 Set_of_Graphics	2
			
			
				; Graphic 1				

							; X | Y	
		  Position_Board	3, 11				
			 Plane_Piece	White_VS, $500, High, No, No
			 Font_Battle 	"#p press"
				End_Text
					even
					
					
				; Graphic 2				

							; X | Y
		  Position_Board	4, 13			   
			 Plane_Piece	White_VS, $500, High, No, No
			 Font_Battle 	"$"
				End_Text
					even

; ---------------------------------------------------------------------------------

Level_1_VS:
					; Level 1 - Sweet
					
							; Set of Sprites
		  Set_of_Sprites	5					
					
							; Pal | Letter | Priority | X | Y | Hori Flip | Vert Flip | Width | Height | Link
	   Sprite_Piece_Char	White_VS, "s", High, -20, -6, No, No, Pixels_8, Pixels_16, 2
	   Sprite_Piece_Char	White_VS, "w", High, -12, -6, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "e", High,  -4, -6, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "e", High,   4, -6, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "t", High,  12, -6, No, No, Pixels_8, Pixels_16, 2
					
					even	   
					
; ---------------------------------------------------------------------------------

Level_2_VS:
					; Level 2 - Mild
					
							; Set of Sprites
		  Set_of_Sprites	4					
					
	   Sprite_Piece_Char	White_VS, "m", High, -16, -6, No, No, Pixels_8, Pixels_16, 2
	   Sprite_Piece_Char	White_VS, "i", High,  -8, -6, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "l", High,   0, -6, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "d", High,   8, -6, No, No, Pixels_8, Pixels_16, 2	
	   
					even	

; ---------------------------------------------------------------------------------

Level_3_VS:
					; Level 3 - Hot
					
							; Set of Sprites
		  Set_of_Sprites	3					
					
	   Sprite_Piece_Char	White_VS, "h", High, -12, -6, No, No, Pixels_8, Pixels_16, 2
	   Sprite_Piece_Char	White_VS, "o", High,  -4, -6, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "t", High,   4, -6, No, No, Pixels_8, Pixels_16, 2	

					even	
					
; ---------------------------------------------------------------------------------

Level_4_VS:
					; Level 4 - Spicy
					
							; Set of Sprites
		  Set_of_Sprites	5					
					
	   Sprite_Piece_Char	White_VS, "s", High, -20, -6, No, No, Pixels_8, Pixels_16, 2
	   Sprite_Piece_Char	White_VS, "p", High, -12, -6, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "i", High,  -4, -6, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "c", High,   4, -6, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "y", High,  12, -6, No, No, Pixels_8, Pixels_16, 2

					even	

; ---------------------------------------------------------------------------------

Level_5_VS:
					; Level 5 - Fiery
					
							; Set of Sprites
		  Set_of_Sprites	5					
					
	   Sprite_Piece_Char	White_VS, "f", High, -20, -6, No, No, Pixels_8, Pixels_16, 2
	   Sprite_Piece_Char	White_VS, "i", High, -12, -6, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "e", High,  -4, -6, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "r", High,   4, -6, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "y", High,  12, -6, No, No, Pixels_8, Pixels_16, 2

					even	
					
; ---------------------------------------------------------------------------------

Level_1_Endless:
					; Level 1 - Sweet
					
							; Set of Sprites
		  Set_of_Sprites	5					

	   Sprite_Piece_Char	White_VS, "s", High, -20, 3, No, No, Pixels_8, Pixels_16, 2
	   Sprite_Piece_Char	White_VS, "w", High, -12, 3, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "e", High,  -4, 3, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "e", High,   4, 3, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "t", High,  12, 3, No, No, Pixels_8, Pixels_16, 2			
	
					even	
	
; ---------------------------------------------------------------------------------

Level_2_Endless:
					; Level 2 - Mild
					
							; Set of Sprites
		  Set_of_Sprites	4					
					
	   Sprite_Piece_Char	White_VS, "m", High, -16, 3, No, No, Pixels_8, Pixels_16, 2
	   Sprite_Piece_Char	White_VS, "i", High,  -8, 3, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "l", High,   0, 3, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "d", High,   8, 3, No, No, Pixels_8, Pixels_16, 2	

					even	

; ---------------------------------------------------------------------------------

Level_3_Endless:
					; Level 3 - Hot
					
							; Set of Sprites
		  Set_of_Sprites	3					
					
	   Sprite_Piece_Char	White_VS, "h", High, -12, 3, No, No, Pixels_8, Pixels_16, 2
	   Sprite_Piece_Char	White_VS, "o", High,  -4, 3, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "t", High,   4, 3, No, No, Pixels_8, Pixels_16, 2	

					even	
					
; ---------------------------------------------------------------------------------

Level_4_Endless:
					; Level 4 - Spicy
					
							; Set of Sprites
		  Set_of_Sprites	5					
					
	   Sprite_Piece_Char	White_VS, "s", High, -20, 3, No, No, Pixels_8, Pixels_16, 2
	   Sprite_Piece_Char	White_VS, "p", High, -12, 3, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "i", High,  -4, 3, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "c", High,   4, 3, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "y", High,  12, 3, No, No, Pixels_8, Pixels_16, 2

					even	

; ---------------------------------------------------------------------------------

Level_5_Endless:
					; Level 5 - Fiery
					
							; Set of Sprites
		  Set_of_Sprites	5					
					
	   Sprite_Piece_Char	White_VS, "f", High, -20, 3, No, No, Pixels_8, Pixels_16, 2
	   Sprite_Piece_Char	White_VS, "i", High, -12, 3, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "e", High,  -4, 3, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "r", High,   4, 3, No, No, Pixels_8, Pixels_16, 2	
	   Sprite_Piece_Char	White_VS, "y", High,  12, 3, No, No, Pixels_8, Pixels_16, 2

					even	
					
; ---------------------------------------------------------------------------------

Games_Won:
					; Games Won
					
		  Set_of_Graphics	2
			
			
				; Graphic 1				

		   Position_Text	16, 2, $C000
			 Plane_Piece	White_VS, $0, High, No, No
			 Font_Battle 	"@"
				End_Text	
					even
				
				
				; Graphic 2				

		   Position_Text	16, 4, $C000
			 Plane_Piece	White_VS, $0, High, No, No
			 Font_Battle 	"|"
				End_Text
					even

; ---------------------------------------------------------------------------------				

VS_Try_Again:
					; Try Again
					
							; Set of Sprites
		  Set_of_Sprites	3					
							
							; Pal | Letter | Priority | X | Y | Hori Flip | Vert Flip | Width | Height | Link			
			Sprite_Piece	PAL_1, $70, High, -28, 0, No, No, Pixels_32, Pixels_32, 1
			Sprite_Piece	PAL_1, $80, High,   4, 0, No, No, Pixels_32, Pixels_32, 1	
			Sprite_Piece	PAL_1, $90, High,  36, 0, No, No, Pixels_16, Pixels_32, 1	

					even	
					
; ---------------------------------------------------------------------------------				

VS_Won:
					; All Right
					
							; Set of Sprites
		  Set_of_Sprites	6					
					
			Sprite_Piece	PAL_1, $200, Low, -48, -32, No, No, Pixels_32, Pixels_32, 1
			Sprite_Piece	PAL_1, $210, Low, -16, -32, No, No, Pixels_32, Pixels_32, 1	
			Sprite_Piece	PAL_1, $220, Low,  16, -32, No, No, Pixels_32, Pixels_32, 1
			Sprite_Piece	PAL_1, $230, Low, -48,   0, No, No, Pixels_32, Pixels_32, 1
			Sprite_Piece	PAL_1, $240, Low, -16,   0, No, No, Pixels_32, Pixels_32, 1	
			Sprite_Piece	PAL_1, $250, Low,  16,   0, No, No, Pixels_32, Pixels_32, 1

					even	
			
; ---------------------------------------------------------------------------------				

VS_Lose:
					; Oh No

							; Set of Sprites
		  Set_of_Sprites	6					
					
			Sprite_Piece	PAL_1, $270, Low, -48, -32, No, No, Pixels_32, Pixels_32, 1
			Sprite_Piece	PAL_1, $280, Low, -16, -32, No, No, Pixels_32, Pixels_32, 1	
			Sprite_Piece	PAL_1, $290, Low,  24,  -8, No, No, Pixels_24, Pixels_8,  1
			Sprite_Piece	PAL_1, $293, Low, -48,   0, No, No, Pixels_32, Pixels_16, 1
			Sprite_Piece	PAL_1, $29B, Low, -16,   0, No, No, Pixels_32, Pixels_32, 1	
			Sprite_Piece	PAL_1, $2AB, Low,  16,   0, No, No, Pixels_32, Pixels_32, 1

					even	

; ---------------------------------------------------------------------------------	

Time_Display:
					; Time (Display)
					
		  Set_of_Letters	6						; Number of Letters
					
			 Font_Battle 	"TIME: "				; Text
					
			 Font_Battle 	"¹"						; 10s digit			
			 Font_Battle 	"º"						;  1s digit
					even		
					

Time_Remove:
					; Time (Remove)
					
		  Set_of_Letters	6						; Number of Letters
					
			 Font_Battle 	"      "				; Text
			 
			 Font_Battle 	" "						; 10s digit			
			 Font_Battle 	" "						;  1s digit
					even		

Time_X_Position:			equ 17		; Time - X Position
Time_Y_Position:			equ 25		; Time - Y Position

; ---------------------------------------------------------------------------------	