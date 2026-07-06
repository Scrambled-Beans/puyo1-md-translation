
					
					; Load Font Bold in Options
					
					org			$17C6
					
					BPUYO		$A000,	Art_Font_Options
										
; ---------------------------------------------------------------------------------	

					; Load Font Bold in Sound Test
					
					org			$1834
					
					BPUYO		$A000,	Art_Font_Options
										
; ---------------------------------------------------------------------------------	

					; Text - Options
					
					org			$1D3F4
					
					dc.l 		Option_Strings
					dc.l 		Input_Strings
					dc.l 		Sound_Strings
					
; ---------------------------------------------------------------------------------	
					
					; Text - Sound Test selection
					
					org			$1D122
					
					dc.l 		BGM_Strings
					dc.l 		Voice_Strings
					dc.l 		Command_Strings
					
; ---------------------------------------------------------------------------------		
					
					; Input Test - ON text
					
					org			$1DB60
					
					dc.l		ON_Text

					
					
					; Input Test - OFF text
					
					org			$1DB70
					
					dc.l		OFF_Text
					
					
					
					; ON / OFF - Text Positions
					
					org			$1DB54

					dc.l		ON_OFF_Positions

; ---------------------------------------------------------------------------------	

					; Selection - Button Config
					
					org			$1D96E
					
					dc.l		Function_1
					dc.l		Function_2
					dc.l		Function_3

; ---------------------------------------------------------------------------------		

					; Selection - COM Level
					
					org			$1D9BE
					
					dc.l		COMLevel_1
					dc.l		COMLevel_2
					dc.l		COMLevel_3
					dc.l		COMLevel_4

; ---------------------------------------------------------------------------------		

					; Match Number text position
					
					org 			$1D9EE
					
					Position_D5		MatchNo_X, MatchNo_Y					
					
					
					; Set the Match Number to red
					
					org 			$1DA0A

					Plane_D6		Red_Opt, $500, High, No, No					
					
					
					; Selection - Game Match
					
					org 			$1DA16
					
					lea				(Match_1).l, A1
					
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					
									; GAMES MATCH text position					
					Position_D5		Match_X, Match_Y									

; ---------------------------------------------------------------------------------	

					; Selection - Use Voices
					
					org			$1DA96
					
					dc.l		Sampling_1
					
					
					; Selection - No Voices
					
					org			$1DAA6
					
					dc.l		Sampling_2
					
; ---------------------------------------------------------------------------------		

					; Selection - Input Test
					
					org			$1DAC0
					
					dc.l		Input_Test
					
; ---------------------------------------------------------------------------------		

					; Selection - Sound Test
					
					org			$1DAE8
					
					dc.l		Sound_Test
					
; ---------------------------------------------------------------------------------		

					; Sound Test - Load Palettes
					
					org			$1844
					
					dc.w		$D					; BPAL
					dc.b 		$4,  0 				; Puyo Characters
					
					dc.w		$D					; BPAL
					dc.b		$1B, 1 				; Options Text Blue
					
					dc.w		$D					; BPAL
					dc.b		$15, 2 				; Options Background
					
					dc.w		$D					; BPAL
					dc.b		$1D, 3 				; Options Text Green

; ---------------------------------------------------------------------------------	

					; Sound Test - Track Number
					
					org				$1D092
					
									; Position for Track number					
					Position_D5		TrackNo_X, TrackNo_Y
					
									; Pal | Tile ID | Priority | Hori Flip | Vert Flip
					Plane_D6		White_St, $500, High, No, No
				 
; ---------------------------------------------------------------------------------	
					
					; Sound Test - Track String
					
					org				$1D058
					
									; Position for Track string
					addi.w			#$0+(TrackText_X*2-2)+$80*(TrackText_Y-1), D5
					
									; Pal | Tile ID | Priority | Hori Flip | Vert Flip
					Plane_D6		White_St, $500, High, No, No
					
; ---------------------------------------------------------------------------------	

					; Position - Player 1 Config
					
					org					$1D90E
					
					Position_Text		Function_P1_X, Function_P1_Y
					
; ---------------------------------------------------------------------------------	

					; Position - Player 2 Config
					
					org					$1D924
					
					Position_Text		Function_P2_X, Function_P2_Y
					
; ---------------------------------------------------------------------------------	

					; Position - COM Level
					
					org					$1D9A6
					
					Position_Text		COMLevel_X, COMLevel_Y
					
; ---------------------------------------------------------------------------------	

					; Position - Yes / No
					
					org					$1DA92
					
					Position_Text		Sampling_X, Sampling_Y
					
; ---------------------------------------------------------------------------------	

					; Position - Input Test
					
					org					$1DABC
						
					Position_Text		Input_X, Input_Y
					
; ---------------------------------------------------------------------------------	

					; Position - Sound Test
					
					org					$1DAE4
					
					Position_Text		Sound_X, Sound_Y
	
; ---------------------------------------------------------------------------------	

					; Number of tracks to load in Sound Test 
					
					org			$1CF6E
					
					dc.b 		95		; SE1
					dc.b 		95		; SE2
					dc.b 		95		; SE3					
					dc.b 		18		; BGM
					dc.b 		3		; Voice
					dc.b 		7		; Command

; ---------------------------------------------------------------------------------	