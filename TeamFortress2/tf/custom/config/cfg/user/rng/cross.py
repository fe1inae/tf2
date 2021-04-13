import colorsys
count = int(input("Enter count: "))

f = open('cross.cfg', 'w')

rr=[]
gg=[]
bb=[]

string = "alias rng.cross \"cross.0\"\n"
for c in range(count):
    (r, g, b) = tuple(round(b * 255) for b in colorsys.hsv_to_rgb(1/count+(1/count*c),0.5A,1))
    rr.append(r)
    gg.append(g)
    bb.append(b)

    string += "alias cross."+str(c)+" \"cl_crosshair_red "+str(r)+"; cl_crosshair_blue "+str(g)+"; cl_crosshair_green "+str(b)+"; "
    if not c+1 == count:
        string += "alias rng.cross cross."+str(c+1)+"\"\n"
    else:
        string += "alias rng.cross cross.0\"\n"
        
string += "echo \"[felinae] rainbow crosshair loaded\""
f.write(string)