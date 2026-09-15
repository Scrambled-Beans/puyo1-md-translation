
					org			$1D0A					
					
					BPUYO		$6000,	Art_High_Scores		; Art - High Score Background	


					org			$1FE6					
					
					BPUYO		$6000,	Art_High_Scores		; Art - High Score Background	


					org			$1D12					
					
					BPUYO		$A000,	Art_Font_Upper		; Art - Font Numbers (Enter Name)	


					org			$1FEE					
					
					BPUYO		$A000,	Art_Font_Upper		; Art - Font Numbers (View)					
					
; ---------------------------------------------------------------------------------	
								
					; Mapping - High Score Background (Background)
								
					org			$176A6						
					
					dc.b 		40							; X Position
					dc.b 		28							; Y Position
					dc.w 		$E000						; Location
					dc.l		Mapping_Score_1				; Mappings
					dc.b 		$03							; Index
					
					
					org			$176BE
					
					dc.b 		40							; X Position
					dc.b 		28							; Y Position
					dc.w 		$E050						; Location
					dc.l		Mapping_Score_1				; Mappings
					dc.b 		$03							; Index
					
					
					org			$176E2
					
					dc.b 		40							; X Position
					dc.b 		28							; Y Position
					dc.w 		$E0B0						; Location
					dc.l		Mapping_Score_1				; Mappings
					dc.b 		$03							; Index

; ---------------------------------------------------------------------------------						
					
					; Mapping - High Score Background (Text)
					
					org			$176B2						
					
					dc.b 		40							; X Position
					dc.b 		8							; Y Position
					dc.w 		$C200						; Location
					dc.l		Mapping_Score_2				; Mappings
					dc.b 		$83							; Index
					
					
					org			$176CA
					
					dc.b 		40							; X Position
					dc.b 		8							; Y Position
					dc.w 		$C250						; Location
					dc.l		Mapping_Score_2				; Mappings
					dc.b 		$83							; Index
					
					
					org			$176EE
					
					dc.b 		40							; X Position
					dc.b 		8							; Y Position
					dc.w 		$C2B0						; Location
					dc.l		Mapping_Score_2				; Mappings
					dc.b 		$83							; Index
					
; ---------------------------------------------------------------------------------	

					; Mapping - Behind Numbers

					org			$176DA
					
					dc.l		Mapping_Numbers
					
					org			$176FE
					
					dc.l		Mapping_Numbers

; ---------------------------------------------------------------------------------	

					org			$BDAE
					
					move.w 		#$A400, D1					; Use English 16x16 font as offset
					
					
					org			$BD62
					
					dc.l		Mode_Story					; Text - Story Mode
					dc.l		Mode_Endless				; Text - Endless Mode
					
					
					org			$BC4E

					move.w 		#$C000+(Modes_Position_X*2-2)+$100*(Modes_Position_Y-1), D5		; Text Position

; ---------------------------------------------------------------------------------	

					org			$33C
					
					dc.l		Default_Scores				; Text - Default High Scores

; ---------------------------------------------------------------------------------	

					; Letters A-Z and . can be selected
					
					; Support up to 30 letters
					
					; Space for 3 extra letters
					
					org			$B8E6
					
					dc.b		$63							; Change BSC to BLS
					
					
					org			$B8E3
					
					dc.b		27							; # Letters to select
					
					
					org			$B903
					
					dc.b		27							; # Letters to select