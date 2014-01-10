#!/usr/bin/python
# -*- coding: utf-8 *--
# FileName: getApk.py
import os
import sys
###########################
#func: pull apk from device
#eg:   exe 'adb pull /data/app/com.alibaba.adi.collie-1.apk ~/Doccuments/workspace_github/wiki'
###########################
#PACK_NAME='com.alibaba.adi.collie'

def usage():
    print 'miss packagename param, eg: com.alibaba.adi.collie'

def do(packageName):
    APK_DIR='/data/app/'
    pos='out/'
    target="%s.apk" %(packageName)
    
    #loop to pull
    for i in range(1,5):
        file="%s-%d.apk" %(packageName, i)
        cmd="adb pull /data/app/%s %s" %(file, pos)
        #print(cmd)
        os.system(cmd)
        # rename
        renameCmd="mv /out/%s /out/%s" %(file, target)
        os.system(renameCmd)
    
    print '完成：apk文件已经输出至out/目录'

num=len(sys.argv)
#print(num)
if num>=2:
	do(sys.argv[1])
else:
	usage()
