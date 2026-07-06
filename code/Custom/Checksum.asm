					
ChecksumCheck:		
					
					include "code\Custom\Region.asm"		; Insert LANGUAGE, VIDEO, and EXPANSION UNIT values in RAM
												
															; $FFFCAE = Language
															; $FFFCAF = Video
															; $FFFCB0 = Expansion Unit

; ---------------------------------------------------------------------------------	
					
					; A5 = Start of ROM (After Header)
					; A6 = End Of ROM
					; D1 = Checksum Calculation
					
					clr.l		d1							; Clear D1
 
					movea.l		#EndOfHeader,a5				; Set A5 to "Start of ROM" address
					movea.l		#EndOfRom,a6				; Set A6 to "End of ROM" address	

@ChecksumLoop:		add.w		(a5)+,d1					; Add word from A0 to D0 | Increment A0
					cmpa.l		a5,a6						; Compare A0 with A1
					bne			@ChecksumLoop				; If not equal, branch to: ChecksumLoop 
					
					move.l		$00000000,a5				; Clear A5
					move.l		$00000000,a6				; Clear A6
					
	if SpecialChecksum=1
					; Use a special Checksum
	
					divu.w		#2,d1						; Divide word from D0 by 2.
					addq		#4,d1						; Add word from D0 by 4.
					mulu.w		#4,d1						; Multiple word from D0 by 4.
					subq		#8,d1						; Subtract word from D0 by 8.				
	endc
					
; ---------------------------------------------------------------------------------	

	if ReproCarts=0
					
					; SRAM Check
					
					gotoSRAM								; Switch to SRAM
					
					clr.l		d0
																									
					lea     	($200003).l,a0				; Save PUYO text (SRAM)	
					move.l  	#'PUYO',d0        			; Write the string "PUYO" to d0					
					movep.l 	d0,0(a0)        			; Write string "PUYO"					
					movep.l 	0(a0),d0					; SRAM > D0
					
					cmp.l 		#'PUYO', d0					; Did "PUYO" text write to SRAM?
										
					BEQ 		RUN_PUYO					; Skip if cart is not a Repro

					move.b 		#$1, (o_Repro)				; If cart is a Repro, send byte 1 to RAM (o_Repro)
									
RUN_PUYO:
					
					gotoROM									; Switch to ROM
	endc			
			
; ---------------------------------------------------------------------------------	
					
					rts										; Return to start