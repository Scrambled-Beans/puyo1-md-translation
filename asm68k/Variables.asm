
; Language / Video

v_Language:				equ $FFFCAE
v_Video:				equ $FFFCAF
v_Expansion:			equ $FFFCB0

; ========================================================================================

; Other

o_Repro:				equ $FFFCB1

; ========================================================================================

; SRAM Size

KBIT_SRAM_64:			equ $203FFF ; 8KB
KBIT_SRAM_256:			equ $20FFFF ; 32KB

; ========================================================================================

; Debug

Debug_Lesson_1:			equ 0
Debug_Lesson_2:			equ 1
Debug_Lesson_3:			equ 2

Debug_Stage_1:			equ 3
Debug_Stage_2:			equ 4
Debug_Stage_3:			equ 5
Debug_Stage_4:			equ 6
Debug_Stage_5:			equ 7
Debug_Stage_6:			equ 8
Debug_Stage_7:			equ 9
Debug_Stage_8:			equ 10
Debug_Stage_9:			equ 11
Debug_Stage_10:			equ 12
Debug_Stage_11:			equ 13
Debug_Stage_12:			equ 14
Debug_Stage_13:			equ 15

; ========================================================================================

; Battle Settings

Stage_Number:			equ $FF0112

; ========================================================================================

; Sprite / Plane Settings

Yes:					equ 1
No:						equ 0

High:					equ 1
Low:					equ 0

Pixels_8:				equ 0
Pixels_16:				equ 1
Pixels_24:				equ 2
Pixels_32:				equ 3

; ========================================================================================

; Color Text

PAL_1:					equ 0
PAL_2:					equ 1
PAL_3:					equ 2
PAL_4:					equ 3

white_opt:				equ 0
blue_opt:				equ 1
red_opt:				equ 2
green_opt:				equ 3

blue_st:				equ 1
white_st:				equ 2
green_st:				equ 3

white_vs:				equ 0
red_vs:					equ 0
blue_vs:				equ 1
green_vs:				equ 2

white_check:			equ 0
red_check:				equ 1

white_staff:			equ 1
green_staff:			equ 2

; ========================================================================================

; Story Commands

story_end:				equ $80  		; End of Text
story_new_frame:		equ $81        	; New Frame
story_close_frame:		equ $82        	; Close Frame
story_pause:			equ $83        	; Pause
story_sprite_arle:		equ $84        	; Arle Animation
story_sprite_enemy:		equ $85        	; Enemy Animation
story_same_frame:		equ $87        	; Use same Frame

arle:					equ 0			; Arle Speaks
enemy:					equ 2			; Enemy Speaks

; ========================================================================================

; Tutorial & Ending Commands

Mode_Tutorial			equ 0
Mode_Ending_1			equ $8000
Mode_Ending_2			equ $4000

tutorial_start:			equ $FF0C002B
tutorial_end:			equ $FF
tutorial_pause:			equ $FF04
tutorial_position:		equ $FF08

; ========================================================================================
