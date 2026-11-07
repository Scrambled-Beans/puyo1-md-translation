	
							; Note: 1 Position = 8 Pixels
	
Staff_Strings:
			 Staff_Y_Pos 	2						; Y Position
					dc.l 	Trans_Team_1			; Offset to Text
			Staff_Y_Pos 	20
					dc.l 	Trans_Team_2
					
; ---------------------------------------------------------------------------------	
					
			 Staff_Y_Pos 	3		
					dc.l 	Trans_Leader
					
			 Staff_Y_Pos 	20
					dc.l 	Trans_RT
					
; ---------------------------------------------------------------------------------	
					
			 Staff_Y_Pos 	3		
					dc.l 	Trans_Translator_Japan
									
			 Staff_Y_Pos 	4	
					dc.l 	Trans_Lost
													
			 Staff_Y_Pos 	20
					dc.l 	Trans_Snowy

; ---------------------------------------------------------------------------------	

	if StaffTranslation=1	; Extra section to credit translators.
					
			 Staff_Y_Pos 	3		
					dc.l 	Trans_Translator_Other
															
			 Staff_Y_Pos 	20
					dc.l 	Trans_MDS
					
	endc

; ---------------------------------------------------------------------------------	
					
			 Staff_Y_Pos 	3			
					dc.l 	Trans_Programmer
					
			 Staff_Y_Pos 	4	
					dc.l 	Trans_RT
									
			 Staff_Y_Pos 	4
					dc.l 	Trans_AS
										
			 Staff_Y_Pos 	4
					dc.l 	Trans_Nasina
													
			 Staff_Y_Pos 	4
					dc.l 	Trans_Tomboy
					
			 Staff_Y_Pos 	20
					dc.l 	Trans_Rala

; ---------------------------------------------------------------------------------	
					
			 Staff_Y_Pos 	3		
					dc.l 	Trans_Graphic
					
			 Staff_Y_Pos 	4		
					dc.l 	Trans_PSI
									
			 Staff_Y_Pos 	4	
					dc.l 	Trans_Abur

			 Staff_Y_Pos 	4	
					dc.l 	Trans_Nik

			 Staff_Y_Pos 	4	
					dc.l 	Trans_Mutt4						
							
			 Staff_Y_Pos 	20
					dc.l 	Trans_Kame
	
; ---------------------------------------------------------------------------------	
	
			Staff_Y_Pos 	3		
					dc.l 	Trans_Software				
					
			 Staff_Y_Pos 	4
					dc.l 	Trans_Yy
					
			 Staff_Y_Pos 	4
					dc.l 	Trans_Mirm
					
			 Staff_Y_Pos 	4
					dc.l 	Trans_Lab
				
			 Staff_Y_Pos 	20
					dc.l 	Trans_Exodus

; ---------------------------------------------------------------------------------	
					
			 Staff_Y_Pos 	3		
					dc.l 	Trans_Thanks

			 Staff_Y_Pos 	4
					dc.l 	Trans_Pink
														
			 Staff_Y_Pos 	4
					dc.l 	Trans_Jate
														
			 Staff_Y_Pos 	4
					dc.l 	Trans_Puyo
							
			 Staff_Y_Pos 	32
					dc.l 	Trans_Kirby					
	
					
; ---------------------------------------------------------------------------------	
					
			 Staff_Y_Pos 	20
					dc.l 	Staff_Staff
					
; ---------------------------------------------------------------------------------	
					
			 Staff_Y_Pos 	3	
					dc.l 	Staff_Producer
					
			 Staff_Y_Pos 	20	
					dc.l 	Staff_Moo	

; ---------------------------------------------------------------------------------	
										
			 Staff_Y_Pos 	3	
					dc.l 	Staff_Director
										
			 Staff_Y_Pos 	20
					dc.l 	Staff_Tsu

; ---------------------------------------------------------------------------------	
					
			 Staff_Y_Pos 	3		
					dc.l 	Staff_Scenario
										
			 Staff_Y_Pos 	20	
					dc.l 	Staff_Hyo

; ---------------------------------------------------------------------------------	
					
			 Staff_Y_Pos 	3	
					dc.l 	Staff_Character
										
			 Staff_Y_Pos 	20
					dc.l 	Staff_Hyo

