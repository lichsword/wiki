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

def desc():
    print '*------------------------------------*'
    print '| 功能：从设备中取出指定包名的apk'
    print '*------------------------------------*'

def usage():
    desc()
    print '[Tip]miss packagename param, eg: com.alibaba.adi.collie'

def do(packageName):
    desc()
    APK_DIR='/data/app/'
    dir='out/apk/'
    target="%s.apk" %(packageName)
    
    #loop to pull
    for i in range(1,5):
        file="%s-%d.apk" %(packageName, i)
        cmd="adb pull /data/app/%s %s" %(file, dir)
        print(cmd)
        os.system(cmd)
        # rename
        oldpath='%s%s' %(dir, file)
        newpath='%s%s' %(dir, target)
        renameCmd="mv %s %s" %(oldpath, newpath)
        os.system(renameCmd)
    
    os.system('open %s' %(dir))
    print '完成：apk文件已经输出至out/目录'

num=len(sys.argv)
#print(num)
if num>=2:
	do(sys.argv[1])
else:
	usage()
