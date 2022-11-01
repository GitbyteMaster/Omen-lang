@ECHO OFF

MKDIR C:\Users\%USERNAME%\Omen-lang
MKDIR C:\Users\%USERNAME%\Omen-lang\assets
MKDIR C:\Users\%USERNAME%\Omen-lang\build
ECHO > C:\Users\%USERNAME%\Omen-lang\build\exec
CURL -S https://raw.githubusercontent.com/GitbyteMaster/Omen-lang/sys/build/verifier.py > C:\Users\%USERNAME%\Omen-lang\build\verifier
CURL -S https://raw.githubusercontent.com/GitbyteMaster/Omen-lang/sys/exbuild/command.bat > C:\Users\%USERNAME%\omen.bat

IF NOT ERRORLEVEL 0 (
  ECHO Omen: Failed to install Omen due to error: %ERRORLEVEL%
  ECHO Omen: Add an issue here: https://github.com/GitbyteMaster/Omen-lang/issues
)
