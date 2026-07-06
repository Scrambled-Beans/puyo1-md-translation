
	if ReproCarts=0

					; Color Puyo - VS 1P
					
					org			$2EE2
					
					jsr		 	ReproCheckVS

; ---------------------------------------------------------------------------------	

					; Color Puyo - VS 2P
					
					org			$2F4A
					
					jsr		 	ReproCheckVS

; ---------------------------------------------------------------------------------

					; Color Puyo - Endless 1P
					
					org			$393E
					
					jsr		 	ReproCheckEndless

; ---------------------------------------------------------------------------------	

					; Color Puyo - Endless 2P
					
					org			$394C
					
					jsr		 	ReproCheckEndless

; ---------------------------------------------------------------------------------

	endc