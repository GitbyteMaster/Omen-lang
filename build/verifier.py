import os
import getpass
import platform

pathend = ""
if platform.system() == "Windows":
  pathend = "/end/"
else:
  pathend = "\\end\\"
if not os.path.exists(f"/Users/{getpass.getuser()}/Omen-lang/build/exec"):
  open(f"/Users/{getpass.getuser()}/Omen-lang/build/exec", "a")
exe = []
for line in open(f"/Users/{getpass.getuser()}/Omen-lang/build/exec", "r"):
  if not len(exe) == 1:
    exe.append(line)
counter = 0
path = ""
while not counter+1 == exe[0].index(pathend):
  counter += 1
  if not exe[0][counter] == "\\":
    path = f"{path}{exe[0][counter]}"
exists = False
if os.path.exists(path):
  exists = True
  
def verified():
  return exists
def filepath():
  return path
print(exists)
