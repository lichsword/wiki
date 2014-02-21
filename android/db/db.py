#!/usr/bin/python
#-*- encoding: utf-8 -*-

import os
import sys

def desc():
    print '*------------------------------------*'
    print '| 功能：从设备中取出指定包名的数据库' 
    print '*------------------------------------*'

def do(packageName):
    desc()
    src='data/data/%s/databases' %(packageName)
    dir='out/db/%s/databases' %(packageName)
    cmd='adb pull %s %s' %(src, dir)
    os.system(cmd)
    os.system('open %s' %(dir))
    tip='完成：请至/out/db/%s/databases目录中查看' %(packageName)
    print(tip)

def usage():
    desc()
    print '[Tip]miss packagename param, eg: com.alibaba.adi.collie'

num=len(sys.argv)
#print(num)
if num>1:
    do(sys.argv[1])
else:
    usage()
