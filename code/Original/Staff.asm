
					org			$1C72					
					
					BPUYO		$A000,	Art_Font_Options	; Art - Font Options
										
; ---------------------------------------------------------------------------------	
										
					org			$AD80		

					; Disables: move.l		#$FFC000, ($16,A1)
					
					; Speed of text is same as Dr. Robotnik's Mean Bean Machine
					
					nop
					nop
					nop
					nop

; ---------------------------------------------------------------------------------	

					; Text - Cast
					
					org			$AC9A					
					
					dc.l		Staff_Strings
					
; ---------------------------------------------------------------------------------


					; Text - Try On / Copyright
					
					org			$AD16	
					
					dc.l		Thanks_Playing_Strings
					dc.l		Try_On_Hardest_Strings
					dc.l		Try_On_Hard_Strings
					dc.l		Try_On_Normal_Strings
				
; ---------------------------------------------------------------------------------

					; Staff - Load Palettes
					
					org			$1C80
					
					BJMP		Staff_Pal_Set_1
Staff_Pal_Set_1_Return:						
					
					BJMP		Staff_Pal_Set_2
Staff_Pal_Set_2_Return:	

					
					; Staff > High Scores - Blank Fade Palettes

					org			$1CCA
					
					BJMP		Staff_Pal_Fade_Set_1
Staff_Pal_Fade_Set_1_Return:						
					
					BJMP		Staff_Pal_Fade_Set_2
Staff_Pal_Fade_Set_2_Return:	


					; Staff > High Scores - Blank Palettes
					
					org			$1CA2
					
					BJMP		Staff_Pal_Blank_Pal
Staff_Pal_Blank_Pal_Return:			
					dc.w		$0001						; BNOP

; ---------------------------------------------------------------------------------

					; Staff - Set Sections
					
					org			$AD2C
						
					MOVE.w		#6, D0					; Number of sections on screen
					
					
					org			$AD8E
					
					MULU.w		#$AC, D0				; Size of each section


					org			$11A5A					; Offsets to each sections
					
					dc.l		$FF1324					; Start of RAM
					
					dc.l		$FF13D0					; Staff - Text 6
					dc.l		$FF147C					; Staff - Text 5
					dc.l		$FF1528					; Staff - Text 4
					dc.l		$FF15D4					; Staff - Text 3
					dc.l		$FF1680					; Staff - Text 2
					dc.l		$FF172C					; Staff - Text 1
					
					dc.l		$000000					; Unused

; ---------------------------------------------------------------------------------					
					
					; Staff - Set Palette
					
					org			$AD9C
					
					move.w  	(A2)+, D2				; Loads palette data
					nop
				
; ---------------------------------------------------------------------------------

					if SkipCredits=1

					; Staff - Can't Skip
					
					org			$1C94
					
					BJMP		$1C9A
					
					endc

; ---------------------------------------------------------------------------------