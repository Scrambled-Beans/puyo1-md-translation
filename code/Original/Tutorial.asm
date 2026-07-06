					
					org			$1F58
					
					BPUYO		$6A00,	Art_Font_Tutorial	; Art - Font
					
					
					org			$1F60					
					
					BPUYO		$A000,	Art_Font_Battle		; Art - Font Battle
					
; ---------------------------------------------------------------------------------		

					org			$141EE

					dc.l		Tutorial_Score				; Text - Score

; ---------------------------------------------------------------------------------				
					
					; Output 8x16 Font
					
					org			$D30A
	
					eori.w		#$8000, D0
					move.w 		($12, A0), D5
					jsr 		$157BA				; Set VRAM Write
					add.w 		($28, A0), D5
					
					move.w 		D0, $00C00000		; Top Part
															
					jsr 		$157BA				; Set VRAM Write
					
					addi.b		#1, D0				
					
					move.w 		D0, $00C00000		; Bottom Part

					ANDI.W 		#$F8FF, SR
					addq.w		#2, +$12(A0)
					
					rts
					
					nop
					nop
					nop
					nop					
										
; ---------------------------------------------------------------------------------	

					; Script Pointers
					
					org			$D366				
									
					dc.l 		Tutorial_1				; Tutorial 1
					dc.l 		Tutorial_2				; Tutorial 2
					dc.l 		Tutorial_3				; Tutorial 3					
					dc.l 		Tutorial_4				; Tutorial 4
					dc.l 		Tutorial_5				; Tutorial 5
					dc.l 		Tutorial_6				; Tutorial 6
					dc.l 		Tutorial_15				; Tutorial 15
					dc.l 		Tutorial_14				; Tutorial 14				
					dc.l 		0
					dc.l 		Tutorial_7				; Tutorial 7 
					dc.l 		Tutorial_8				; Tutorial 8
					dc.l 		Tutorial_9				; Tutorial 9
					dc.l 		Tutorial_10				; Tutorial 10					
					dc.l 		Tutorial_11				; Tutorial 11
					dc.l 		Tutorial_12				; Tutorial 12
					dc.l 		Tutorial_13				; Tutorial 13
					
; ---------------------------------------------------------------------------------	