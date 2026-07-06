
Opponent_Position_X:		equ 33			; Opponent Stage # - X Position
Opponent_Position_Y:		equ 8			; Opponent Stage # - Y Position

Final_Position:				equ 2			; Final Stage Text Position
											; This subtracts the value from "Opponent_Position_X"
											
; ---------------------------------------------------------------------------------

Opp_Lesson:
					; Opponenet - Lesson
					
		 Set_of_Graphics	12						; Number of Letters					
			 Font_Battle 	"  LESSON º  "			; Text
					even					
		
; ---------------------------------------------------------------------------------

Opp_Stage_1:
					; Opponenet - Stage 1-9
					
		 Set_of_Graphics	12						; Number of Letters					
			 Font_Battle 	"  STAGE º   "			; Text		
					even					
		
; ---------------------------------------------------------------------------------

Opp_Stage_2:
					; Opponenet - Stage 10-12
					
		 Set_of_Graphics	12						; Number of Letters					
			 Font_Battle 	"  STAGE ¹º  "			; Text		
					even					
		
; ---------------------------------------------------------------------------------


Opp_Final:
					; Opponenet - Final
					
		 Set_of_Graphics	14						; Number of Letters					
			 Font_Battle 	" & "						; Text			 
					even					
		
; ---------------------------------------------------------------------------------