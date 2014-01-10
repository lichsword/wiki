.class public Lcom/alibaba/adi/collie/share/utils/ShareUtils;
.super Ljava/lang/Object;
.source "ShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;,
        Lcom/alibaba/adi/collie/share/utils/ShareUtils$QRCodeListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFileFromBitmap2SDCardSync(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 6
    .parameter "bitmap"
    .parameter "dstPath"

    .prologue
    .line 107
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 110
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 113
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 114
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 122
    if-eqz v3, :cond_1

    .line 124
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    :cond_1
    :goto_0
    const/4 v4, 0x1

    move-object v2, v3

    .line 119
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_1
    return v4

    .line 118
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    if-eqz v2, :cond_2

    .line 124
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 119
    :cond_2
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 121
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 122
    :goto_4
    if-eqz v2, :cond_3

    .line 124
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 129
    :cond_3
    :goto_5
    throw v4

    .line 126
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    goto :goto_3

    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v5

    goto :goto_5

    .line 121
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 118
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static copyfileFromAsset2SDCardAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;)V
    .locals 1
    .parameter "context"
    .parameter "assetPath"
    .parameter "savePath"
    .parameter "listener"

    .prologue
    .line 72
    new-instance v0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/adi/collie/share/utils/ShareUtils$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;)V

    .line 79
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/share/utils/ShareUtils$2;->start()V

    .line 80
    return-void
.end method

.method public static copyfileFromAsset2SDCardSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "orgFileName"
    .parameter "destFileName"

    .prologue
    const/4 v7, 0x0

    .line 133
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v6, toFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 136
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 139
    :cond_0
    const/4 v3, 0x0

    .line 140
    .local v3, fisfrom:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 142
    .local v4, fosto:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 143
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 144
    .end local v4           #fosto:Ljava/io/FileOutputStream;
    .local v5, fosto:Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_1
    new-array v0, v8, [B

    .line 146
    .local v0, bt:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, c:I
    if-gtz v1, :cond_4

    .line 149
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    if-eqz v3, :cond_1

    .line 158
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 163
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 165
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 150
    :cond_2
    :goto_2
    const/4 v7, 0x1

    move-object v4, v5

    .line 153
    .end local v0           #bt:[B
    .end local v1           #c:I
    .end local v5           #fosto:Ljava/io/FileOutputStream;
    .restart local v4       #fosto:Ljava/io/FileOutputStream;
    :cond_3
    :goto_3
    return v7

    .line 147
    .end local v4           #fosto:Ljava/io/FileOutputStream;
    .restart local v0       #bt:[B
    .restart local v1       #c:I
    .restart local v5       #fosto:Ljava/io/FileOutputStream;
    :cond_4
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v5, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 152
    .end local v0           #bt:[B
    .end local v1           #c:I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 156
    .end local v5           #fosto:Ljava/io/FileOutputStream;
    .local v2, e:Ljava/lang/Exception;
    .restart local v4       #fosto:Ljava/io/FileOutputStream;
    :goto_4
    if-eqz v3, :cond_5

    .line 158
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 163
    :cond_5
    :goto_5
    if-eqz v4, :cond_3

    .line 165
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 167
    :catch_1
    move-exception v8

    goto :goto_3

    .line 155
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 156
    :goto_6
    if-eqz v3, :cond_6

    .line 158
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 163
    :cond_6
    :goto_7
    if-eqz v4, :cond_7

    .line 165
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 170
    :cond_7
    :goto_8
    throw v7

    .line 160
    .end local v4           #fosto:Ljava/io/FileOutputStream;
    .restart local v0       #bt:[B
    .restart local v1       #c:I
    .restart local v5       #fosto:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    goto :goto_1

    .line 167
    :catch_3
    move-exception v7

    goto :goto_2

    .line 160
    .end local v0           #bt:[B
    .end local v1           #c:I
    .end local v5           #fosto:Ljava/io/FileOutputStream;
    .restart local v2       #e:Ljava/lang/Exception;
    .restart local v4       #fosto:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    goto :goto_5

    .end local v2           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v8

    goto :goto_7

    .line 167
    :catch_6
    move-exception v8

    goto :goto_8

    .line 155
    .end local v4           #fosto:Ljava/io/FileOutputStream;
    .restart local v5       #fosto:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fosto:Ljava/io/FileOutputStream;
    .restart local v4       #fosto:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 152
    :catch_7
    move-exception v2

    goto :goto_4
.end method

.method public static copyfileFromBitmap2SDCardAsync(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;)V
    .locals 1
    .parameter "bitmap"
    .parameter "dstPath"
    .parameter "listener"

    .prologue
    .line 96
    new-instance v0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/adi/collie/share/utils/ShareUtils$4;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;)V

    .line 103
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/share/utils/ShareUtils$4;->start()V

    .line 104
    return-void
