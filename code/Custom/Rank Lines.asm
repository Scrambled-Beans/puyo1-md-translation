					
RankLines:		
					jsr			$5022
					move.w		D0, D5
					addi.w		#((Rank2_Line-1)<<8)|((Rank2_Position_X*2-2)<<0), D5		; X Y Positons for Message 2
					lea			(Rank2).l,a1												; Rank - Message 2
					jsr			$B792
					
					jsr			$5022
					move.w		D0, D5
					addi.w		#((Rank3_Line-1)<<8)|((Rank3_Position_X*2-2)<<0), D5		; X Y Positons for Message 3
					lea			(Rank3).l,a1												; Rank - Message 3
					jsr			$B792
					
					jmp			Return_RankLines
					
; ---------------------------------------------------------------------------------
