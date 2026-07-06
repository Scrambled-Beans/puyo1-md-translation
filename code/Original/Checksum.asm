					
					; Load Font Bold in Checksum
					
					org			$1656
					
					BPUYO		$A000,	Art_Font_Options
					
; ---------------------------------------------------------------------------------						
					
					; Load custom Checksum
					
					org			$1DBD4
					
					jsr			ChecksumCheck
					
; ---------------------------------------------------------------------------------	

					; The Checksum error message can not be skipped
					
					org			$1674
					
ChecksumFail:
					BJMP		ChecksumFail			; Run Checksum error forever!
					dc.l    	$0
					dc.l    	$0
					
; ---------------------------------------------------------------------------------

					org			$1CD78
					
					; Checksum Message 1

					Position_D5		Check1_Position_X, Check1_Position_Y
					Plane_D6		Check1_Color, $500, High, No, No							
					lea 			Checksum1, A1			; Text
					
					
					org			$1CD8A
					
					; Checksum Message 2
					
					Position_D5		Check2_Position_X, Check2_Position_Y
					Plane_D6		Check2_Color, $500, High, No, No						
					lea 			Checksum2, A1			; Text			

; ---------------------------------------------------------------------------------

					