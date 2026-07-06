
Option_Strings:
					dc.w	14			; Number of Option strings
					
					dc.l 	Options_1
					dc.l 	Options_2
					dc.l 	Options_3
					dc.l 	Options_4
					dc.l 	Options_5
					dc.l 	Options_6
					dc.l 	Options_7
					dc.l 	Options_8
					dc.l 	Options_9
					dc.l 	Options_10
					dc.l 	Options_11
					dc.l 	Options_12
					dc.l 	Options_13
					dc.l 	Options_14
					
; ---------------------------------------------------------------------------------	
					
Input_Strings:
					dc.w	12			; Number of Input strings
					
					dc.l 	Input_1
					dc.l 	Input_2
					dc.l 	Input_3
					dc.l 	Input_4
					dc.l 	Input_5
					dc.l 	Input_6
					dc.l 	Input_7
					dc.l 	Input_8
					dc.l 	Input_9
					dc.l 	Input_10
					dc.l 	Input_11
					dc.l 	Input_12
					
; ---------------------------------------------------------------------------------	
					
Sound_Strings:
					dc.w	8			; Number of Sound strings
					
					dc.l 	Sound_1
					dc.l 	Sound_2
					dc.l 	Sound_3
					dc.l 	Sound_4
					dc.l 	Sound_5
					dc.l 	Sound_6
					dc.l 	Sound_7
					dc.l 	Sound_8
					
; ---------------------------------------------------------------------------------	
					
BGM_Strings:					
					dc.l 	BGM_1
					dc.l 	BGM_2
					dc.l 	BGM_3
					dc.l 	BGM_4
					dc.l 	BGM_5
					dc.l 	BGM_6
					dc.l 	BGM_7
					dc.l 	BGM_8
					dc.l 	BGM_9
					dc.l 	BGM_10
					dc.l 	BGM_11
					dc.l 	BGM_12
					dc.l 	BGM_13
					dc.l 	BGM_14
					dc.l 	BGM_15
					dc.l 	BGM_16
					dc.l 	BGM_17
					dc.l 	BGM_18
					
; ---------------------------------------------------------------------------------	
					
Voice_Strings:					
					dc.l 	Voice_1
					dc.l 	Voice_2
					dc.l 	Voice_3
					
; ---------------------------------------------------------------------------------	
					
Command_Strings:					
					dc.l 	Command_1
					dc.l 	Command_2
					dc.l 	Command_3
					dc.l 	Command_4
					dc.l 	Command_5
					dc.l 	Command_6
					dc.l 	Command_7
										
; =================================================================================

Options_1:			
							; X | Y
		   Position_Text	17, 2
		   
							; Pal | Tile ID | Priority | Hori Flip | Vert Flip
			 Plane_Piece	Blue_Opt, $500, High, No, No
			  
							; Text	
			Font_Options 	"OPTIONS"			
			
				End_Text	; End
					even

Options_2:			
		   Position_Text	14, 4
			 Plane_Piece	Green_Opt, $500, High, No, No
			Font_Options	"BUTTON CONFIG"			
				End_Text
					even
					
Options_3:	
		   Position_Text	6, 6
			 Plane_Piece	Green_Opt, $500, High, No, No
			Font_Options	"JOYPAD 1"
				End_Text
					even
					
Options_4:	
		   Position_Text	24, 6
			 Plane_Piece	Green_Opt, $500, High, No, No		
			Font_Options	"JOYPAD 2"
				End_Text
					even
				
Options_5:			
		   Position_Text	4, 8
			 Plane_Piece	Green_Opt, $500, High, No, No
			Font_Options	"A:"
				End_Text
					even
					
Options_6:			
		   Position_Text	4, 10
			 Plane_Piece	Green_Opt, $500, High, No, No
			Font_Options	"B:"
				End_Text
					even
				
Options_7:			
		   Position_Text	4, 12
			 Plane_Piece	Green_Opt, $500, High, No, No
			Font_Options	"C:"
				End_Text
					even
				
