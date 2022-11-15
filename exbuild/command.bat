IF "%1" == "exec" (
  IF "%3" == "" (
    IF EXIST %2 (
      ECHO /%2/end/ > C:\Users\%USERNAME%\exec
    ) ELSE (
      ECHO Omen: '%2' Doesn't exist! Check for typos, maybe?
    )
  ) ELSE (
    ECHO Omen: Too many parameters!
  )
)
