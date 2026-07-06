
Opponent_Letters:
	
					CMPI.b		#$4C, D6	
					BLO.b 		Special_Letters
					
					CMPI.b		#$6A, D6
					BHI.b 		Special_Letters
									
					SUB.w		$12(A0), D5	
					JSR			$157BA				; Video_SetVRAMAddressWrite	
					MOVE.w		D6, $C00000.l		; vdpData1
					ADD.w		$12(A0), D5
					ADDQ.b		#1, D6

Special_Letters:					

					JSR			$157BA				; Video_SetVRAMAddressWrite
					ADD.w		$12(A0), D5
					MOVE.w		D6, $C00000.l		; vdpData1
					ADDQ.b		#1, D6
					
					JSR			$157BA				; Video_SetVRAMAddressWrite
					SUB.w		$12(A0), D5
					ADDQ.w		#2, D5
					MOVE.w		D6, $C00000.l		; vdpData1
					
					JMP			Opponent_Letters_Return

; ---------------------------------------------------------------------------------						

Opponent_Number:
					
					CMPI.b		#15, $FF0112.l				; Check if Stage 13 (Satan)
					BEQ.w		AtSatan
					
					CMPI.b		#11, $FF0112.l				; Check if after Stage 9 (Zoh)
					BHI.w		AfterZoh
					
					CMPI.b		#3, $FF0112.l				; Check if before Stage 1 (Draco)
					BCS.w		BeforeDraco
										
					LEA			Opp_Stage_1, A1				; Text - Stage 1-9
					JSR			loc_8310
					JMP			$2AF2
										
BeforeDraco:
					LEA			Opp_Lesson, A1				; Text - Lesson
					JSR			loc_8310
					JMP			$2AF2
					
AfterZoh:
					LEA			Opp_Stage_2, A1				; Text - Stage 10-12
					JSR			loc_8310
					JMP			$2AF2
										
AtSatan:
					subq.w		#Final_Position, $A(A0)		; Postion of Final Stage
															; Subtracts from Text Position)
															
					LEA			Opp_Final, A1				; Text - Final
					JSR			loc_8310
					JMP			$2AF2
					
; ---------------------------------------------------------------------------------		