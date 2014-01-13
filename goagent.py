import os
import sys

num=len(sys.argv)
print(num)
if num>=2:
    cmd='/Applications/goagent/local/proxy.sh %s' %(sys.argv[1])
    os.system(cmd)
else:
    print('start Or stop?')
