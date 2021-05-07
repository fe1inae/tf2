import subprocess
import shutil
import os
os.chdir(os.path.dirname(os.path.abspath(__file__)))

root_dir = subprocess.check_output(["git", "rev-parse", "--show-toplevel"]).decode("utf-8")[:-1]

subprocess.run((root_dir+"/Utilities/VTFCmd/VTFCmd.exe -folder "+root_dir+"/TeamFortress2/tf/custom/crosshairs/materials/vgui/replay/thumbnails/*.png -format BGRA8888 -alphaformat BGRA8888 -resize -rmethod NEAREST -rfilter BOX -rsharpen NONE -nomipmaps -flag NOLOD -flag MINMIP -shader UnlitGeneric -param $translucent 1 -param $vertexcolor 1 -param $no_fullbright 1 -param $ignorez 1").replace('/', '\\'))

with open("default.vmt") as f:
    vmt_text=f.read()

with open('names.txt') as f:
    names = f.read().splitlines()
for name in names:
    if not os.path.exists(name+".png"):
        shutil.copyfile('default.vtf', name+'.vtf')
        with open(name+".vmt", "w") as f:
            f.write(vmt_text.replace("default", name))
os.remove("default.vmt")
os.remove("default.vtf")


