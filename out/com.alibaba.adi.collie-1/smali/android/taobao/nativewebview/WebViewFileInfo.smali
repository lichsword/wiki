.class public Landroid/taobao/nativewebview/WebViewFileInfo;
.super Ljava/lang/Object;
.source "WebViewFileInfo.java"

# interfaces
.implements Landroid/taobao/filecache/FileInfo;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/taobao/filecache/FileInfo;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/taobao/nativewebview/WebViewFileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private expireTime:J

.field private fileName:Ljava/lang/String;

.field private lstAccessTime:J

.field private modifySince:J

.field private pos:J

.field private validate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->validate:Z

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/taobao/nativewebview/WebViewFileInfo;)I
    .locals 5
    .parameter "another"

    .prologue
    const/4 v0, 0x1

    .line 133
    if-ne p0, p1, :cond_1

    .line 134
    const/4 v0, 0x0

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    iget-wide v1, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->lstAccessTime:J

    iget-wide v3, p1, Landroid/taobao/nativewebview/WebViewFileInfo;->lstAccessTime:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 137
    iget-wide v1, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->lstAccessTime:J

    iget-wide v3, p1, Landroid/taobao/nativewebview/WebViewFileInfo;->lstAccessTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-wide v1, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->expireTime:J

    iget-wide v3, p1, Landroid/taobao/nativewebview/WebViewFileInfo;->expireTime:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 140
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    check-cast p1, Landroid/taobao/nativewebview/WebViewFileInfo;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/taobao/nativewebview/WebViewFileInfo;->compareTo(Landroid/taobao/nativewebview/WebViewFileInfo;)I

    move-result v0

    return v0
.end method

.method public composeFileInfoStr()[B
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 89
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v1, filePath:Ljava/lang/StringBuffer;
    iget-wide v2, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->expireTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 91
    iget-wide v2, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->expireTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 95
    :goto_0
    iget-wide v2, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->modifySince:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 96
    iget-wide v2, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->modifySince:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 100
    :goto_1
    iget-wide v2, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->lstAccessTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 101
    iget-wide v2, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->lstAccessTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 105
    :goto_2
    iget-boolean v2, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->validate:Z

    if-eqz v2, :cond_3

    .line 106
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    :goto_3
    iget-object v2, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const-string v2, "WebViewFileInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toByteArray:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 116
    :goto_4
    return-object v2

    .line 93
    :cond_0
    const-string v2, "0000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 98
    :cond_1
    const-string v2, "0000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 103
    :cond_2
    const-string v2, "0000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 108
    :cond_3
    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 113
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 116
    const/4 v2, 0x0

    goto :goto_4
.end method

.method public getExpireTime()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->expireTime:J

    return-wide v0
.end method

.method public getFileInfoPos()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->pos:J

    return-wide v0
.end method

.method public getFileInfoTime(J)J
    .locals 2
    .parameter "defaultTime"

    .prologue
    .line 128
    iget-wide v0, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->lstAccessTime:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLstAccessTime()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->lstAccessTime:J

    return-wide v0
.end method

.method public getMdfSince()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->modifySince:J

    return-wide v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->validate:Z

    .line 124
    return-void
.end method

.method public setExpireTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 35
    iput-wide p1, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->expireTime:J

    .line 36
    return-void
.end method

.method public setFileInfoPos(J)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 83
    iput-wide p1, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->pos:J

    .line 84
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 71
    iput-object p1, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->fileName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setLstAccessTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 22
    iput-wide p1, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->lstAccessTime:J

    .line 23
    return-void
.end method

.method public setMdfSince(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 49
    iput-wide p1, p0, Landroid/taobao/nativewebview/WebViewFileInfo;->modifySince:J

    .line 50
    return-void
.end method
