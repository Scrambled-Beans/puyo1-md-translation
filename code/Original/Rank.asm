								
					org			$B5D8
					
					dc.l		Rank1					; Rank - Message 1
					
; ---------------------------------------------------------------------------------	
		
					org			$B5D2		
					
								; X Y Positions for Message 1
					addi.w		#((Rank1_Line-1)<<8)|((Rank1_Position_X*2-2)<<0), D5
					
; ---------------------------------------------------------------------------------

					org			$B5F0
					
					jmp			RankLines
									
					nop
					nop
					nop					
					nop
					nop

Return_RankLines:

; ---------------------------------------------------------------------------------

					; Letters A-Z and . can be selected
					
					; Support up to 30 letters
					
					; Space for 3 extra letters
					
					org			$B660
					
					dc.b		$63						; Change BSC to BLS
					
					
					org			$B65D
					
					dc.b		27						; # Letters to select
					
					
					org			$B67D
					
					dc.b		27						; # Letters to select
					
; ---------------------------------------------------------------------------------

					; Moved Mini Puyo to allow for 3 extra letters instead of 2 letters
					
					org			$B778
					
					move.b		#$1F, D0				; Mini Puyo - Tile ID


					org			$B7AA
					
					move.w		#$C500, D1				; Mini Puyo - Palette
					
					
					org			$B7CE
					
					cmpi.b		#$BC, D1				; Mini Puyo - Check to Load

; ---------------------------------------------------------------------------------