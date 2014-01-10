.class public Landroid/taobao/filecache/FileBufferPool;
.super Ljava/lang/Object;
.source "FileBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;
    }
.end annotation


# static fields
.field private static BLOCK_SIZE:I

.field private static PHONE_MAX_CAPACITY:I

.field private static SD_MAX_CAPACITY:I


# instance fields
.field private blockSize:I

.field private fIn:Ljava/io/FileInputStream;

.field private fOs:Ljava/io/RandomAccessFile;

.field private fileChannel:Ljava/nio/channels/FileChannel;

.field private fileName:Ljava/lang/String;

.field private init:Z

.field private isInSdcard:Z

.field private maxCapacity:I

.field private readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private stateMgr:Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;

.field private storedPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/taobao/filecache/FileBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/high16 v0, 0xa0

    sput v0, Landroid/taobao/filecache/FileBufferPool;->SD_MAX_CAPACITY:I

    .line 23
    const/high16 v0, 0x50

    sput v0, Landroid/taobao/filecache/FileBufferPool;->PHONE_MAX_CAPACITY:I

    .line 25
    const/16 v0, 0x100

    sput v0, Landroid/taobao/filecache/FileBufferPool;->BLOCK_SIZE:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "fileName"
    .parameter "sdcard"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/filecache/FileBufferPool;->init:Z

    .line 41
    iput-object p1, p0, Landroid/taobao/filecache/FileBufferPool;->fileName:Ljava/lang/String;

    .line 42
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/taobao/filecache/FileBufferPool;->isInSdcard:Z

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 44
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 7

    .prologue
    .line 159
    iget-boolean v4, p0, Landroid/taobao/filecache/FileBufferPool;->init:Z

    if-eqz v4, :cond_1

    .line 160
    iget-object v4, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 163
    :try_start_0
    iget-object v4, p0, Landroid/taobao/filecache/FileBufferPool;->storedPool:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 164
    .local v1, buffers:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 165
    aget-object v0, v1, v3

    check-cast v0, Landroid/taobao/filecache/FileBuffer;

    .line 166
    .local v0, buffer:Landroid/taobao/filecache/FileBuffer;
    invoke-virtual {p0, v0}, Landroid/taobao/filecache/FileBufferPool;->ffree(Landroid/taobao/filecache/FileBuffer;)V

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v0           #buffer:Landroid/taobao/filecache/FileBuffer;
    :cond_0
    iget-object v4, p0, Landroid/taobao/filecache/FileBufferPool;->storedPool:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :try_start_1
    iget-object v4, p0, Landroid/taobao/filecache/FileBufferPool;->fileChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    :goto_1
    iget-object v4, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 180
    .end local v1           #buffers:[Ljava/lang/Object;
    .end local v3           #i:I
    :cond_1
    return-void

    .line 172
    .restart local v1       #buffers:[Ljava/lang/Object;
    .restart local v3       #i:I
    :catch_0
    move-exception v2

    .line 174
    .local v2, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 177
    .end local v1           #buffers:[Ljava/lang/Object;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    iget-object v5, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v4
.end method

