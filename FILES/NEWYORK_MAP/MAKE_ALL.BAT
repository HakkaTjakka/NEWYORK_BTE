@echo off

setlocal EnableDelayedExpansion

set /A number_y = -11789

:X_IS_0

set /A number_x = -16699

:NEXT_X

set /A number_y_move = !number_y! + 11789
set /A number_x_move = !number_x! + 16699

set filename=r.!number_x!.!number_y!.png
set filename_move=r.!number_x_move!.!number_y_move!.png

rem echo !filename!

if exist "..\..\!filename!" (
	copy "..\..\!filename!" "!filename_move!" >NUL 2>NUL
	echo copying !filename!
) else (
	if not exist !filename_move! (
		copy ..\source.png !filename_move! >NUL 2>NUL
		echo making !filename!
	)
)


set /a number_x = !number_x! + 1

if !number_x! GTR -16610 (
	set /a number_y = !number_y! + 1
	if !number_y! equ -11719 goto END
	goto X_IS_0
)

goto NEXT_X

:END

pause