; ---------------------------------------------------------------------------------	
					
			 Staff_Y_Pos 	3		
					dc.l 	Staff_Graphic
					
			 Staff_Y_Pos 	4	
					dc.l 	Staff_Janus
					
			 Staff_Y_Pos 	4			
					dc.l 	Staff_Kerol
					
			 Staff_Y_Pos 	4		
					dc.l 	Staff_Neko
					
			 Staff_Y_Pos 	4			
					dc.l 	Staff_Toki
										
			 Staff_Y_Pos 	20
					dc.l 	Staff_Sawa					

; ---------------------------------------------------------------------------------	
					
			 Staff_Y_Pos 	3		
					dc.l 	Staff_Programmer
					
			 Staff_Y_Pos 	20
					dc.l 	Staff_Yoshi	

; ---------------------------------------------------------------------------------	
										
			 Staff_Y_Pos 	3		
					dc.l 	Staff_Sound
										
			 Staff_Y_Pos 	20	
					dc.l 	Staff_Jemini	

; ---------------------------------------------------------------------------------	
					
			 Staff_Y_Pos 	3	
					dc.l 	Staff_Music
					
			 Staff_Y_Pos 	4			
					dc.l 	Staff_Mats
										
			 Staff_Y_Pos 	20	
					dc.l 	Staff_Ein

; ---------------------------------------------------------------------------------	
					
			 Staff_Y_Pos 	3	
					dc.l 	Staff_Manual
					
			 Staff_Y_Pos 	4	
					dc.l 	Staff_Ichi
										
			 Staff_Y_Pos 	26	
					dc.l 	Staff_Toki
					
; ---------------------------------------------------------------------------------			
										
			 Staff_Y_Pos 	2		
					dc.l 	Staff_Fellows_1
					
			 Staff_Y_Pos 	48		
					dc.l 	Staff_Fellows_2
					
; ---------------------------------------------------------------------------------
					
			   Staff_End 							; End of Staff					
					even

; ---------------------------------------------------------------------------------					
					
Thanks_Playing_Strings:
					
					; Thanks Playing
					
					dc.w		15					; X Position				
					dc.l		Thank_You			; Line 1
					
					dc.w		32					; X Position
					dc.l		For_Playing			; Line 2
					
					dc.w		104					; X Position
					dc.l		Sega_Copyright		; Line 3
					
					dc.b		0					; End
					even
					

Try_On_Hardest_Strings:			

					; Try Hardest
					
					dc.w		15					; Y Position					
					dc.l		Try_On				; Line 1
					
					dc.w		32					; Y Position
					dc.l		Try_Hardest			; Line 2
					
					dc.w		104					; Y Position
					dc.l		Sega_Copyright		; Line 3
					
					dc.b		0					; End
					even
					
					
Try_On_Hard_Strings:

					; Try Hard
					
					dc.w		15					; Y Position					
					dc.l		Try_On				; Line 1
					
					dc.w		32					; Y Position
					dc.l		Try_Hard			; Line 2
					
					dc.w		104					; Y Position
					dc.l		Sega_Copyright		; Line 3
					
					dc.b		0					; End
					even
					
					
Try_On_Normal_Strings:

					; Try Normal
					
					dc.w		15					; Y Position					
					dc.l		Try_On				; Line 1
					
					dc.w		32					; Y Position
					dc.l		Try_Normal			; Line 2
					
					dc.w		104					; Y Position
					dc.l		Sega_Copyright		; Line 3
					
					dc.b		0					; End					
					even
															
; =================================================================================

							; Notes:
							
							;      	    1 Position = 8 Pixels
							
							; 			Don't include spaces for
							;			the total # of letters.	

							; 			Max letters per section = 25
							; 			 Max sections on screen = 6

Trans_Team_1:																
			 Staff_X_Pos	Green_Staff, 10, 20			; Palette | X Position | # Letters
			  Font_Staff 	"LOCALIZACIÓN AL INGLÉS"	; Text
					even

Trans_Team_2:
		 Staff_X_Pos_Odd	Green_Staff, 11, 17			; Palette | X Position | # Letters
			  Font_Staff 	"POR SCRAMBLED BEANS"		; Text
					even
					
