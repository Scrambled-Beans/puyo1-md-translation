
					; This fixes the bug where the AI loses its ability to manually
                    ; drop Puyo if the other controller is held to the left or right.
					
					org			$1009C
					
					andi.w	 	#0, D0
					andi.b   	#0, D1

; ---------------------------------------------------------------------------------	

					; The "Warning Track" doesn't play on Stage 13 (Satan).
					; Just disable the check to fix it.
					
					org			$2E26
					
					NOP
					NOP
					NOP
					NOP
					NOP
					NOP

; ---------------------------------------------------------------------------------	

					; Fix a harmless incorrect value in Video_ClearScrollTables.
					
					org			$BB4
					
					MOVE.w  	#$27, D0

; ---------------------------------------------------------------------------------	

					; Fix a shiftability bug in the character roll part of the credits.
					
					org			$DEF8
					
					JSR			Cast_Shiftability_Bug
					
; ---------------------------------------------------------------------------------	

					; Fix some unintended behavior with Arle's Title Screen Object.
					
					org			$CCF6
					
					JMP 		InitSuccess
					
					
					org			$CADE
					
					JMP			TitleScreen_ArleObj
					NOP
					NOP
					NOP
					NOP
					NOP
					
; ---------------------------------------------------------------------------------	