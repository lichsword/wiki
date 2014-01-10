.class public Landroid/taobao/filecache/FileCache;
.super Landroid/taobao/util/InstanceMgr;
.source "FileCache.java"


# static fields
.field private static fileCache:Landroid/taobao/filecache/FileCache;


# instance fields
.field private FILEDIR:Ljava/lang/String;

.field private FILEPOOL:Ljava/lang/String;

.field private TMPCACHE:Ljava/lang/String;

.field private phoneBaseUrl:Ljava/lang/String;

.field private sdBaseUrl:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/app/Application;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/taobao/util/InstanceMgr;-><init>()V

    .line 14
    iput-object v0, p0, Landroid/taobao/filecache/FileCache;->sdBaseUrl:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Landroid/taobao/filecache/FileCache;->phoneBaseUrl:Ljava/lang/String;

    .line 17
    const-string v0, "tmpcache"

    iput-object v0, p0, Landroid/taobao/filecache/FileCache;->TMPCACHE:Ljava/lang/String;

    .line 18
    const-string v0, "filedir"

    iput-object v0, p0, Landroid/taobao/filecache/FileCache;->FILEDIR:Ljava/lang/String;

    .line 19
    const-string v0, "filepool"

    iput-object v0, p0, Landroid/taobao/filecache/FileCache;->FILEPOOL:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 55
    const-class v1, Landroid/taobao/filecache/FileCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/taobao/filecache/FileCache;->fileCache:Landroid/taobao/filecache/FileCache;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Landroid/taobao/filecache/FileCache;->fileCache:Landroid/taobao/filecache/FileCache;

    invoke-virtual {v0}, Landroid/taobao/filecache/FileCache;->releaseAll()V

    .line 57
    const/4 v0, 0x0

    sput-object v0, Landroid/taobao/filecache/FileCache;->fileCache:Landroid/taobao/filecache/FileCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit v1

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    const-class v1, Landroid/taobao/filecache/FileCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/taobao/filecache/FileCache;->fileCache:Landroid/taobao/filecache/FileCache;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Landroid/taobao/filecache/FileCache;

    invoke-direct {v0, p0}, Landroid/taobao/filecache/FileCache;-><init>(Landroid/app/Application;)V

    sput-object v0, Landroid/taobao/filecache/FileCache;->fileCache:Landroid/taobao/filecache/FileCache;

    .line 47
    :cond_0
    sget-object v0, Landroid/taobao/filecache/FileCache;->fileCache:Landroid/taobao/filecache/FileCache;

    invoke-direct {v0, p0}, Landroid/taobao/filecache/FileCache;->intPath(Landroid/app/Application;)V

    .line 48
    sget-object v0, Landroid/taobao/filecache/FileCache;->fileCache:Landroid/taobao/filecache/FileCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private intPath(Landroid/app/Application;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 25
    invoke-static {}, Landroid/taobao/util/MemoryMgr;->checkSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/common/SDKConfig;->getGlobalSaveFileRootDir()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ""

    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/common/SDKConfig;->getGlobalSaveFileRootDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/common/SDKConfig;->getGlobalSaveFileRootDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/filecache/FileCache;->sdBaseUrl:Ljava/lang/String;

    .line 33
    :goto_0
    const-string v0, "FileCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcard base path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/filecache/FileCache;->sdBaseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/filecache/FileCache;->phoneBaseUrl:Ljava/lang/String;

    .line 37
    :cond_1
    const-string v0, "FileCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone base path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/filecache/FileCache;->phoneBaseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/filecache/FileCache;->sdBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private release(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .parameter "fileName"
    .parameter "sdcard"
    .parameter "type"

    .prologue
    .line 177
    const-string v0, "FileCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-eqz p2, :cond_1

    .line 180
    iget-object v0, p0, Landroid/taobao/filecache/FileCache;->sdBaseUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->sdBaseUrl:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {p0, p1}, Landroid/taobao/filecache/FileCache;->release(Ljava/lang/String;)Z

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->phoneBaseUrl:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p0, p1}, Landroid/taobao/filecache/FileCache;->release(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public getFileDirInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/FileDir;
    .locals 4
    .parameter "url"
    .parameter "sdcard"

    .prologue
    const/4 v0, 0x0

    .line 106
    const-string v1, "FileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileDirInstance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-eqz p2, :cond_1

    .line 108
    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->sdBaseUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 110
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->sdBaseUrl:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->FILEDIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/taobao/util/InstanceMgr;->createInstance(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/filecache/FileDir;

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 118
    :cond_1
    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->phoneBaseUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 121
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->phoneBaseUrl:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->FILEDIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/taobao/util/InstanceMgr;->createInstance(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/filecache/FileDir;

    goto :goto_0
.end method

.method public getFilePoolInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/FileBufferPool;
    .locals 4
    .parameter "url"
    .parameter "sdcard"

    .prologue
    const/4 v0, 0x0

    .line 68
    const-string v1, "FileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePoolInstance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-eqz p2, :cond_1

    .line 70
    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->sdBaseUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->sdBaseUrl:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->FILEPOOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/taobao/util/InstanceMgr;->createInstance(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/filecache/FileBufferPool;

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->phoneBaseUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 83
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->phoneBaseUrl:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->FILEPOOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/taobao/util/InstanceMgr;->createInstance(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/filecache/FileBufferPool;

    goto :goto_0
.end method

.method public getTmpCacheInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/HighSpeedTmpCache;
    .locals 4
    .parameter "url"
    .parameter "sdcard"

    .prologue
    const/4 v0, 0x0

    .line 145
    const-string v1, "FileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTmpCacheInstance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-eqz p2, :cond_1

    .line 148
    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->sdBaseUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 150
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->sdBaseUrl:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->TMPCACHE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/taobao/util/InstanceMgr;->createInstance(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/filecache/HighSpeedTmpCache;

    .line 162
    :cond_0
    :goto_0
    return-object v0

    .line 158
    :cond_1
    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->phoneBaseUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 160
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->phoneBaseUrl:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/filecache/FileCache;->TMPCACHE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/taobao/util/InstanceMgr;->createInstance(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/filecache/HighSpeedTmpCache;

    goto :goto_0
.end method

.method protected instance(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "url"
    .parameter "creator"

    .prologue
    .line 197
    iget-object v0, p0, Landroid/taobao/filecache/FileCache;->TMPCACHE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Landroid/taobao/filecache/HighSpeedTmpCache;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/filecache/FileCache;->TMPCACHE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-direct {v0, v1, p2}, Landroid/taobao/filecache/HighSpeedTmpCache;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 202
    :goto_0
    return-object v0

    .line 199
    .restart local p2
    :cond_0
    iget-object v0, p0, Landroid/taobao/filecache/FileCache;->FILEDIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Landroid/taobao/filecache/FileDir;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/filecache/FileCache;->FILEDIR:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-direct {v0, v1, p2}, Landroid/taobao/filecache/FileDir;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 202
    .restart local p2
    :cond_1
    new-instance v0, Landroid/taobao/filecache/FileBufferPool;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/filecache/FileCache;->FILEPOOL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-direct {v0, v1, p2}, Landroid/taobao/filecache/FileBufferPool;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public releaseFileDir(Ljava/lang/String;Z)V
    .locals 3
    .parameter "url"
    .parameter "sdcard"

    .prologue
    .line 134
    const-string v0, "FileCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseFileDir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Landroid/taobao/filecache/FileCache;->FILEDIR:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Landroid/taobao/filecache/FileCache;->release(Ljava/lang/String;ZLjava/lang/String;)V

    .line 136
    return-void
.end method

.method public releaseFilePool(Ljava/lang/String;Z)V
    .locals 3
    .parameter "url"
    .parameter "sdcard"

    .prologue
    .line 96
    const-string v0, "FileCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseFilePool:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Landroid/taobao/filecache/FileCache;->FILEPOOL:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Landroid/taobao/filecache/FileCache;->release(Ljava/lang/String;ZLjava/lang/String;)V

    .line 98
    return-void
.end method

.method public releaseTmpCache(Ljava/lang/String;Z)V
    .locals 3
    .parameter "url"
    .parameter "sdcard"

    .prologue
    .line 172
    const-string v0, "FileCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseTmpCache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Landroid/taobao/filecache/FileCache;->TMPCACHE:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Landroid/taobao/filecache/FileCache;->release(Ljava/lang/String;ZLjava/lang/String;)V

    .line 174
    return-void
.end method