Trans_Leader:			
			 Staff_X_Pos 	Green_Staff, 6, 11			; Palette | X Position | # Letters
			  Font_Staff 	"COORDINADOR"				; Text			  
					even
										
Trans_Translator_Japan:			
			 Staff_X_Pos 	Green_Staff, 6, 20			; Palette | X Position | # Letters
			  Font_Staff 	"TRADUCTORES DE JAPONÉS"	; Text			  
					even
					
Trans_Translator_Other:			
			 Staff_X_Pos 	Green_Staff, 6, 19			; Palette | X Position | # Letters
			  Font_Staff 	"TRADUCCIÓN AL ESPAÑOL"		; Text			  
					even
					
Trans_Programmer:			
			 Staff_X_Pos 	Green_Staff, 6, 13			; Palette | X Position | # Letters
			  Font_Staff 	"PROGRAMADORES"				; Text			  
					even
					
Trans_Graphic:			
			 Staff_X_Pos 	Green_Staff, 6, 16			; Palette | X Position | # Letters
			  Font_Staff 	"EDITORES GRÁFICOS"			; Text			  
					even
					
Trans_Software:			
			 Staff_X_Pos 	Green_Staff, 6, 21			; Palette | X Position | # Letters
			  Font_Staff 	"DISEÑADORES DE SOFTWARE"	; Text			  
					even					
					
Trans_Thanks:			
			 Staff_X_Pos 	Green_Staff, 6, 15			; Palette | X Position | # Letters
			  Font_Staff 	"AGRADECIMIENTOS"			; Text			  
					even
					
; ---------------------------------------------------------------------------------
					
Staff_Staff:			
		 Staff_X_Pos_Odd	Green_Staff, 12, 16			; Palette | X Position | # Letters
			  Font_Staff 	"PERSONAL ORIGINAL"			; Text
					even
					
Staff_Producer:			
			 Staff_X_Pos 	Green_Staff, 6, 9			; Palette | X Position | # Letters
			  Font_Staff 	"PRODUCTOR"					; Text			  
					even
					
Staff_Director:			
			 Staff_X_Pos 	Green_Staff, 6, 8			; Palette | X Position | # Letters
			  Font_Staff 	"DIRECTOR"					; Text			  
					even
					
Staff_Scenario:			
			 Staff_X_Pos 	Green_Staff, 6, 5			; Palette | X Position | # Letters
			  Font_Staff 	"GUION"						; Text			  
					even
					
Staff_Character:			
			 Staff_X_Pos 	Green_Staff, 6, 22			; Palette | X Position | # Letters
			  Font_Staff 	"DISEÑADORA DE PERSONAJES"	; Text			  
					even

Staff_Graphic:			
			 Staff_X_Pos 	Green_Staff, 6, 19			; Palette | X Position | # Letters
			  Font_Staff 	"DISEÑADORES GRÁFICOS"		; Text
					even
					
Staff_Programmer:			
			 Staff_X_Pos 	Green_Staff, 6, 11			; Palette | X Position | # Letters
			  Font_Staff 	"PROGRAMADOR"				; Text			  
					even
					
Staff_Sound:			
			 Staff_X_Pos 	Green_Staff, 6, 16			; Palette | X Position | # Letters
			  Font_Staff 	"SOFTWARE DE SONIDO"		; Text			  
					even
					
Staff_Music:			
			 Staff_X_Pos 	Green_Staff, 6, 14			; Palette | X Position | # Letters
			  Font_Staff 	"MÚSICA Y EFECTOS"			; Text			  
					even
					
Staff_Manual:			
			 Staff_X_Pos 	Green_Staff, 6, 15			; Palette | X Position | # Letters
			  Font_Staff 	"MANUAL Y EMBALAJE"			; Text			  
					even
					
; ---------------------------------------------------------------------------------
					
Trans_Lost:			
			 Staff_X_Pos 	White_Staff, 19, 18			; Palette | X Position | # Letters
			  Font_Staff 	"LOST IN LOCALIZATION"	   	; Text
					even

Trans_Snowy:			
			 Staff_X_Pos 	White_Staff, 19, 9			; Palette | X Position | # Letters
			  Font_Staff 	"SNOWYARIA"	   				; Text
					even
					
Trans_Pink:			
			 Staff_X_Pos 	White_Staff, 19, 12			; Palette | X Position | # Letters
			  Font_Staff 	"POPPIN'¤NENI"	   			; Text
					even
					
