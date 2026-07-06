@echo off

:: Text Message

	@echo Please wait while the "Puyo_Puyo_(Translation).bin" is being built.

::--------------------------------------------------------------------------------::

:: Puyo Compression - files in "art\art"

for /r "art" %%f in (*.unc) do (
    tools\puyomdtool compress "%%f" "%%~dpnf.puyo"
)

::--------------------------------------------------------------------------------::

:: Background Puyo

for /r "mapping" %%f in (*.SonPLN) do (
    tools\puyomdtool convert frommap autopal "%%f" "%%~dpnf.bin"
)

::--------------------------------------------------------------------------------::

:: Build ROM

	tools\asm68k /k /p /o ae- Puyo Puyo (Translation).asm, output/Puyo_Puyo_(Translation).bin >output/errors.txt, , output/Puyo_Puyo_(Translation).lst

::--------------------------------------------------------------------------------::

:: Fix header in ROM
	tools\puyomdtool fix output/Puyo_Puyo_(Translation).bin	

::--------------------------------------------------------------------------------::

:: Clear the text	
	cls
		
:: Text to tell user if rom was built	
	
	if not exist output/Puyo_Puyo_(Translation).bin (
	
	echo The "Puyo_Puyo_(Translation).bin" has NOT been built.
	echo.
	echo See error report for more details: error.txt
	echo.
	
) else (

    echo The "Puyo_Puyo_(Translation).bin" has SUCCESSFULLY been built.
	echo.
)

::--------------------------------------------------------------------------------::

PAUSE