.method public erase(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-boolean v2, p0, Landroid/taobao/filecache/FileBufferPool;->init:Z

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 141
    :try_start_0
    iget-object v2, p0, Landroid/taobao/filecache/FileBufferPool;->storedPool:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    iget-object v1, p0, Landroid/taobao/filecache/FileBufferPool;->storedPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/filecache/FileBuffer;

    .line 143
    .local v0, buffer:Landroid/taobao/filecache/FileBuffer;
    iget-object v1, p0, Landroid/taobao/filecache/FileBufferPool;->storedPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p0, v0}, Landroid/taobao/filecache/FileBufferPool;->ffree(Landroid/taobao/filecache/FileBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    const/4 v1, 0x1

    .line 149
    iget-object v2, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 152
    .end local v0           #buffer:Landroid/taobao/filecache/FileBuffer;
    :cond_0
    :goto_0
    return v1

    .line 149
    :cond_1
    iget-object v2, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method protected falloc(I)Landroid/taobao/filecache/FileBuffer;
    .locals 9
    .parameter "size"

    .prologue
    const/4 v5, 0x0

    .line 283
    iget-boolean v6, p0, Landroid/taobao/filecache/FileBufferPool;->init:Z

    if-eqz v6, :cond_5

    .line 284
    const-string v6, "FilePool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "falloc:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget v6, p0, Landroid/taobao/filecache/FileBufferPool;->maxCapacity:I

    if-le p1, v6, :cond_0

    .line 316
    :goto_0
    return-object v5

    .line 288
    :cond_0
    iget v6, p0, Landroid/taobao/filecache/FileBufferPool;->blockSize:I

    div-int v0, p1, v6

    .line 289
    .local v0, blockNum:I
    iget v6, p0, Landroid/taobao/filecache/FileBufferPool;->blockSize:I

    rem-int v6, p1, v6

    if-eqz v6, :cond_1

    .line 290
    add-int/lit8 v0, v0, 0x1

    .line 292
    :cond_1
    new-array v1, v0, [I

    .line 293
    .local v1, blockOffset:[I
    iget-object v6, p0, Landroid/taobao/filecache/FileBufferPool;->stateMgr:Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;

    invoke-virtual {v6}, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->getBlockNum()I

    move-result v4

    .line 294
    .local v4, maxBlockNum:I
    const/4 v3, 0x0

    .line 296
    .local v3, j:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 297
    iget-object v6, p0, Landroid/taobao/filecache/FileBufferPool;->stateMgr:Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;

    invoke-virtual {v6, v2}, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->getBlockState(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 298
    const-string v6, "FilePool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "block index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget v6, p0, Landroid/taobao/filecache/FileBufferPool;->blockSize:I

    mul-int/2addr v6, v2

    aput v6, v1, v3

    .line 300
    add-int/lit8 v3, v3, 0x1

    .line 302
    array-length v6, v1

    if-ne v3, v6, :cond_3

    .line 307
    :cond_2
    array-length v6, v1

    if-ne v3, v6, :cond_5

    .line 308
    const-string v5, "FilePool"

    const-string v6, "falloc success"

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v2, 0x0

    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_4

    .line 311
    iget-object v5, p0, Landroid/taobao/filecache/FileBufferPool;->stateMgr:Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;

    const/4 v6, 0x0

    aget v7, v1, v2

    iget v8, p0, Landroid/taobao/filecache/FileBufferPool;->blockSize:I

    div-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->setBlockState(ZI)V

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 296
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 312
    :cond_4
    new-instance v5, Landroid/taobao/filecache/FileBuffer;

    iget v6, p0, Landroid/taobao/filecache/FileBufferPool;->blockSize:I

    iget-object v7, p0, Landroid/taobao/filecache/FileBufferPool;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-direct {v5, v1, v6, v7}, Landroid/taobao/filecache/FileBuffer;-><init>([IILjava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 315
    .end local v0           #blockNum:I
    .end local v1           #blockOffset:[I
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #maxBlockNum:I
    :cond_5
    const-string v6, "FilePool"

    const-string v7, "falloc failed"

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected ffree(Landroid/taobao/filecache/FileBuffer;)V
    .locals 6
    .parameter "buffer"

    .prologue
    .line 323
    iget-boolean v2, p0, Landroid/taobao/filecache/FileBufferPool;->init:Z

    if-eqz v2, :cond_0

    .line 325
    const-string v2, "FilePool"

    const-string v3, "ffree start"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Landroid/taobao/filecache/FileBuffer;->getFileChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iget-object v3, p0, Landroid/taobao/filecache/FileBufferPool;->fileChannel:Ljava/nio/channels/FileChannel;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/taobao/filecache/FileBuffer;->getBlockLen()I

    move-result v2

    iget v3, p0, Landroid/taobao/filecache/FileBufferPool;->blockSize:I

    if-eq v2, v3, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-virtual {p1}, Landroid/taobao/filecache/FileBuffer;->getBlockOffset()[I

    move-result-object v0

    .line 330
    .local v0, blockOffset:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 331
    const-string v2, "FilePool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "block index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    iget v5, p0, Landroid/taobao/filecache/FileBufferPool;->blockSize:I

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Landroid/taobao/filecache/FileBufferPool;->stateMgr:Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;

    const/4 v3, 0x1

    aget v4, v0, v1

    iget v5, p0, Landroid/taobao/filecache/FileBufferPool;->blockSize:I

    div-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->setBlockState(ZI)V

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 334
    :cond_2
    invoke-virtual {p1}, Landroid/taobao/filecache/FileBuffer;->invalidate()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v1, p0, Landroid/taobao/filecache/FileBufferPool;->fOs:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 254
    :try_start_0
    iget-object v1, p0, Landroid/taobao/filecache/FileBufferPool;->fOs:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/taobao/filecache/FileBufferPool;->fileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_1

    .line 260
    :try_start_1
    iget-object v1, p0, Landroid/taobao/filecache/FileBufferPool;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/taobao/filecache/FileBufferPool;->fIn:Ljava/io/FileInputStream;

    if-eqz v1, :cond_2

    .line 266
    :try_start_2
    iget-object v1, p0, Landroid/taobao/filecache/FileBufferPool;->fIn:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 276
    :cond_2
    :goto_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 277
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 261
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 262
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 267
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 268
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public declared-synchronized init(II)Z
    .locals 8
    .parameter "maxCapacity"
    .parameter "blockSize"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Landroid/taobao/filecache/FileBufferPool;->init:Z

    if-nez v5, :cond_1

    .line 184
    const-string v5, "FilePool"

    const-string v6, "init start"

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Landroid/taobao/filecache/FileBufferPool;->fileName:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, cacheFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 187
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/taobao/filecache/FileBufferPool;->storedPool:Ljava/util/HashMap;

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 191
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    :cond_0
    :try_start_2
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "rw"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Landroid/taobao/filecache/FileBufferPool;->fOs:Ljava/io/RandomAccessFile;

    .line 211
    iget-object v5, p0, Landroid/taobao/filecache/FileBufferPool;->fOs:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    iput-object v5, p0, Landroid/taobao/filecache/FileBufferPool;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 212
    iget-object v5, p0, Landroid/taobao/filecache/FileBufferPool;->fileChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 223
    :goto_0
    if-nez p1, :cond_3

    .line 224
    :try_start_3
    iget-boolean v3, p0, Landroid/taobao/filecache/FileBufferPool;->isInSdcard:Z

    if-eqz v3, :cond_2

    .line 225
    sget v3, Landroid/taobao/filecache/FileBufferPool;->SD_MAX_CAPACITY:I

    iput v3, p0, Landroid/taobao/filecache/FileBufferPool;->maxCapacity:I

    .line 232
    :goto_1
    if-nez p2, :cond_4

    .line 233
    sget v3, Landroid/taobao/filecache/FileBufferPool;->BLOCK_SIZE:I

    iput v3, p0, Landroid/taobao/filecache/FileBufferPool;->blockSize:I

    .line 238
    :goto_2
    new-instance v3, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;

    div-int v5, p1, p2

    invoke-direct {v3, p0, v5}, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;-><init>(Landroid/taobao/filecache/FileBufferPool;I)V

    iput-object v3, p0, Landroid/taobao/filecache/FileBufferPool;->stateMgr:Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;

    .line 240
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/taobao/filecache/FileBufferPool;->init:Z

    .line 241
    const-string v3, "FilePool"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init finsh,blockSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/taobao/filecache/FileBufferPool;->blockSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";capacity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/taobao/filecache/FileBufferPool;->maxCapacity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0           #cacheFile:Ljava/io/File;
    :cond_1
    move v3, v4

    .line 243
    :goto_3
    monitor-exit p0

    return v3

    .line 192
    .restart local v0       #cacheFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 194
    .local v2, e1:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 183
    .end local v0           #cacheFile:Ljava/io/File;
    .end local v2           #e1:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 213
    .restart local v0       #cacheFile:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 215
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 217
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 219
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    sget v3, Landroid/taobao/filecache/FileBufferPool;->PHONE_MAX_CAPACITY:I

    iput v3, p0, Landroid/taobao/filecache/FileBufferPool;->maxCapacity:I

    goto :goto_1

    .line 229
    :cond_3
    iput p1, p0, Landroid/taobao/filecache/FileBufferPool;->maxCapacity:I

    goto :goto_1

    .line 235
    :cond_4
    iput p2, p0, Landroid/taobao/filecache/FileBufferPool;->blockSize:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public isInSdcard()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/taobao/filecache/FileBufferPool;->isInSdcard:Z

    return v0
.end method

.method public read(Ljava/lang/String;)[B
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-boolean v2, p0, Landroid/taobao/filecache/FileBufferPool;->init:Z

    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 57
    :try_start_0
    iget-object v2, p0, Landroid/taobao/filecache/FileBufferPool;->storedPool:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    iget-object v1, p0, Landroid/taobao/filecache/FileBufferPool;->storedPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/filecache/FileBuffer;

    .line 60
    .local v0, buffer:Landroid/taobao/filecache/FileBuffer;
    invoke-virtual {v0}, Landroid/taobao/filecache/FileBuffer;->read()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 64
    iget-object v2, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 67
    .end local v0           #buffer:Landroid/taobao/filecache/FileBuffer;
    :cond_0
    :goto_0
    return-object v1

    .line 64
    :cond_1
    iget-object v2, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public write(Ljava/lang/String;[B)Z
    .locals 7
    .parameter "key"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 75
    iget-boolean v5, p0, Landroid/taobao/filecache/FileBufferPool;->init:Z

    if-eqz v5, :cond_6

    .line 76
    iget-object v5, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 79
    :try_start_0
    iget-object v5, p0, Landroid/taobao/filecache/FileBufferPool;->storedPool:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    iget-object v5, p0, Landroid/taobao/filecache/FileBufferPool;->storedPool:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/filecache/FileBuffer;

    .line 82
    .local v0, buffer:Landroid/taobao/filecache/FileBuffer;
    invoke-virtual {v0}, Landroid/taobao/filecache/FileBuffer;->capacity()I

    move-result v5

    array-length v6, p2

    if-lt v5, v6, :cond_0

    .line 83
    invoke-virtual {v0, p2}, Landroid/taobao/filecache/FileBuffer;->write([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/taobao/filecache/FileBuffer$OverFlowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 131
    iget-object v4, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 134
    .end local v0           #buffer:Landroid/taobao/filecache/FileBuffer;
    :goto_0
    return v3

    .line 86
    .restart local v0       #buffer:Landroid/taobao/filecache/FileBuffer;
    :cond_0
    :try_start_1
    array-length v5, p2

    invoke-virtual {p0, v5}, Landroid/taobao/filecache/FileBufferPool;->falloc(I)Landroid/taobao/filecache/FileBuffer;

    move-result-object v1

    .line 88
    .local v1, buffer1:Landroid/taobao/filecache/FileBuffer;
    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v1, p2}, Landroid/taobao/filecache/FileBuffer;->write([B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 92
    invoke-virtual {p0, v0}, Landroid/taobao/filecache/FileBufferPool;->ffree(Landroid/taobao/filecache/FileBuffer;)V

    .line 94
    iget-object v5, p0, Landroid/taobao/filecache/FileBufferPool;->storedPool:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/taobao/filecache/FileBuffer$OverFlowException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    iget-object v4, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 99
    :cond_1
    :try_start_2
    invoke-virtual {p0, v1}, Landroid/taobao/filecache/FileBufferPool;->ffree(Landroid/taobao/filecache/FileBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/taobao/filecache/FileBuffer$OverFlowException; {:try_start_2 .. :try_end_2} :catch_0

    .line 131
    iget-object v3, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move v3, v4

    goto :goto_0

    .line 108
    .end local v0           #buffer:Landroid/taobao/filecache/FileBuffer;
    .end local v1           #buffer1:Landroid/taobao/filecache/FileBuffer;
    :cond_3
    :try_start_3
    array-length v5, p2

    invoke-virtual {p0, v5}, Landroid/taobao/filecache/FileBufferPool;->falloc(I)Landroid/taobao/filecache/FileBuffer;

    move-result-object v0

    .line 110
    .restart local v0       #buffer:Landroid/taobao/filecache/FileBuffer;
    if-eqz v0, :cond_5

    .line 111
    invoke-virtual {v0, p2}, Landroid/taobao/filecache/FileBuffer;->write([B)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 114
    iget-object v5, p0, Landroid/taobao/filecache/FileBufferPool;->storedPool:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/taobao/filecache/FileBuffer$OverFlowException; {:try_start_3 .. :try_end_3} :catch_0

    .line 131
    iget-object v4, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 119
    :cond_4
    :try_start_4
    invoke-virtual {p0, v0}, Landroid/taobao/filecache/FileBufferPool;->ffree(Landroid/taobao/filecache/FileBuffer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/taobao/filecache/FileBuffer$OverFlowException; {:try_start_4 .. :try_end_4} :catch_0

    .line 131
    iget-object v3, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move v3, v4

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move v3, v4

    goto :goto_0

    .line 127
    .end local v0           #buffer:Landroid/taobao/filecache/FileBuffer;
    :catch_0
    move-exception v2

    .line 128
    .local v2, e:Landroid/taobao/filecache/FileBuffer$OverFlowException;
    :try_start_5
    invoke-virtual {v2}, Landroid/taobao/filecache/FileBuffer$OverFlowException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 131
    iget-object v3, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .end local v2           #e:Landroid/taobao/filecache/FileBuffer$OverFlowException;
    :cond_6
    move v3, v4

    .line 134
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/taobao/filecache/FileBufferPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3
.end method
