
					; Text Position (same for STORY and ENDLESS text)

Modes_Position_X:		equ 9		; Modes Position - X Position
Modes_Position_Y:		equ 26		; Modes Position - Y Position

; ---------------------------------------------------------------------------------

Mode_Story:
					; Text - STORY MODE
										
			   FONT_RANK 	" STORY MODE "			; Text
				End_Text							; End				
					even					
		
; ---------------------------------------------------------------------------------

Mode_Endless:
					; Text - ENDLESS MODE
										
			   FONT_RANK 	"ENDLESS MODE"			; Text
				End_Text							; End					
					even					
		
; ---------------------------------------------------------------------------------

Default_Scores:
					; Scenario Mode
					
				; 1st
			   FONT_RANK 	"STN"   			; Name (3 Letters)
					dc.b	$FF, $FF, $FF					
					dc.l	18594		  		; Score				
					dc.w	416			  		; Block
					dc.l 	0
					
				; 2nd
			   FONT_RANK 	"RLU"   							
					dc.b	$FF, $FF, $FF					
					dc.l	16976					
					dc.w	348
					dc.l 	0
					
				; 3rd
			   FONT_RANK 	"MIN"   							
					dc.b	$FF, $FF, $FF					
					dc.l	12382				
					dc.w	204
					dc.l 	0
					
				; 4th
			   FONT_RANK 	"WIT"   							
					dc.b	$FF, $FF, $FF					
					dc.l	9260				
					dc.w	137
					dc.l 	0
					
				; 5th
			   FONT_RANK 	"NAS"   							
					dc.b	$FF, $FF, $FF					
					dc.l	6650				
					dc.w	152
					dc.l 	0
					
					
					; Exercise Mode
					
				; 1st
			   FONT_RANK 	"ZMB"   							
					dc.b	$FF, $FF, $FF					
					dc.l	108382					
					dc.w	558
					dc.l 	0
					
				; 2nd	
			   FONT_RANK 	"HPY"   							
					dc.b	$FF, $FF, $FF					
					dc.l	105375				
					dc.w	499
					dc.l 	0
					
				; 3rd
			   FONT_RANK 	"DRC"   							
					dc.b	$FF, $FF, $FF					
					dc.l	103476				
					dc.w	384
					dc.l 	0
					
				; 4th
			   FONT_RANK 	"SHZ"   							
					dc.b	$FF, $FF, $FF					
					dc.l	99873		
					dc.w	405
					dc.l 	0
					
				; 5th
			   FONT_RANK 	"ZOH"					
					dc.b	$FF, $FF, $FF					
					dc.l	97200			
					dc.w	367
					dc.l 	0
					
					even
					
; ---------------------------------------------------------------------------------
