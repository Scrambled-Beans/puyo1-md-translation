; ---------------------------------------------------------------------------
; Align and pad
; input: length to align to, value to use as padding (default is 0)
; ---------------------------------------------------------------------------

align:				macro

	if (narg=1)
	dcb.b \1-(*%\1),0
	else
	dcb.b \1-(*%\1),\2
	endc
	
	endm

; ---------------------------------------------------------------------------
; Set a VRAM address via the VDP control port.
; input: 16-bit VRAM address, control port (default is ($C00004).l)
; ---------------------------------------------------------------------------

locVRAM:			macro loc, controlport

		if (narg=1)
		move.l	#($40000000+((loc&$3FFF)<<16)+((loc&$C000)>>14)),(vdp_control_port).l
		else
		move.l	#($40000000+((loc&$3FFF)<<16)+((loc&$C000)>>14)),controlport
		endc
		
		endm

; ---------------------------------------------------------------------------
; DMA copy data from 68K (ROM/RAM) to the VRAM
; input: source, length, destination
; ---------------------------------------------------------------------------

writeVRAM:			macro

		lea	(vdp_control_port).l,a5
		move.l	#$94000000+(((\2>>1)&$FF00)<<8)+$9300+((\2>>1)&$FF),(a5)
		move.l	#$96000000+(((\1>>1)&$FF00)<<8)+$9500+((\1>>1)&$FF),(a5)
		move.w	#$9700+((((\1>>1)&$FF0000)>>16)&$7F),(a5)
		move.w	#$4000+(\3&$3FFF),(a5)
		move.w	#$80+((\3&$C000)>>14),(v_vdp_buffer2).w
		move.w	(v_vdp_buffer2).w,(a5)
		
		endm

; ---------------------------------------------------------------------------
; DMA copy data from 68K (ROM/RAM) to the CRAM
; input: source, length, destination
; ---------------------------------------------------------------------------

writeCRAM:			macro

		lea	(vdp_control_port).l,a5
		move.l	#$94000000+(((\2>>1)&$FF00)<<8)+$9300+((\2>>1)&$FF),(a5)
		move.l	#$96000000+(((\1>>1)&$FF00)<<8)+$9500+((\1>>1)&$FF),(a5)
		move.w	#$9700+((((\1>>1)&$FF0000)>>16)&$7F),(a5)
		move.w	#$C000+(\3&$3FFF),(a5)
		move.w	#$80+((\3&$C000)>>14),(v_vdp_buffer2).w
		move.w	(v_vdp_buffer2).w,(a5)
		
		endm

; ---------------------------------------------------------------------------
; DMA fill VRAM with a value
; input: value, length, destination
; ---------------------------------------------------------------------------

fillVRAM:			macro value, length, loc

		lea	(vdp_control_port).l,a5
		move.w	#$8F01,(a5)
		move.l	#$94000000+((length&$FF00)<<8)+$9300+(length&$FF),(a5)
		move.w	#$9780,(a5)
		move.l	#$40000080+((loc&$3FFF)<<16)+((loc&$C000)>>14),(a5)
		move.w	#value,(vdp_data_port).l
		
		endm

; ---------------------------------------------------------------------------
; Copy a tilemap from 68K (ROM/RAM) to the VRAM without using DMA
; input: source, destination, width [cells], height [cells]
; ---------------------------------------------------------------------------

copyTilemap:		macro source, loc, width, height

		lea	(source).l,a1
		move.l	#$40000000+((loc&$3FFF)<<16)+((loc&$C000)>>14),d0
		moveq	#width,d1
		moveq	#height,d2
		bsr.w	TilemapToVRAM
		
		endm

; ---------------------------------------------------------------------------
; stop the Z80
; ---------------------------------------------------------------------------

stopZ80:			macro

		move.w	#$100,(z80_bus_request).l
		
		endm

; ---------------------------------------------------------------------------
; wait for Z80 to stop
; ---------------------------------------------------------------------------

waitZ80:			macro

	@wait:	btst	#0,(z80_bus_request).l
		bne.s	@wait
		
		endm

; ---------------------------------------------------------------------------
; reset the Z80
; ---------------------------------------------------------------------------

resetZ80:			macro

		move.w	#$100,(z80_reset).l
		
		endm

resetZ80a:			macro

		move.w	#0,(z80_reset).l
		
		endm