Options_8:			
		   Position_Text	22, 8
			 Plane_Piece	Green_Opt, $500, High, No, No
			Font_Options	"A:"
				End_Text
					even
				
Options_9:			
		   Position_Text	22, 10
			 Plane_Piece	Green_Opt, $500, High, No, No
			Font_Options	"B:"
				End_Text
					even
				
Options_10:			
		   Position_Text	22, 12
			 Plane_Piece	Green_Opt, $500, High, No, No
			Font_Options	"C:"
				End_Text
					even
				
Options_11:								
		   Position_Text	5, 15
			 Plane_Piece	Green_Opt, $500, High, No, No
			Font_Options	"STORY MODE      :"
				End_Text
					even
				
Options_12:			
		   Position_Text	5, 17
			 Plane_Piece	Green_Opt, $500, High, No, No
			Font_Options	"1P V$ 2P MODE   :"
				End_Text
					even
				
Options_13:			
		   Position_Text	5, 19
			 Plane_Piece	Green_Opt, $500, High, No, No
			Font_Options	"USE VOICES      :"
				End_Text
					even
					
Options_14:			
		   Position_Text	11, 26
			 Plane_Piece	Blue_Opt, $500, High, No, No
			Font_Options	"PRESS “START” TO EXIT"
				End_Text
					even
					
; ---------------------------------------------------------------------------------

Input_1:				
		   Position_Text	16, 2
			 Plane_Piece	Blue_Opt, $500, High, No, No
			Font_Options	"INPUT TEST"
				End_Text
					even
										
Input_2:				
		   Position_Text	19, 5
			 Plane_Piece	Green_Opt, $500, High, No, No
			Font_Options	"1P"
				End_Text
					even
					
Input_3:				
		   Position_Text	25, 5
			 Plane_Piece	Green_Opt, $500, High, No, No
			Font_Options	"2P"
				End_Text
					even
				
Input_4:				
		   Position_Text	12, 7
			 Plane_Piece	White_Opt, $500, High, No, No
			Font_Options	"START:"
				End_Text
					even
				
Input_5:				
		   Position_Text	16, 9
			 Plane_Piece	White_Opt, $500, High, No, No
			Font_Options	"A:"
				End_Text
					even
				
Input_6:				
		   Position_Text	16, 11
			 Plane_Piece	White_Opt, $500, High, No, No
			Font_Options 	"B:"
				End_Text
					even
				
Input_7:				
		   Position_Text	16, 13
			 Plane_Piece	White_Opt, $500, High, No, No
			Font_Options	"C:"
				End_Text
					even
				
Input_8:				
		   Position_Text	15, 16
			 Plane_Piece	White_Opt, $500, High, No, No
			Font_Options	"UP:"
				End_Text
					even
				
Input_9:				
		   Position_Text	13, 18
			 Plane_Piece	White_Opt, $500, High, No, No
			Font_Options	"DOWN:"
				End_Text
					even
				
Input_10:			
		   Position_Text	12, 22
			 Plane_Piece	White_Opt, $500, High, No, No
			Font_Options	"RIGHT:"
				End_Text
					even
				
Input_11:			
		   Position_Text	13, 20
			 Plane_Piece	White_Opt, $500, High, No, No
			Font_Options	"LEFT:"
				End_Text
					even
					
Input_12:			
		   Position_Text	9, 26
			 Plane_Piece	Blue_Opt, $500, High, No, No
			Font_Options	"PRESS “START + A” TO EXIT"
				End_Text
					even
					
; ---------------------------------------------------------------------------------

			; Note: 
			; The "ON / OFF" text length can be extended!

ON_Text:
			Font_Options	"o"			; ON
				End_Text
					even

OFF_Text:
			Font_Options	"x"			; OFF	
				End_Text
					even


