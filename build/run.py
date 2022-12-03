import getpass
import verifier
import os

error = False
if not verifier.verified():
    print(f"Omen: \'{verifier.filepath()}\' Doesn't exist! Check for typos, maybe?")
    error = True
if ".omen" in verifier.filepath():
    if not verifier.filepath().index(".omen") == len(verifier.filepath())-5:
        print(f"Omen: \'{verifier.filepath()}\' isn't an \'.omen\' file!")
else:        
    print(f"Omen: \'{verifier.filepath()}\' isn't an \'.omen\' file!")

if not error:
    param = []
    expected = []
    itm = []
    location = "*output"
    var = ["v/*output", ""]
    
    script = open(verifier.filepath(), "r").read()
    script = f"{script} "
    num = 0
    char = ""
    while num != len(script)-1:
        num += 1
        char = script[num-1]
        if char == "[":
            location = ""
            while not script[num] == "]":
                num += 1
                location = f"{location}{script[num-1]}"
            if not f"v/{location}" in var:
                var.append(f"v/{location}")
                var.append("")
                
        if char == "\"":
            param.append("str")
            itm.append("")
            while not script[num] == "\"":
                num += 1
                itm[len(itm)-1] = f"{itm[len(itm)-1]}{script[num-1]}"
            num += 2

        if char in "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM":
            itm.append("")
            num -= 1
            while script[num] in "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM":
                num += 1
                itm[len(itm)-1] = f"{itm[len(itm)-1]}{script[num-1]}"
            if f"v/{itm[len(itm)-1]}" in var:
                t = f"{itm[len(itm)-1]}"
                get = var[var.index(f"v/{t}")+1]
                itm[len(itm)-1] = get
                try:
                    int(get)
                except ValueError:
                    param.append("str")
                else:
                    get = int(itm[len(itm)-1])
                    itm[len(itm)-1] = get
                    param.append("int")

        if char in "1234567890":
            itm.append("")
            param.append("int")
            num -= 1
            while script[num] in "1234567890":
                num += 1
                itm[len(itm)-1] = f"{itm[len(itm)-1]}{script[num-1]}"
            get = int(itm[len(itm)-1])
            itm[len(itm)-1] = get


        if script[num-1] == "?":
            ask = input(itm[len(itm)-1])
            itm[len(itm)-1] = ask

        if location == "":
            location = "*output"

        if char == ";":
            expected = param
            if expected == param:
                var[var.index(f"v/{location}")+1] = ""
                for x in itm:
                    t = f"v/{location}"
                    var[var.index(t)+1] = f"{var[var.index(t)+1]}{x}"
                if var[var.index("v/*output")+1] != "":
                    print(var[var.index("v/*output")+1])
            param = []
            itm = []
            expected = []
            location = ""
