					
Menu_Puyo_Positions:
					
					; Menu Red Puyo - Y Position
										
					move.w		$26(A0), D0						; Current Mode Selected
					mulu.w		#2, D0							
					
					lea			(Red_Puyo_Y_Values), A1			; List of Y Positions
					adda.w		D0, A1
					
					move.w		(A1), D0						
						
					move.w		D0, $E(A0)						; Set X Position
					
; ---------------------------------------------------------------------------------						
					
					; Menu Red Puyo - X Position
										
					move.w		$26(A0), D0						; Current Mode Selected
					mulu.w		#2, D0							
					
					lea			(Red_Puyo_X_Values), A1			; List of X Positions
					adda.w		D0, A1
					
					move.w		(A1), D0						
						
					move.w		D0, $A(A0)						; Set X Position

					rts
					
; ---------------------------------------------------------------------------------	