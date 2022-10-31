mkdir /Users/$USER/Omen-lang
mkdir /Users/$USER/Omen-lang/assets
mkdir /Users/$USER/Omen-lang/build
echo > /Users/$USER/Omen-lang/build/exec

if ! [ $? -eq 0 ];then
  echo Omen: Failed to install Omen due to error: $?
  echo Omen: Add an issue here: https://github.com/GitbyteMaster/Omen-lang/issues
fi
