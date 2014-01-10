.class public Landroid/taobao/util/FileManagerUtils;
.super Ljava/lang/Object;
.source "FileManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssetsFileData(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 5
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, in:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 50
    .local v0, buffer:[B
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 52
    .local v3, length:I
    new-array v0, v3, [B

    .line 53
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    if-eqz v2, :cond_0

    .line 59
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v4, v0

    .line 64
    .end local v3           #length:I
    :cond_1
    :goto_1
    return-object v4

    .line 60
    .restart local v3       #length:I
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #length:I
    :catch_1
    move-exception v1

    .line 55
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 57
    if-eqz v2, :cond_1

    .line 59
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 60
    :catch_2
    move-exception v1

    .line 61
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 57
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 59
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 62
    :cond_2
    :goto_2
    throw v4

    .line 60
    :catch_3
    move-exception v1

    .line 61
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static readFileData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "fileName"

    .prologue
    const/4 v5, 0x0

    .line 29
    const-string v4, ""

    .line 31
    .local v4, res:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 32
    .local v2, fin:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 33
    .local v3, length:I
    if-gtz v3, :cond_0

    .line 43
    .end local v2           #fin:Ljava/io/FileInputStream;
    .end local v3           #length:I
    :goto_0
    return-object v5

    .line 35
    .restart local v2       #fin:Ljava/io/FileInputStream;
    .restart local v3       #length:I
    :cond_0
    new-array v0, v3, [B

    .line 36
    .local v0, buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 37
    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v4

    .line 43
    goto :goto_0

    .line 39
    .end local v0           #buffer:[B
    .end local v2           #fin:Ljava/io/FileInputStream;
    .end local v3           #length:I
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeFileData(Landroid/content/Context;Ljava/lang/String;[B)Z
    .locals 4
    .parameter "context"
    .parameter "fileName"
    .parameter "bytes"

    .prologue
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 19
    .local v1, fout:Ljava/io/FileOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 20
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    const/4 v2, 0x1

    .line 23
    .end local v1           #fout:Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method
