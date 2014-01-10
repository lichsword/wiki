.class public Landroid/taobao/nativewebview/CacheMgr;
.super Ljava/lang/Object;
.source "CacheMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/nativewebview/CacheMgr$CacheMgrFileFilter;,
        Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    }
.end annotation


# static fields
.field private static CACHE_CAPACITY:I

.field private static WEBCACHE_FOLDER:Ljava/lang/String;

.field private static fileInfoCtr:Landroid/taobao/nativewebview/WebViewFICreator;

.field private static resCache:Landroid/taobao/filecache/FileDir;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x64

    sput v0, Landroid/taobao/nativewebview/CacheMgr;->CACHE_CAPACITY:I

    .line 27
    const-string v0, "webview"

    sput-object v0, Landroid/taobao/nativewebview/CacheMgr;->WEBCACHE_FOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v0}, Landroid/taobao/filecache/FileDir;->clear()Z

    .line 118
    :cond_0
    return-void
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 7
    .parameter "is"
    .parameter "file"

    .prologue
    .line 297
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const/4 v3, 0x0

    .line 302
    .local v3, os:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 303
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 305
    .end local v3           #os:Ljava/io/FileOutputStream;
    .local v4, os:Ljava/io/FileOutputStream;
    const/16 v5, 0x800

    :try_start_1
    new-array v0, v5, [B

    .line 306
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 307
    .local v2, i:I
    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x800

    invoke-virtual {p0, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 308
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_1

    .line 310
    .end local v0           #buffer:[B
    .end local v2           #i:I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 312
    .end local v4           #os:Ljava/io/FileOutputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    if-eqz v3, :cond_0

    .line 320
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 325
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v3, 0x0

    goto :goto_0

    .line 318
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #i:I
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :cond_2
    if-eqz v4, :cond_4

    .line 320
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 325
    :goto_4
    const/4 v3, 0x0

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 321
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 323
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 321
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v4           #os:Ljava/io/FileOutputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 323
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 313
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 315
    .restart local v1       #e:Ljava/io/IOException;
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 318
    if-eqz v3, :cond_0

    .line 320
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 325
    :goto_6
    const/4 v3, 0x0

    goto :goto_0

    .line 321
    :catch_4
    move-exception v1

    .line 323
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 318
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_7
    if-eqz v3, :cond_3

    .line 320
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 325
    :goto_8
    const/4 v3, 0x0

    :cond_3
    throw v5

    .line 321
    :catch_5
    move-exception v1

    .line 323
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 318
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 313
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 310
    :catch_7
    move-exception v1

    goto :goto_2

    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #i:I
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :cond_4
    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static getCacheInfo(Ljava/lang/String;)Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    .locals 6
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 89
    const-string v3, "CacheMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCacheInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v3, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    if-nez v3, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-object v2

    .line 96
    :cond_1
    invoke-static {p0}, Landroid/taobao/nativewebview/CacheMgr;->toLocalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, fileName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 100
    sget-object v3, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v3, v1}, Landroid/taobao/filecache/FileDir;->getFileInfo(Ljava/lang/String;)Landroid/taobao/filecache/FileInfo;

    move-result-object v0

    check-cast v0, Landroid/taobao/nativewebview/WebViewFileInfo;

    .line 103
    .local v0, fileInfo:Landroid/taobao/nativewebview/WebViewFileInfo;
    if-nez v0, :cond_2

    .line 104
    const-string v3, "CacheMgr"

    const-string v4, "not exist"

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    new-instance v2, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;

    invoke-direct {v2}, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;-><init>()V

    .line 109
    .local v2, resHeader:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    invoke-virtual {v0}, Landroid/taobao/nativewebview/WebViewFileInfo;->getExpireTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->expireTime:J

    .line 110
    invoke-virtual {v0}, Landroid/taobao/nativewebview/WebViewFileInfo;->getMdfSince()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->modifySince:J

    goto :goto_0
.end method

.method public static getLocRes(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 55
    const-string v5, "CacheMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLocRes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v5, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    if-nez v5, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v4

    .line 62
    :cond_1
    invoke-static {p0}, Landroid/taobao/nativewebview/CacheMgr;->toLocalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, fileName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 66
    sget-object v5, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v5, v1}, Landroid/taobao/filecache/FileDir;->getFileInfo(Ljava/lang/String;)Landroid/taobao/filecache/FileInfo;

    move-result-object v0

    check-cast v0, Landroid/taobao/nativewebview/WebViewFileInfo;

    .line 69
    .local v0, fileInfo:Landroid/taobao/nativewebview/WebViewFileInfo;
    if-nez v0, :cond_2

    .line 70
    const-string v5, "CacheMgr"

    const-string v6, "not exist"

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    .local v2, time:J
    invoke-virtual {v0}, Landroid/taobao/nativewebview/WebViewFileInfo;->getExpireTime()J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-gez v5, :cond_3

    .line 77
    invoke-virtual {v0}, Landroid/taobao/nativewebview/WebViewFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 80
    :cond_3
    const-string v5, "CacheMgr"

    const-string v6, "expired"

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/app/Application;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 34
    const-class v1, Landroid/taobao/nativewebview/CacheMgr;

    monitor-enter v1

    :try_start_0
    const-string v0, "CacheMgr"

    const-string v2, "init"

    invoke-static {v0, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v0, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    if-nez v0, :cond_2

    .line 38
    invoke-static {p0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    sget-object v2, Landroid/taobao/nativewebview/CacheMgr;->WEBCACHE_FOLDER:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/taobao/filecache/FileCache;->getFileDirInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/FileDir;

    move-result-object v0

    sput-object v0, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    .line 39
    sget-object v0, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    if-nez v0, :cond_0

    .line 40
    invoke-static {p0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    sget-object v2, Landroid/taobao/nativewebview/CacheMgr;->WEBCACHE_FOLDER:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/taobao/filecache/FileCache;->getFileDirInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/FileDir;

    move-result-object v0

    sput-object v0, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    .line 42
    :cond_0
    sget-object v0, Landroid/taobao/nativewebview/CacheMgr;->fileInfoCtr:Landroid/taobao/nativewebview/WebViewFICreator;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Landroid/taobao/nativewebview/WebViewFICreator;

    sget-object v2, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v2}, Landroid/taobao/filecache/FileDir;->getDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/taobao/nativewebview/WebViewFICreator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/nativewebview/CacheMgr;->fileInfoCtr:Landroid/taobao/nativewebview/WebViewFICreator;

    .line 44
    :cond_1
    sget-object v0, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_2

    .line 45
    sget-object v0, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    const/4 v2, 0x0

    sget-object v3, Landroid/taobao/nativewebview/CacheMgr;->fileInfoCtr:Landroid/taobao/nativewebview/WebViewFICreator;

    invoke-virtual {v0, v2, v3}, Landroid/taobao/filecache/FileDir;->init(Ljava/util/Comparator;Landroid/taobao/filecache/FileInfoCreator;)Z

    .line 46
    sget-object v0, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    sget v2, Landroid/taobao/nativewebview/CacheMgr;->CACHE_CAPACITY:I

    invoke-virtual {v0, v2}, Landroid/taobao/filecache/FileDir;->setCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_2
    monitor-exit v1

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static putCache(Ljava/lang/String;[BLandroid/taobao/nativewebview/CacheMgr$WebResHeader;)V
    .locals 5
    .parameter "url"
    .parameter "data"
    .parameter "resHeader"

    .prologue
    .line 124
    const-string v2, "CacheMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putCache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v2, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    if-nez v2, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {p0}, Landroid/taobao/nativewebview/CacheMgr;->toLocalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, fileName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 133
    const-string v2, "CacheMgr"

    const-string v3, "putCache start"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v2, Landroid/taobao/nativewebview/CacheMgr;->fileInfoCtr:Landroid/taobao/nativewebview/WebViewFICreator;

    invoke-virtual {v2, v1, p2}, Landroid/taobao/nativewebview/WebViewFICreator;->putFileInfo(Ljava/lang/String;Landroid/taobao/nativewebview/CacheMgr$WebResHeader;)V

    .line 135
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 136
    .local v0, buffer:Ljava/nio/ByteBuffer;
    sget-object v2, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v2, v1, v0}, Landroid/taobao/filecache/FileDir;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z

    goto :goto_0
.end method

.method private static toLocalUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Landroid/taobao/util/Base64;->encodeBase64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static unPackRes(Ljava/lang/String;Landroid/app/Application;)V
    .locals 28
    .parameter "assertFile"
    .parameter "context"

    .prologue
    .line 161
    if-nez p0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/taobao/nativewebview/CacheMgr;->init(Landroid/app/Application;)V

    .line 170
    sget-object v24, Landroid/taobao/nativewebview/CacheMgr;->resCache:Landroid/taobao/filecache/FileDir;

    invoke-virtual/range {v24 .. v24}, Landroid/taobao/filecache/FileDir;->getDirPath()Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, dir:Ljava/lang/String;
    const/16 v22, 0x0

    .line 174
    .local v22, versionCode:I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 175
    .local v12, info:Landroid/content/pm/PackageInfo;
    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v22, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v12           #info:Landroid/content/pm/PackageInfo;
    :goto_1
    const-string v24, "CacheMgr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "unPackRes versionName:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    if-eqz v22, :cond_0

    .line 183
    new-instance v9, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "CacheMgr"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v9, v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_0

    .line 188
    new-instance v24, Landroid/taobao/nativewebview/CacheMgr$CacheMgrFileFilter;

    const-string v25, "CacheMgr"

    invoke-direct/range {v24 .. v25}, Landroid/taobao/nativewebview/CacheMgr$CacheMgrFileFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, cacheFile:[Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 190
    const/16 v16, 0x0

    .local v16, m:I
    :goto_2
    array-length v0, v6

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 191
    new-instance v24, Ljava/io/File;

    aget-object v25, v6, v16

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 190
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 176
    .end local v6           #cacheFile:[Ljava/lang/String;
    .end local v9           #file:Ljava/io/File;
    .end local v16           #m:I
    :catch_0
    move-exception v8

    .line 177
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 195
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #cacheFile:[Ljava/lang/String;
    .restart local v9       #file:Ljava/io/File;
    :cond_2
    const/4 v14, 0x0

    .line 197
    .local v14, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 200
    .local v3, bs:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 201
    invoke-static {}, Landroid/taobao/util/MemoryMgr;->checkSDCard()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 202
    new-instance v21, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v21, tmpZipFile:Ljava/io/File;
    :goto_3
    const-string v24, "CacheMgr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "unPackRes tmpZipFile:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, v21

    invoke-static {v14, v0}, Landroid/taobao/nativewebview/CacheMgr;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 210
    if-eqz v14, :cond_3

    .line 211
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 212
    const/4 v14, 0x0

    .line 215
    :cond_3
    new-instance v23, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 216
    .local v23, zipFile:Ljava/util/zip/ZipFile;
    sget-object v24, Landroid/taobao/filecache/FileDir;->FILEINFO:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v14

    .line 217
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_b

    .line 218
    .end local v3           #bs:Ljava/io/ByteArrayOutputStream;
    .local v4, bs:Ljava/io/ByteArrayOutputStream;
    const/4 v11, 0x0

    .line 219
    .local v11, i:I
    const/16 v24, 0x800

    :try_start_2
    move/from16 v0, v24

    new-array v5, v0, [B

    .line 220
    .local v5, buffer:[B
    if-eqz v14, :cond_7

    .line 221
    :goto_4
    const/16 v24, 0x0

    const/16 v25, 0x800

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v14, v5, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v11, v0, :cond_6

    .line 222
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v5, v0, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    .line 272
    .end local v5           #buffer:[B
    :catch_1
    move-exception v8

    move-object v3, v4

    .line 274
    .end local v4           #bs:Ljava/io/ByteArrayOutputStream;
    .end local v11           #i:I
    .end local v21           #tmpZipFile:Ljava/io/File;
    .end local v23           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v3       #bs:Ljava/io/ByteArrayOutputStream;
    .local v8, e:Ljava/io/IOException;
    :goto_5
    :try_start_3
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 279
    if-eqz v14, :cond_4

    .line 281
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 286
    :cond_4
    :goto_6
    if-eqz v3, :cond_0

    .line 288
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 289
    :catch_2
    move-exception v8

    .line 291
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 205
    .end local v8           #e:Ljava/io/IOException;
    :cond_5
    :try_start_6
    new-instance v21, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_b

    .restart local v21       #tmpZipFile:Ljava/io/File;
    goto/16 :goto_3

    .line 225
    .end local v3           #bs:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #bs:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #buffer:[B
    .restart local v11       #i:I
    .restart local v23       #zipFile:Ljava/util/zip/ZipFile;
    :cond_6
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 226
    const/4 v14, 0x0

    .line 230
    :cond_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 231
    .local v13, infos:[B
    const/16 v17, 0x0

    .line 232
    .local v17, newLine:I
    if-eqz v13, :cond_10

    array-length v0, v13

    move/from16 v24, v0

    if-eqz v24, :cond_10

    .line 233
    sget-object v24, Landroid/taobao/nativewebview/CacheMgr;->fileInfoCtr:Landroid/taobao/nativewebview/WebViewFICreator;

    invoke-virtual/range {v24 .. v24}, Landroid/taobao/nativewebview/WebViewFICreator;->getFileInfoMinLength()I

    move-result v15

    .local v15, j:I
    :goto_7
    array-length v0, v13

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v15, v0, :cond_f

    .line 235
    aget-byte v24, v13, v15

    const/16 v25, 0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 236
    const-wide/16 v24, 0xa

    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V

    .line 237
    const-string v24, "CacheMgr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "unPackRes infos:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-byte v26, v13, v15

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v24, Landroid/taobao/nativewebview/CacheMgr;->fileInfoCtr:Landroid/taobao/nativewebview/WebViewFICreator;

    sub-int v25, v15, v17

    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v13, v1, v2}, Landroid/taobao/nativewebview/WebViewFICreator;->onParseFileInfo([BII)Landroid/taobao/filecache/FileInfo;

    move-result-object v10

    check-cast v10, Landroid/taobao/nativewebview/WebViewFileInfo;

    .line 239
    .local v10, fileInfo:Landroid/taobao/nativewebview/WebViewFileInfo;
    new-instance v19, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;

    invoke-direct/range {v19 .. v19}, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;-><init>()V

    .line 240
    .local v19, resHeader:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    invoke-virtual {v10}, Landroid/taobao/nativewebview/WebViewFileInfo;->getExpireTime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->expireTime:J

    .line 241
    invoke-virtual {v10}, Landroid/taobao/nativewebview/WebViewFileInfo;->getMdfSince()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->modifySince:J

    .line 242
    new-instance v18, Ljava/lang/String;

    invoke-virtual {v10}, Landroid/taobao/nativewebview/WebViewFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/taobao/util/Base64;->decodeBase64([B)[B

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 243
    .local v18, realUrl:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/taobao/nativewebview/CacheMgr;->getCacheInfo(Ljava/lang/String;)Landroid/taobao/nativewebview/CacheMgr$WebResHeader;

    move-result-object v20

    .line 245
    .local v20, tmp:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    add-int/lit8 v17, v15, 0x1

    .line 246
    sget-object v24, Landroid/taobao/nativewebview/CacheMgr;->fileInfoCtr:Landroid/taobao/nativewebview/WebViewFICreator;

    invoke-virtual/range {v24 .. v24}, Landroid/taobao/nativewebview/WebViewFICreator;->getFileInfoMinLength()I

    move-result v24

    add-int v15, v15, v24

    .line 249
    if-eqz v20, :cond_9

    .line 250
    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->expireTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->expireTime:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-ltz v24, :cond_9

    .line 233
    .end local v10           #fileInfo:Landroid/taobao/nativewebview/WebViewFileInfo;
    .end local v18           #realUrl:Ljava/lang/String;
    .end local v19           #resHeader:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    .end local v20           #tmp:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    :cond_8
    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_7

    .line 253
    .restart local v10       #fileInfo:Landroid/taobao/nativewebview/WebViewFileInfo;
    .restart local v18       #realUrl:Ljava/lang/String;
    .restart local v19       #resHeader:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    .restart local v20       #tmp:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    :cond_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 255
    invoke-virtual {v10}, Landroid/taobao/nativewebview/WebViewFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v14

    .line 256
    if-eqz v14, :cond_c

    .line 257
    :goto_9
    const/16 v24, 0x0

    const/16 v25, 0x800

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v14, v5, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v11, v0, :cond_b

    .line 258
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v5, v0, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_9

    .line 275
    .end local v5           #buffer:[B
    .end local v10           #fileInfo:Landroid/taobao/nativewebview/WebViewFileInfo;
    .end local v13           #infos:[B
    .end local v15           #j:I
    .end local v17           #newLine:I
    .end local v18           #realUrl:Ljava/lang/String;
    .end local v19           #resHeader:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    .end local v20           #tmp:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    :catch_3
    move-exception v8

    move-object v3, v4

    .line 277
    .end local v4           #bs:Ljava/io/ByteArrayOutputStream;
    .end local v11           #i:I
    .end local v21           #tmpZipFile:Ljava/io/File;
    .end local v23           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v3       #bs:Ljava/io/ByteArrayOutputStream;
    .local v8, e:Ljava/lang/InterruptedException;
    :goto_a
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 279
    if-eqz v14, :cond_a

    .line 281
    :try_start_9
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 286
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_a
    :goto_b
    if-eqz v3, :cond_0

    .line 288
    :try_start_a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 289
    :catch_4
    move-exception v8

    .line 291
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 261
    .end local v3           #bs:Ljava/io/ByteArrayOutputStream;
    .end local v8           #e:Ljava/io/IOException;
    .restart local v4       #bs:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #fileInfo:Landroid/taobao/nativewebview/WebViewFileInfo;
    .restart local v11       #i:I
    .restart local v13       #infos:[B
    .restart local v15       #j:I
    .restart local v17       #newLine:I
    .restart local v18       #realUrl:Ljava/lang/String;
    .restart local v19       #resHeader:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    .restart local v20       #tmp:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    .restart local v21       #tmpZipFile:Ljava/io/File;
    .restart local v23       #zipFile:Ljava/util/zip/ZipFile;
    :cond_b
    :try_start_b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 262
    const/4 v14, 0x0

    .line 264
    :cond_c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/taobao/nativewebview/CacheMgr;->putCache(Ljava/lang/String;[BLandroid/taobao/nativewebview/CacheMgr$WebResHeader;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_8

    .line 279
    .end local v5           #buffer:[B
    .end local v10           #fileInfo:Landroid/taobao/nativewebview/WebViewFileInfo;
    .end local v13           #infos:[B
    .end local v15           #j:I
    .end local v17           #newLine:I
    .end local v18           #realUrl:Ljava/lang/String;
    .end local v19           #resHeader:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    .end local v20           #tmp:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    :catchall_0
    move-exception v24

    move-object v3, v4

    .end local v4           #bs:Ljava/io/ByteArrayOutputStream;
    .end local v11           #i:I
    .end local v21           #tmpZipFile:Ljava/io/File;
    .end local v23           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v3       #bs:Ljava/io/ByteArrayOutputStream;
    :goto_c
    if-eqz v14, :cond_d

    .line 281
    :try_start_c
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 286
    :cond_d
    :goto_d
    if-eqz v3, :cond_e

    .line 288
    :try_start_d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 292
    :cond_e
    :goto_e
    throw v24

    .line 269
    .end local v3           #bs:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #bs:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #buffer:[B
    .restart local v11       #i:I
    .restart local v13       #infos:[B
    .restart local v15       #j:I
    .restart local v17       #newLine:I
    .restart local v21       #tmpZipFile:Ljava/io/File;
    .restart local v23       #zipFile:Ljava/util/zip/ZipFile;
    :cond_f
    :try_start_e
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 271
    .end local v15           #j:I
    :cond_10
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_3

    .line 279
    if-eqz v14, :cond_11

    .line 281
    :try_start_f
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 286
    :cond_11
    :goto_f
    if-eqz v4, :cond_12

    .line 288
    :try_start_10
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    move-object v3, v4

    .line 292
    .end local v4           #bs:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bs:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_0

    .line 282
    .end local v3           #bs:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #bs:Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v8

    .line 284
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 289
    .end local v8           #e:Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 291
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 292
    .end local v4           #bs:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bs:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_0

    .line 282
    .end local v5           #buffer:[B
    .end local v11           #i:I
    .end local v13           #infos:[B
    .end local v17           #newLine:I
    .end local v21           #tmpZipFile:Ljava/io/File;
    .end local v23           #zipFile:Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v8

    .line 284
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 282
    .local v8, e:Ljava/lang/InterruptedException;
    :catch_8
    move-exception v8

    .line 284
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 282
    .end local v8           #e:Ljava/io/IOException;
    :catch_9
    move-exception v8

    .line 284
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 289
    .end local v8           #e:Ljava/io/IOException;
    :catch_a
    move-exception v8

    .line 291
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 279
    .end local v8           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v24

    goto :goto_c

    .line 275
    :catch_b
    move-exception v8

    goto :goto_a

    .line 272
    :catch_c
    move-exception v8

    goto/16 :goto_5

    .end local v3           #bs:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #bs:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #buffer:[B
    .restart local v11       #i:I
    .restart local v13       #infos:[B
    .restart local v17       #newLine:I
    .restart local v21       #tmpZipFile:Ljava/io/File;
    .restart local v23       #zipFile:Ljava/util/zip/ZipFile;
    :cond_12
    move-object v3, v4

    .end local v4           #bs:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bs:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_0
.end method
