					
					; Code that is related to the Unused Intro 
					; that was used in the Puyo Puyo Prototype:
					
					; https://www.youtube.com/watch?v=PRVpjYPt5DU&t=84s

; ---------------------------------------------------------------------------------
					
					org			$1C6A				
					
					BPUYO		$0000,	Art_Font_Ending		; Art - Font Ending
					
; ---------------------------------------------------------------------------------	

					; Script Pointers
					
					org			$D34A
					
					dc.l 		$D730				; Intro Text 1
					dc.l 		$D7A4				; Intro Text 2
					dc.l 		$D7C0				; Intro Text 3
					dc.l 		$D81A				; Intro Text 4
					dc.l 		$D830				; Intro Text 5
					
; ---------------------------------------------------------------------------------	