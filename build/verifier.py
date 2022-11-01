import os
import getpass
import platform

pathend = ""
if platform.system() == "Windows":
  pathend = "/"
else:
  pathend = "\\"
if not os.path.exist(f"/Users/{getpass.getuser()}/Omen-lang/build/exec"):
  open(f"/Users/{getpass.getuser()}/Omen-lang/build/exec", "a")
exec = []
for line in open("/Users/{getpass.getuser()}/Omen-lang/build/exec", "r"):
  if len(exec) == 1:
    exec.append(line)
counter = 1
path = ""
while not exec[0][counter+1] == pathend:
  counter += 1
  path = f"{path}{exec[0][counter]}"
exists = False
if os.path.exist(path):
  exist = True
  
def verified():
  return exist
def path()
  return path
