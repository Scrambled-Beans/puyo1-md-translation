
Cast_Shiftability_Bug:

					MOVE.w		#$9100, D0
					SWAP	D0
					
					MOVE.w 		#$0000, d0		; Fix
					
					RTS

; ---------------------------------------------------------------------------------						

InitSuccess:
					MOVE.w		#$FFFE, $12(A1)
					RTS							; Fix
					
					
TitleScreen_ArleObj:

					CLR.w   	$E(A0)			; Fix
					
					MOVE.w		#$0140, D0
					JSR			$2B1C
					JSR			$2B26	
					
					JMP			$CAEE

; ---------------------------------------------------------------------------------	