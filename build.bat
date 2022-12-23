@ECHO OFF

MKDIR C:\Users\%USERNAME%\Omen-lang
MKDIR C:\Users\%USERNAME%\Omen-lang\assets
MKDIR C:\Users\%USERNAME%\Omen-lang\build
ECHO > C:\Users\%USERNAME%\Omen-lang\build\exec
CURL -S https://raw.githubusercontent.com/GitbyteMaster/Omen-lang/sys/build/run.py > C:\Users\%USERNAME%\Omen-lang\build\run.py
CURL -S https://raw.githubusercontent.com/GitbyteMaster/Omen-lang/sys/build/verifier.py > C:\Users\%USERNAME%\Omen-lang\build\verifier.py
CURL -S https://raw.githubusercontent.com/GitbyteMaster/Omen-lang/sys/exbuild/command.bat > C:\Users\%USERNAME%\omen.bat

REM #ENDRETRY

IF NOT ERRORLEVEL 0 (
  ECHO Omen: Failed to install Omen due to error: %ERRORLEVEL%
  ECHO Omen: Add an issue here: https://github.com/GitbyteMaster/Omen-lang/issues
)
IF NOT EXIST C:\Users\%USERNAME%\Omen-lang (
  ECHO Omen: Omen wasn't created!
  SET /P ans = Would you like to retry installing Omen with a different method? (Y/N)
  IF "%ans%"=="Y" (
    CURL https://raw.githubusercontent.com/GitbyteMaster/Omen-lang/sys/exbuild/InstallRetry.py > C:\Users\%USERNAME\InstallRetry.py
    START C:\Users\%USERNAME\InstallRetry.py
  )
)