Trans_Jate:			
			 Staff_X_Pos 	White_Staff, 19, 4			; Palette | X Position | # Letters
			  Font_Staff 	"JATE"					   	; Text
					even
					
Trans_MDS:			
			 Staff_X_Pos 	White_Staff, 19, 15			; Palette | X Position | # Letters
			  Font_Staff 	"TRADUCCIONES MDS"			; Text
					even
					
Trans_RT:			
			 Staff_X_Pos 	White_Staff, 19, 10			; Palette | X Position | # Letters
			  Font_Staff 	"RADIOTAILS"	   			; Text
					even
					
Trans_AS:			
			 Staff_X_Pos 	White_Staff, 19, 17			; Palette | X Position | # Letters
			  Font_Staff 	"ADOLESCENTSEAGULL"	   		; Text
					even
													
Trans_Nasina:			
			 Staff_X_Pos 	White_Staff, 19, 6			; Palette | X Position | # Letters
			  Font_Staff 	"NASINA"			   		; Text
					even
					
Trans_Tomboy:			
			 Staff_X_Pos 	White_Staff, 19, 12			; Palette | X Position | # Letters
			  Font_Staff 	"TOMBOYDRAGON"			   		; Text
					even
					
Trans_Rala:			
			 Staff_X_Pos 	White_Staff, 19, 9			; Palette | X Position | # Letters
			  Font_Staff 	"RALAKIMUS"	   				; Text
					even
					
Trans_PSI:			
			 Staff_X_Pos 	White_Staff, 19, 9			; Palette | X Position | # Letters
			  Font_Staff 	"E-122-PSI"	   				; Text
					even
					
Trans_Abur:			
			 Staff_X_Pos 	White_Staff, 19, 7			; Palette | X Position | # Letters
			  Font_Staff 	"ABURTOS"	   				; Text
					even

Trans_Nik:			
			 Staff_X_Pos 	White_Staff, 19, 5			; Palette | X Position | # Letters
			  Font_Staff 	"NIK PI"	   				; Text
					even
					
Trans_Mutt4:			
			 Staff_X_Pos 	White_Staff, 19, 10			; Palette | X Position | # Letters
			  Font_Staff 	"LAZERMUTT4"	   			; Text
					even
					
Trans_Kame:			
			 Staff_X_Pos 	White_Staff, 19, 9			; Palette | X Position | # Letters
			  Font_Staff 	"KAMEKKU14"	   				; Text
					even
															
Trans_Puyo:			
			 Staff_X_Pos 	White_Staff, 19, 17			; Palette | X Position | # Letters
			  Font_Staff 	"PUYO PUYO (WORLD)™"	   	; Text
					even
					
Trans_Kirby:				
			 Staff_X_Pos 	White_Staff, 19, 18			; Palette | X Position | # Letters
			  Font_Staff 	"KIRBY'S AVALANCHE™"	   	; Text
				    even
					
Trans_Yy:			
			 Staff_X_Pos 	White_Staff, 19, 2			; Palette | X Position | # Letters
			  Font_Staff 	"YY"	   					; Text
					even
					
Trans_Mirm:			
			 Staff_X_Pos 	White_Staff, 19, 6			; Palette | X Position | # Letters
			  Font_Staff 	"AAMIRM"	   				; Text
					even
					
Trans_Lab:			
			 Staff_X_Pos 	White_Staff, 19, 6			; Palette | X Position | # Letters
			  Font_Staff 	"LAB 313"	   				; Text
					even
					
Trans_Exodus:			
			 Staff_X_Pos 	White_Staff, 19, 6			; Palette | X Position | # Letters
			  Font_Staff 	"EXODUS"	   				; Text
					even
					
; ---------------------------------------------------------------------------------

Staff_Moo:			
			 Staff_X_Pos 	White_Staff, 19, 10			; Palette | X Position | # Letters
			  Font_Staff 	"MOO NIITANI"				; Text
					even
					
Staff_Tsu:			
			 Staff_X_Pos 	White_Staff, 19, 11			; Palette | X Position | # Letters
			  Font_Staff 	"M. TSUKAMOTO"				; Text
					even
					
