if [[ "$1" == "exec" ]];then
  if [[ "%3" == "" ]];then
    if [[ -f $2 ]];then
      echo $2\ > /Users/$USER/Omen-lang/build/exec
    else
      ECHO "Omen: '%2' Doesn't exist! Check for typos, maybe?"
    fi
  else
    echo "Omen: Too many parameters!"
  fi
fi
