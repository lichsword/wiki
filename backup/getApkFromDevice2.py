#!/usr/bin/python
# FileName: getApk.py
import os

#execute system command
#eg: os.system('ls')

#string define
#eg: str='show me the money'

#string connect
#eg: s1='a' s2='b' s3=s1+s2

#string format
#eg: s1='name=%s,score=%d' %('wangyue', 100)
#s1='name=%s,score=%d' %('wangyue', 100)
#print(s1)

#loop
#for i in range(1,5):
#print(i)
 

#define command format string and local path.

###########################
#func: pull apk from device
#eg:   exe 'adb pull /data/app/com.alibaba.adi.collie-1.apk ~/Doccuments/workspace_github/wiki'
###########################
PACK_NAME='com.alibaba.adi.collie'
APK_DIR='/data/app/'
pos='~/Documents/workspace_github/wiki/out'

#loop to pull
for i in range(1,5):
    file="%s-%d.apk" %(PACK_NAME,i)
    cmd="adb pull /data/app/%s %s" %(file, pos)
    #print(cmd)
    os.system(cmd)

