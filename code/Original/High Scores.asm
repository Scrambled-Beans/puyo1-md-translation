
					org			$1D0A					
					
					BPUYO		$6000,	Art_High_Scores		; Art - High Score Background	


					org			$1FE6					
					
					BPUYO		$6000,	Art_High_Scores		; Art - High Score Background	


					org			$1D12					
					
					BPUYO		$A000,	Art_Font_Upper		; Art - Font Numbers (Enter Name)	


					org			$1FEE					
					
					BPUYO		$A000,	Art_Font_Upper		; Art - Font Numbers (View)					
					
; ---------------------------------------------------------------------------------	
										
					org			$176AA
					
					dc.l		Mapping_Score_1				; Mapping - High Score Background (1)
					
					org			$176C2
					
					dc.l		Mapping_Score_1
					
					org			$176E6
					
					dc.l		Mapping_Score_1
					
					
					org			$176B6
					
					dc.l		Mapping_Score_2				; Mapping - High Score Background (2)
					
					org			$176CE
					
					dc.l		Mapping_Score_2
					
					org			$176F2
					
					dc.l		Mapping_Score_2
					
; ---------------------------------------------------------------------------------	

					org			$176DA
					
					dc.l		Mapping_Numbers				; Mapping - Behind Numbers
					
					org			$176FE
					
					dc.l		Mapping_Numbers

; ---------------------------------------------------------------------------------	

					org			$BDAE
					
					move.w 		#$A400, D1					; Use English 16x16 font as offset
					
					
					org			$BD62
					
					dc.l		Mode_Story					; Text - Story Mode
					dc.l		Mode_Endless				; Text - Endless Mode
					
					
					org			$BC4E

					move.w 		#$C000+(Modes_Position_X*2-2)+$100*(Modes_Position_Y-1), D5		; Text Position

; ---------------------------------------------------------------------------------	

					org			$33C
					
					dc.l		Default_Scores				; Text - Default High Scores

; ---------------------------------------------------------------------------------	

					; Letters A-Z and . can be selected
					
					; Support up to 30 letters
					
					; Space for 3 extra letters
					
					org			$B8E6
					
					dc.b		$63							; Change BSC to BLS
					
					
					org			$B8E3
					
					dc.b		27							; # Letters to select
					
					
					org			$B903
					
					dc.b		27							; # Letters to select