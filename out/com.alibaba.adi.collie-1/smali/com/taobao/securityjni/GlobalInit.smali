.class public Lcom/taobao/securityjni/GlobalInit;
.super Ljava/lang/Object;
.source "GlobalInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/securityjni/GlobalInit$InitThread;
    }
.end annotation


# static fields
.field private static CHECK_SO_EXIST:Z = false

.field private static final DATA_DIR:Ljava/lang/String; = "/data/data/"

.field private static final SECURITY_DEBUG:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const/4 v1, 0x0

    sput-boolean v1, Lcom/taobao/securityjni/GlobalInit;->CHECK_SO_EXIST:Z

    .line 233
    :try_start_0
    const-string v1, "SSECeg-1.0.7"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .local v0, ep:Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 234
    .end local v0           #ep:Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 235
    .restart local v0       #ep:Ljava/lang/Throwable;
    const-string v1, "System.loadLibrary(SSECeg-1.0.7)"

    invoke-static {v1, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/taobao/securityjni/GlobalInit;->setCheckSoFlag(Z)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GetExternalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private GetImeiPR(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 101
    invoke-static {p1}, Lcom/taobao/securityjni/tools/PhoneInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private GetImsiPR(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    invoke-static {p1}, Lcom/taobao/securityjni/tools/PhoneInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static GetPackageCodePath(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, Path:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 40
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static GetPackageDataPath(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    if-eqz p0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->GetPackageName(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static GetPackageName(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static GetPackageResPath(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static GlobalSecurityInitAsync(Landroid/content/ContextWrapper;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 187
    new-instance v0, Ljava/lang/Thread;

    .line 188
    new-instance v1, Lcom/taobao/securityjni/GlobalInit$InitThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taobao/securityjni/GlobalInit$InitThread;-><init>(Landroid/content/ContextWrapper;Z)V

    .line 187
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 189
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 190
    return-void
.end method

.method public static GlobalSecurityInitAsyncSo(Landroid/content/ContextWrapper;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 175
    new-instance v0, Ljava/lang/Thread;

    .line 176
    new-instance v1, Lcom/taobao/securityjni/GlobalInit$InitThread;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/taobao/securityjni/GlobalInit$InitThread;-><init>(Landroid/content/ContextWrapper;Z)V

    .line 175
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 178
    return-void
.end method

.method public static GlobalSecurityInitSync(Landroid/content/ContextWrapper;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 161
    invoke-static {}, Lcom/taobao/securityjni/tools/CrashDataFile;->SecurityUpLoadException()V

    .line 162
    invoke-static {}, Lcom/taobao/securityjni/tools/ExceptionDataFile;->SecurityUpLoadException()V

    .line 163
    sget-boolean v0, Lcom/taobao/securityjni/GlobalInit;->CHECK_SO_EXIST:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->VerifySoExistence(Landroid/content/ContextWrapper;)V

    .line 166
    :cond_0
    return-void
.end method

.method public static GlobalSecurityInitSyncSo(Landroid/content/ContextWrapper;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 129
    new-instance v8, Lcom/taobao/securityjni/StaticDataStore;

    invoke-direct {v8, p0}, Lcom/taobao/securityjni/StaticDataStore;-><init>(Landroid/content/ContextWrapper;)V

    .line 130
    .local v8, staticStore:Lcom/taobao/securityjni/StaticDataStore;
    invoke-virtual {v8}, Lcom/taobao/securityjni/StaticDataStore;->getAppKey()Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/taobao/securityjni/tools/CrashDataFile;->SecurityUpLoadException()V

    .line 133
    invoke-static {}, Lcom/taobao/securityjni/tools/ExceptionDataFile;->SecurityUpLoadException()V

    .line 134
    sget-boolean v1, Lcom/taobao/securityjni/GlobalInit;->CHECK_SO_EXIST:Z

    if-eqz v1, :cond_0

    .line 135
    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->VerifySoExistence(Landroid/content/ContextWrapper;)V

    .line 138
    :cond_0
    invoke-static {}, Lcom/taobao/securityjni/testrsa/SecurityTestCode;->getPublicKeyTest()Lcom/taobao/securityjni/tools/RetObject;

    move-result-object v7

    .line 139
    .local v7, objStatic:Lcom/taobao/securityjni/tools/RetObject;
    if-eqz v7, :cond_1

    .line 140
    const-string v1, "getPublicKeyTest"

    .line 141
    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {v7}, Lcom/taobao/securityjni/tools/RetObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    move-object v3, v2

    move-object v4, v2

    .line 140
    invoke-static/range {v0 .. v5}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityUsefullInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 143
    :cond_1
    invoke-static {}, Lcom/taobao/securityjni/testrsa/SecurityTestCode;->getPublicKeyParseTest()Lcom/taobao/securityjni/tools/RetObject;

    move-result-object v6

    .line 144
    .local v6, objParse:Lcom/taobao/securityjni/tools/RetObject;
    if-eqz v6, :cond_2

    .line 145
    const-string v1, "getPublicKeyParseTest"

    .line 146
    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {v6}, Lcom/taobao/securityjni/tools/RetObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    move-object v3, v2

    move-object v4, v2

    .line 145
    invoke-static/range {v0 .. v5}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityUsefullInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 148
    :cond_2
    const-string v1, "getPublicKey"

    .line 149
    new-array v5, v9, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "##"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    move-object v3, v2

    move-object v4, v2

    .line 148
    invoke-static/range {v0 .. v5}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityUsefullInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private static final VerifySoExistence(Landroid/content/ContextWrapper;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 246
    if-nez p0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->GetPackageDataPath(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, dataPath:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v8, fileName:Ljava/lang/StringBuilder;
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/lib/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "libSSECeg-1.0.7.so"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    new-instance v7, Ljava/io/File;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    const-string v1, "VerifySoExistence"

    .line 253
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " :[File Exists Return False]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    move-object v3, v2

    move-object v4, v2

    .line 252
    invoke-static/range {v0 .. v5}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityUsefullInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 255
    :cond_1
    invoke-static {v0}, Lcom/taobao/securityjni/GlobalInit;->setCheckSoFlag(Z)V

    goto :goto_0
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/taobao/securityjni/GlobalInit;->CHECK_SO_EXIST:Z

    return v0
.end method

.method static synthetic access$1(Landroid/content/ContextWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->VerifySoExistence(Landroid/content/ContextWrapper;)V

    return-void
.end method

.method static declared-synchronized setCheckSoFlag(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 242
    const-class v0, Lcom/taobao/securityjni/GlobalInit;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/taobao/securityjni/GlobalInit;->CHECK_SO_EXIST:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit v0

    return-void

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setEnableOutPutExpInfo(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 117
    const-class v1, Lcom/taobao/securityjni/GlobalInit;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->setEnableOutPutExpInfo(Z)V

    .line 118
    invoke-static {p0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->setEnableOutPutExpInfo(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit v1

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method native InitData(Landroid/content/ContextWrapper;)V
.end method

.method public getPackageData(Landroid/content/ContextWrapper;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "index"

    .prologue
    .line 83
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 84
    invoke-static {p1}, Lcom/taobao/securityjni/GlobalInit;->GetPackageCodePath(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 85
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 86
    invoke-static {p1}, Lcom/taobao/securityjni/GlobalInit;->GetPackageName(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 88
    invoke-static {p1}, Lcom/taobao/securityjni/GlobalInit;->GetPackageDataPath(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 90
    invoke-static {p1}, Lcom/taobao/securityjni/GlobalInit;->GetPackageResPath(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_3
    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 92
    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->GetExternalPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
