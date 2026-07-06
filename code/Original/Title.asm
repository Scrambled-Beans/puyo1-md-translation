
					org			$16C4					
					
					BPUYO		$0000,	Art_Title			; Art - Title
					
					
					org			$16CC					
					
					BPUYO		$A000,	Art_Font_Upper		; Art - Font Numbers
										
; ---------------------------------------------------------------------------------	

					org 		$1754E
					
					dc.l 		Mapping_Title				; Mapping - Title	

; ---------------------------------------------------------------------------------						
					
					; Disables the 2 AddHandakutenActors routine calls
					
					org			$CE58
					
					NOP
					NOP

; ---------------------------------------------------------------------------------	

					; Change Title tiling to use the same one as the Arcade
					
					org			$17500
					
					dc.w		5											; Go from 8 to 5 plane commands 	
					
					
					org			$1754A
					
					dc.b 		PuyoPuyo_Width								; Title Length
					
					
					org			$1754C
					
					dc.w 		$C000+(PuyoPuyo_X*2-2)+$100*(PuyoPuyo_Y-1)	; Mapping Address	
					
; ---------------------------------------------------------------------------------	

					org 		$113D8
					
					dc.l 		Title_Start			; Sprites - PRESS START


					org 		$113DC
					
					dc.l 		Title_Copyright		; Sprites - Copyright
					
; ---------------------------------------------------------------------------------	
