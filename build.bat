MKDIR C:\Users\%USERNAME%\Omen-lang
MKDIR C:\Users\%USERNAME%\Omen-lang\assets

IF NOT ERRORLEVEL 0 (
  ECHO Omen: Failed to install Omen due to error: %ERRORLEVEL%
  ECHO Omen: Add an issue here: https://github.com/GitbyteMaster/Omen-lang/issues
)