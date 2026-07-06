	
				; Game Over - 8x16	
					
					org			$1318C
					
					dc.l		Over_Frame_1			; Text - Game Over (Frame 1)
					dc.l		Over_Frame_2			; Text - Game Over (Frame 2)
					dc.l		Over_Frame_3			; Text - Game Over (Frame 3)

; ---------------------------------------------------------------------------------	

				; Game Over - 16x16	
					
					org			$C7D9
										
					dc.b		Over_Number				; Number of letters to load
														
					
					org			$11BDE
										
					dc.l		Over_Letter_1 			; Sprite - Letter 1
					dc.l		Over_Letter_2 			; Sprite - Letter 2	
					dc.l		Over_Letter_3 			; Sprite - Letter 3	
					dc.l		Over_Letter_4 			; Sprite - Letter 4	
					dc.l		Over_Letter_5 			; Sprite - Letter 5	
					dc.l		Over_Letter_6 			; Sprite - Letter 6	
					dc.l		Over_Letter_7 			; Sprite - Letter 7	
					dc.l		Over_Letter_8 			; Sprite - Letter 8			


					org			$C816
					
					dc.w		Over_Position_1 		; Position Land - Letter 1
					dc.w		Over_Position_2 		; Position Land - Letter 2
					dc.w		Over_Position_3			; Position Land - Letter 3
					dc.w		Over_Position_4 		; Position Land - Letter 4
					dc.w		Over_Position_5 		; Position Land - Letter 5
					dc.w		Over_Position_6			; Position Land - Letter 6
					dc.w		Over_Position_7 		; Position Land - Letter 7
					dc.w		Over_Position_8 		; Position Land - Letter 8	
					
; ---------------------------------------------------------------------------------	
