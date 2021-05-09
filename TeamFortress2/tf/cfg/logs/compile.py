import os
import glob
import time

basedir = os.path.dirname(os.path.realpath(__file__))

###############################
# move and rename console.log #
###############################
file = basedir+"/console.log"
if os.path.exists(file):
    timestamp = time.strftime("%Y%m%d%H%M%S", time.gmtime(os.path.getmtime(file)))
    os.rename(file, basedir+"/old/"+timestamp+os.path.splitext(file)[1])

##############
# clear temp #
##############
files = glob.glob(basedir+"/temp/*")
for f in files:
    os.remove(f)