Staff_Hyo:			
			 Staff_X_Pos 	White_Staff, 19, 9			; Palette | X Position | # Letters
			  Font_Staff 	"MU-HYOUJU"					; Text
					even
					
Staff_Janus:			
			 Staff_X_Pos 	White_Staff, 19, 13			; Palette | X Position | # Letters
			  Font_Staff 	"JANUS TERAMOTO"			; Text
					even
					
Staff_Kerol:			
			 Staff_X_Pos 	White_Staff, 19, 5			; Palette | X Position | # Letters
			  Font_Staff 	"KEROL"						; Text
					even
					
Staff_Neko:			
			 Staff_X_Pos 	White_Staff, 19, 9			; Palette | X Position | # Letters
			  Font_Staff 	"NEKO-NYAN"					; Text
					even
					
Staff_Toki:			
			 Staff_X_Pos 	White_Staff, 19, 18			; Palette | X Position | # Letters
			  Font_Staff 	"TOKIFURU MORITA (21)"		; Text
					even
					
Staff_Sawa:			
			 Staff_X_Pos 	White_Staff, 19, 11			; Palette | X Position | # Letters
			  Font_Staff 	"SAWA SONCHOU"				; Text
					even
					
Staff_Yoshi:			
			 Staff_X_Pos 	White_Staff, 19, 11			; Palette | X Position | # Letters
			  Font_Staff 	"K. YOSHINAKA"				; Text
					even
					
Staff_Jemini:			
			 Staff_X_Pos 	White_Staff, 19, 12			; Palette | X Position | # Letters
			  Font_Staff 	"JEMINI HIRONO"				; Text
					even
					
Staff_Mats:			
			 Staff_X_Pos 	White_Staff, 19, 17			; Palette | X Position | # Letters
			  Font_Staff 	"M. TSUKAMOTO (MATS)"		; Text
					even					
					
Staff_Ein:			
			 Staff_X_Pos 	White_Staff, 19, 13			; Palette | X Position | # Letters
			  Font_Staff 	"EINOSUKE NAGAO"			; Text
					even
					
Staff_Ichi:			
			 Staff_X_Pos 	White_Staff, 19, 4			; Palette | X Position | # Letters
			  Font_Staff 	"ICHI"						; Text
					even								
					
; ---------------------------------------------------------------------------------

Staff_Fellows_1:			
			 Staff_X_Pos 	White_Staff, 7, 22			; Palette | X Position | # Letters
			  Font_Staff 	"¡AGRADECIMIENTOS A TODOS"	; Text
					even

Staff_Fellows_2:			
			 Staff_X_Pos 	White_Staff, 15, 19			; Palette | X Position | # Letters
			  Font_Staff 	"NUESTROS COMPAÑEROS!"		; Text
					even					

; ---------------------------------------------------------------------------------

Try_On:
			 Staff_X_Pos 	Green_Staff, 7, 14			; Palette | X Position | # Letters
			  Font_Staff	"¡INTÉNTALO EN LA" 			; Text
					even
															
Try_Normal:
			 Staff_X_Pos 	Green_Staff, 17, 17			; Palette | X Position | # Letters
			  Font_Staff	"DIFICULTAD NORMAL!" 		; Text
					even
										
Try_Hard:
			 Staff_X_Pos 	Green_Staff, 16, 18			; Palette | X Position | # Letters
			  Font_Staff	"DIFICULTAD DIFÍCIL!" 		; Text
					even
									
Try_Hardest:
			 Staff_X_Pos 	Green_Staff, 12, 21			; Palette | X Position | # Letters
			  Font_Staff	"DIFICULTAD MUY DIFÍCIL!" 	; Text
					even

Thank_You:
			 Staff_X_Pos 	Green_Staff, 13, 8			; Palette | X Position | # Letters
			  Font_Staff	"¡GRACIAS" 					; Text
					even

For_Playing:
			 Staff_X_Pos 	Green_Staff, 19, 9			; Palette | X Position | # Letters
			  Font_Staff	"POR JUGAR!" 				; Text
					even

Sega_Copyright:
			 Staff_X_Pos 	White_Staff, 12, 17			; Palette | X Position | # Letters
			  Font_Staff	"©SEGA/COMPILE 1992" 		; Text
					even
					
; ---------------------------------------------------------------------------------