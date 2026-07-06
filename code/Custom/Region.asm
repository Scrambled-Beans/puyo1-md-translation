					
					; Language Check - Japanese or English

					clr.l		d1					; Clear D1
					move.b  	(z80_version), d1	; Move Version (Console's Region) to RAM
					andi.b  	#%10000000, d1		; 7th bit will be 0 (JPN) or 1 (ENG)
					rol.b		#1, d1		 		; Rotate shift to left by 1
					addq		#1, d1		 	 	; Add 1 so: 1 = JPN | 2 = ENG
					move.b		d1, (v_Language)	; RAM Location where Language Value is stored	

; ---------------------------------------------------------------------------------						

					; Video Check - NTSC or PAL

					clr.l		d1					; Clear D1
					move.b  	(z80_version), d1	; Move Version (Console's Region) to RAM
					andi.b  	#%01000000, d1		; 6th bit will be 0 (NTSC) or 1 (PAL)
					rol.b		#2, d1		 		; Rotate shift to left by 2
					addq		#1, d1		 	 	; Add 1 so: 1 = NTSC | 2 = PAL
					move.b		d1, (v_Video)		; RAM Location where Video Value is stored					
					
; ---------------------------------------------------------------------------------	

					; Expansion Unit (Sega CD/Mega CD) Check - Connected or Not Connectet  

					clr.l		d1					; Clear D1
					move.b  	(z80_version), d1	; Move Version (Console's Region) to RAM
					andi.b  	#%00100000, d1		; 5th bit will be 0 (Connected) or 1 (Not Connected)
					rol.b		#3, d1		 		; Rotate shift to left by 3
					addq		#1, d1		 	 	; Add 1 so: 1 = Connected | 2 = Not Connected
					move.b		d1, (v_Expansion)	; RAM Location where Video Value is stored					
					
; ---------------------------------------------------------------------------------	

					; PAL Asia consoles to use English
					
					cmp.b		#2, (v_Video)		; Is Video set to PAL?
					bne			ChecksumStart		
					
					cmp.b		#1, (v_Language)	; Is Video set to Japanese?
					bne			ChecksumStart		
					
					move.b		#2, (v_Language)	; If set to Japanese, set language to English

ChecksumStart:		

; ---------------------------------------------------------------------------------	