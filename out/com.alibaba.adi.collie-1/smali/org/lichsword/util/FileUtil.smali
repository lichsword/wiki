.class public Lorg/lichsword/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lichsword/util/FileUtil$DiskInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static cleanDir(Ljava/io/File;)V
    .locals 1
    .parameter "dir"

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/lichsword/util/FileUtil;->deleteDir(Ljava/io/File;Z)V

    .line 134
    return-void
.end method

.method public static cleanDir(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1
    .parameter "dir"
    .parameter "filter"

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/lichsword/util/FileUtil;->deleteDir(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 158
    return-void
.end method

.method public static cleanDir(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 1
    .parameter "dir"
    .parameter "filter"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/lichsword/util/FileUtil;->deleteDir(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 146
    return-void
.end method

.method public static cleanDir(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "dir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, ignoreFilePathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 168
    .local v1, fileList:[Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 170
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 181
    :cond_0
    return-void

    .line 170
    :cond_1
    aget-object v0, v1, v2

    .line 171
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static computeFolderSize(Ljava/io/File;)J
    .locals 7
    .parameter "dir"

    .prologue
    .line 619
    if-nez p0, :cond_1

    .line 620
    const-wide/16 v0, 0x0

    .line 635
    :cond_0
    return-wide v0

    .line 622
    :cond_1
    const-wide/16 v0, 0x0

    .line 623
    .local v0, dirSize:J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 624
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 625
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 626
    aget-object v2, v3, v4

    .line 627
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 628
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 625
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 629
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 630
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 631
    invoke-static {v2}, Lorg/lichsword/util/FileUtil;->computeFolderSize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_1
.end method

.method public static final copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 374
    if-nez p0, :cond_0

    .line 375
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "srcFile may not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 377
    :cond_0
    if-nez p1, :cond_1

    .line 378
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "destFile may not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 380
    :cond_1
    const/4 v3, 0x0

    .line 381
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 383
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    const/16 v7, 0x2000

    :try_start_2
    new-array v0, v7, [B

    .line 386
    .local v0, buffer:[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 387
    .local v1, bytesRead:I
    :goto_0
    if-gtz v1, :cond_2

    .line 394
    invoke-static {v4}, Lorg/lichsword/util/FileUtil;->quietClose(Ljava/io/Closeable;)V

    .line 395
    invoke-static {v6}, Lorg/lichsword/util/FileUtil;->quietClose(Ljava/io/Closeable;)V

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 397
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_1
    return-void

    .line 388
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 389
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    goto :goto_0

    .line 391
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 392
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 394
    invoke-static {v3}, Lorg/lichsword/util/FileUtil;->quietClose(Ljava/io/Closeable;)V

    .line 395
    invoke-static {v5}, Lorg/lichsword/util/FileUtil;->quietClose(Ljava/io/Closeable;)V

    goto :goto_1

    .line 393
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 394
    :goto_3
    invoke-static {v3}, Lorg/lichsword/util/FileUtil;->quietClose(Ljava/io/Closeable;)V

    .line 395
    invoke-static {v5}, Lorg/lichsword/util/FileUtil;->quietClose(Ljava/io/Closeable;)V

    .line 396
    throw v7

    .line 393
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 391
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static final copyStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 6
    .parameter "inputStream"
    .parameter "destFile"

    .prologue
    .line 401
    const/4 v3, 0x0

    .line 403
    .local v3, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {p1}, Lorg/lichsword/util/FileUtil;->ensureParent(Ljava/io/File;)V

    .line 404
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 405
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 407
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v4, fileOutputStream:Ljava/io/FileOutputStream;
    const/16 v5, 0x2000

    :try_start_1
    new-array v0, v5, [B

    .line 409
    .local v0, buffer:[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 410
    .local v1, bytesRead:I
    :goto_0
    if-gtz v1, :cond_1

    .line 417
    invoke-static {p0}, Lorg/lichsword/util/FileUtil;->quietClose(Ljava/io/Closeable;)V

    .line 418
    invoke-static {v4}, Lorg/lichsword/util/FileUtil;->quietClose(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 420
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 411
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    :cond_1
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 412
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    goto :goto_0

    .line 414
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 415
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    invoke-static {p0}, Lorg/lichsword/util/FileUtil;->quietClose(Ljava/io/Closeable;)V

    .line 418
    invoke-static {v3}, Lorg/lichsword/util/FileUtil;->quietClose(Ljava/io/Closeable;)V

    goto :goto_1

    .line 416
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 417
    :goto_3
    invoke-static {p0}, Lorg/lichsword/util/FileUtil;->quietClose(Ljava/io/Closeable;)V

    .line 418
    invoke-static {v3}, Lorg/lichsword/util/FileUtil;->quietClose(Ljava/io/Closeable;)V

    .line 419
    throw v5

    .line 416
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 414
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 1
    .parameter "dir"

    .prologue
    .line 190
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/lichsword/util/FileUtil;->deleteDir(Ljava/io/File;Z)V

    .line 191
    return-void
.end method

.method public static deleteDir(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1
    .parameter "dir"
    .parameter "filter"

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/lichsword/util/FileUtil;->deleteDir(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 203
    return-void
.end method

.method public static deleteDir(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 1
    .parameter "dir"
    .parameter "filter"

    .prologue
    .line 214
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/lichsword/util/FileUtil;->deleteDir(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 215
    return-void
.end method

.method public static deleteDir(Ljava/io/File;Z)V
    .locals 5
    .parameter "dir"
    .parameter "removeDir"

    .prologue
    .line 226
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 228
    .local v1, files:[Ljava/io/File;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 235
    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 239
    .end local v1           #files:[Ljava/io/File;
    :cond_0
    return-void

    .line 228
    .restart local v1       #files:[Ljava/io/File;
    :cond_1
    aget-object v0, v1, v2

    .line 229
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    invoke-static {v0, p1}, Lorg/lichsword/util/FileUtil;->deleteDir(Ljava/io/File;Z)V

    .line 228
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static deleteDir(Ljava/io/File;ZLjava/io/FileFilter;)V
    .locals 5
    .parameter "dir"
    .parameter "removeDir"
    .parameter "filter"

    .prologue
    .line 253
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 255
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 256
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 264
    :cond_0
    if-eqz p1, :cond_1

    .line 265
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 268
    .end local v1           #files:[Ljava/io/File;
    :cond_1
    return-void

    .line 256
    .restart local v1       #files:[Ljava/io/File;
    :cond_2
    aget-object v0, v1, v2

    .line 257
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 258
    invoke-static {v0, p1, p2}, Lorg/lichsword/util/FileUtil;->deleteDir(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 256
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static deleteDir(Ljava/io/File;ZLjava/io/FilenameFilter;)V
    .locals 5
    .parameter "dir"
    .parameter "removeDir"
    .parameter "filter"

    .prologue
    .line 282
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 284
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 285
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 293
    :cond_0
    if-eqz p1, :cond_1

    .line 294
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 297
    .end local v1           #files:[Ljava/io/File;
    :cond_1
    return-void

    .line 285
    .restart local v1       #files:[Ljava/io/File;
    :cond_2
    aget-object v0, v1, v2

    .line 286
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 287
    invoke-static {v0, p1, p2}, Lorg/lichsword/util/FileUtil;->deleteDir(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 285
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, success:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 119
    const/4 v1, 0x1

    .line 123
    :goto_0
    return v1

    .line 121
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static ensureDir(Ljava/lang/String;)Z
    .locals 2
    .parameter "dirPath"

    .prologue
    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 93
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static ensureParent(Ljava/io/File;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 653
    if-eqz p0, :cond_0

    .line 654
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 655
    .local v0, parentFile:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 656
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 659
    .end local v0           #parentFile:Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static getDiskFreeSize(Ljava/lang/String;)J
    .locals 9
    .parameter "diskPath"

    .prologue
    .line 484
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 485
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v0, v8

    .line 486
    .local v0, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v3, v8

    .line 487
    .local v3, freeBlocks:J
    mul-long v6, v0, v3

    .line 490
    .end local v0           #blockSize:J
    .end local v3           #freeBlocks:J
    .end local v5           #stat:Landroid/os/StatFs;
    :goto_0
    return-wide v6

    .line 489
    :catch_0
    move-exception v2

    .line 490
    .local v2, e:Ljava/lang/Throwable;
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public static getDiskTotalSize(Ljava/lang/String;)J
    .locals 9
    .parameter "diskPath"

    .prologue
    .line 465
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 466
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v0, v8

    .line 467
    .local v0, blockSize:J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v4, v8

    .line 468
    .local v4, totalBlocks:J
    mul-long v6, v0, v4

    .line 471
    .end local v0           #blockSize:J
    .end local v3           #stat:Landroid/os/StatFs;
    .end local v4           #totalBlocks:J
    :goto_0
    return-wide v6

    .line 470
    :catch_0
    move-exception v2

    .line 471
    .local v2, e:Ljava/lang/Throwable;
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public static getDisks()[Lorg/lichsword/util/FileUtil$DiskInfo;
    .locals 10

    .prologue
    .line 501
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 502
    .local v7, runtime:Ljava/lang/Runtime;
    const-string v9, "df"

    invoke-virtual {v7, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 503
    .local v5, process:Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 504
    .local v8, stdout:Ljava/io/InputStream;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v0, disks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/lichsword/util/FileUtil$DiskInfo;>;"
    if-eqz v8, :cond_0

    .line 506
    new-instance v6, Ljava/io/BufferedReader;

    .line 507
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 506
    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 508
    .local v6, reader:Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, line:Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    .line 519
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 521
    .end local v2           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lorg/lichsword/util/FileUtil$DiskInfo;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/lichsword/util/FileUtil$DiskInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 524
    .end local v0           #disks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/lichsword/util/FileUtil$DiskInfo;>;"
    .end local v5           #process:Ljava/lang/Process;
    .end local v8           #stdout:Ljava/io/InputStream;
    :goto_1
    return-object v9

    .line 511
    .restart local v0       #disks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/lichsword/util/FileUtil$DiskInfo;>;"
    .restart local v2       #line:Ljava/lang/String;
    .restart local v5       #process:Ljava/lang/Process;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .restart local v8       #stdout:Ljava/io/InputStream;
    :cond_1
    const/16 v9, 0x3a

    :try_start_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 512
    .local v4, pathEnd:I
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, path:Ljava/lang/String;
    new-instance v9, Lorg/lichsword/util/FileUtil$DiskInfo;

    invoke-direct {v9, v3}, Lorg/lichsword/util/FileUtil$DiskInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 517
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #pathEnd:I
    :goto_2
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 514
    :catch_0
    move-exception v1

    .line 515
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 522
    .end local v0           #disks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/lichsword/util/FileUtil$DiskInfo;>;"
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #line:Ljava/lang/String;
    .end local v5           #process:Ljava/lang/Process;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v8           #stdout:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 523
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 524
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter "file"

    .prologue
    .line 583
    if-nez p0, :cond_0

    .line 584
    const/4 v0, 0x0

    .line 594
    :goto_0
    return-object v0

    .line 586
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, fileName:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 589
    .local v2, index:I
    if-ltz v2, :cond_1

    .line 590
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, extension:Ljava/lang/String;
    goto :goto_0

    .line 592
    .end local v0           #extension:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    .restart local v0       #extension:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 569
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    const/4 v0, 0x0

    .line 572
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/lichsword/util/FileUtil;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExtensionOfUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 598
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    const/4 v0, 0x0

    .line 609
    :goto_0
    return-object v0

    .line 602
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 604
    .local v1, index:I
    if-ltz v1, :cond_1

    .line 605
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, extension:Ljava/lang/String;
    goto :goto_0

    .line 607
    .end local v0           #extension:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    .restart local v0       #extension:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getFileNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter "file"

    .prologue
    .line 550
    if-nez p0, :cond_1

    .line 551
    const/4 v0, 0x0

    .line 558
    :cond_0
    :goto_0
    return-object v0

    .line 553
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, fileName:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 555
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 556
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 536
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const/4 v0, 0x0

    .line 539
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/lichsword/util/FileUtil;->getFileNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"

    .prologue
    .line 103
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static final moveFile(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 431
    if-nez p0, :cond_0

    .line 432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "srcFile may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_0
    if-nez p1, :cond_1

    .line 435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "destFile may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 438
    return-void
.end method

.method public static final quietClose(Ljava/io/Closeable;)V
    .locals 1
    .parameter "closeable"

    .prologue
    .line 447
    if-eqz p0, :cond_0

    .line 449
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 450
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .parameter "file"

    .prologue
    .line 662
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 663
    .local v1, builder:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 665
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 666
    .local v3, fileInputStream:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 668
    .local v4, fileReader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 670
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 671
    .local v5, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 674
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 675
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 676
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .end local v4           #fileReader:Ljava/io/InputStreamReader;
    .end local v5           #line:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 672
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v4       #fileReader:Ljava/io/InputStreamReader;
    .restart local v5       #line:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 677
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .end local v4           #fileReader:Ljava/io/InputStreamReader;
    .end local v5           #line:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 678
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static readInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .parameter "inputStream"

    .prologue
    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 686
    .local v1, builder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 688
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 689
    .local v4, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 690
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 691
    .local v3, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 694
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 695
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/InputStreamReader;
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 692
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/InputStreamReader;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 696
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v2

    .line 697
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static final writeDataToFile(Ljava/io/File;Ljava/io/InputStream;)V
    .locals 8
    .parameter "file"
    .parameter "stream"

    .prologue
    .line 338
    if-nez p0, :cond_0

    .line 339
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "file may not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 341
    :cond_0
    if-nez p1, :cond_1

    .line 342
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "stream may not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 344
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 345
    .local v2, dir:Ljava/io/File;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 346
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 348
    :cond_2
    const/4 v4, 0x0

    .line 349
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v6, 0x2000

    new-array v0, v6, [B

    .line 351
    .local v0, buffer:[B
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 352
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 353
    .local v1, bytesRead:I
    :goto_0
    if-gtz v1, :cond_3

    .line 357
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    move-object v4, v5

    .line 363
    .end local v1           #bytesRead:I
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 354
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bytesRead:I
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 355
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    goto :goto_0

    .line 358
    .end local v1           #bytesRead:I
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 359
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 360
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 361
    .local v3, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 360
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 358
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static final writeDataToFile(Ljava/io/File;[B)V
    .locals 6
    .parameter "file"
    .parameter "data"

    .prologue
    .line 308
    if-nez p0, :cond_0

    .line 309
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "file may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 311
    :cond_0
    if-nez p1, :cond_1

    .line 312
    const/4 v4, 0x0

    new-array p1, v4, [B

    .line 314
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 315
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 318
    :cond_2
    const/4 v2, 0x0

    .line 320
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 322
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 326
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 323
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static writeIntoFile(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 3
    .parameter "file"
    .parameter "content"
    .parameter "append"

    .prologue
    .line 640
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 641
    invoke-static {p0}, Lorg/lichsword/util/FileUtil;->ensureParent(Ljava/io/File;)V

    .line 643
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 644
    .local v1, fileWriter:Ljava/io/FileWriter;
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v1           #fileWriter:Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
