import os

#bin/dex2jar-0.0.9.15/d2j-dex2jar.sh -f -v com.alibaba.adi.collie-1.apk 
#http://jd.benow.ca/

java -jar dex2jar.jar 
apkfile='out/com.adlibaba.adi.collie-1.apk'
cmd='java -jar bin/apktool.jar d %s' %(apkfile)

os.system(cmd)
