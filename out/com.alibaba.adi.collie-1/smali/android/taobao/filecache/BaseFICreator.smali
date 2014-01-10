.class public Landroid/taobao/filecache/BaseFICreator;
.super Ljava/lang/Object;
.source "BaseFICreator.java"

# interfaces
.implements Landroid/taobao/filecache/FileInfoCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileInfoMinLength()I
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0xe

    return v0
.end method

.method public onParseFileInfo([BII)Landroid/taobao/filecache/FileInfo;
    .locals 7
    .parameter "info"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 17
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, p1, p2, p3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 19
    .local v3, fileStr:Ljava/lang/String;
    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_0

    move-object v2, v4

    .line 38
    .end local v3           #fileStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 23
    .restart local v3       #fileStr:Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/taobao/filecache/FileInfoBase;

    invoke-direct {v2}, Landroid/taobao/filecache/FileInfoBase;-><init>()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .local v2, fileInfo:Landroid/taobao/filecache/FileInfoBase;
    const/4 v5, 0x0

    const/16 v6, 0xd

    :try_start_1
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/taobao/filecache/FileInfoBase;->SetLastAccess(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    :try_start_2
    new-instance v5, Ljava/lang/String;

    const/16 v6, 0xe

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/taobao/filecache/FileInfoBase;->setFileName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 35
    .end local v2           #fileInfo:Landroid/taobao/filecache/FileInfoBase;
    .end local v3           #fileStr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 37
    .local v1, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v2, v4

    .line 38
    goto :goto_0

    .line 28
    .end local v1           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #fileInfo:Landroid/taobao/filecache/FileInfoBase;
    .restart local v3       #fileStr:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v2, v4

    .line 30
    goto :goto_0
.end method

.method public onUpdateFileInfo(Ljava/lang/String;Landroid/taobao/filecache/FileInfo;IJ)Landroid/taobao/filecache/FileInfo;
    .locals 4
    .parameter "fileName"
    .parameter "info"
    .parameter "operation"
    .parameter "fileDirTicker"

    .prologue
    .line 46
    move-object v0, p2

    check-cast v0, Landroid/taobao/filecache/FileInfoBase;

    .line 48
    .local v0, fileInfo:Landroid/taobao/filecache/FileInfoBase;
    packed-switch p3, :pswitch_data_0

    .line 70
    :goto_0
    const-string v1, "BaseFICreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateFileInfo start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/taobao/filecache/FileInfoBase;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "operation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object v0

    .line 50
    :pswitch_0
    invoke-virtual {v0, p4, p5}, Landroid/taobao/filecache/FileInfoBase;->SetLastAccess(J)V

    goto :goto_0

    .line 54
    :pswitch_1
    invoke-virtual {v0, p4, p5}, Landroid/taobao/filecache/FileInfoBase;->SetLastAccess(J)V

    goto :goto_0

    .line 59
    :pswitch_2
    invoke-virtual {v0}, Landroid/taobao/filecache/FileInfoBase;->invalidate()V

    goto :goto_0

    .line 63
    :pswitch_3
    new-instance v0, Landroid/taobao/filecache/FileInfoBase;

    .end local v0           #fileInfo:Landroid/taobao/filecache/FileInfoBase;
    invoke-direct {v0}, Landroid/taobao/filecache/FileInfoBase;-><init>()V

    .line 64
    .restart local v0       #fileInfo:Landroid/taobao/filecache/FileInfoBase;
    invoke-virtual {v0, p1}, Landroid/taobao/filecache/FileInfoBase;->setFileName(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p4, p5}, Landroid/taobao/filecache/FileInfoBase;->SetLastAccess(J)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
