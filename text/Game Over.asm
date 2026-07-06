
Over_Frame_1:
					; Game Over (8x16) - Frame 1
					
							; Set of Sprites
		  Set_of_Sprites	8					
					
							; Pal | Letter | Priority | X | Y | Hori Flip | Vert Flip | Width | Height | Link
	   Sprite_Piece_Char	Blue_VS, "G", High, -36, -8, No, No, Pixels_8, Pixels_16, 0
	   Sprite_Piece_Char	Blue_VS, "A", High, -28, -8, No, No, Pixels_8, Pixels_16, 0
	   Sprite_Piece_Char	Blue_VS, "M", High, -20, -8, No, No, Pixels_8, Pixels_16, 0
	   Sprite_Piece_Char	Blue_VS, "E", High, -12, -8, No, No, Pixels_8, Pixels_16, 0
	   
	   Sprite_Piece_Char	Blue_VS, "O", High,   4, -8, No, No, Pixels_8, Pixels_16, 0
	   Sprite_Piece_Char	Blue_VS, "V", High,  12, -8, No, No, Pixels_8, Pixels_16, 0
	   Sprite_Piece_Char	Blue_VS, "E", High,  20, -8, No, No, Pixels_8, Pixels_16, 0
	   Sprite_Piece_Char	Blue_VS, "R", High,  28, -8, No, No, Pixels_8, Pixels_16, 0
	   
					even	
	   
; ---------------------------------------------------------------------------------	

Over_Frame_2:
					; Game Over (8x16) - Frame 2
					
							; Set of Sprites
		  Set_of_Sprites	2					
					
							; Pal | Tile | Priority | X | Y | Hori Flip | Vert Flip | Width | Height | Link
			Sprite_Piece	Blue_VS, $54C, High, -36, -8, No, No, Pixels_32, Pixels_16, 0
			Sprite_Piece	Blue_VS, $554, High,   4, -8, No, No, Pixels_32, Pixels_16, 0
			
					even	
					
; ---------------------------------------------------------------------------------	

Over_Frame_3:
					; Game Over (8x16) - Frame 3
					
							; Set of Sprites
		  Set_of_Sprites	2					
					
							; Pal | Tile | Priority | X | Y | Hori Flip | Vert Flip | Width | Height | Link
			Sprite_Piece	Blue_VS, $55C, High, -36, -8, No, No, Pixels_32, Pixels_16, 0
			Sprite_Piece	Blue_VS, $564, High,   4, -8, No, No, Pixels_32, Pixels_16, 0

					even	
													
; =================================================================================

					; Game Over (16x16)

Over_Number:		equ 7			; Number of letters to load
									; Max = 8

Over_Position_1:	equ 192			; Land Position - Letter 1
Over_Position_2:	equ 216			; Land Position - Letter 2
Over_Position_3:	equ 240			; Land Position - Letter 3
Over_Position_4:	equ 264			; Land Position - Letter 4
Over_Position_5:	equ 312			; Land Position - Letter 5
Over_Position_6:	equ 336			; Land Position - Letter 6
Over_Position_7:	equ 360			; Land Position - Letter 7
Over_Position_8:	equ 384			; Land Position - Letter 8
										
; ---------------------------------------------------------------------------------	

Over_Letter_1:		; Letter 1
					
							; Set of Sprites
		  Set_of_Sprites	1					
					
							; Pal | Letter | Priority | X | Y | Hori Flip | Vert Flip | Width | Height | Link
	      Font_Game_Over	PAL_1, "G", High, -12, -16, No, No, Pixels_24, Pixels_32, 0
	
					even	
	
; ---------------------------------------------------------------------------------	

Over_Letter_2:		; Letter 2
					
							; Set of Sprites
		  Set_of_Sprites	1					
					
	      Font_Game_Over	PAL_1, "A", High, -12, -16, No, No, Pixels_24, Pixels_32, 1

					even	
					
; ---------------------------------------------------------------------------------	

Over_Letter_3:		; Letter 3
					
							; Set of Sprites
		  Set_of_Sprites	1					
					
	      Font_Game_Over	PAL_1, "M", High, -12, -16, No, No, Pixels_24, Pixels_32, 2

					even	
					
; ---------------------------------------------------------------------------------	

Over_Letter_4:		; Letter 4
					
							; Set of Sprites
		  Set_of_Sprites	1					
					
	      Font_Game_Over	PAL_1, "E", High, -12, -16, No, No, Pixels_24, Pixels_32, 3

					even	
					
; ---------------------------------------------------------------------------------	

Over_Letter_5:		; Letter 5
					
							; Set of Sprites
		  Set_of_Sprites	1					
					
	      Font_Game_Over	PAL_1, "O", High, -12, -16, No, No, Pixels_24, Pixels_32, 0
	
					even	
	
; ---------------------------------------------------------------------------------	

Over_Letter_6:		; Letter 6
					
							; Set of Sprites
		  Set_of_Sprites	1					
					
	      Font_Game_Over	PAL_1, "V", High, -12, -16, No, No, Pixels_24, Pixels_32, 1

					even	
					
; ---------------------------------------------------------------------------------	

Over_Letter_7:		; Letter 7
					
							; Set of Sprites
		  Set_of_Sprites	1					
					
	      Font_Game_Over	PAL_1, "E", High, -12, -16, No, No, Pixels_24, Pixels_32, 2

					even	
					
; ---------------------------------------------------------------------------------	

Over_Letter_8:		; Letter 8
					
							; Set of Sprites
		  Set_of_Sprites	1					
					
	      Font_Game_Over	PAL_1, "R", High, -12, -16, No, No, Pixels_24, Pixels_32, 3

					even	
					
; ---------------------------------------------------------------------------------	