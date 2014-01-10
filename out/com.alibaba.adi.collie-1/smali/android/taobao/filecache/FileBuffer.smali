.class public Landroid/taobao/filecache/FileBuffer;
.super Ljava/lang/Object;
.source "FileBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/filecache/FileBuffer$OverFlowException;
    }
.end annotation


# instance fields
.field private blockLen:I

.field private blockOffset:[I

.field private capacity:I

.field private contentLen:I

.field private fileChannel:Ljava/nio/channels/FileChannel;

.field private readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private validate:Z


# direct methods
.method protected constructor <init>([IILjava/nio/channels/FileChannel;)V
    .locals 1
    .parameter "blockOffset"
    .parameter "blockLen"
    .parameter "fileChannel"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Landroid/taobao/filecache/FileBuffer;->capacity:I

    .line 11
    iput v0, p0, Landroid/taobao/filecache/FileBuffer;->contentLen:I

    .line 22
    array-length v0, p1

    mul-int/2addr v0, p2

    iput v0, p0, Landroid/taobao/filecache/FileBuffer;->capacity:I

    .line 23
    iput p2, p0, Landroid/taobao/filecache/FileBuffer;->blockLen:I

    .line 24
    iput-object p1, p0, Landroid/taobao/filecache/FileBuffer;->blockOffset:[I

    .line 25
    iput-object p3, p0, Landroid/taobao/filecache/FileBuffer;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/filecache/FileBuffer;->validate:Z

    .line 27
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/taobao/filecache/FileBuffer;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 28
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Landroid/taobao/filecache/FileBuffer;->capacity:I

    return v0
.end method

.method protected getBlockLen()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/taobao/filecache/FileBuffer;->blockLen:I

    return v0
.end method

.method protected getBlockOffset()[I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/taobao/filecache/FileBuffer;->blockOffset:[I

    return-object v0
.end method

.method protected getFileChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/taobao/filecache/FileBuffer;->fileChannel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/filecache/FileBuffer;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/filecache/FileBuffer;->validate:Z

    .line 166
    return-void
.end method

.method public read()[B
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 38
    iget-object v6, p0, Landroid/taobao/filecache/FileBuffer;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 41
    :try_start_0
    iget-boolean v6, p0, Landroid/taobao/filecache/FileBuffer;->validate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 67
    iget-object v6, p0, Landroid/taobao/filecache/FileBuffer;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v5

    :goto_0
    return-object v1

    .line 43
    :cond_0
    :try_start_1
    iget v6, p0, Landroid/taobao/filecache/FileBuffer;->contentLen:I

    iget v7, p0, Landroid/taobao/filecache/FileBuffer;->capacity:I

    if-le v6, v7, :cond_1

    iget v4, p0, Landroid/taobao/filecache/FileBuffer;->capacity:I

    .line 44
    .local v4, readLen:I
    :goto_1
    new-array v1, v4, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .local v1, data:[B
    const/4 v3, 0x0

    .line 49
    .local v3, i:I
    :goto_2
    if-lez v4, :cond_3

    .line 52
    :try_start_2
    iget v6, p0, Landroid/taobao/filecache/FileBuffer;->blockLen:I

    if-lt v4, v6, :cond_2

    .line 53
    iget v6, p0, Landroid/taobao/filecache/FileBuffer;->blockLen:I

    mul-int/2addr v6, v3

    iget v7, p0, Landroid/taobao/filecache/FileBuffer;->blockLen:I

    invoke-static {v1, v6, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 56
    .local v0, buffer:Ljava/nio/ByteBuffer;
    :goto_3
    iget-object v6, p0, Landroid/taobao/filecache/FileBuffer;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-object v7, p0, Landroid/taobao/filecache/FileBuffer;->blockOffset:[I

    aget v7, v7, v3

    int-to-long v7, v7

    invoke-virtual {v6, v0, v7, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 57
    iget v6, p0, Landroid/taobao/filecache/FileBuffer;->blockLen:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    sub-int/2addr v4, v6

    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    goto :goto_2

    .line 43
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v1           #data:[B
    .end local v3           #i:I
    .end local v4           #readLen:I
    :cond_1
    :try_start_3
    iget v4, p0, Landroid/taobao/filecache/FileBuffer;->contentLen:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 55
    .restart local v1       #data:[B
    .restart local v3       #i:I
    .restart local v4       #readLen:I
    :cond_2
    :try_start_4
    iget v6, p0, Landroid/taobao/filecache/FileBuffer;->blockLen:I

    mul-int/2addr v6, v3

    invoke-static {v1, v6, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    .restart local v0       #buffer:Ljava/nio/ByteBuffer;
    goto :goto_3

    .line 60
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 62
    .local v2, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 67
    iget-object v6, p0, Landroid/taobao/filecache/FileBuffer;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v5

    goto :goto_0

    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    iget-object v5, p0, Landroid/taobao/filecache/FileBuffer;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .end local v1           #data:[B
    .end local v3           #i:I
    .end local v4           #readLen:I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Landroid/taobao/filecache/FileBuffer;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v5
.end method

.method public write([B)Z
    .locals 8
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/filecache/FileBuffer$OverFlowException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 76
    iget-object v5, p0, Landroid/taobao/filecache/FileBuffer;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 79
    :try_start_0
    iget-boolean v5, p0, Landroid/taobao/filecache/FileBuffer;->validate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 111
    iget-object v5, p0, Landroid/taobao/filecache/FileBuffer;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :goto_0
    return v4

    .line 82
    :cond_0
    :try_start_1
    array-length v5, p1

    iget v6, p0, Landroid/taobao/filecache/FileBuffer;->capacity:I

    if-le v5, v6, :cond_1

    .line 83
    new-instance v4, Landroid/taobao/filecache/FileBuffer$OverFlowException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write data is too large. data length is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". buffer capacity is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/taobao/filecache/FileBuffer;->capacity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/taobao/filecache/FileBuffer$OverFlowException;-><init>(Landroid/taobao/filecache/FileBuffer;Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :catchall_0
    move-exception v4

    iget-object v5, p0, Landroid/taobao/filecache/FileBuffer;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v4

    .line 85
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    iput v5, p0, Landroid/taobao/filecache/FileBuffer;->contentLen:I

    .line 86
    array-length v3, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .local v3, writeLen:I
    const/4 v2, 0x0

    .line 92
    .local v2, i:I
    :goto_1
    if-lez v3, :cond_3

    .line 95
    :try_start_3
    iget v5, p0, Landroid/taobao/filecache/FileBuffer;->blockLen:I

    if-lt v3, v5, :cond_2

    .line 96
    iget v5, p0, Landroid/taobao/filecache/FileBuffer;->blockLen:I

    mul-int/2addr v5, v2

    iget v6, p0, Landroid/taobao/filecache/FileBuffer;->blockLen:I

    invoke-static {p1, v5, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    .local v0, buffer:Ljava/nio/ByteBuffer;
    :goto_2
    iget-object v5, p0, Landroid/taobao/filecache/FileBuffer;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-object v6, p0, Landroid/taobao/filecache/FileBuffer;->blockOffset:[I

    aget v6, v6, v2

    int-to-long v6, v6

    invoke-virtual {v5, v0, v6, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    .line 100
    iget v5, p0, Landroid/taobao/filecache/FileBuffer;->blockLen:I

    sub-int/2addr v3, v5

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_1

    .line 98
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :cond_2
    iget v5, p0, Landroid/taobao/filecache/FileBuffer;->blockLen:I

    mul-int/2addr v5, v2

    invoke-static {p1, v5, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .restart local v0       #buffer:Ljava/nio/ByteBuffer;
    goto :goto_2

    .line 103
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    iget-object v5, p0, Landroid/taobao/filecache/FileBuffer;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 108
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    :try_start_5
    array-length v4, p1

    iput v4, p0, Landroid/taobao/filecache/FileBuffer;->contentLen:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    const/4 v4, 0x1

    .line 111
    iget-object v5, p0, Landroid/taobao/filecache/FileBuffer;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0
.end method
