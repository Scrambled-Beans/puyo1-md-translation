					
Staff_Pal_Set_1:

					dc.w		$E					; BFADE
					dc.b 		$F	 				; Credits
					dc.b 		0	 				; Line 0
					dc.w 		0	 				; 
					
					dc.w		$E					; BFADE
					dc.b 		$1A	 				; White
					dc.b 		1	 				; Line 1
					dc.w 		0	 				; 
					
					BJMP		Staff_Pal_Set_1_Return

Staff_Pal_Set_2:
					
					dc.w		$E					; BFADE
					dc.b 		$1D	 				; Green
					dc.b 		2	 				; Line 2
					dc.w 		0	 				; 
					
					BJMP		Staff_Pal_Set_2_Return
					
; ---------------------------------------------------------------------------------	
	
Staff_Pal_Fade_Set_1:

					dc.w		$E					; BFADE
					dc.b 		$0	 				; Blank
					dc.b 		0	 				; Line 0
					dc.w 		0	 				; 
					
					dc.w		$E					; BFADE
					dc.b 		$0	 				; Blank
					dc.b 		1	 				; Line 1
					dc.w 		0	 				; 
					
					BJMP		Staff_Pal_Fade_Set_1_Return

Staff_Pal_Fade_Set_2:
					
					dc.w		$E					; BFADE
					dc.b 		$0	 				; Blank
					dc.b 		2	 				; Line 2
					dc.w 		0	 				; 
					
					BJMP		Staff_Pal_Fade_Set_2_Return
					
; ---------------------------------------------------------------------------------	

Staff_Pal_Blank_Pal:

					dc.w		$D					; BPAL
					dc.b 		$0, 0 				; Blank
					
					dc.w		$D					; BPAL
					dc.b		$0, 1 				; Blank
					
					dc.w		$D					; BPAL
					dc.b		$0, 2 				; Blank
					
					BJMP 		Staff_Pal_Blank_Pal_Return
										
; ---------------------------------------------------------------------------------	