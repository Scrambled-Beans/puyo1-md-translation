
					; Use same font for all the cutscenes
					
					org			$941C
							
					lea 		Dialog_Font_Pointer, A1					
					movea.l	 	(A1), A0		
					move.w		#$0000, D0
					jsr			$C82.l	
					
					nop
					
; ---------------------------------------------------------------------------------		
					
					; Output 8x16 Font
					
					org			$E274
					
					nop									; Don't double X offset for each letter					
					mulu 		#2, D2					; Tile Height
	

					org			$E28A
										
					mulu.w		#2, D0
					
					ori.w 		#$8000, D0				; Add D0 to Tile ID
					ori 		#$700, SR
					
					bsr			$157BA					; Set VRAM Write
										
					move.w		D0, $00C00000.l			; Top Part						
									
					addi.w		#$80, D5				; Next Line
					
					bsr			$157BA					; Set VRAM Write	

					addq.w  	#1, D0	
										
					move.w		D0, $00C00000.l			; Bottom Part	
					
					andi		#$F8FF, SR					
					move.w		#1, $26(A0)					
					
					move.b		#$50, D0				; SFX
					bsr			$72BE					; Load SFX	
					
					addq.w		#1, $A(A0)
					move.w		$A(A0), D0
					cmp.w		$E(A0),D0					
					bcc			$E186
					rts
					
					nop
					nop
					nop
					nop
					nop
					nop
					nop
					nop
					nop
					nop
					nop
					nop
					nop
					nop
					nop
					
; ---------------------------------------------------------------------------------	

					; Change Window Size
					
					org			$14B06
					
					addq.w 		#1, D3					; Letter has width of 1, so don't need LSL.W					
					mulu.w 		#2, D4					; Line has height offset of 2					
					addq.w 		#1, D4
					
					
					org			$E308
					
					addq.w 		#1, D2					
					lsl.w		#3, D2					
					move.w 		+16(A0), D3					
					mulu.w 		#2, D3					
					addq.w 		#1, D3

; ---------------------------------------------------------------------------------	

					; Script Format
					
					org			$E1C0
					
					andi.b 		#$1F,D0					; Allow more characters per line					
					lsr.b 		#5,D1					; Allow more lines
					
					
					org			$E1D2
					
					move.b 		(A2)+,0x15(A0)			; Arle or Opponent uses a whole byte
					nop
					nop
					nop
					
					
					org			$E23A
					
					lsl.w 		#5,D0
					
					
					org			$14B00
					
					andi.b 		#$1F, D3
					lsr.b 		#5, D4					
					
; ---------------------------------------------------------------------------------	

					; Frames per Delay
					
					org			$E14C
					
					dc.l		Dialog_Wait_Frames
					
					
					org			$E24A
					
					mulu.w		#10, D0					; 10 Frames per Second

Dialog_Wait_Frames:										; Ignoring above code so user can set the amount of frames		
					move.w		D0, $26(A0)
					rts
					
; ---------------------------------------------------------------------------------	

					; Script Pointers
					
					org			$E3CC									
					
					dc.l 		Lesson_1				; Lesson 1
					dc.l 		Stage_2					; Stage 2
					dc.l 		Stage_7					; Stage 7					
					dc.l 		Stage_1					; Stage 1
					dc.l 		Lesson_2				; Lesson 2
					dc.l 		Stage_8					; Stage 8
					dc.l 		Stage_5					; Stage 5
					dc.l 		Stage_4					; Stage 4				
					dc.l 		Stage_9					; Stage 9
					dc.l 		Stage_10				; Stage 10 
					dc.l 		Stage_11				; Stage 11
					dc.l 		Stage_12				; Stage 12
					dc.l 		Stage_13				; Stage 13				
					dc.l 		Lesson_3				; Lesson 3
					dc.l 		Stage_3					; Stage 3
					dc.l 		Stage_6					; Stage 6
					dc.l 		Lesson_End				; Lesson End
					
; ---------------------------------------------------------------------------------	