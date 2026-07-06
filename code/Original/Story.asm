
					org			$1988					
					
					BPUYO		$A000,	Art_Font_Story		; Art - Font Story (Story Mode)
					
					
					org			$1ECE					
					
					BPUYO		$A000,	Art_Font_Story		; Art - Font Story (Demo)
										
; ---------------------------------------------------------------------------------	

					org			$164E			
					
					BPUYO		$0000,	Art_Board_Toy		; Art - Board Toy


					org			$17BE			
					
					BPUYO		$0000,	Art_Board_Toy		; Art - Board Toy


					org			$182C			
					
					BPUYO		$0000,	Art_Board_Toy		; Art - Board Toy


					org			$1E24			
					
					BPUYO		$0000,	Art_Board_Toy		; Art - Board Toy
		
					
					org			$210E	

					lea			Art_Board_Toy, A0			; Art - Board Toy			
					
; ---------------------------------------------------------------------------------	
					
					org			$14202

					dc.l		Story_Score_1				; Text - Next, Score
															; Lessons 1-3 & Stages 1-8
					
					org			$14222

					dc.l		Story_Score_2				; Text - Next, Score
															; Stages 9 - 13
					
; ---------------------------------------------------------------------------------	
					
					org			$1479E

					dc.l		Story_Lesson				; Text - LESSON #
					
					
					org			$14764

					dc.l		Story_Stage_1				; Text - STAGE #
					
					
					org			$14780

					dc.l		Story_Stage_10				; Text - STAGE 1#
					
					
					org			$147B6
					
					MOVE.w		#11, D0						; Text - Number of Letters
					
; ---------------------------------------------------------------------------------	

					org			$147AC

					lea			$FF1893+Lesson_Number_Position_X.L, A1		; Lesson # Position (1-3)
					
					
					org			$14774

					lea			$FF1893+Stage_1_Number_Position_X.L, A1		; Stage # Position (1-9)


					org			$14792

					lea			$FF1893+Stage_10_Number_Position_X.L, A1	; Stage # Position (10-13)
					
; ---------------------------------------------------------------------------------	

					org			$1474A
					
					jmp			Battle_Stage_Text_Check
					
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP
					
; ---------------------------------------------------------------------------------	

					org			$147EC
					
					MOVE.w		#$C51C, D5					; Stage # - Plane A - Tile Position
					
					
					org			$147F4
					
					MOVE.w		#11, D0						; Stage # - Plane A - # Tiles
					
					
					org			$14802
					
					MOVE.w		#$E51C, D5					; Stage # - Plane B - Tile Position
					MOVE.w		#11, D3						; Stage # - Plane B - # Tiles
					
					
					org			$1481E
					
					LEA			Stage_Num_Grass, A4			; Tiles - Grass
					
					
					org			$14830
					
					LEA			Stage_Num_Stone, A4			; Tiles - Stone
					
					
					org			$1483A
					
					LEA			Stage_Num_Puzzle_Tile, A4	; Tiles - Puzzle
					LEA			Stage_Num_Puzzle_PAL, A5	; PAL   - Puzzle

; ---------------------------------------------------------------------------------	

					org			$145BA

					dc.l		Story_Player				; Name - Player
					
					
					org			$145E8

					dc.l		Story_Opponenets			; Name - Opponents
					
; ---------------------------------------------------------------------------------	

					org			$1465C

					dc.l		Story_Time					; Text - Time
										
					
					org			$146AC

					dc.l		Story_Bonus					; Text - Bonus
					
										
					org			$14672

					dc.l		Story_Seconds				; Text - Seconds
										
					
					org			$146C2

					dc.l		Story_Points				; Text - Points
					
; ---------------------------------------------------------------------------------	

					org			$1421A

					dc.l		Story_Win					; Text - You Win
					
; ---------------------------------------------------------------------------------	

					org			$141FE

					dc.l		Story_No_Bonus				; Text - No Bonus
					
; ---------------------------------------------------------------------------------	

					org			$11326

					dc.l		Lesson_Hints				; Sprites - Lesson Hints

; ---------------------------------------------------------------------------------	

					org			$3144
					
					; Story_Board_Next_Score_Original = All Stages use "Story_Score_1" text.
					;   Story_Board_Next_Score_Custom = Stages 9-12 use "Story_Score_2" text,
					;									while the rest use "Story_Score_1" text.
					
	if StoryNextScore=0		; Original										
					jmp			Story_Board_Next_Score_Original		; Code to load NEXT and SCORE
					
	else					; Custom
					jmp			Story_Board_Next_Score_Custom		; Code to load NEXT and SCORE
					endc
					
; ---------------------------------------------------------------------------------