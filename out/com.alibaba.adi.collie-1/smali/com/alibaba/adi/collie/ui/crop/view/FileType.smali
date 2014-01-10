.class public Lcom/alibaba/adi/collie/ui/crop/view/FileType;
.super Ljava/lang/Object;
.source "FileType.java"


# static fields
.field public static final mFileTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/ui/crop/view/FileType;->mFileTypes:Ljava/util/HashMap;

    .line 12
    sget-object v0, Lcom/alibaba/adi/collie/ui/crop/view/FileType;->mFileTypes:Ljava/util/HashMap;

    const-string v1, "FFD8FF"

    const-string v2, "jpg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/alibaba/adi/collie/ui/crop/view/FileType;->mFileTypes:Ljava/util/HashMap;

    const-string v1, "89504E"

    const-string v2, "png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/alibaba/adi/collie/ui/crop/view/FileType;->mFileTypes:Ljava/util/HashMap;

    const-string v1, "474946"

    const-string v2, "gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/alibaba/adi/collie/ui/crop/view/FileType;->mFileTypes:Ljava/util/HashMap;

    const-string v1, "49492A"

    const-string v2, "tif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/alibaba/adi/collie/ui/crop/view/FileType;->mFileTypes:Ljava/util/HashMap;

    const-string v1, "424D"

    const-string v2, "bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "src"

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v3, p0

    if-gtz v3, :cond_1

    .line 47
    :cond_0
    const/4 v3, 0x0

    .line 57
    :goto_0
    return-object v3

    .line 50
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, p0

    if-lt v2, v3, :cond_2

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 51
    :cond_2
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, hv:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 53
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getFileHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "filePath"

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 26
    .local v1, is:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 28
    .local v3, value:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v1           #is:Ljava/io/FileInputStream;
    .local v2, is:Ljava/io/FileInputStream;
    const/4 v4, 0x3

    :try_start_1
    new-array v0, v4, [B

    .line 30
    .local v0, b:[B
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    .line 31
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/FileType;->bytesToHexString([B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    .line 34
    if-eqz v2, :cond_2

    .line 36
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 41
    .end local v0           #b:[B
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 32
    :catch_0
    move-exception v4

    .line 34
    :goto_1
    if-eqz v1, :cond_0

    .line 36
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 37
    :catch_1
    move-exception v4

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v4

    .line 34
    :goto_2
    if-eqz v1, :cond_1

    .line 36
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 40
    :cond_1
    :goto_3
    throw v4

    .line 37
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v0       #b:[B
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_0

    .end local v0           #b:[B
    :catch_3
    move-exception v5

    goto :goto_3

    .line 33
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 32
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v0       #b:[B
    .restart local v2       #is:Ljava/io/FileInputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static getFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 20
    sget-object v0, Lcom/alibaba/adi/collie/ui/crop/view/FileType;->mFileTypes:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/alibaba/adi/collie/ui/crop/view/FileType;->getFileHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
