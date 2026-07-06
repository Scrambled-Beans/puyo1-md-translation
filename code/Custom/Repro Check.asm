					
ReproCheckVS:		
										
					cmpi.b		#1, (o_Repro).l
					beq			ReproCheckVS_Fail
					
					lea			(PuyoColorsVS_Right).l, a2			; Correct Colors
					rts

ReproCheckVS_Fail:					
					lea			(PuyoColorsVS_Wrong).l, a2			; Only Red
					rts
					
; ---------------------------------------------------------------------------------	

PuyoColorsVS_Right:
					
					dc.b		0	; Red
					dc.b		1	; Yellow
					dc.b		3	; Green
					dc.b		4	; Purple
					dc.b		5	; Blue
					dc.b		6	; Garbage
					dc.b		2	; Teal
					dc.b		0
					
; ---------------------------------------------------------------------------------
					
PuyoColorsVS_Wrong:
					
					dc.b		0	; Red
					dc.b		0	; Red
					dc.b		0	; Red
					dc.b		0	; Red
					dc.b		0	; Red
					dc.b		6	; Garbage
					dc.b		2	; Teal
					dc.b		0
					
; ---------------------------------------------------------------------------------

ReproCheckEndless:

					cmpi.b		#1, (o_Repro).l
					beq			ReproCheckEndless_Fail

					move.b		PuyoColorsEndless_Right(pc,d0.w), d2
					move.b		d2, d0
					rts

ReproCheckEndless_Fail:

					move.b		PuyoColorsEndless_Wrong(pc,d0.w), d2
					move.b		d2, d0
					rts

; ---------------------------------------------------------------------------------	
					
PuyoColorsEndless_Right:
					dc.b   0	; Red
					dc.b   1	; Yellow
					dc.b   3	; Green
					dc.b   4	; Purple
					dc.b   5	; Blue
					dc.b   2	; Teal
					
; ---------------------------------------------------------------------------------
					
PuyoColorsEndless_Wrong:
					dc.b   0	; Red
					dc.b   0	; Red
					dc.b   0	; Red
					dc.b   0	; Red
					dc.b   0	; Red
					dc.b   2	; Teal
					
; ---------------------------------------------------------------------------------