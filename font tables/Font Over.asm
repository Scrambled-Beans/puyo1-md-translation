; --------------------------------------------------------------
; Game Over (Large)
; --------------------------------------------------------------

FONT_GAME_OVER macro pal, letter, pri, xpos, ypos, xflip, yflip, width, height, link

i = 0

	while i<strlen(\letter)
	
c substr 1+i,1+i,\letter
		

			; G
			if ("\c"="G")											
						; Pal | Tile | Priority | X | Y | Hori Flip | Vert Flip | Width | Height | Link
				dc.w	ypos
				dc.w	((width&3)<<10)|((height&3)<<8)|link
				dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|$160
				dc.w	xpos
				
			; A
			elseif ("\c"="A")
				dc.w	ypos
				dc.w	((width&3)<<10)|((height&3)<<8)|link
				dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|$16C
				dc.w	xpos
			
			; M
			elseif ("\c"="M")
				dc.w	ypos
				dc.w	((width&3)<<10)|((height&3)<<8)|link
				dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|$178
				dc.w	xpos
				
			; E
			elseif ("\c"="E")
				dc.w	ypos
				dc.w	((width&3)<<10)|((height&3)<<8)|link
				dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|$184
				dc.w	xpos
				
			; O
			elseif ("\c"="O")
				dc.w	ypos
				dc.w	((width&3)<<10)|((height&3)<<8)|link
				dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|$190
				dc.w	xpos
				
			; V
			elseif ("\c"="V")
				dc.w	ypos
				dc.w	((width&3)<<10)|((height&3)<<8)|link
				dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|$19C
				dc.w	xpos
											
			; R
			elseif ("\c"="R")
				dc.w	ypos
				dc.w	((width&3)<<10)|((height&3)<<8)|link
				dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|$1A8
				dc.w	xpos	
				
										
			else
				dc.w	ypos
				dc.w	((width&3)<<10)|((height&3)<<8)|link
				dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|$160
				dc.w	xpos
									
			endif

i = i+1
	endw

	endm
