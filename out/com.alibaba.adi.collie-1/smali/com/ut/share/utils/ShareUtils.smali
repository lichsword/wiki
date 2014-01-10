.class public Lcom/ut/share/utils/ShareUtils;
.super Ljava/lang/Object;
.source "ShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/share/utils/ShareUtils$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static file2Bytes(Ljava/lang/String;)[B
    .locals 7
    .parameter "path"

    .prologue
    .line 70
    const/4 v3, 0x0

    .line 72
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 73
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, bao:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 76
    .local v1, bt:[B
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, c:I
    if-lez v2, :cond_0

    .line 77
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 81
    .end local v0           #bao:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bt:[B
    .end local v2           #c:I
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 85
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 90
    :goto_2
    const/4 v5, 0x0

    :goto_3
    return-object v5

    .line 79
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #bao:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bt:[B
    .restart local v2       #c:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    .line 85
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    move-object v3, v4

    .line 88
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 84
    .end local v0           #bao:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bt:[B
    .end local v2           #c:I
    :catchall_0
    move-exception v5

    .line 85
    :goto_5
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 88
    :goto_6
    throw v5

    .line 87
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #bao:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bt:[B
    .restart local v2       #c:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    goto :goto_4

    .end local v0           #bao:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bt:[B
    .end local v2           #c:I
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_6

    .line 84
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 81
    :catch_4
    move-exception v5

    goto :goto_1
.end method

.method public static generateQRCode(Ljava/lang/String;Lcom/ut/share/utils/a;Lcom/ut/share/utils/ShareUtils$a;)V
    .locals 1
    .parameter "savePath"
    .parameter "entity"
    .parameter "listener"

    .prologue
    .line 54
    new-instance v0, Lcom/ut/share/utils/ShareUtils$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/ut/share/utils/ShareUtils$1;-><init>(Ljava/lang/String;Lcom/ut/share/utils/a;Lcom/ut/share/utils/ShareUtils$a;)V

    invoke-virtual {v0}, Lcom/ut/share/utils/ShareUtils$1;->start()V

    .line 67
    return-void
.end method

.method public static picUrlProcess(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "url"
    .parameter "size"

    .prologue
    .line 187
    if-nez p0, :cond_1

    .line 223
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 189
    .restart local p0
    :cond_1
    const-string v5, "taobao"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    const/16 v5, 0x7c

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 194
    .local v4, sep:I
    if-lez v4, :cond_2

    .line 196
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 199
    :cond_2
    const/4 v2, 0x0

    .line 209
    .local v2, outputUrl:Ljava/lang/String;
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 213
    const-string v5, "_\\d+x\\d+\\.jpg"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 214
    .local v3, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 215
    .local v1, matcher:Ljava/util/regex/Matcher;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, append:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 217
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object p0, v2

    .line 223
    goto :goto_0

    .line 220
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z
    .locals 6
    .parameter "bm"
    .parameter "imgPath"
    .parameter "format"

    .prologue
    const/4 v4, 0x0

    .line 127
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v4

    .line 132
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, f:Ljava/io/File;
    const/4 v2, 0x0

    .line 135
    .local v2, fOut:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 139
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .local v3, fOut:Ljava/io/FileOutputStream;
    const/16 v5, 0x64

    :try_start_1
    invoke-virtual {p0, p2, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 144
    const/4 v4, 0x1

    .line 149
    if-eqz v3, :cond_0

    .line 151
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 152
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v5

    goto :goto_0

    .line 145
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    if-eqz v2, :cond_0

    .line 151
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 152
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 154
    :catch_2
    move-exception v5

    goto :goto_0

    .line 148
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 149
    :goto_2
    if-eqz v2, :cond_3

    .line 151
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 152
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 155
    :cond_3
    :goto_3
    throw v4

    .line 154
    :catch_3
    move-exception v5

    goto :goto_3

    .line 148
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 145
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static saveBitmapToFile([BLjava/lang/String;)Z
    .locals 5
    .parameter "jpgData"
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 94
    if-nez p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v3

    .line 97
    :cond_1
    const/4 v1, 0x0

    .line 100
    .local v1, os:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 105
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .end local v1           #os:Ljava/io/FileOutputStream;
    .local v2, os:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 107
    const/4 v3, 0x1

    .line 111
    if-eqz v2, :cond_0

    .line 112
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v4

    goto :goto_0

    .line 108
    .end local v0           #f:Ljava/io/File;
    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 111
    :goto_1
    if-eqz v1, :cond_0

    .line 112
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 113
    :catch_2
    move-exception v4

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v3

    .line 111
    :goto_2
    if-eqz v1, :cond_3

    .line 112
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 114
    :cond_3
    :goto_3
    throw v3

    .line 113
    :catch_3
    move-exception v4

    goto :goto_3

    .line 110
    .end local v1           #os:Ljava/io/FileOutputStream;
    .restart local v0       #f:Ljava/io/File;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 108
    .end local v1           #os:Ljava/io/FileOutputStream;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
