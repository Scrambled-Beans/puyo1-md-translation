
					; Puyo Puyo

PuyoPuyo_X:			equ 4		; Puyo Puyo - X Position
PuyoPuyo_Y:			equ 7		; Puyo Puyo - Y Position
PuyoPuyo_Width:		equ 34		; Puyo Puyo - Width

; ---------------------------------------------------------------------------------


Title_Start:
					; Press Start
					
							; Set of Sprites
		  Set_of_Sprites	3		  
					
							; Pal | Tile | Priority | X | Y | Hori Flip | Vert Flip | Width | Height | Link
			Sprite_Piece	PAL_1, $3CA, High, -44, 0, No, No, Pixels_32, Pixels_16, 0
			Sprite_Piece	PAL_1, $3D2, High, -12, 0, No, No, Pixels_32, Pixels_16, 0
			Sprite_Piece	PAL_1, $3DA, High,  20, 0, No, No, Pixels_24, Pixels_16, 0
					
; ---------------------------------------------------------------------------------

Title_Copyright:
					; Sega / Compile and Version
					
							; Set of Sprites
		  Set_of_Sprites	8		  

			Sprite_Piece	PAL_1, $3A6, High, -144, 0, No, No, Pixels_32, Pixels_16, 0
			Sprite_Piece	PAL_1, $3AE, High, -112, 0, No, No, Pixels_32, Pixels_16, 0
			Sprite_Piece	PAL_1, $3B6, High,  -80, 0, No, No, Pixels_32, Pixels_16, 0
			Sprite_Piece	PAL_1, $3BE, High,  -48, 0, No, No, Pixels_32, Pixels_16, 0
			Sprite_Piece	PAL_1, $3C6, High,  -16, 0, No, No, Pixels_16, Pixels_16, 0
								
			Sprite_Piece	PAL_1, $3F8, High,  112, 0, No, No, Pixels_32, Pixels_16, 0		; Version
			
		if SetRegion=1		; UK English
			Sprite_Piece	PAL_1, $3E0, High,   56, 0, No, No, Pixels_32, Pixels_16, 0		; ENG-
			Sprite_Piece	PAL_1, $3EE, High,   88, 0, No, No, Pixels_16, Pixels_16, 0		; UK
			
		else				; USA English
			Sprite_Piece	PAL_1, $3E0, High,   80, 0, No, No, Pixels_24, Pixels_16, 0		; ENG
			endc

; ---------------------------------------------------------------------------------