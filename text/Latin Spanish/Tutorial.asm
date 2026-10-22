
Tutorial_Score:
					; Score
					
							; Set of Graphics
		 Set_of_Graphics	1
			
			
				; Graphic 1				
							; X | Y | Address
		   Position_Text	33, 21, $C000
		   
							; Pal | Tile ID | Priority | Hori Flip | Vert Flip
			 Plane_Piece	Green_VS, $500, High, No, No
					
							; Text
			 Font_Battle 	"PUNTOS"
			 
				End_Text	; End
					even		

; ---------------------------------------------------------------------------------

Tutorial_1:			

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Muévete con", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"IZQUIERDA y", Mode_Tutorial
		
				           ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"DERECHA.", Mode_Tutorial
				
		Text_End
		
		even
											
; ---------------------------------------------------------------------------------

Tutorial_2:	

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Pulsa un BOTÓN", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"para dar vueltas", Mode_Tutorial
		
				           ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"y vueltas.", Mode_Tutorial
		
		Frames_Delay		60
		
				           ; X  L
		Line_Number			 1, 5
		Font_Tutorial 		"¡Gira, gira, gira!", Mode_Tutorial
		
		Text_End
		
		even
				
; ---------------------------------------------------------------------------------

Tutorial_3:	

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Mantén pulsado ABAJO", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"para caer rápido.", Mode_Tutorial
		
		Text_End
		
		even
										
; ---------------------------------------------------------------------------------

Tutorial_4:

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Combina 4 o más", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		
		Font_Tutorial 		"del mismo color", Mode_Tutorial

				           ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"para reventarlos.", Mode_Tutorial
		
		Text_End
		
		even			
				
; ---------------------------------------------------------------------------------

Tutorial_5:	

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Si ellos se acumulan", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"hasta arriba,", Mode_Tutorial
		
		Frames_Delay		35
		
						   ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"¡SE ACABÓ!", Mode_Tutorial
		
		Text_End
		
		even		
					
; ---------------------------------------------------------------------------------

Tutorial_6:	

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"¡Cadenas!", Mode_Tutorial
		
		Frames_Delay		14
				
				           ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"¡Obtén más puntos", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 4
		Font_Tutorial 		"haciendo cadenas!", Mode_Tutorial
		
		Frames_Delay		70
		
		
		
		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Esto provocará que", Mode_Tutorial		
		
						   ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"puyos basura", Mode_Tutorial	
				
				           ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"lluevan sobre el", Mode_Tutorial			
		
				           ; X  L
		Line_Number			 1, 4
		Font_Tutorial 		"área del oponente", Mode_Tutorial	
		
				           ; X  L
		Line_Number			 1, 5
		Font_Tutorial 		"durante la batalla.", Mode_Tutorial	
		
		Frames_Delay		45
		
				           ; X  L
		Line_Number			 1, 7
		Font_Tutorial 		"¡Qué maravilla!", Mode_Tutorial	
		
		Text_End
		
		even	
					
; ---------------------------------------------------------------------------------

Tutorial_7:

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Empecemos con una", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"cadena de 2.", Mode_Tutorial
		
		Text_End
		
		even
					
; ---------------------------------------------------------------------------------

Tutorial_8:				

		Frames_Delay		70

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"¿Lo ves?", Mode_Tutorial
		
		Frames_Delay		35
		
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"Se hace así.", Mode_Tutorial
		
		Text_End
		
		even
					
; ---------------------------------------------------------------------------------

Tutorial_9:			

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Bien,", Mode_Tutorial
		
		Frames_Delay		35
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"ahí va otra.", Mode_Tutorial
		
		Text_End
		
		even
					
; ---------------------------------------------------------------------------------

Tutorial_10:		

		Frames_Delay		70

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"¡Taraaan!", Mode_Tutorial
		
		Text_End
		
		even
					
; ---------------------------------------------------------------------------------

Tutorial_11:			

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Una más.", Mode_Tutorial
		
		Text_End
		
		even
					
; ---------------------------------------------------------------------------------

Tutorial_12:			

		Frames_Delay		70
		
		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Debes tenerlo muy", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"en claro, ", Mode_Tutorial
		
		Frames_Delay		35
				
				           ; X  L
		Line_Number			11, 2
		Font_Tutorial 		"¿bien?", Mode_Tutorial
		
		Text_End

		even	
					
; ---------------------------------------------------------------------------------

Tutorial_13:			

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Según cómo vayan las", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 2
		Font_Tutorial 		"cosas, ", Mode_Tutorial
		
		Frames_Delay		35
				
				           ; X  L
		Line_Number			 8, 2
		Font_Tutorial 		"¡también", Mode_Tutorial
				
				           ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"puedes hacer cadenas", Mode_Tutorial	
		
						   ; X  L
		Line_Number			 1, 4
		Font_Tutorial 		"de 3 o incluso 4!", Mode_Tutorial
		
		Text_End	

		even
					
; ---------------------------------------------------------------------------------

Tutorial_14:							

		Text_Start		
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"¡PUM!", Mode_Tutorial

		Frames_Delay		60

		                   ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"¡Los puyos basura", Mode_Tutorial

		                   ; X  L
		Line_Number			 1, 4
		Font_Tutorial 		"están haciendo un", Mode_Tutorial

		                   ; X  L
		Line_Number			 1, 5
		Font_Tutorial 		"desastre!", Mode_Tutorial
		
		Frames_Delay		75
		
		
		Text_Start
		                   ; X  L
		Line_Number			 1, 1
		Font_Tutorial 		"Cuando combinas", Mode_Tutorial	

		Line_Number			 1, 2
		Font_Tutorial 		"puyos, ", Mode_Tutorial			
		
		Frames_Delay		35
		
				           ; X  L
		Line_Number			 7, 2
		Font_Tutorial 		"¡la explosión", Mode_Tutorial
		
				           ; X  L
		Line_Number			 1, 3
		Font_Tutorial 		"causará que la", Mode_Tutorial
		
				           ; X  L
		Line_Number			 1, 4
		Font_Tutorial 		"basura adyacente", Mode_Tutorial
		
				           ; X  L
		Line_Number			 1, 5
		Font_Tutorial 		"también reviente!", Mode_Tutorial		
		
		Text_End
		
		even
		
; ---------------------------------------------------------------------------------

Tutorial_15:									
		
		Text_End
					
		even
					
; ---------------------------------------------------------------------------------
