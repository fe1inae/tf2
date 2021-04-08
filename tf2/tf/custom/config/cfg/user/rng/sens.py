from decimal import Decimal
from random import shuffle

f = open("sens.cfg", 'w')

minSens = Decimal(input("Enter minimum sensitivity: "))
maxSens = Decimal(input("Enter maximum sensitivity: "))
inc     = Decimal(input("Enter increment: "))

count   = int((maxSens-minSens)/inc)+1

biglist = []
for i in range(0, count):
    biglist.append(i*inc+minSens)
shuffle(biglist)

string = "alias rng.sens \"sens.0\"\n"
c = 0
for i in biglist:
    string += "alias sens."+str(c)+" \"alias sens.get sensitivity "+str(i)+"; "
    if not c+1 == count:
        string += "alias rng.sens sens."+str(c+1)+"\"\n"
    else:
        string += "alias rng.sens sens.0\"\n"
    c+=1
    
string += "echo \"[felinae] random sensitivity loaded\""
f.write(string)