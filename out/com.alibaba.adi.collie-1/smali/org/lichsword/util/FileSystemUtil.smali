.class public final Lorg/lichsword/util/FileSystemUtil;
.super Ljava/lang/Object;
.source "FileSystemUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lichsword/util/FileSystemUtil$DiskInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/lichsword/util/FileSystemUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/lichsword/util/FileSystemUtil;->TAG:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static final appContentToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .parameter "file"
    .parameter "content"

    .prologue
    .line 288
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 289
    .local v1, writer:Ljava/io/FileWriter;
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v1           #writer:Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static cleanDir(Ljava/io/File;)V
    .locals 1
    .parameter "dir"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/lichsword/util/FileSystemUtil;->deleteDir(Ljava/io/File;Z)V

    .line 98
    return-void
.end method

.method public static cleanDir(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1
    .parameter "dir"
    .parameter "filter"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/lichsword/util/FileSystemUtil;->deleteDir(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 122
    return-void
.end method

.method public static cleanDir(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 1
    .parameter "dir"
    .parameter "filter"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/lichsword/util/FileSystemUtil;->deleteDir(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 110
    return-void
.end method

.method public static computeFolderSize(Ljava/io/File;)J
    .locals 7
    .parameter "dir"

    .prologue
    .line 577
    if-nez p0, :cond_1

    .line 578
    const-wide/16 v0, 0x0

    .line 593
    :cond_0
    return-wide v0

    .line 580
    :cond_1
    const-wide/16 v0, 0x0

    .line 581
    .local v0, dirSize:J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 582
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 583
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 584
    aget-object v2, v3, v4

    .line 585
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 586
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 583
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 587
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 588
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 589
    invoke-static {v2}, Lorg/lichsword/util/FileSystemUtil;->computeFolderSize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_1
.end method

.method public static final copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 351
    if-nez p0, :cond_0

    .line 352
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "srcFile may not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 354
    :cond_0
    if-nez p1, :cond_1

    .line 355
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "destFile may not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 357
    :cond_1
    const/4 v3, 0x0

    .line 358
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 360
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 361
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 362
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    const/16 v7, 0x2000

    :try_start_2
    new-array v0, v7, [B

    .line 363
    .local v0, buffer:[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v1

    .line 364
    .local v1, bytesRead:I
    :goto_0
    if-gtz v1, :cond_2

    .line 373
    invoke-static {v4}, Lorg/lichsword/util/FileSystemUtil;->quietClose(Ljava/io/Closeable;)V

    .line 374
    invoke-static {v6}, Lorg/lichsword/util/FileSystemUtil;->quietClose(Ljava/io/Closeable;)V

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 376
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_1
    return-void

    .line 365
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 366
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    goto :goto_0

    .line 368
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 369
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 373
    invoke-static {v3}, Lorg/lichsword/util/FileSystemUtil;->quietClose(Ljava/io/Closeable;)V

    .line 374
    invoke-static {v5}, Lorg/lichsword/util/FileSystemUtil;->quietClose(Ljava/io/Closeable;)V

    goto :goto_1

    .line 370
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 371
    .local v2, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 373
    invoke-static {v3}, Lorg/lichsword/util/FileSystemUtil;->quietClose(Ljava/io/Closeable;)V

    .line 374
    invoke-static {v5}, Lorg/lichsword/util/FileSystemUtil;->quietClose(Ljava/io/Closeable;)V

    goto :goto_1

    .line 372
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 373
    :goto_4
    invoke-static {v3}, Lorg/lichsword/util/FileSystemUtil;->quietClose(Ljava/io/Closeable;)V

    .line 374
    invoke-static {v5}, Lorg/lichsword/util/FileSystemUtil;->quietClose(Ljava/io/Closeable;)V

    .line 375
    throw v7

    .line 372
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_4

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
    goto :goto_4

    .line 370
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 368
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 1
    .parameter "dir"

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/lichsword/util/FileSystemUtil;->deleteDir(Ljava/io/File;Z)V

    .line 132
    return-void
.end method

.method public static deleteDir(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1
    .parameter "dir"
    .parameter "filter"

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/lichsword/util/FileSystemUtil;->deleteDir(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 144
    return-void
.end method

.method public static deleteDir(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 1
    .parameter "dir"
    .parameter "filter"

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/lichsword/util/FileSystemUtil;->deleteDir(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 156
    return-void
.end method

.method public static deleteDir(Ljava/io/File;Z)V
    .locals 5
    .parameter "dir"
    .parameter "removeDir"

    .prologue
    .line 167
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 169
    .local v1, files:[Ljava/io/File;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 180
    .end local v1           #files:[Ljava/io/File;
    :cond_0
    return-void

    .line 169
    .restart local v1       #files:[Ljava/io/File;
    :cond_1
    aget-object v0, v1, v2

    .line 170
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    invoke-static {v0, p1}, Lorg/lichsword/util/FileSystemUtil;->deleteDir(Ljava/io/File;Z)V

    .line 169
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
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
    .line 194
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 196
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 197
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 205
    :cond_0
    if-eqz p1, :cond_1

    .line 206
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 209
    .end local v1           #files:[Ljava/io/File;
    :cond_1
    return-void

    .line 197
    .restart local v1       #files:[Ljava/io/File;
    :cond_2
    aget-object v0, v1, v2

    .line 198
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 199
    invoke-static {v0, p1, p2}, Lorg/lichsword/util/FileSystemUtil;->deleteDir(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 197
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
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
    .line 223
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 225
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 226
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 234
    :cond_0
    if-eqz p1, :cond_1

    .line 235
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 238
    .end local v1           #files:[Ljava/io/File;
    :cond_1
    return-void

    .line 226
    .restart local v1       #files:[Ljava/io/File;
    :cond_2
    aget-object v0, v1, v2

    .line 227
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 228
    invoke-static {v0, p1, p2}, Lorg/lichsword/util/FileSystemUtil;->deleteDir(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 226
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileAbsolutePath"

    .prologue
    .line 241
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public static getDiskFreeSize(Ljava/lang/String;)J
    .locals 9
    .parameter "diskPath"

    .prologue
    .line 454
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 455
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v0, v8

    .line 456
    .local v0, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v3, v8

    .line 457
    .local v3, freeBlocks:J
    mul-long v6, v0, v3

    .line 460
    .end local v0           #blockSize:J
    .end local v3           #freeBlocks:J
    .end local v5           #stat:Landroid/os/StatFs;
    :goto_0
    return-wide v6

    .line 459
    :catch_0
    move-exception v2

    .line 460
    .local v2, e:Ljava/lang/Throwable;
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public static getDiskTotalSize(Ljava/lang/String;)J
    .locals 9
    .parameter "diskPath"

    .prologue
    .line 435
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 436
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v0, v8

    .line 437
    .local v0, blockSize:J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v4, v8

    .line 438
    .local v4, totalBlocks:J
    mul-long v6, v0, v4

    .line 441
    .end local v0           #blockSize:J
    .end local v3           #stat:Landroid/os/StatFs;
    .end local v4           #totalBlocks:J
    :goto_0
    return-wide v6

    .line 440
    :catch_0
    move-exception v2

    .line 441
    .local v2, e:Ljava/lang/Throwable;
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public static getDisks()[Lorg/lichsword/util/FileSystemUtil$DiskInfo;
    .locals 10

    .prologue
    .line 471
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 472
    .local v7, runtime:Ljava/lang/Runtime;
    const-string v9, "df"

    invoke-virtual {v7, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 473
    .local v5, process:Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 474
    .local v8, stdout:Ljava/io/InputStream;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v0, disks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/lichsword/util/FileSystemUtil$DiskInfo;>;"
    if-eqz v8, :cond_0

    .line 476
    new-instance v6, Ljava/io/BufferedReader;

    .line 477
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 476
    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 478
    .local v6, reader:Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, line:Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    .line 491
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 493
    .end local v2           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lorg/lichsword/util/FileSystemUtil$DiskInfo;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/lichsword/util/FileSystemUtil$DiskInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 497
    .end local v0           #disks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/lichsword/util/FileSystemUtil$DiskInfo;>;"
    .end local v5           #process:Ljava/lang/Process;
    .end local v8           #stdout:Ljava/io/InputStream;
    :goto_1
    return-object v9

    .line 481
    .restart local v0       #disks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/lichsword/util/FileSystemUtil$DiskInfo;>;"
    .restart local v2       #line:Ljava/lang/String;
    .restart local v5       #process:Ljava/lang/Process;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .restart local v8       #stdout:Ljava/io/InputStream;
    :cond_1
    const/16 v9, 0x3a

    :try_start_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 482
    .local v4, pathEnd:I
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, path:Ljava/lang/String;
    new-instance v9, Lorg/lichsword/util/FileSystemUtil$DiskInfo;

    invoke-direct {v9, v3}, Lorg/lichsword/util/FileSystemUtil$DiskInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 489
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #pathEnd:I
    :goto_2
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 484
    :catch_0
    move-exception v1

    .line 487
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 494
    .end local v0           #disks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/lichsword/util/FileSystemUtil$DiskInfo;>;"
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #line:Ljava/lang/String;
    .end local v5           #process:Ljava/lang/Process;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v8           #stdout:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 496
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 497
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter "file"

    .prologue
    .line 556
    if-nez p0, :cond_0

    .line 557
    const/4 v0, 0x0

    .line 567
    :goto_0
    return-object v0

    .line 559
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, fileName:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 562
    .local v2, index:I
    if-ltz v2, :cond_1

    .line 563
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, extension:Ljava/lang/String;
    goto :goto_0

    .line 565
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
    .line 542
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    const/4 v0, 0x0

    .line 545
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/lichsword/util/FileSystemUtil;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter "file"

    .prologue
    .line 523
    if-nez p0, :cond_1

    .line 524
    const/4 v0, 0x0

    .line 531
    :cond_0
    :goto_0
    return-object v0

    .line 526
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, fileName:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 528
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 529
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 509
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    const/4 v0, 0x0

    .line 512
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/lichsword/util/FileSystemUtil;->getFileNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final moveFile(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 401
    if-nez p0, :cond_0

    .line 402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "srcFile may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    if-nez p1, :cond_1

    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "destFile may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 408
    return-void
.end method

.method public static final moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "srcFilePath"
    .parameter "destFilePath"

    .prologue
    .line 389
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/lichsword/util/FileSystemUtil;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 390
    return-void
.end method

.method public static final quietClose(Ljava/io/Closeable;)V
    .locals 1
    .parameter "closeable"

    .prologue
    .line 417
    if-eqz p0, :cond_0

    .line 419
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static readFileAsString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter "inputStream"

    .prologue
    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .local v1, builder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 607
    const/16 v3, 0x80

    new-array v0, v3, [B

    .line 609
    .local v0, buffer:[B
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 616
    .end local v0           #buffer:[B
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 610
    .restart local v0       #buffer:[B
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v2

    .line 613
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static final renameFile(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 384
    invoke-static {p0, p1}, Lorg/lichsword/util/FileSystemUtil;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 385
    return-void
.end method

.method public static final renameFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "srcFilePath"
    .parameter "destFilePath"

    .prologue
    .line 380
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/lichsword/util/FileSystemUtil;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 381
    return-void
.end method

.method public static final writeDataToFile(Ljava/io/File;Ljava/io/InputStream;)V
    .locals 8
    .parameter "file"
    .parameter "stream"

    .prologue
    .line 306
    if-nez p0, :cond_0

    .line 307
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "file may not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 309
    :cond_0
    if-nez p1, :cond_1

    .line 310
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "stream may not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 312
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 313
    .local v2, dir:Ljava/io/File;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 314
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 316
    :cond_2
    const/4 v4, 0x0

    .line 317
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v6, 0x2000

    new-array v0, v6, [B

    .line 319
    .local v0, buffer:[B
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 320
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 321
    .local v1, bytesRead:I
    :goto_0
    if-gtz v1, :cond_3

    .line 338
    invoke-static {v5}, Lorg/lichsword/util/HttpClient;->quietClose(Ljava/io/Closeable;)V

    move-object v4, v5

    .line 340
    .end local v1           #bytesRead:I
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 322
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bytesRead:I
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :cond_3
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v5, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 323
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    goto :goto_0

    .line 325
    .end local v1           #bytesRead:I
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 330
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    invoke-static {v4}, Lorg/lichsword/util/HttpClient;->quietClose(Ljava/io/Closeable;)V

    goto :goto_1

    .line 331
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 336
    .local v3, e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 338
    invoke-static {v4}, Lorg/lichsword/util/HttpClient;->quietClose(Ljava/io/Closeable;)V

    goto :goto_1

    .line 337
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 338
    :goto_4
    invoke-static {v4}, Lorg/lichsword/util/HttpClient;->quietClose(Ljava/io/Closeable;)V

    .line 339
    throw v6

    .line 337
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 331
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 325
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
    .line 254
    if-nez p0, :cond_0

    .line 255
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "file may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 257
    :cond_0
    if-nez p1, :cond_1

    .line 258
    const/4 v4, 0x0

    new-array p1, v4, [B

    .line 260
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 261
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 264
    :cond_2
    const/4 v2, 0x0

    .line 266
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 280
    invoke-static {v3}, Lorg/lichsword/util/HttpClient;->quietClose(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 282
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v1

    .line 273
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    invoke-static {v2}, Lorg/lichsword/util/HttpClient;->quietClose(Ljava/io/Closeable;)V

    goto :goto_0

    .line 274
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 278
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    invoke-static {v2}, Lorg/lichsword/util/HttpClient;->quietClose(Ljava/io/Closeable;)V

    goto :goto_0

    .line 279
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 280
    :goto_3
    invoke-static {v2}, Lorg/lichsword/util/HttpClient;->quietClose(Ljava/io/Closeable;)V

    .line 281
    throw v4

    .line 279
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 274
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 268
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
