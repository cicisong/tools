import sys

file_in=open(sys.argv[1])
file_out=open(sys.argv[2], "w")

name = ""
mini = 1000000000000
miniName =" "
line = file_in.readline()

while line:
    somme=0
    for i in range(0, 12):
        if (i == 4):
            somme += int(line.split()[0])
        if (i == 10):
            somme += int(line.split()[0])
        if (i == 0):
            name = line.split()[1]
        line = file_in.readline()
    print (name + " " + str(somme))
    if ( somme < mini ):
        miniName = name
        mini = somme 

print ("\n" + "The smaller is: " + miniName + " " + str(mini))