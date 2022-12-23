import os
import platform

# When `curl` fails (usually on Windows) it works when ran as a single command. Run all command indivually until #ENDRETRY

ex = ""
if platform.system() == "Windows":
  ex = ".bat"
else:
  ex = ".sh"

installer = open(f"/Users/{getpass.getuser()}/build{ex}", "r")
for line in installer:
  num = 0
  itm = ""
  if not "#ENDRETRY" in line:
    # Run every line before #ENDRETRY, without '\n' symbol so no errors occur in the command prompt.
    while not line[num] == "\n":
      itm = f"{itm}{line[num]}"
      num += 1
    # 'itm' = command without '\n'. Now run.
    os.system(itm)
  