; ---------------------------------------------------------------------------
; start the Z80
; ---------------------------------------------------------------------------

startZ80:			macro

		move.w	#0,(z80_bus_request).l
		
		endm

; ---------------------------------------------------------------------------
; disable interrupts
; ---------------------------------------------------------------------------

disable_ints:		macro

		move	#$2700,sr
		
		endm		

; ---------------------------------------------------------------------------
; enable interrupts
; ---------------------------------------------------------------------------

enable_ints:		macro

		move	#$2300,sr
		
		endm

; ---------------------------------------------------------------------------
; long conditional jumps
; ---------------------------------------------------------------------------

jhi:				macro loc

		bls.s	@nojump
		jmp	loc
	@nojump:
	
		endm

jcc:				macro loc

		bcs.s	@nojump
		jmp	loc
	@nojump:
	
		endm

jhs:				macro loc

		jcc	loc
		
		endm

jls:				macro loc

		bhi.s	@nojump
		jmp	loc
	@nojump:
	
		endm

jcs:				macro loc

		bcc.s	@nojump
		jmp	loc
	@nojump:
	
		endm

jlo:				macro loc

		jcs	loc
		
		endm

jeq:				macro loc

		bne.s	@nojump
		jmp	loc
	@nojump:
	
		endm

jne:				macro loc

		beq.s	@nojump
		jmp	loc
	@nojump:
	
		endm

jgt:				macro loc

		ble.s	@nojump
		jmp	loc
	@nojump:
	
		endm

jge:				macro loc

		blt.s	@nojump
		jmp	loc
	@nojump:
	
		endm

jle:				macro loc

		bgt.s	@nojump
		jmp	loc
	@nojump:
	
		endm

jlt:				macro loc

		bge.s	@nojump
		jmp	loc
	@nojump:
	
		endm

jpl:				macro loc

		bmi.s	@nojump
		jmp	loc
	@nojump:
	
		endm

jmi:				macro loc

		bpl.s	@nojump
		jmp	loc
	@nojump:
	
		endm

; ---------------------------------------------------------------------------
; bankswitch between SRAM and ROM
; (remember to enable SRAM in the header first!)
; ---------------------------------------------------------------------------

gotoSRAM:			macro
		move.b  #1,($A130F1).l
		endm

gotoROM:			macro
		move.b  #0,($A130F1).l
		endm

; ---------------------------------------------------------------------------
; Dialog Commands
; ---------------------------------------------------------------------------

New_Frame:			macro x_position, y_position, frame_width, frame_height, speaking

		dc.b 	story_new_frame									; New Frame
		dc.b	frame_width+(frame_height*32) 					; Width
		dc.b	speaking										; Speaking		
		dc.w	$D200+(x_position*2-2)+$80*(y_position-1)		; Position
		
		endm
		
; ---------------------------------------------------------------------------

Close_Frame:		macro

		dc.b 	story_close_frame		; Close Frame
		
		endm

; ---------------------------------------------------------------------------

Same_Frame:		macro

		dc.b 	story_same_frame		; Same Frame
		
		endm

; ---------------------------------------------------------------------------

Dialog_End:			macro

		dc.b 	story_end				; End of Dialog
		
		endm

; ---------------------------------------------------------------------------

Frames_Pause:		macro time

		dc.b 	story_pause				; Pause
		dc.b	time 					; Time
		
		endm

; ---------------------------------------------------------------------------

Animation_Arle: 	macro animation

		dc.b 	story_sprite_arle		; Arle Animation
		dc.b	animation 				; Animation
		
		endm
		
; ---------------------------------------------------------------------------

Animation_Enemy: 	macro animation

		dc.b 	story_sprite_enemy		; Enemy Animation
		dc.b	animation 				; Animation
		
		endm
		
; ---------------------------------------------------------------------------

Cutscene_Arle: 		macro animation

		dc.b 	story_sprite_arle		; Arle Animation
		dc.b	animation+128			; Animation
		
		endm
		
; ---------------------------------------------------------------------------

Cutscene_Enemy: 	macro animation

		dc.b 	story_sprite_enemy		; Enemy Animation
		dc.b	animation+128 			; Animation
		
		endm
		
; ---------------------------------------------------------------------------
; Tutorial & Ending Commands
; ---------------------------------------------------------------------------

Frames_Delay:		macro time

		dc.w 	tutorial_pause			; Pause
		dc.w	time 					; Time
		
		endm
		
