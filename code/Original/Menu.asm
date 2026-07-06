					
					org			$175E
					
					BPUYO		$0000,	Art_Main_Menu		; Art - Menu
					
					
					org			$1750					
					
					BPUYO		$A000,	Art_Font_Upper		; Art - Font Numbers
					
; ---------------------------------------------------------------------------------						
					
					; Mapping - Select a Mode
					
					org			$17448
					
					dc.b 		32					; Board needed to be made wider
					
					
					org			$1744A

					dc.w 		$C308				; Move board slightly to the left				
					dc.l 		Mapping_Menu_Mode	; Point to the new mapping data
										
; ---------------------------------------------------------------------------------	
					
					; Mapping - Select a Difficulty
					
					org			$17454
					
					dc.b 		40					; Merge the 2 Spec Commands into 1
					
					
					org			$17458
		
					dc.l 		Mapping_Menu_Level	; Point to the new mapping data
										
; ---------------------------------------------------------------------------------	

					; Spec Command List
					
					org			$17340
					
					dc.w 		18					; Get rid of extra command

; ---------------------------------------------------------------------------------	

					; Puyo Cursor - Default X Positon
					
					org			$B138
					
					nop									; Not needed as different X Positions are now used
					nop
					nop
										
					
					org			$B1CC
					
					jmp			Menu_Puyo_Positions		; Subroutine to set Puyo Cursor's Y and X Positions
					nop
					nop
					nop
					nop
					nop
					nop					

; ---------------------------------------------------------------------------------	

					; Mode Select - 1
					
					org			$1724C				; Mode 1

								; X | Y | Width | Height | Address | Mapping
				Plane_Header	Mode1_X, Mode1_Y, Mode1_Width, Mode1_Height, $C000, Mapping_1P_Sel
					
					
					org			$17258				; Mode 2
					
				Plane_Header	Mode2_X, Mode2_Y, Mode2_Width, Mode2_Height, $C000, Mapping_2P_Not
					
					
					org			$17264				; Mode 3
					
				Plane_Header	Mode3_X, Mode3_Y, Mode3_Width, Mode3_Height, $C000, Mapping_End_Not
					
					
					org			$17270				; Mode 4
					
				Plane_Header	Mode4_X, Mode4_Y, Mode4_Width, Mode4_Height, $C000, Mapping_Opt_Not

; ---------------------------------------------------------------------------------	

					; Mode Select - 2
					
					org			$1728E				; Mode 1
					
				Plane_Header	Mode1_X, Mode1_Y, Mode1_Width, Mode1_Height, $C000, Mapping_1P_Not
					
					
					org			$1729A				; Mode 2
					
				Plane_Header	Mode2_X, Mode2_Y, Mode2_Width, Mode2_Height, $C000, Mapping_2P_Sel
					
					
					org			$172A6				; Mode 3
					
				Plane_Header	Mode3_X, Mode3_Y, Mode3_Width, Mode3_Height, $C000, Mapping_End_Not
					
					
					org			$172B2				; Mode 4
					
				Plane_Header	Mode4_X, Mode4_Y, Mode4_Width, Mode4_Height, $C000, Mapping_Opt_Not

; ---------------------------------------------------------------------------------	

					; Mode Select - 3
					
					org			$172D0				; Mode 1
					
				Plane_Header	Mode1_X, Mode1_Y, Mode1_Width, Mode1_Height, $C000, Mapping_1P_Not
					
					
					org			$172DC				; Mode 2
					
				Plane_Header	Mode2_X, Mode2_Y, Mode2_Width, Mode2_Height, $C000, Mapping_2P_Not
					
					
					org			$172E8				; Mode 3
					
				Plane_Header	Mode3_X, Mode3_Y, Mode3_Width, Mode3_Height, $C000, Mapping_End_Sel
					
					
					org			$172F4				; Mode 4
					
				Plane_Header	Mode4_X, Mode4_Y, Mode4_Width, Mode4_Height, $C000, Mapping_Opt_Not
					
; ---------------------------------------------------------------------------------	

					; Mode Select - 4
					
					org			$17312				; Mode 1
					
				Plane_Header	Mode1_X, Mode1_Y, Mode1_Width, Mode1_Height, $C000, Mapping_1P_Not
					
					
					org			$1731E				; Mode 2
					
				Plane_Header	Mode2_X, Mode2_Y, Mode2_Width, Mode2_Height, $C000, Mapping_2P_Not
					
					
					org			$1732A				; Mode 3
					
				Plane_Header	Mode3_X, Mode3_Y, Mode3_Width, Mode3_Height, $C000, Mapping_End_Not
					
					
					org			$17336				; Mode 4
					
				Plane_Header	Mode4_X, Mode4_Y, Mode4_Width, Mode4_Height, $C000, Mapping_Opt_Sel

; ---------------------------------------------------------------------------------						
					
					org 		$13826
					
					dc.l 		Menu_Stages			; Sprites - Play the first three stages

; ---------------------------------------------------------------------------------