.class public Landroid/taobao/filecache/FileInfoBase;
.super Ljava/lang/Object;
.source "FileInfoBase.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/taobao/filecache/FileInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/taobao/filecache/FileInfoBase;",
        ">;",
        "Landroid/taobao/filecache/FileInfo;"
    }
.end annotation


# static fields
.field public static final DIVISION:C = '-'

.field public static final PARTITION:C = '_'


# instance fields
.field private fileName:Ljava/lang/String;

.field private iofoPos:J

.field private lastAccess:J

.field private validate:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/taobao/filecache/FileInfoBase;->lastAccess:J

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/filecache/FileInfoBase;->validate:Z

    return-void
.end method


# virtual methods
.method public SetLastAccess(J)V
    .locals 0
    .parameter "lastAccess"

    .prologue
    .line 50
    iput-wide p1, p0, Landroid/taobao/filecache/FileInfoBase;->lastAccess:J

    .line 51
    return-void
.end method

.method public compareTo(Landroid/taobao/filecache/FileInfoBase;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 22
    if-ne p0, p1, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0

    .line 24
    :cond_0
    iget-wide v0, p0, Landroid/taobao/filecache/FileInfoBase;->lastAccess:J

    iget-wide v2, p1, Landroid/taobao/filecache/FileInfoBase;->lastAccess:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 25
    const/4 v0, 0x1

    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    check-cast p1, Landroid/taobao/filecache/FileInfoBase;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/taobao/filecache/FileInfoBase;->compareTo(Landroid/taobao/filecache/FileInfoBase;)I

    move-result v0

    return v0
.end method

.method public composeFileInfoStr()[B
    .locals 8

    .prologue
    .line 63
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v1, filePath:Ljava/lang/StringBuffer;
    iget-wide v4, p0, Landroid/taobao/filecache/FileInfoBase;->lastAccess:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 69
    iget-wide v4, p0, Landroid/taobao/filecache/FileInfoBase;->lastAccess:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 72
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/16 v5, 0xd

    if-ge v4, v5, :cond_1

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    rsub-int/lit8 v3, v4, 0xd

    .line 74
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 75
    const/4 v4, 0x0

    const-string v5, "0"

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 71
    .end local v2           #i:I
    .end local v3           #size:I
    :cond_0
    const-string v4, "0000000000000"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 78
    :cond_1
    iget-boolean v4, p0, Landroid/taobao/filecache/FileInfoBase;->validate:Z

    if-eqz v4, :cond_2

    .line 79
    const/16 v4, 0x2d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    :goto_2
    iget-object v4, p0, Landroid/taobao/filecache/FileInfoBase;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v4, "FileInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toByteArray:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 89
    :goto_3
    return-object v4

    .line 81
    :cond_2
    const/16 v4, 0x5f

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 89
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public getFileInfoPos()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Landroid/taobao/filecache/FileInfoBase;->iofoPos:J

    return-wide v0
.end method

.method public getFileInfoTime(J)J
    .locals 2
    .parameter "defaultTime"

    .prologue
    .line 115
    iget-wide v0, p0, Landroid/taobao/filecache/FileInfoBase;->lastAccess:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Landroid/taobao/filecache/FileInfoBase;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAccess()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Landroid/taobao/filecache/FileInfoBase;->lastAccess:J

    return-wide v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/filecache/FileInfoBase;->validate:Z

    .line 110
    return-void
.end method

.method public setFileInfoPos(J)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 102
    iput-wide p1, p0, Landroid/taobao/filecache/FileInfoBase;->iofoPos:J

    .line 103
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/taobao/filecache/FileInfoBase;->fileName:Ljava/lang/String;

    .line 46
    return-void
.end method