; ---------------------------------------------------------------------------

Text_Plane_A:		macro x_position, y_position
		
		dc.w 	tutorial_position								; Position
		dc.w	$C000+(x_position*2-2)+$100*(y_position-1)		; X & Y
		
		endm
		
; ---------------------------------------------------------------------------

Text_Plane_B:		macro x_position, y_position
		
		dc.w 	tutorial_position								; Position
		dc.w	$E000+(x_position*2-2)+$100*(y_position-1)		; X & Y
		
		endm
		
; ---------------------------------------------------------------------------

Text_Start:			macro

		dc.l 	tutorial_Start			; Start of Dialog
		
		endm
		
; ---------------------------------------------------------------------------

Text_End:			macro

		dc.b 	tutorial_end			; End of Dialog
		
		endm
		
; ---------------------------------------------------------------------------

Line_Number:		macro x_position, y_position
		
		dc.w 	tutorial_position								; Position
		dc.w	$C222+(x_position*2-2)+$100*(y_position-1)		; X & Y
		
		endm
		
; ---------------------------------------------------------------------------
; Other
; ---------------------------------------------------------------------------

End_Text:			macro

		dc.b 	$FF
		
		endm
		
; ---------------------------------------------------------------------------

Position_Text:		macro x_position, y_position, address
		
				; X | Y | Address
		dc.w	address+(x_position*2-2)+$80*(y_position-1)
		
		endm
		
; ---------------------------------------------------------------------------

Position_Board:		macro x_position, y_position
		
				; Unknown | X | Y 
		dc.w	0
		dc.b	(y_position-1)/2
		dc.b	(x_position-1)*2
		
		endm

; ---------------------------------------------------------------------------

Plane_Header: 		macro x_position, y_position, width, height, address, mapping

				; X | Y | Width | Height | Address | Mapping
		dc.b 	width											; Width
		dc.b 	height											; Height
		dc.w 	address+(x_position*2-2)+$100*(y_position-1)	; Position
		dc.l 	mapping											; Mapping
		
		endm

; ---------------------------------------------------------------------------

Plane_Piece: 		macro pal, tile, pri, xflip, yflip

				; Pal | Tile ID | Priority | Hori Flip | Vert Flip
		dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|(tile&$7FF)
		
		endm

; ---------------------------------------------------------------------------

Set_of_Letters: 	macro number

				; Set of Graphics
		dc.w	number+1
		
		endm
		
; ---------------------------------------------------------------------------

Set_of_Graphics: 	macro number

				; Set of Graphics
		dc.w	number-1
		
		endm
		
; ---------------------------------------------------------------------------

Set_of_Sprites: 	macro number

				; Set of Sprites
		dc.w	number
		
		endm
		

Sprite_Piece: 		macro pal, tile, pri, xpos, ypos, xflip, yflip, width, height, link

				; Pal | Tile | Priority | X | Y | Hori Flip | Vert Flip | Width | Height | Link
		dc.w	ypos
		dc.w	((width&3)<<10)|((height&3)<<8)|link
		dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|(tile&$7FF)
		dc.w	xpos
		
		endm

; ---------------------------------------------------------------------------

Position_D5:		macro x_position, y_position, address
				
				; X | Y | Address
		move.w	#address+(x_position*2-2)+$80*(y_position-1), D5
		
		endm
		
; ---------------------------------------------------------------------------

Plane_D6:		macro pal, tile, pri, xflip, yflip

				; Pal | Tile ID | Priority | Hori Flip | Vert Flip
		move.w	#((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|(tile&$7FF), D6
		
		endm
		
; ---------------------------------------------------------------------------

Staff_X_Pos:	macro pal, x_position, letters

		dc.w	120+(x_position*8)
		dc.w 	letters
		dc.w	((High&1)<<15)|((pal&3)<<13)|((No&1)<<12)|((No&1)<<11)|$500
		
		endm


Staff_X_Pos_Odd:	macro pal, x_position, letters

		dc.w	124+(x_position*8)
		dc.w 	letters
		dc.w	((High&1)<<15)|((pal&3)<<13)|((No&1)<<12)|((No&1)<<11)|$500
		
		endm
		

Staff_Y_Pos:	macro y_position

		dc.w	y_position*8
		
		endm
		

Staff_End:		macro

		dc.w 	$8000
		
		endm
		
; ---------------------------------------------------------------------------