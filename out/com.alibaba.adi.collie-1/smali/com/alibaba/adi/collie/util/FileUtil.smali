.class public Lcom/alibaba/adi/collie/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final DIR_STORAGE:Ljava/lang/String; = "storage"

.field public static final TAG:Ljava/lang/String;

.field private static baseUrl:Ljava/lang/String;

.field private static fileDir:Landroid/taobao/filecache/FileDir;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const-class v0, Lcom/alibaba/adi/collie/util/FileUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/util/FileUtil;->TAG:Ljava/lang/String;

    .line 37
    sput-object v1, Lcom/alibaba/adi/collie/util/FileUtil;->fileDir:Landroid/taobao/filecache/FileDir;

    .line 38
    sput-object v1, Lcom/alibaba/adi/collie/util/FileUtil;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanDir(Ljava/io/File;)V
    .locals 1
    .parameter "dir"

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/adi/collie/util/FileUtil;->deleteDir(Ljava/io/File;Z)V

    .line 259
    return-void
.end method

.method public static cleanDir(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1
    .parameter "dir"
    .parameter "filter"

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/alibaba/adi/collie/util/FileUtil;->deleteDir(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 283
    return-void
.end method

.method public static cleanDir(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 1
    .parameter "dir"
    .parameter "filter"

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/alibaba/adi/collie/util/FileUtil;->deleteDir(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 271
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
    .line 292
    .local p1, ignoreFilePathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 293
    .local v1, fileList:[Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 295
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 306
    :cond_0
    return-void

    .line 295
    :cond_1
    aget-object v0, v1, v2

    .line 296
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 295
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .parameter "src"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 187
    .local v4, targetParent:Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 188
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 191
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    .line 192
    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 191
    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 193
    .local v0, bIn:Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 194
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 193
    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 196
    .local v1, bOut:Ljava/io/BufferedOutputStream;
    const/16 v5, 0x400

    new-array v2, v5, [B

    .line 198
    .local v2, buf:[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .local v3, len:I
    if-gtz v3, :cond_1

    .line 201
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 202
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 203
    return-void

    .line 199
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static copyAssetFile(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "am"
    .parameter "assetFile"
    .parameter "toFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 491
    const-string v6, "vliux"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "copyAssetFile  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " start ..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 493
    .local v3, inputStream:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 494
    .local v1, bufferedInputStream:Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 495
    .local v4, outputStream:Ljava/io/OutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 496
    .local v2, bufferedOutputStream:Ljava/io/BufferedOutputStream;
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 497
    .local v0, buffer:[B
    const/4 v5, 0x0

    .line 498
    .local v5, read:I
    :goto_0
    array-length v6, v0

    invoke-virtual {v1, v0, v9, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_0

    .line 501
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 502
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 503
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 504
    const-string v6, "vliux"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "copyAssetFile  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " end"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    return-void

    .line 499
    :cond_0
    invoke-virtual {v2, v0, v9, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 1
    .parameter "dir"

    .prologue
    .line 315
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alibaba/adi/collie/util/FileUtil;->deleteDir(Ljava/io/File;Z)V

    .line 316
    return-void
.end method

.method public static deleteDir(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1
    .parameter "dir"
    .parameter "filter"

    .prologue
    .line 327
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/alibaba/adi/collie/util/FileUtil;->deleteDir(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 328
    return-void
.end method

.method public static deleteDir(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 1
    .parameter "dir"
    .parameter "filter"

    .prologue
    .line 339
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/alibaba/adi/collie/util/FileUtil;->deleteDir(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 340
    return-void
.end method

.method public static deleteDir(Ljava/io/File;Z)V
    .locals 5
    .parameter "dir"
    .parameter "removeDir"

    .prologue
    .line 351
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 353
    .local v1, files:[Ljava/io/File;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 360
    if-eqz p1, :cond_0

    .line 361
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 364
    .end local v1           #files:[Ljava/io/File;
    :cond_0
    return-void

    .line 353
    .restart local v1       #files:[Ljava/io/File;
    :cond_1
    aget-object v0, v1, v2

    .line 354
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/util/FileUtil;->deleteDir(Ljava/io/File;Z)V

    .line 353
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
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
    .line 378
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 380
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 381
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 389
    :cond_0
    if-eqz p1, :cond_1

    .line 390
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 393
    .end local v1           #files:[Ljava/io/File;
    :cond_1
    return-void

    .line 381
    .restart local v1       #files:[Ljava/io/File;
    :cond_2
    aget-object v0, v1, v2

    .line 382
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 383
    invoke-static {v0, p1, p2}, Lcom/alibaba/adi/collie/util/FileUtil;->deleteDir(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 381
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
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
    .line 407
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 409
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 410
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 418
    :cond_0
    if-eqz p1, :cond_1

    .line 419
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 422
    .end local v1           #files:[Ljava/io/File;
    :cond_1
    return-void

    .line 410
    .restart local v1       #files:[Ljava/io/File;
    :cond_2
    aget-object v0, v1, v2

    .line 411
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 412
    invoke-static {v0, p1, p2}, Lcom/alibaba/adi/collie/util/FileUtil;->deleteDir(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 410
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, success:Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 240
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 243
    const/4 v1, 0x1

    .line 248
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return v1

    .line 245
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static ensureDir(Ljava/lang/String;)Z
    .locals 2
    .parameter "dirPath"

    .prologue
    .line 212
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 216
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getBaseUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    sget-object v1, Lcom/alibaba/adi/collie/util/FileUtil;->baseUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Lcom/alibaba/adi/collie/util/FileUtil;->baseUrl:Ljava/lang/String;

    .line 56
    .local v0, e:Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 44
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-class v2, Lcom/alibaba/adi/collie/util/FileUtil;

    monitor-enter v2

    .line 45
    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/util/FileUtil;->baseUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 46
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    if-eqz v1, :cond_1

    .line 47
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/CoreApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    .line 48
    :cond_1
    sget-object v1, Lcom/alibaba/adi/collie/util/FileUtil;->baseUrl:Ljava/lang/String;

    monitor-exit v2

    goto :goto_0

    .line 44
    .restart local v0       #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/CoreApplication;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "storage"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/adi/collie/util/FileUtil;->baseUrl:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    sget-object v1, Lcom/alibaba/adi/collie/util/FileUtil;->baseUrl:Ljava/lang/String;

    goto :goto_0

    .line 52
    .end local v0           #e:Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 53
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_3
    sget-object v1, Lcom/alibaba/adi/collie/util/FileUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private static getFileCache(Ljava/lang/String;)Landroid/taobao/filecache/FileDir;
    .locals 4
    .parameter "group"

    .prologue
    .line 118
    sget-object v0, Lcom/alibaba/adi/collie/util/FileUtil;->fileDir:Landroid/taobao/filecache/FileDir;

    if-nez v0, :cond_1

    .line 119
    const-class v1, Lcom/alibaba/adi/collie/util/FileUtil;

    monitor-enter v1

    .line 120
    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/util/FileUtil;->fileDir:Landroid/taobao/filecache/FileDir;

    if-nez v0, :cond_0

    .line 121
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/taobao/filecache/FileCache;->getFileDirInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/FileDir;

    move-result-object v0

    .line 121
    sput-object v0, Lcom/alibaba/adi/collie/util/FileUtil;->fileDir:Landroid/taobao/filecache/FileDir;

    .line 123
    sget-object v0, Lcom/alibaba/adi/collie/util/FileUtil;->fileDir:Landroid/taobao/filecache/FileDir;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/taobao/filecache/FileDir;->init(Ljava/util/Comparator;Landroid/taobao/filecache/FileInfoCreator;)Z

    .line 124
    sget-object v0, Lcom/alibaba/adi/collie/util/FileUtil;->fileDir:Landroid/taobao/filecache/FileDir;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/taobao/filecache/FileDir;->enableNoSpaceClear(Z)V

    .line 119
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_1
    const-string v0, "xhh"

    sget-object v1, Lcom/alibaba/adi/collie/util/FileUtil;->fileDir:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v1}, Landroid/taobao/filecache/FileDir;->getDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/alibaba/adi/collie/util/FileUtil;->fileDir:Landroid/taobao/filecache/FileDir;

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getFileNameWithExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 508
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 509
    :cond_0
    const/4 p0, 0x0

    .line 516
    .end local p0
    .local v0, pathes:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 511
    .end local v0           #pathes:[Ljava/lang/String;
    .restart local p0
    :cond_2
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 512
    .restart local v0       #pathes:[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_1

    .line 513
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, v0, v1

    goto :goto_0
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"

    .prologue
    .line 521
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/FileUtil;->getFileNameWithExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, fileNameWithExt:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 523
    const-string v4, "\\."

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, subNames:[Ljava/lang/String;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_1

    .line 529
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    .end local v0           #fileNameWithExt:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .end local v3           #subNames:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 527
    .restart local v0       #fileNameWithExt:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    .restart local v3       #subNames:[Ljava/lang/String;
    :cond_1
    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    .end local v1           #i:I
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .end local v3           #subNames:[Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"

    .prologue
    .line 226
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static readAssetFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v6, 0x3e8

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 553
    .local v1, fileData:Ljava/lang/StringBuffer;
    sget-object v6, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/CoreApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 554
    .local v2, is:Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 555
    .local v5, reader:Ljava/io/BufferedReader;
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 556
    .local v0, buf:[C
    const/4 v3, 0x0

    .line 557
    .local v3, numRead:I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    .line 561
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 562
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 563
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 558
    :cond_0
    const/4 v6, 0x0

    invoke-static {v0, v6, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, readData:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v5, 0x3e8

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 540
    .local v1, fileData:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 541
    .local v4, reader:Ljava/io/BufferedReader;
    const/16 v5, 0x400

    new-array v0, v5, [C

    .line 542
    .local v0, buf:[C
    const/4 v2, 0x0

    .line 543
    .local v2, numRead:I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 547
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 548
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 544
    :cond_0
    const/4 v5, 0x0

    invoke-static {v0, v5, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, readData:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static readStorage(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "fileName"

    .prologue
    .line 61
    const-string v5, ""

    .line 62
    .local v5, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/alibaba/adi/collie/util/FileUtil;->getBaseUrl()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    move-object v6, v5

    .line 79
    .end local v5           #result:Ljava/lang/String;
    .local v6, result:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 65
    .end local v6           #result:Ljava/lang/String;
    .restart local v5       #result:Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/adi/collie/util/FileUtil;->getBaseUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 67
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v2, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v3, inputStream:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 70
    .local v4, length:I
    new-array v0, v4, [B

    .line 71
    .local v0, buffer:[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 72
    const-string v7, "UTF-8"

    invoke-static {v0, v7}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0           #buffer:[B
    .end local v2           #file:Ljava/io/File;
    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .end local v4           #length:I
    :goto_1
    move-object v6, v5

    .line 79
    .end local v5           #result:Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v6           #result:Ljava/lang/String;
    .restart local v5       #result:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 76
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 77
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static final writeDataToFile(Ljava/io/File;Ljava/io/InputStream;)V
    .locals 8
    .parameter "file"
    .parameter "stream"

    .prologue
    .line 463
    if-nez p0, :cond_0

    .line 464
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "file may not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 466
    :cond_0
    if-nez p1, :cond_1

    .line 467
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "stream may not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 469
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 470
    .local v2, dir:Ljava/io/File;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 471
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 473
    :cond_2
    const/4 v4, 0x0

    .line 474
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v6, 0x2000

    new-array v0, v6, [B

    .line 476
    .local v0, buffer:[B
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 477
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 478
    .local v1, bytesRead:I
    :goto_0
    if-gtz v1, :cond_3

    .line 482
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    move-object v4, v5

    .line 488
    .end local v1           #bytesRead:I
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 479
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bytesRead:I
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 480
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    goto :goto_0

    .line 483
    .end local v1           #bytesRead:I
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 484
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 485
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 486
    .local v3, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 485
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 483
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
    .line 433
    if-nez p0, :cond_0

    .line 434
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "file may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 436
    :cond_0
    if-nez p1, :cond_1

    .line 437
    const/4 v4, 0x0

    new-array p1, v4, [B

    .line 439
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 440
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 441
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 443
    :cond_2
    const/4 v2, 0x0

    .line 445
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 447
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 451
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v1

    .line 449
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 448
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

.method public static writeStorage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"
    .parameter "content"

    .prologue
    .line 84
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/adi/collie/util/FileUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/adi/collie/util/FileUtil$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    return-void
.end method

.method public static writeStorageSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "fileName"
    .parameter "content"

    .prologue
    .line 93
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/alibaba/adi/collie/util/FileUtil;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/adi/collie/util/FileUtil;->getBaseUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 101
    .local v1, dir:Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 104
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 105
    .local v4, outputStream:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 106
    .local v0, bytes:[B
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 107
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 108
    .end local v0           #bytes:[B
    .end local v1           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 109
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 111
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
