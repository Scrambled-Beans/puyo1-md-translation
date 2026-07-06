
					org			$1888					
					
					BPUYO		$A000,	Art_Font_Upper		; Art - Font Battle (Endless)
										
; ---------------------------------------------------------------------------------	

					org			$C26E
										
					move.w 		#$C000+(Opponent_Position_X*2-2)+$100*(Opponent_Position_Y-1), D5		; Text Position

; ---------------------------------------------------------------------------------

					org			$82AC
					
					JMP			Opponent_Number	
					
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					
					
					org			$8310
					
loc_8310:

; ---------------------------------------------------------------------------------

					org			$834E
					
					JMP			Opponent_Letters			; Output Opponent Letters
					
					NOP	
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					
					
					org			$8372
					
Opponent_Letters_Return:				

; ---------------------------------------------------------------------------------	


