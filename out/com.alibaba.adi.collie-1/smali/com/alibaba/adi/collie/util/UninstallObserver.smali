.class public Lcom/alibaba/adi/collie/util/UninstallObserver;
.super Ljava/lang/Object;
.source "UninstallObserver.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alibaba/adi/collie/util/UninstallObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/util/UninstallObserver;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "observer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUserSerial()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 51
    sget-object v7, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-string v9, "user"

    invoke-virtual {v7, v9}, Lcom/alibaba/adi/collie/CoreApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 52
    .local v4, userManager:Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 53
    sget-object v7, Lcom/alibaba/adi/collie/util/UninstallObserver;->TAG:Ljava/lang/String;

    const-string v9, "no user manager"

    invoke-static {v7, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 78
    :goto_0
    return-object v7

    .line 58
    :cond_0
    :try_start_0
    const-class v7, Landroid/os/Process;

    const-string v9, "myUserHandle"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 59
    .local v3, myUserHandleMethod:Ljava/lang/reflect/Method;
    const-class v7, Landroid/os/Process;

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 61
    .local v2, myUserHandle:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v9, "getSerialNumberForUser"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 62
    .local v1, getSerialNumberForUser:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v7, v9

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 63
    .local v5, userSerial:J
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v7

    goto :goto_0

    .line 65
    .end local v1           #getSerialNumberForUser:Ljava/lang/reflect/Method;
    .end local v2           #myUserHandle:Ljava/lang/Object;
    .end local v3           #myUserHandleMethod:Ljava/lang/reflect/Method;
    .end local v5           #userSerial:J
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :goto_1
    move-object v7, v8

    .line 78
    goto :goto_0

    .line 68
    :catch_1
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 71
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 74
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static start()V
    .locals 6

    .prologue
    .line 35
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/CoreApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, packagePath:Ljava/lang/String;
    sget-object v2, Lcom/alibaba/adi/collie/util/UninstallObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "packagePath = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v2, "http://www.suopingbao.com/?c=uninst&imei=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getIMEI()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, url:Ljava/lang/String;
    sget-object v2, Lcom/alibaba/adi/collie/util/UninstallObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "baseUrl = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v2, Lcom/alibaba/adi/collie/util/UninstallObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "paramFile = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alibaba/adi/collie/model/AdiConstants;->UNINST_URL_PARAM_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v2, Lcom/alibaba/adi/collie/util/UninstallObserver;->TAG:Ljava/lang/String;

    const-string v3, "start"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v2, Lcom/alibaba/adi/collie/model/AdiConstants;->UNINST_URL_PARAM_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/adi/collie/util/UninstallObserver;->getUserSerial()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/adi/collie/util/UninstallObserver;->startWork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static native startWork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static writeParamFile()V
    .locals 5

    .prologue
    .line 46
    const-string v1, "&mid=%s&ut=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getMainId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/alibaba/adi/collie/business/usertrack/UserTrackAccountPersistence;->getUdid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, ids:Ljava/lang/String;
    sget-object v1, Lcom/alibaba/adi/collie/model/AdiConstants;->UNINST_URL_PARAM_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/FileUtil;->writeDataToFile(Ljava/io/File;[B)V

    .line 48
    return-void
.end method
