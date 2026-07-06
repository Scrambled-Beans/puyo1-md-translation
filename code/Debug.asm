
					; Change what HARD STAGE you start on
					
					if Debug=1
					
					org			$C568
					
								; Stage #
					dc.b		Debug_Stage_13
								
								; Debug_Stage_## = Stages 1-13
								; Debug_Lesson_# = Lessons 1-3
					
					endc
					
; ---------------------------------------------------------------------------------	