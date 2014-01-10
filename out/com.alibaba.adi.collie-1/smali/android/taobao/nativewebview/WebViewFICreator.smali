.class public Landroid/taobao/nativewebview/WebViewFICreator;
.super Ljava/lang/Object;
.source "WebViewFICreator.java"

# interfaces
.implements Landroid/taobao/filecache/FileInfoCreator;


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private fileInfoBuf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/taobao/nativewebview/CacheMgr$WebResHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "baseUrl"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "WebViewFICreator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Landroid/taobao/nativewebview/WebViewFICreator;->baseUrl:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/nativewebview/WebViewFICreator;->fileInfoBuf:Ljava/util/Map;

    .line 26
    return-void
.end method


# virtual methods
.method public getFileInfoMinLength()I
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x28

    return v0
.end method

.method public onParseFileInfo([BII)Landroid/taobao/filecache/FileInfo;
    .locals 7
    .parameter "info"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x27

    .line 40
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, p1, p2, p3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 41
    .local v3, fileStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_0

    const/16 v5, 0x27

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_0

    move-object v2, v4

    .line 66
    .end local v3           #fileStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 45
    .restart local v3       #fileStr:Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/taobao/nativewebview/WebViewFileInfo;

    invoke-direct {v2}, Landroid/taobao/nativewebview/WebViewFileInfo;-><init>()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .local v2, fileInfo:Landroid/taobao/nativewebview/WebViewFileInfo;
    const/4 v5, 0x0

    const/16 v6, 0xd

    :try_start_1
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/taobao/nativewebview/WebViewFileInfo;->setExpireTime(J)V

    .line 51
    const/16 v5, 0xd

    const/16 v6, 0x1a

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/taobao/nativewebview/WebViewFileInfo;->setMdfSince(J)V

    .line 53
    const/16 v5, 0x1a

    const/16 v6, 0x27

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/taobao/nativewebview/WebViewFileInfo;->setLstAccessTime(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    :try_start_2
    new-instance v5, Ljava/lang/String;

    const/16 v6, 0x28

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/taobao/nativewebview/WebViewFileInfo;->setFileName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 63
    .end local v2           #fileInfo:Landroid/taobao/nativewebview/WebViewFileInfo;
    .end local v3           #fileStr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 65
    .local v1, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v2, v4

    .line 66
    goto :goto_0

    .line 54
    .end local v1           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #fileInfo:Landroid/taobao/nativewebview/WebViewFileInfo;
    .restart local v3       #fileStr:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 55
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v2, v4

    .line 56
    goto :goto_0
.end method

.method public onUpdateFileInfo(Ljava/lang/String;Landroid/taobao/filecache/FileInfo;IJ)Landroid/taobao/filecache/FileInfo;
    .locals 6
    .parameter "fileName"
    .parameter "info"
    .parameter "operation"
    .parameter "fileDirTicker"

    .prologue
    .line 77
    const-string v2, "WebViewFICreator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdateFileInfo start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "operation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 78
    check-cast v0, Landroid/taobao/nativewebview/WebViewFileInfo;

    .line 80
    .local v0, fileInfo:Landroid/taobao/nativewebview/WebViewFileInfo;
    packed-switch p3, :pswitch_data_0

    .line 109
    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    invoke-virtual {v0}, Landroid/taobao/nativewebview/WebViewFileInfo;->invalidate()V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-virtual {v0, p4, p5}, Landroid/taobao/nativewebview/WebViewFileInfo;->setLstAccessTime(J)V

    goto :goto_0

    .line 90
    :pswitch_2
    new-instance v0, Landroid/taobao/nativewebview/WebViewFileInfo;

    .end local v0           #fileInfo:Landroid/taobao/nativewebview/WebViewFileInfo;
    invoke-direct {v0}, Landroid/taobao/nativewebview/WebViewFileInfo;-><init>()V

    .line 94
    .restart local v0       #fileInfo:Landroid/taobao/nativewebview/WebViewFileInfo;
    :pswitch_3
    invoke-virtual {v0, p1}, Landroid/taobao/nativewebview/WebViewFileInfo;->setFileName(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p4, p5}, Landroid/taobao/nativewebview/WebViewFileInfo;->setLstAccessTime(J)V

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v2, p0, Landroid/taobao/nativewebview/WebViewFICreator;->fileInfoBuf:Ljava/util/Map;

    iget-object v3, p0, Landroid/taobao/nativewebview/WebViewFICreator;->baseUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;

    .line 100
    .local v1, tmp:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    if-eqz v1, :cond_0

    .line 101
    const-string v2, "WebViewFICreator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExpireTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->expireTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ModifySince:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->modifySince:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-wide v2, v1, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->expireTime:J

    invoke-virtual {v0, v2, v3}, Landroid/taobao/nativewebview/WebViewFileInfo;->setExpireTime(J)V

    .line 103
    iget-wide v2, v1, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->modifySince:J

    invoke-virtual {v0, v2, v3}, Landroid/taobao/nativewebview/WebViewFileInfo;->setMdfSince(J)V

    .line 105
    :cond_0
    monitor-exit p0

    goto :goto_0

    .end local v1           #tmp:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized putFileInfo(Ljava/lang/String;Landroid/taobao/nativewebview/CacheMgr$WebResHeader;)V
    .locals 1
    .parameter "fileName"
    .parameter "fileInfo"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/taobao/nativewebview/WebViewFICreator;->fileInfoBuf:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
