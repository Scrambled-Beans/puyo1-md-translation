					
SelectLevelSprites:		

					btst		#1, $FF1882.l
					bne			Not_VS_Mode
					
					move.b  	#33, ($8, A1)				; Sprite Mappings - Endless
					
					jmp			ReturnSelectLevelSprites


Not_VS_Mode:					
					
					move.b  	#28, ($8, A1)				; Sprite Mappings - VS
					
					jmp			ReturnSelectLevelSprites

					even
					
; ---------------------------------------------------------------------------------	

VS_Level_Sprites:

					dc.l 		$011AE4
					dc.l 		$011AF6
					dc.l 		$011B08
					dc.l 		$011B1A
					dc.l 		$011B2C
					
					dc.l		Level_1_VS 				; Text - Level Select 1
					dc.l		Level_2_VS 				; Text - Level Select 2
					dc.l		Level_3_VS 				; Text - Level Select 3
					dc.l		Level_4_VS 				; Text - Level Select 4
					dc.l		Level_5_VS 				; Text - Level Select 5
					
; ---------------------------------------------------------------------------------	

Endless_Level_Sprites:

					dc.l 		$011AE4
					dc.l 		$011AF6
					dc.l 		$011B08
					dc.l 		$011B1A
					dc.l 		$011B2C
					
					dc.l		Level_1_Endless 		; Text - Level Select 1
					dc.l		Level_2_Endless 		; Text - Level Select 2
					dc.l		Level_3_Endless 		; Text - Level Select 3
					dc.l		Level_4_Endless 		; Text - Level Select 4
					dc.l		Level_5_Endless 		; Text - Level Select 5
					
; ---------------------------------------------------------------------------------