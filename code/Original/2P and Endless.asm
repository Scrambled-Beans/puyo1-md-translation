
					org			$1E34					
					
					BPUYO		$A000,	Art_Font_Battle		; Art - Font Battle (Endless)
					
					
					org			$1D7C					
					
					BPUYO		$A000,	Art_Font_Battle		; Art - Font Battle (VS)
					
					
					org			$1D74					
					
					BPUYO		$0000,	Art_Board_Cabin		; Art - Board Cabin
								
					
					org			$605A	

					lea			Art_Win_Lose, A0			; Art - Win, Lose, Games Won, Try Again			
					
; ---------------------------------------------------------------------------------	
					
					org			$3678
					
					; Curry Sprite Mappings
					
					move.b  	#33, ($8, A1)


					org			$36AE
					
					; Level Sprite Mappings
					; It now loads separate ones for VS and Endless
					
					jmp			SelectLevelSprites

ReturnSelectLevelSprites:		

; ---------------------------------------------------------------------------------	

					org			$14226

					dc.l		VS_Level					; Text - LV

; ---------------------------------------------------------------------------------	

					org			$141F6

					dc.l		P1_Level					; Text - Select Level (1P)


					org			$141FA

					dc.l		P2_Level					; Text - Select Level (2P)
										
; ---------------------------------------------------------------------------------	
					
					org			$141EA

					dc.l		VS_Player					; Text - Next, 1P, 2P, Score

; ---------------------------------------------------------------------------------	
					
					org			$1420E

					dc.l		Player_Press				; Text - Press Start

; ---------------------------------------------------------------------------------	

					org			$1421E
					
					dc.l		Games_Won					; Mapping - Games Won

; ---------------------------------------------------------------------------------	

					org			$1172C
					
					dc.l		VS_Try_Again				; Sprites - Try Agaian

; ---------------------------------------------------------------------------------	

					org			$11724
					
					dc.l		VS_Won						; Sprites - All Right

; ---------------------------------------------------------------------------------	

					org			$11728
					
					dc.l		VS_Lose						; Sprites - Oh No

; ---------------------------------------------------------------------------------	

					org			$8222
					
					dc.l		Time_Display				; Text - Time (Display)


					org			$8236
					
					dc.l		Time_Remove					; Text - Time (Remove)
					
					
					org			$6C2A
					
		  Position_Text			Time_X_Position, Time_Y_Position, $C000

; ---------------------------------------------------------------------------------	
