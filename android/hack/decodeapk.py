#!/usr/bin/python
# -*- encoding: utf-8 -*-
import os
import sys

def desc():
    print '*------------------------------------*'
    print '| 功能：从APK中分析出源代码'
    print '*------------------------------------*'

def do(packageName):
    desc()
    apkfile='out/apk/%s.apk' %(packageName)
    outdir='out/code/'
    outfile='%s%s-dex2jar.jar' %(outdir, packageName)
# -v show progress
# -f force override
# -o output out-jar-file    
    cmd='bin/dex2jar-0.0.9.15/d2j-dex2jar.sh -f -o %s %s' %(outfile, apkfile)
    os.system(cmd)
    print('完成：生成源代码文件'+outfile)
    os.system('open %s' %(outdir))
    

def usage():
    desc()
    print '[Tip]miss packagename param, eg: com.alibaba.adi.collie'

num=len(sys.argv)
#print(num)
if num>=2:
	do(sys.argv[1])
else:
	usage()