.end method

.method public static copyfileFromSDCard2SDCardAsync(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;)V
    .locals 1
    .parameter "srcPath"
    .parameter "dstPath"
    .parameter "listener"

    .prologue
    .line 84
    new-instance v0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/adi/collie/share/utils/ShareUtils$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;)V

    .line 91
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/share/utils/ShareUtils$3;->start()V

    .line 92
    return-void
.end method

.method public static copyfileFromSDCard2SDCardSync(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "orgFileName"
    .parameter "destFileName"

    .prologue
    const/4 v8, 0x0

    .line 174
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v7, toFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 177
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 180
    :cond_0
    const/4 v3, 0x0

    .line 181
    .local v3, fisfrom:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 183
    .local v5, fosto:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 184
    .end local v3           #fisfrom:Ljava/io/InputStream;
    .local v4, fisfrom:Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 185
    .end local v5           #fosto:Ljava/io/FileOutputStream;
    .local v6, fosto:Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    .line 187
    .local v0, bt:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .local v1, c:I
    if-gtz v1, :cond_4

    .line 196
    if-eqz v4, :cond_1

    .line 198
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 203
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 205
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 190
    :cond_2
    :goto_2
    const/4 v8, 0x1

    move-object v5, v6

    .end local v6           #fosto:Ljava/io/FileOutputStream;
    .restart local v5       #fosto:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 193
    .end local v0           #bt:[B
    .end local v1           #c:I
    .end local v4           #fisfrom:Ljava/io/InputStream;
    .restart local v3       #fisfrom:Ljava/io/InputStream;
    :cond_3
    :goto_3
    return v8

    .line 188
    .end local v3           #fisfrom:Ljava/io/InputStream;
    .end local v5           #fosto:Ljava/io/FileOutputStream;
    .restart local v0       #bt:[B
    .restart local v1       #c:I
    .restart local v4       #fisfrom:Ljava/io/InputStream;
    .restart local v6       #fosto:Ljava/io/FileOutputStream;
    :cond_4
    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v6, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 192
    .end local v0           #bt:[B
    .end local v1           #c:I
    :catch_0
    move-exception v2

    move-object v5, v6

    .end local v6           #fosto:Ljava/io/FileOutputStream;
    .restart local v5       #fosto:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 196
    .end local v4           #fisfrom:Ljava/io/InputStream;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #fisfrom:Ljava/io/InputStream;
    :goto_4
    if-eqz v3, :cond_5

    .line 198
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 203
    :cond_5
    :goto_5
    if-eqz v5, :cond_3

    .line 205
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 207
    :catch_1
    move-exception v9

    goto :goto_3

    .line 195
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 196
    :goto_6
    if-eqz v3, :cond_6

    .line 198
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 203
    :cond_6
    :goto_7
    if-eqz v5, :cond_7

    .line 205
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 210
    :cond_7
    :goto_8
    throw v8

    .line 200
    .end local v3           #fisfrom:Ljava/io/InputStream;
    .end local v5           #fosto:Ljava/io/FileOutputStream;
    .restart local v0       #bt:[B
    .restart local v1       #c:I
    .restart local v4       #fisfrom:Ljava/io/InputStream;
    .restart local v6       #fosto:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v8

    goto :goto_1

    .line 207
    :catch_3
    move-exception v8

    goto :goto_2

    .line 200
    .end local v0           #bt:[B
    .end local v1           #c:I
    .end local v4           #fisfrom:Ljava/io/InputStream;
    .end local v6           #fosto:Ljava/io/FileOutputStream;
    .restart local v2       #e:Ljava/lang/Exception;
    .restart local v3       #fisfrom:Ljava/io/InputStream;
    .restart local v5       #fosto:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v9

    goto :goto_5

    .end local v2           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v9

    goto :goto_7

    .line 207
    :catch_6
    move-exception v9

    goto :goto_8

    .line 195
    .end local v3           #fisfrom:Ljava/io/InputStream;
    .restart local v4       #fisfrom:Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #fisfrom:Ljava/io/InputStream;
    .restart local v3       #fisfrom:Ljava/io/InputStream;
    goto :goto_6

    .end local v3           #fisfrom:Ljava/io/InputStream;
    .end local v5           #fosto:Ljava/io/FileOutputStream;
    .restart local v4       #fisfrom:Ljava/io/InputStream;
    .restart local v6       #fosto:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6           #fosto:Ljava/io/FileOutputStream;
    .restart local v5       #fosto:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #fisfrom:Ljava/io/InputStream;
    .restart local v3       #fisfrom:Ljava/io/InputStream;
    goto :goto_6

    .line 192
    :catch_7
    move-exception v2

    goto :goto_4

    .end local v3           #fisfrom:Ljava/io/InputStream;
    .restart local v4       #fisfrom:Ljava/io/InputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4           #fisfrom:Ljava/io/InputStream;
    .restart local v3       #fisfrom:Ljava/io/InputStream;
    goto :goto_4
.end method

.method public static fetchImageWithApiRequest(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;)Z
    .locals 2
    .parameter "picUrl"
    .parameter "listener"

    .prologue
    .line 37
    :try_start_0
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/taobao/apirequest/ApiRequestMgr;->downloadImage(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;)Landroid/taobao/apirequest/ApiID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const/4 v1, 0x1

    .line 41
    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fetchImageWithImageGroup(Ljava/lang/String;Landroid/app/Application;IILjava/lang/String;Lcom/taobao/tao/imagepool/ImageListener;)V
    .locals 5
    .parameter "imageGroupName"
    .parameter "context"
    .parameter "priority"
    .parameter "cacheType"
    .parameter "picUrl"
    .parameter "listener"

    .prologue
    .line 26
    new-instance v1, Lcom/taobao/tao/imagepool/ImageGroupImp;

    const-string v2, "ShareImage"

    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x2

    .line 26
    invoke-direct {v1, v2, p1, v3, v4}, Lcom/taobao/tao/imagepool/ImageGroupImp;-><init>(Ljava/lang/String;Landroid/app/Application;II)V

    .line 28
    .local v1, mImageGroup:Lcom/taobao/tao/imagepool/ImageGroupImp;
    invoke-virtual {v1, p5}, Lcom/taobao/tao/imagepool/ImageGroupImp;->setImageListener(Lcom/taobao/tao/imagepool/ImageListener;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, URIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v1, v0}, Lcom/taobao/tao/imagepool/ImageGroupImp;->appendURIList(Ljava/util/ArrayList;)V

    .line 32
    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/ImageGroupImp;->start()V

    .line 33
    return-void
.end method

.method public static file2Bytes(Ljava/lang/String;)[B
    .locals 7
    .parameter "path"

    .prologue
    .line 214
    const/4 v3, 0x0

    .line 216
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 217
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 218
    .local v0, bao:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 220
    .local v1, bt:[B
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, c:I
    if-gtz v2, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 229
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object v3, v4

    .line 234
    .end local v0           #bao:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bt:[B
    .end local v2           #c:I
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_2
    return-object v5

    .line 221
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #bao:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bt:[B
    .restart local v2       #c:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_0
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 225
    .end local v0           #bao:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bt:[B
    .end local v2           #c:I
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 229
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 234
    :goto_4
    const/4 v5, 0x0

    goto :goto_2

    .line 227
    :catchall_0
    move-exception v5

    .line 229
    :goto_5
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 233
    :goto_6
    throw v5

    .line 231
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #bao:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bt:[B
    .restart local v2       #c:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v0           #bao:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bt:[B
    .end local v2           #c:I
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    goto :goto_4

    :catch_3
    move-exception v6

    goto :goto_6

    .line 227
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 225
    :catch_4
    move-exception v5

    goto :goto_3
.end method

.method public static generateQRCode(Ljava/lang/String;Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;Lcom/alibaba/adi/collie/share/utils/ShareUtils$QRCodeListener;)V
    .locals 1
    .parameter "savePath"
    .parameter "entity"
    .parameter "listener"

    .prologue
    .line 51
    new-instance v0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/adi/collie/share/utils/ShareUtils$1;-><init>(Ljava/lang/String;Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;Lcom/alibaba/adi/collie/share/utils/ShareUtils$QRCodeListener;)V

    .line 63
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/share/utils/ShareUtils$1;->start()V

    .line 64
    return-void
.end method

.method public static saveBitmap2File(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 6
    .parameter "bitmap"
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 269
    if-nez p0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v3

    .line 272
    :cond_1
    const/4 v1, 0x0

    .line 275
    .local v1, os:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 280
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1           #os:Ljava/io/FileOutputStream;
    .local v2, os:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 289
    if-eqz v2, :cond_3

    .line 290
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 282
    :cond_3
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 284
    .end local v0           #f:Ljava/io/File;
    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 289
    :goto_2
    if-eqz v1, :cond_0

    .line 290
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 292
    :catch_1
    move-exception v4

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v3

    .line 289
    :goto_3
    if-eqz v1, :cond_4

    .line 290
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 295
    :cond_4
    :goto_4
    throw v3

    .line 292
    .end local v1           #os:Ljava/io/FileOutputStream;
    .restart local v0       #f:Ljava/io/File;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    goto :goto_1

    .end local v0           #f:Ljava/io/File;
    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_4

    .line 287
    .end local v1           #os:Ljava/io/FileOutputStream;
    .restart local v0       #f:Ljava/io/File;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 284
    .end local v1           #os:Ljava/io/FileOutputStream;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static saveBitmapToFile([BLjava/lang/String;)Z
    .locals 5
    .parameter "jpgData"
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 238
    if-nez p0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v3

    .line 241
    :cond_1
    const/4 v1, 0x0

    .line 244
    .local v1, os:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 249
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v1           #os:Ljava/io/FileOutputStream;
    .local v2, os:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 258
    if-eqz v2, :cond_3

    .line 259
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 251
    :cond_3
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 253
    .end local v0           #f:Ljava/io/File;
    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 258
    :goto_2
    if-eqz v1, :cond_0

    .line 259
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 261
    :catch_1
    move-exception v4

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v3

    .line 258
    :goto_3
    if-eqz v1, :cond_4

    .line 259
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 264
    :cond_4
    :goto_4
    throw v3

    .line 261
    .end local v1           #os:Ljava/io/FileOutputStream;
    .restart local v0       #f:Ljava/io/File;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    goto :goto_1

    .end local v0           #f:Ljava/io/File;
    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_4

    .line 256
    .end local v1           #os:Ljava/io/FileOutputStream;
    .restart local v0       #f:Ljava/io/File;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 253
    .end local v1           #os:Ljava/io/FileOutputStream;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    goto :goto_2
.end method