ON_OFF_Positions:

		   ; Player 2					
		   Position_Text	25, 16		; UP
		   Position_Text	25, 18		; DOWN
		   Position_Text	25, 20		; LEFT
		   Position_Text	25, 22		; RIGHT			
		   Position_Text	25, 11		; B
		   Position_Text	25, 13		; C
		   Position_Text	25, 9		; A
		   Position_Text	25, 7		; START

		   ; Player 1
		   Position_Text	19, 16		; UP
		   Position_Text	19, 18		; DOWN
		   Position_Text	19, 20		; LEFT
		   Position_Text	19, 22		; RIGHT			
		   Position_Text	19, 11		; B
		   Position_Text	19, 13		; C
		   Position_Text	19, 9		; A
		   Position_Text	19, 7		; START

; ---------------------------------------------------------------------------------

Sound_1:				
		   Position_Text	16, 2
			 Plane_Piece	Blue_ST, $500, High, No, No
			Font_Options	"SOUND TEST"
				End_Text
					even
				
Sound_2:				
		   Position_Text	6, 4
			 Plane_Piece	Green_ST, $500, High, No, No
			Font_Options	"SFX 1:"
				End_Text
					even
				
Sound_3:				
		   Position_Text	6, 6
			 Plane_Piece	Green_ST, $500, High, No, No
			Font_Options	"SFX 2:"
				End_Text
					even
				
Sound_4:				
		   Position_Text	6, 8
			 Plane_Piece	Green_ST, $500, High, No, No
			Font_Options	"SFX 3:"
				End_Text
					even
				
Sound_5:				
		   Position_Text	8, 10
			 Plane_Piece	Green_ST, $500, High, No, No
			Font_Options	"BGM:"
				End_Text
					even
				
Sound_6:				
		   Position_Text	6, 12
			 Plane_Piece	Green_ST, $500, High, No, No
			Font_Options	"VOICE:"
				End_Text
					even
				
Sound_7:				
		   Position_Text	3, 14
			 Plane_Piece	Green_ST, $500, High, No, No
			Font_Options	"FUNCTION:"
				End_Text
					even
					
Sound_8:				
		   Position_Text	11, 26
			 Plane_Piece	Blue_ST, $500, High, No, No
			Font_Options	"PRESS “START” TO EXIT"
				End_Text
					even
					
; ---------------------------------------------------------------------------------

BGM_1:				dc.b	$01							; Track #
			Font_Options	"FINAL OF PUYO PUYO"		; Name
				End_Text
					even
					
BGM_2:				dc.b	$02
			Font_Options	"THEME OF PUYO PUYO"
				End_Text
					even

BGM_3:				dc.b	$03
			Font_Options	"BAROQUE OF PUYO PUYO"
				End_Text
					even

BGM_4:				dc.b	$04
			Font_Options	"COOKING OF PUYO PUYO"
				End_Text
					even

BGM_5:				dc.b	$05
			Font_Options	"MORNING OF PUYO PUYO"
				End_Text
					even

BGM_6:				dc.b	$06
			Font_Options	"TOY OF PUYO PUYO"
				End_Text
					even
					
BGM_7:				dc.b	$07
			Font_Options	"SORROW OF PUYO PUYO"
				End_Text
					even

BGM_8:				dc.b	$08
			Font_Options	"STICKER OF PUYO PUYO"
				End_Text
					even

BGM_9:				dc.b	$0A
			Font_Options	"SUNSET OF PUYO PUYO"
				End_Text
					even

BGM_10:				dc.b	$0B
			Font_Options	"REJECTION OF PUYO PUYO"
				End_Text
					even

BGM_11:				dc.b	$0C
			Font_Options	"MEMORIES OF PUYO PUYO"
				End_Text
					even

BGM_12:				dc.b	$0D
			Font_Options	"THEME FOR HARPY"
				End_Text
					even
					
BGM_13:				dc.b	$0E
			Font_Options	"WARNING OF PUYO PUYO"
				End_Text
					even

BGM_14:				dc.b	$0F
			Font_Options	"THEME FOR SATAN"
				End_Text
					even
					
BGM_15:				dc.b	$10
			Font_Options	"BRAVE OF PUYO PUYO"
				End_Text
					even
					
BGM_16:				dc.b	$11
			Font_Options	"ONDO OF PUYO PUYO"
				End_Text
					even
					
