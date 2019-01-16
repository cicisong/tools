import sys

file_in = open(sys.argv[1])
print file_in

#file_out = open()

def getName(line):
    arguments = line.split(" ")
    for argument in arguments:
        if("name" in argument):
            return line.split("'")[1]
    return ""        

line = file_in.readline()

while line:
    if "model" in line:
        title = getName(line)
        print title
        if(title != ""):
            file_out = open (title, "w")
            line = file_in.readline()
            while line:
                if "/model" in line:
                    file_out.close()
                    break
                flagName = getName(line)
                if(flagName != "" and "feature" in line):
                    file_out.write(flagName + "\n")

                line = file_in.readline()
    line = file_in.readline()

file_in.close()





    