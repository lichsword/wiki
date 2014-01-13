#!/usr/bin/python
# -*- encoding: utf-8 -*-
import os
import sys

def desc():
    print '*------------------------------------*'
    print '| 功能：从APK中分析出资源文件'
    print '*------------------------------------*'

def do(packageName):
    desc()
    apkfile='out/apk/%s.apk' %(packageName)
    dir='out/code/%s' %(packageName)
    cmd='java -jar bin/apktool.jar d -f %s %s' %(apkfile, dir)
    os.system(cmd)

def usage():
    desc()
    print '[Tip]miss packagename param, eg: com.alibaba.adi.collie'

num=len(sys.argv)
#print(num)
if num>=2:
	do(sys.argv[1])
else:
	usage()

