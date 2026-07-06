					
Story_Board_Next_Score_Custom:		

					move.b		(Stage_Number).l, D0
					
					cmp.b    	#11, D0
					bge.s		Stage_8_13
					
					move.l		#$80060000, D0		; Lessons 1-3 & Stages 1-8								
					jmp			$C4C
	
Stage_8_13:	
					move.l		#$800E0000, D0		; Stages 9 - 13								
					jmp			$C4C

					even

; ---------------------------------------------------------------------------------

Story_Board_Next_Score_Original:		

					move.b		(Stage_Number).l, D0
					
					move.l		#$80060000, D0		; Lessons 1-3 & Stages 1-8								
					jmp			$C4C

					even
						
; ---------------------------------------------------------------------------------

Stage_Num_Grass:	 		; Grass
					dc.b		$17, $18, $11, $12, $13, $14, $15, $16, $17, $18, $11, $12 
					dc.b  		$28, $29, $22, $23, $24, $25, $26, $27, $28, $29, $22, $23
	
Stage_Num_Stone: 			; Stone
					dc.b 		$4D, $4E, $4F, $4E, $4F, $4E, $4F, $4E, $4F, $4E, $4F, $50
					dc.b		$51, $52, $53, $52, $53, $52, $53, $52, $53, $52, $53, $54
	
Stage_Num_Puzzle_Tile: 		; Puzzle Tiles
					dc.b		$09, $0A, $0D, $0E, $15, $16, $0D, $0E, $15, $16, $09, $0A
					dc.b		$0B, $0C, $0F, $10, $17, $18, $0F, $10, $17, $18, $0B, $0C
	
Stage_Num_Puzzle_PAL:		; Puzzle Palette			
								; 4 3 2 1    8 7 6 5   121110 9 - Top Row
					dc.b 		%00000101, %10101010, %01010000
					
								;16151413   20191817   24232221 - Bottom Row
					dc.b 		%00000101, %10101010, %01010000

					even
	
; ---------------------------------------------------------------------------------

Battle_Stage_Text_Check:

					CMPI.b		#15, $FF0112								; Is Final Stage?
					BEQ.w		Battle_Final_Stage							; Branch if True

					CMPI.b		#3, $FF0112									; Is Lesson Stage?
					BCS.w		Stage_Lesson								; Branch if True
					
					CMPI.b		#12, $FF0112								; Is Stage 10 or Higher?
					BCC.w		Battle_Ten_Higher							; Branch if True
					
					jmp			$14762										; Stage 1-9 	 	
Stage_Lesson:		jmp			$1479C										; Lesson 1-3				
Battle_Ten_Higher:	jmp			$1477E										; Stage 1-12	
					
Battle_Final_Stage:															; Stage 13	
					
					LEA			Story_Stage_13, A1							; Text: Stage # 
					JSR			$147B6										; Store text
					RTS
					
					even
	
; ---------------------------------------------------------------------------------					
