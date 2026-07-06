; ---------------------------------------------------------------------------
; Constants
; ---------------------------------------------------------------------------

Size_of_SegaPCM:		equ $6978

; VDP addressses
vdp_data_port:			equ $C00000
vdp_control_port:		equ $C00004
vdp_counter:			equ $C00008

psg_input:				equ $C00011

; Z80 addresses
z80_ram:				equ $A00000	; start of Z80 RAM
z80_dac3_pitch:			equ $A000EA
z80_dac_status:			equ $A01FFD
z80_dac_sample:			equ $A01FFF
z80_ram_end:			equ $A02000	; end of non-reserved Z80 RAM
z80_version:			equ $A10001
z80_port_1_data:		equ $A10002
z80_port_1_control:		equ $A10008
z80_port_2_control:		equ $A1000A
z80_expansion_control:	equ $A1000C
z80_bus_request:		equ $A11100
z80_reset:				equ $A11200
ym2612_a0:				equ $A04000
ym2612_d0:				equ $A04001
ym2612_a1:				equ $A04002
ym2612_d1:				equ $A04003

security_addr:			equ $A14000

; Sound driver constants
TrackPlaybackControl:	equ 0		; All tracks
TrackVoiceControl:		equ 1		; All tracks
TrackTempoDivider:		equ 2		; All tracks
TrackDataPointer:		equ 4		; All tracks (4 bytes)
TrackTranspose:			equ 8		; FM/PSG only (sometimes written to as a word, to include TrackVolume)
TrackVolume:			equ 9		; FM/PSG only
TrackAMSFMSPan:			equ $A		; FM/DAC only
TrackVoiceIndex:		equ $B		; FM/PSG only
TrackVolEnvIndex:		equ $C		; PSG only
TrackStackPointer:		equ $D		; All tracks
TrackDurationTimeout:	equ $E		; All tracks
TrackSavedDuration:		equ $F		; All tracks
TrackSavedDAC:			equ $10		; DAC only
TrackFreq:				equ $10		; FM/PSG only (2 bytes)
TrackNoteTimeout:		equ $12		; FM/PSG only
TrackNoteTimeoutMaster:	equ $13		; FM/PSG only
TrackModulationPtr:		equ $14		; FM/PSG only (4 bytes)
TrackModulationWait:	equ $18		; FM/PSG only
TrackModulationSpeed:	equ $19		; FM/PSG only
TrackModulationDelta:	equ $1A		; FM/PSG only
TrackModulationSteps:	equ $1B		; FM/PSG only
TrackModulationVal:		equ $1C		; FM/PSG only (2 bytes)
TrackDetune:			equ $1E		; FM/PSG only
TrackPSGNoise:			equ $1F		; PSG only
TrackFeedbackAlgo:		equ $1F		; FM only
TrackVoicePtr:			equ $20		; FM SFX only (4 bytes)
TrackLoopCounters:		equ $24		; All tracks (multiple bytes)
TrackGoSubStack:		equ TrackSz	; All tracks (multiple bytes. This constant won't get to be used because of an optimisation that just uses zTrackSz)

TrackSz:				equ $30

; Joypad input
btnStart:				equ %10000000 ; Start button	($80)
btnA:					equ %01000000 ; A		($40)
btnC:					equ %00100000 ; C		($20)
btnB:					equ %00010000 ; B		($10)
btnR:					equ %00001000 ; Right		($08)
btnL:					equ %00000100 ; Left		($04)
btnDn:					equ %00000010 ; Down		($02)
btnUp:					equ %00000001 ; Up		($01)
btnDir:					equ %00001111 ; Any direction	($0F)
btnABC:					equ %01110000 ; A, B or C	($70)
bitStart:				equ 7
bitA:					equ 6
bitC:					equ 5
bitB:					equ 4
bitR:					equ 3
bitL:					equ 2
bitDn:					equ 1
bitUp:					equ 0