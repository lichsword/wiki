import os
import sys

num=len(sys.argv)
print(num)
if num>=2:
    cmd='python /Applications/goagent/local/proxy.py %s' %(sys.argv[1])
else:
    print('start Or stop?')
