#-*- encoding: utf-8 -*-
import os
import sys

import getapkfromdevice
import decodeapk
import openjdgui

def desc():
    print '*------------------------------------*'
    print '| 功能：一键解析apk'
    print '*------------------------------------*'

def usage():
    desc()
    print '[Tip]miss package name param, eg: com.alibaba.adi.collie'

def do(packageName):
   desc()
   getapkfromdevice.do(packageName)
   decodeapk.do(packageName)
   openjdgui.do() 

num=len(sys.argv)
#print(num)
if num >2:
    do(sys.argv[1])
else:
    usage()
