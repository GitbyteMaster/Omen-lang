mkdir ~/Omen-lang
mkdir ~/Omen-lang/assets
mkdir ~/Omen-lang/build
echo > ~/Omen-lang/build/exec
curl -s https://raw.githubusercontent.com/GitbyteMaster/Omen-lang/sys/build/verifier.py > ~/Omen-lang/build/verifier.py
CURL -s https://raw.githubusercontent.com/GitbyteMaster/Omen-lang/sys/build/run.py > ~/Omen-lang/build/run.py
curl -s https://raw.githubusercontent.com/GitbyteMaster/Omen-lang/sys/exbuild/command.sh > ~/omen.sh
curl -s https://raw.githubusercontent.com/GitbyteMaster/Omen-lang/sys/build/run.py > ~/Omen-lang/build/run.py

# #ENDRETRY

if ! [ $? -eq 0 ];then
  echo Omen: Failed to install Omen due to error: $?
  echo Omen: Add an issue here: https://github.com/GitbyteMaster/Omen-lang/issues
fi
if ! [ -d ~/Omen-lang ];then
  echo "Omen: Omen wasn't created!"
  read -p "Would you like to retry installing Omen with a different method? (Y/N)" ans
  if [ $ans == "Y" ];then
    curl https://raw.githubusercontent.com/GitbyteMaster/Omen-lang/sys/exbuild/InstallRetry.py > ~/InstallRetry.py
    open ~/InstallRetry.py
  fi
fi
