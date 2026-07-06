
; Header Hardware

				include "text\Header Hardware.asm"
	
Date:			dc.b "(C)SEGA 1992.SEP" 	; Copyright holder and release date

; Header Title

				include "text\Header Title.asm"
	
Serial: 		DC.b "GM G-4082  -00"  		; Serial/version number

Checksum:		DC.w $0			            ; Checksum
Support:		DC.b "J               "		; I/O support

RomStartLoc:	DC.l StartOfRom				; Start address of ROM
RomEndLoc:		DC.l EndOfRom-1				; End address of ROM

RamStartLoc:	DC.l $00FF0000				; Start address of RAM
RamEndLoc		DC.l $00FFFFFF				; End address of RAM

SRAMSupport:	if EnableSRAM=1
				DC.b $52, $41, $A0+(EnableSRAM<<6)+(AddressSRAM<<3), $20
				DC.l $00200001				; SRAM start ($200001)
				
				if SizeSRAM=0
				DC.l KBIT_SRAM_64			; SRAM end	 ($203FFF)
				
				else
				DC.l KBIT_SRAM_256			; SRAM end	 ($20FFFF)
				endc
				
				else
				DC.l $20202020
				DC.l $20202020
				DC.l $20202020
				endc
								  
ModemSupport:	DC.b "            "			; Modem support

; Header Notes

				include "text\Header Notes.asm"
			
Region:			DC.b "UEJ             " 	; Region (Country code)