BGM_17:				dc.b	$12
			Font_Options	"VICTORY OF PUYO PUYO"
				End_Text
					even
					
BGM_18:				dc.b	$13
			Font_Options	"JOY OF PUYO PUYO"
				End_Text
					even
					
; ---------------------------------------------------------------------------------

Voice_1:			dc.b	$80
			Font_Options	"“FIRE!”"
				End_Text
					even
					
Voice_2:			dc.b	$81
			Font_Options	"“YATTA NA!”"
				End_Text
					even

Voice_3:			dc.b	$82
			Font_Options	"“PUYO PUYO!”"
				End_Text
					even

; ---------------------------------------------------------------------------------	
					
Command_1:			dc.b	$F1
			Font_Options	"STOP ALL"
				End_Text
					even
					
Command_2:			dc.b	$F2
			Font_Options	"STOP"
				End_Text
					even

Command_3:			dc.b	$F3
			Font_Options	"FADE OUT"
				End_Text
					even

Command_4:			dc.b	$F4
			Font_Options	"FADE IN"
				End_Text
					even

Command_5:			dc.b	$F5
			Font_Options	"FADE BACK IN"
				End_Text
					even

Command_6:			dc.b	$F6
			Font_Options	"PAUSE"
				End_Text
					even

Command_7:			dc.b	$F7
			Font_Options	"UNPAUSE"
				End_Text
					even
					
; ---------------------------------------------------------------------------------	

TrackNo_X:			equ 13		; Track # - X Position
TrackNo_Y:			equ 14		; Track # - Y Position

TrackText_X:		equ 17		; Track Text - X Position
TrackText_Y:		equ 10		; Track Text - Y Position

; ---------------------------------------------------------------------------------	

Function_1:
			Font_Options	"UNUSED        "
				End_Text
					even
					
Function_2:
			Font_Options	"ROTATE LEFT  >"
				End_Text
					even
					
Function_3:
			Font_Options	"ROTATE RIGHT <"
				End_Text
					even
					
Function_P1_X:		equ 6		; Function P1 - X Position
Function_P1_Y:		equ 8		; Function P1 - Y Position

Function_P2_X:		equ 24		; Function P2 - X Position
Function_P2_Y:		equ 8		; Function P2 - Y Position
					
; ---------------------------------------------------------------------------------		

COMLevel_1:
			Font_Options	"HARDEST"
				End_Text
					even
					
COMLevel_2:
			Font_Options	"HARD   "
				End_Text
					even
					
COMLevel_3:
			Font_Options	"NORMAL "
				End_Text
					even
									
COMLevel_4:
			Font_Options	"EASY   "
				End_Text
					even
					
COMLevel_X:			equ 23		; COM Level - X Position
COMLevel_Y:			equ 15		; COM Level - Y Position
					
; ---------------------------------------------------------------------------------	

Match_1:
			Font_Options	"BEST OF "
				End_Text
					even
					
Match_X:			equ 23		; Match - X Position
Match_Y:			equ 17		; Match - Y Position
					
MatchNo_X:			equ 31		; Match # - X Position
MatchNo_Y:			equ 17		; Match # - Y Position

; ---------------------------------------------------------------------------------	

Sampling_1:
			Font_Options	"YES"
				End_Text
					even
					
Sampling_2:
			Font_Options	"NO "
				End_Text
					even
					
Sampling_X:			equ 23		; Sampling - X Position
Sampling_Y:			equ 19		; Sampling - Y Position					
					
; ---------------------------------------------------------------------------------	

Input_Test:
			Font_Options	"INPUT TEST"
				End_Text
					even
					
Input_X:			equ 16		; Input Test - X Position
Input_Y:			equ 21		; Input Test - Y Position

; ---------------------------------------------------------------------------------	
					
Sound_Test:
			Font_Options	"SOUND TEST"
				End_Text
					even
					
Sound_X:			equ 16		; Sound Test - X Position
Sound_Y:			equ 23		; Sound Test - Y Position				
					
; ---------------------------------------------------------------------------------	