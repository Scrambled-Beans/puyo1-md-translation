; --------------------------------------------------------------
; Battle
; --------------------------------------------------------------

FONT_BATTLE macro text

i = 0

	while i<strlen(\text)
	
c substr 1+i,1+i,\text


			; Space
			if ("\c"=" ")
				dc.b	0
			
			; A-Z (Large Font)
			elseif ("\c">="A")&("\c"<="Z")
				dc.b	("\c"-54)*2
					
			; 0-9 (Small Font)
			elseif ("\c">="0")&("\c"<="9")
				dc.b	("\c"+6)*2
								
			; a-z (Small Font)
			elseif ("\c">="a")&("\c"<="z")
				dc.b	("\c"-33)*2

			; : (Large Font)
			elseif ("\c"=":")
				dc.b	186
						
			; # (1 or 2)
			elseif ("\c"="#")
				dc.b	$FE
				
			; ¹ (10s digit)
			elseif ("\c"="¹")
				dc.b	$FE
							
			; º (1s digit)
			elseif ("\c"="º")
				dc.b	$FF
												
			; $ = START (Small Font)
			elseif ("\c"="$")
				dc.b	$D4, $D6, $D8, $DA, $DC, $DE
				
			; ~ = FINAL STAGE (Small Font)
			elseif ("\c"="~")
				dc.b	$C8, $CA, $CC, $CE, $D0, $D2, $D4, $D6, $D8, $DA, $DC, $DE
				
			; & = FINAL STAGE (Large Font)
			elseif ("\c"="&")
				dc.b	$80, $82, $84, $86, $88, $8A, $8C, $8E, $90, $92, $94, $96
				
			; @ = GAMES
			elseif ("\c"="@")
				dc.b	$D6, $D8, $DA, $DC, $DE, $E0, $E2, $E4, $E6, $E8
				
			; | = WON
			elseif ("\c"="|")
				dc.b	$EA, $EC, $EE, $F0, $F2, $F4, $F6, $F8, $FA, $FC
				
			; É (Large Font)
			elseif ("\c"="É")
				dc.b	76
							
			else
				dc.b	0
				
			endif
		
i = i+1
	endw

	endm
	
	
; --------------------------------------------------------------
; Battle (Sprite)
; --------------------------------------------------------------

Sprite_Piece_Char macro pal, letter, pri, xpos, ypos, xflip, yflip, width, height, link

i = 0

	while i<strlen(\letter)
	
c substr 1+i,1+i,\letter

			
			; a-z (Small Font)
			if ("\c">="a")&("\c"<="z")
			
						; Pal | Letter | Priority | X | Y | Hori Flip | Vert Flip | Width | Height | Link
				dc.w	ypos
				dc.w	((width&3)<<10)|((height&3)<<8)|link
				dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|$500+(("\c"-33)*2)
				dc.w	xpos
				
			; A-Z (Large Font)
			elseif ("\c">="A")&("\c"<="Z")
			
				dc.w	ypos
				dc.w	((width&3)<<10)|((height&3)<<8)|link
				dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|$500+(("\c"-54)*2)
				dc.w	xpos
				
			else	
				dc.w	ypos
				dc.w	((width&3)<<10)|((height&3)<<8)|link
				dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|$500
				dc.w	xpos
		
			endif
		
i = i+1
	endw

	endm