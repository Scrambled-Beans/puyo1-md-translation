		
Red_Puyo_Y_Values:							
					dc.w		216		; Mode 1
					dc.w		240		; Mode 2
					dc.w		264		; Mode 3
					dc.w		288		; Mode 4
					
; ---------------------------------------------------------------------------------	

Red_Puyo_X_Values:							
					dc.w		208		; Mode 1
					dc.w		192		; Mode 2
					dc.w		192		; Mode 3
					dc.w		232		; Mode 4
					
					even

; ---------------------------------------------------------------------------------	

Menu_Stages:
					; Consists of three stages.
					
							; Set of Sprites
		  Set_of_Sprites	9					
					
							; Pal | Tile | Priority | X | Y | Hori Flip | Vert Flip | Width | Height | Link
			Sprite_Piece	PAL_1, $201, High, 36, -2, No, No, Pixels_8,  Pixels_8,  0
			
			Sprite_Piece	PAL_1, $210, High,  0,  2, No, No, Pixels_32, Pixels_32, 1
			Sprite_Piece	PAL_1, $220, High, 32,  2, No, No, Pixels_32, Pixels_32, 1
			Sprite_Piece	PAL_1, $230, High, 64,  2, No, No, Pixels_32, Pixels_32, 1
			Sprite_Piece	PAL_1, $240, High, 96,  2, No, No, Pixels_32, Pixels_32, 1
			Sprite_Piece	PAL_1, $250, High,  0, 34, No, No, Pixels_32, Pixels_16, 1
			Sprite_Piece	PAL_1, $258, High, 32, 34, No, No, Pixels_32, Pixels_16, 1
			Sprite_Piece	PAL_1, $260, High, 64, 34, No, No, Pixels_32, Pixels_16, 1
			Sprite_Piece	PAL_1, $268, High, 96, 34, No, No, Pixels_32, Pixels_16, 1
			
					even	

; ---------------------------------------------------------------------------------	

Mode1_X:			equ 12		; Mode 1 - X Position
Mode1_Y:			equ 11		; Mode 1 - Y Position	
Mode1_Width:		equ 19		; Mode 1 - Width
Mode1_Height:		equ 2		; Mode 1 - Height	

Mode2_X:			equ 10		; Mode 2 - X Position
Mode2_Y:			equ 14		; Mode 2 - Y Position	
Mode2_Width:		equ 23		; Mode 2 - Width
Mode2_Height:		equ 2		; Mode 2 - Height

Mode3_X:			equ 10		; Mode 3 - X Position
Mode3_Y:			equ 17		; Mode 3 - Y Position	
Mode3_Width:		equ 23		; Mode 3 - Width
Mode3_Height:		equ 2		; Mode 3 - Height

Mode4_X:			equ 15		; Mode 4 - X Position
Mode4_Y:			equ 20		; Mode 4 - Y Position	
Mode4_Width:		equ 13		; Mode 4 - Width
Mode4_Height:		equ 2		; Mode 4 - Height

; ---------------------------------------------------------------------------------	