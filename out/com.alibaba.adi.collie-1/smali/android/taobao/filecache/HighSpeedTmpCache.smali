.class public Landroid/taobao/filecache/HighSpeedTmpCache;
.super Ljava/lang/Object;
.source "HighSpeedTmpCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;
    }
.end annotation


# instance fields
.field private fChannel:Ljava/nio/channels/FileChannel;

.field private fInfoLock:Ljava/nio/channels/FileLock;

.field private fileName:Ljava/lang/String;

.field private fs:Ljava/io/RandomAccessFile;

.field private init:Z

.field private isInSdcard:Z

.field private readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private storedFile:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "fileName"
    .parameter "sdcard"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fileName:Ljava/lang/String;

    .line 35
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->isInSdcard:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->init:Z

    .line 37
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z
    .locals 8
    .parameter "fileName"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 198
    iget-boolean v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->init:Z

    if-eqz v5, :cond_0

    .line 199
    iget-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 201
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 204
    .local v2, time:J
    new-instance v1, Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;

    invoke-direct {v1, p0}, Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;-><init>(Landroid/taobao/filecache/HighSpeedTmpCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .local v1, info:Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 209
    iget-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;->pos:J

    .line 210
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v1, Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;->length:J

    .line 211
    iget-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v5, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    :try_start_2
    iget-object v4, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v4, "HighSpeedTmpCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write time cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    const/4 v4, 0x1

    .line 222
    iget-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 225
    .end local v1           #info:Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;
    .end local v2           #time:J
    :cond_0
    :goto_0
    return v4

    .line 212
    .restart local v1       #info:Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;
    .restart local v2       #time:J
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    iget-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #info:Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;
    .end local v2           #time:J
    :catchall_0
    move-exception v4

    iget-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v4
.end method

.method public clear()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 229
    iget-boolean v4, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->init:Z

    if-eqz v4, :cond_0

    .line 230
    iget-object v4, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 232
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 235
    .local v1, time:J
    :try_start_1
    iget-object v4, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 242
    :try_start_2
    iget-object v3, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 243
    const-string v3, "HighSpeedTmpCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear time cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    const/4 v3, 0x1

    .line 246
    iget-object v4, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 249
    .end local v1           #time:J
    :cond_0
    :goto_0
    return v3

    .line 236
    .restart local v1       #time:J
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    iget-object v4, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #time:J
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 148
    iget-boolean v0, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->init:Z

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 152
    :try_start_0
    iget-object v0, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    const/4 v0, 0x1

    .line 157
    iget-object v1, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 160
    :goto_0
    return v0

    .line 157
    :cond_0
    iget-object v0, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public filtrFile(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "fileNameFilter"

    .prologue
    .line 65
    iget-boolean v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->init:Z

    if-eqz v5, :cond_3

    .line 66
    iget-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 69
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, fileNames:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 72
    aget-object v4, v0, v1

    check-cast v4, Ljava/lang/String;

    .line 73
    .local v4, tmp:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v4           #tmp:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 78
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 79
    .local v3, ret:[Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v6, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 86
    .end local v0           #fileNames:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #ret:[Ljava/lang/String;
    :goto_1
    return-object v5

    .line 83
    .restart local v0       #fileNames:[Ljava/lang/Object;
    .restart local v1       #i:I
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 86
    .end local v0           #fileNames:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 83
    :catchall_0
    move-exception v5

    iget-object v6, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v5
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v1, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fInfoLock:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fInfoLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 45
    :cond_0
    iget-object v1, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fs:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 47
    :try_start_0
    iget-object v1, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fs:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fChannel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_2

    .line 53
    :try_start_1
    iget-object v1, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    :cond_2
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 59
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 55
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized init()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->init:Z

    if-nez v5, :cond_4

    .line 92
    const-string v5, "HighSpeedTmpCache"

    const-string v6, "init start"

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fileName:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, cacheFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 98
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    :cond_0
    :try_start_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->storedFile:Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :try_start_3
    iget-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fs:Ljava/io/RandomAccessFile;

    if-nez v5, :cond_1

    .line 120
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "rw"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fs:Ljava/io/RandomAccessFile;

    .line 121
    :cond_1
    iget-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fChannel:Ljava/nio/channels/FileChannel;

    if-nez v5, :cond_2

    .line 122
    iget-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fs:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    iput-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fChannel:Ljava/nio/channels/FileChannel;

    .line 123
    :cond_2
    iget-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v5

    iput-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fInfoLock:Ljava/nio/channels/FileLock;

    .line 124
    iget-object v5, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fInfoLock:Ljava/nio/channels/FileLock;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v5, :cond_3

    .line 144
    .end local v0           #cacheFile:Ljava/io/File;
    :goto_0
    monitor-exit p0

    return v3

    .line 99
    .restart local v0       #cacheFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 101
    .local v2, e1:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 90
    .end local v0           #cacheFile:Ljava/io/File;
    .end local v2           #e1:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 126
    .restart local v0       #cacheFile:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 128
    .local v1, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    new-instance v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v3, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 140
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->init:Z

    .line 141
    const-string v3, "HighSpeedTmpCache"

    const-string v5, "init success"

    invoke-static {v3, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v0           #cacheFile:Ljava/io/File;
    :cond_4
    const-string v3, "HighSpeedTmpCache"

    const-string v5, "alread inited"

    invoke-static {v3, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v3, v4

    .line 144
    goto :goto_0
.end method

.method public isInSdcard()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->isInSdcard:Z

    return v0
.end method

.method public read(Ljava/lang/String;)[B
    .locals 9
    .parameter "fileName"

    .prologue
    const/4 v5, 0x0

    .line 166
    iget-boolean v6, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->init:Z

    if-eqz v6, :cond_0

    .line 167
    iget-object v6, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 169
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 170
    .local v3, time:J
    const-string v6, "HighSpeedTmpCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read start:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v6, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 172
    iget-object v6, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->storedFile:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;

    .line 173
    .local v2, info:Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;
    iget-wide v6, v2, Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;->length:J

    long-to-int v6, v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 177
    .local v0, buffer:Ljava/nio/ByteBuffer;
    :try_start_1
    iget-object v6, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->fChannel:Ljava/nio/channels/FileChannel;

    iget-wide v7, v2, Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;->pos:J

    invoke-virtual {v6, v0, v7, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :try_start_2
    const-string v5, "HighSpeedTmpCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read time cost:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 188
    iget-object v6, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 191
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v2           #info:Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;
    .end local v3           #time:J
    :cond_0
    :goto_0
    return-object v5

    .line 178
    .restart local v0       #buffer:Ljava/nio/ByteBuffer;
    .restart local v2       #info:Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;
    .restart local v3       #time:J
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    iget-object v6, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #info:Landroid/taobao/filecache/HighSpeedTmpCache$StoredInfo;
    :cond_1
    iget-object v6, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .end local v3           #time:J
    :catchall_0
    move-exception v5

    iget-object v6, p0, Landroid/taobao/filecache/HighSpeedTmpCache;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v5
.end method
