
					org			$1A36					
					
					BPUYO		$0000,	Art_Continue		; Art - Continue


					org			$1A2E					
					
					BPUYO		$A000,	Art_Font_Upper		; Art - Font Numbers					
					
; ---------------------------------------------------------------------------------	
															
					org				$C656					
					
					Position_D5		Cont1_Position_X, Cont1_Position_Y, $C000 		; Postion for text				
					
					
					org				$C65E					
					
					Position_D5		Cont2_Position_X, Cont2_Position_Y, $C000 		; Postion for text	
					
; ---------------------------------------------------------------------------------						
					
					org			$C6A0					
					
					move.w		#Cont_Row_Tiles, D0			; # tiles for top row
					
					move.w		#$24C0, D1					; Start of tiles (VDP) 					
					
					
					org			$C6BA					
					
					move.w		#Cont_Row_Tiles, D0			; # tiles for bottom row
															; They continue from the last top row
					
; ---------------------------------------------------------------------------------	