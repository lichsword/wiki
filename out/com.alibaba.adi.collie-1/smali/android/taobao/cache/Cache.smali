.class public Landroid/taobao/cache/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field private static CACHENAME:Ljava/lang/String;

.field private static PERSISTEDCACHE_CAP:I

.field private static TMP_BLOCK_SIZE_PHONE:I

.field private static TMP_BLOCK_SIZE_SDCARD:I

.field private static TMP_CAP_PHONE:I

.field private static TMP_CAP_SDCARD:I

.field private static persistedCache:Landroid/taobao/filecache/FileDir;

.field private static tmpCache:Landroid/taobao/filecache/FileBufferPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "cache"

    sput-object v0, Landroid/taobao/cache/Cache;->CACHENAME:Ljava/lang/String;

    .line 18
    const/16 v0, 0x3e8

    sput v0, Landroid/taobao/cache/Cache;->PERSISTEDCACHE_CAP:I

    .line 19
    const/high16 v0, 0x140

    sput v0, Landroid/taobao/cache/Cache;->TMP_CAP_SDCARD:I

    .line 20
    const/high16 v0, 0x50

    sput v0, Landroid/taobao/cache/Cache;->TMP_CAP_PHONE:I

    .line 21
    const/16 v0, 0x20

    sput v0, Landroid/taobao/cache/Cache;->TMP_BLOCK_SIZE_PHONE:I

    .line 22
    const/16 v0, 0x80

    sput v0, Landroid/taobao/cache/Cache;->TMP_BLOCK_SIZE_SDCARD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPersistedCache()Z
    .locals 1

    .prologue
    .line 212
    sget-object v0, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v0}, Landroid/taobao/filecache/FileDir;->clear()Z

    move-result v0

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clearTmpCache()Z
    .locals 1

    .prologue
    .line 299
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    invoke-virtual {v0}, Landroid/taobao/filecache/FileBufferPool;->clear()V

    .line 301
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static delPersistedCache(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 122
    sget-object v0, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v0, p0}, Landroid/taobao/filecache/FileDir;->delete(Ljava/lang/String;)Z

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteTmpCache(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 249
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    invoke-virtual {v0, p0}, Landroid/taobao/filecache/FileBufferPool;->erase(Ljava/lang/String;)Z

    move-result v0

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized destroy(Landroid/app/Application;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 54
    const-class v1, Landroid/taobao/cache/Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    sget-object v2, Landroid/taobao/cache/Cache;->CACHENAME:Ljava/lang/String;

    sget-object v3, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v3}, Landroid/taobao/filecache/FileDir;->isInSdcard()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/taobao/filecache/FileCache;->releaseFileDir(Ljava/lang/String;Z)V

    .line 56
    :cond_0
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    if-eqz v0, :cond_1

    .line 57
    invoke-static {p0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    sget-object v2, Landroid/taobao/cache/Cache;->CACHENAME:Ljava/lang/String;

    sget-object v3, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    invoke-virtual {v3}, Landroid/taobao/filecache/FileBufferPool;->isInSdcard()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/taobao/filecache/FileCache;->releaseFilePool(Ljava/lang/String;Z)V

    .line 58
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    invoke-virtual {v0}, Landroid/taobao/filecache/FileBufferPool;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    monitor-exit v1

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getCurrentTime()J
    .locals 2

    .prologue
    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 366
    .local v0, time:J
    return-wide v0
.end method

.method public static getPersistedByte(Ljava/lang/String;)[B
    .locals 1
    .parameter "key"

    .prologue
    .line 131
    sget-object v0, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v0, p0}, Landroid/taobao/filecache/FileDir;->read(Ljava/lang/String;)[B

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPersistedCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 177
    sget-object v4, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    if-eqz v4, :cond_2

    .line 178
    const/4 v3, 0x0

    .line 180
    .local v3, ret:Landroid/taobao/cache/CacheDo;
    :try_start_0
    const-class v4, Landroid/taobao/cache/CacheDo;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/taobao/cache/CacheDo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    :goto_0
    sget-object v4, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v4, p0}, Landroid/taobao/filecache/FileDir;->read(Ljava/lang/String;)[B

    move-result-object v1

    .line 189
    .local v1, data:[B
    if-eqz v1, :cond_1

    .line 191
    :try_start_1
    const-class v4, Landroid/taobao/cache/CacheDo;

    invoke-static {v4}, Landroid/taobao/protostuff/RuntimeSchema;->getSchema(Ljava/lang/Class;)Landroid/taobao/protostuff/Schema;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/taobao/protostuff/ProtostuffIOUtil;->mergeFrom([BLjava/lang/Object;Landroid/taobao/protostuff/Schema;)V

    .line 192
    invoke-static {v3}, Landroid/taobao/cache/Cache;->isCacheExpired(Landroid/taobao/cache/CacheDo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    const-string v4, "Cache"

    const-string v6, "PersistedCache is expired"

    invoke-static {v4, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 205
    .end local v1           #data:[B
    .end local v3           #ret:Landroid/taobao/cache/CacheDo;
    :goto_1
    return-object v4

    .line 181
    .restart local v3       #ret:Landroid/taobao/cache/CacheDo;
    :catch_0
    move-exception v2

    .line 183
    .local v2, e:Ljava/lang/IllegalAccessException;
    throw v2

    .line 184
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 186
    .local v2, e:Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v2           #e:Ljava/lang/InstantiationException;
    .restart local v1       #data:[B
    :catch_2
    move-exception v2

    .line 197
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .line 198
    goto :goto_1

    .line 200
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v4, v3, Landroid/taobao/cache/CacheDo;->data:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v4, v5

    .line 202
    goto :goto_1

    .end local v1           #data:[B
    .end local v3           #ret:Landroid/taobao/cache/CacheDo;
    :cond_2
    move-object v4, v5

    .line 205
    goto :goto_1
.end method

.method public static getPersistedObj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .parameter "key"
    .parameter "dataClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 142
    sget-object v6, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    if-eqz v6, :cond_1

    .line 143
    const/4 v2, 0x0

    .line 145
    .local v2, ret:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 154
    .end local v2           #ret:Ljava/lang/Object;
    :goto_0
    sget-object v6, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v6, p0}, Landroid/taobao/filecache/FileDir;->read(Ljava/lang/String;)[B

    move-result-object v0

    .line 156
    .local v0, data:[B
    if-eqz v0, :cond_0

    .line 158
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 159
    .local v3, time:J
    invoke-static {p1}, Landroid/taobao/protostuff/RuntimeSchema;->getSchema(Ljava/lang/Class;)Landroid/taobao/protostuff/Schema;

    move-result-object v6

    invoke-static {v0, v2, v6}, Landroid/taobao/protostuff/ProtostuffIOUtil;->mergeFrom([BLjava/lang/Object;Landroid/taobao/protostuff/Schema;)V

    .line 160
    const-string v6, "Cache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deserialize time cost:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 169
    .end local v0           #data:[B
    .end local v3           #time:J
    :goto_1
    return-object v2

    .line 146
    .restart local v2       #ret:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/IllegalAccessException;
    throw v1

    .line 149
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 151
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v1           #e:Ljava/lang/InstantiationException;
    .end local v2           #ret:Ljava/lang/Object;
    .restart local v0       #data:[B
    :catch_2
    move-exception v1

    .line 162
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v5

    .line 163
    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v2, v5

    .line 167
    goto :goto_1

    .end local v0           #data:[B
    :cond_1
    move-object v2, v5

    .line 169
    goto :goto_1
.end method

.method public static getTmpByte(Ljava/lang/String;)[B
    .locals 1
    .parameter "key"

    .prologue
    .line 258
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    invoke-virtual {v0, p0}, Landroid/taobao/filecache/FileBufferPool;->read(Ljava/lang/String;)[B

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTmpCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 333
    sget-object v4, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    if-eqz v4, :cond_2

    .line 334
    const/4 v3, 0x0

    .line 336
    .local v3, ret:Landroid/taobao/cache/CacheDo;
    :try_start_0
    const-class v4, Landroid/taobao/cache/CacheDo;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/taobao/cache/CacheDo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 344
    :goto_0
    sget-object v4, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    invoke-virtual {v4, p0}, Landroid/taobao/filecache/FileBufferPool;->read(Ljava/lang/String;)[B

    move-result-object v1

    .line 345
    .local v1, data:[B
    if-eqz v1, :cond_1

    .line 347
    :try_start_1
    const-class v4, Landroid/taobao/cache/CacheDo;

    invoke-static {v4}, Landroid/taobao/protostuff/RuntimeSchema;->getSchema(Ljava/lang/Class;)Landroid/taobao/protostuff/Schema;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/taobao/protostuff/ProtostuffIOUtil;->mergeFrom([BLjava/lang/Object;Landroid/taobao/protostuff/Schema;)V

    .line 348
    invoke-static {v3}, Landroid/taobao/cache/Cache;->isCacheExpired(Landroid/taobao/cache/CacheDo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 349
    const-string v4, "Cache"

    const-string v6, "cache is expired"

    invoke-static {v4, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 360
    .end local v1           #data:[B
    .end local v3           #ret:Landroid/taobao/cache/CacheDo;
    :goto_1
    return-object v4

    .line 337
    .restart local v3       #ret:Landroid/taobao/cache/CacheDo;
    :catch_0
    move-exception v2

    .line 339
    .local v2, e:Ljava/lang/IllegalAccessException;
    throw v2

    .line 340
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 342
    .local v2, e:Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 352
    .end local v2           #e:Ljava/lang/InstantiationException;
    .restart local v1       #data:[B
    :catch_2
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    move-object v4, v5

    .line 353
    goto :goto_1

    .line 355
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v4, v3, Landroid/taobao/cache/CacheDo;->data:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v4, v5

    .line 357
    goto :goto_1

    .end local v1           #data:[B
    .end local v3           #ret:Landroid/taobao/cache/CacheDo;
    :cond_2
    move-object v4, v5

    .line 360
    goto :goto_1
.end method

.method public static getTmpObj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .parameter "key"
    .parameter "dataClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 268
    sget-object v6, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    if-eqz v6, :cond_1

    .line 269
    const/4 v2, 0x0

    .line 271
    .local v2, ret:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 279
    .end local v2           #ret:Ljava/lang/Object;
    :goto_0
    sget-object v6, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    invoke-virtual {v6, p0}, Landroid/taobao/filecache/FileBufferPool;->read(Ljava/lang/String;)[B

    move-result-object v0

    .line 280
    .local v0, data:[B
    if-eqz v0, :cond_0

    .line 282
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 283
    .local v3, time:J
    invoke-static {p1}, Landroid/taobao/protostuff/RuntimeSchema;->getSchema(Ljava/lang/Class;)Landroid/taobao/protostuff/Schema;

    move-result-object v6

    invoke-static {v0, v2, v6}, Landroid/taobao/protostuff/ProtostuffIOUtil;->mergeFrom([BLjava/lang/Object;Landroid/taobao/protostuff/Schema;)V

    .line 284
    const-string v6, "Cache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deserialize time cost:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 293
    .end local v0           #data:[B
    .end local v3           #time:J
    :goto_1
    return-object v2

    .line 272
    .restart local v2       #ret:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 274
    .local v1, e:Ljava/lang/IllegalAccessException;
    throw v1

    .line 275
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 277
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 285
    .end local v1           #e:Ljava/lang/InstantiationException;
    .end local v2           #ret:Ljava/lang/Object;
    .restart local v0       #data:[B
    :catch_2
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move-object v2, v5

    .line 286
    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v2, v5

    .line 290
    goto :goto_1

    .end local v0           #data:[B
    :cond_1
    move-object v2, v5

    .line 293
    goto :goto_1
.end method

.method public static declared-synchronized init(Landroid/app/Application;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 26
    const-class v1, Landroid/taobao/cache/Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    if-nez v0, :cond_1

    .line 27
    invoke-static {p0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    sget-object v2, Landroid/taobao/cache/Cache;->CACHENAME:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/taobao/filecache/FileCache;->getFileDirInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/FileDir;

    move-result-object v0

    sput-object v0, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    .line 28
    sget-object v0, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    if-nez v0, :cond_0

    .line 29
    invoke-static {p0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    sget-object v2, Landroid/taobao/cache/Cache;->CACHENAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/taobao/filecache/FileCache;->getFileDirInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/FileDir;

    move-result-object v0

    sput-object v0, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    .line 30
    :cond_0
    sget-object v0, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_1

    .line 31
    sget-object v0, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/taobao/filecache/FileDir;->init(Ljava/util/Comparator;Landroid/taobao/filecache/FileInfoCreator;)Z

    .line 32
    sget-object v0, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    sget v2, Landroid/taobao/cache/Cache;->PERSISTEDCACHE_CAP:I

    invoke-virtual {v0, v2}, Landroid/taobao/filecache/FileDir;->setCapacity(I)V

    .line 37
    :cond_1
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    if-nez v0, :cond_3

    .line 38
    invoke-static {p0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/taobao/cache/Cache;->CACHENAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/taobao/filecache/FileCache;->getFilePoolInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/FileBufferPool;

    move-result-object v0

    sput-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    .line 39
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    if-nez v0, :cond_2

    .line 40
    invoke-static {p0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/taobao/cache/Cache;->CACHENAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/taobao/filecache/FileCache;->getFilePoolInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/FileBufferPool;

    move-result-object v0

    sput-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    .line 41
    :cond_2
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    if-eqz v0, :cond_3

    .line 42
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    invoke-virtual {v0}, Landroid/taobao/filecache/FileBufferPool;->isInSdcard()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    sget v2, Landroid/taobao/cache/Cache;->TMP_CAP_SDCARD:I

    sget v3, Landroid/taobao/cache/Cache;->TMP_BLOCK_SIZE_SDCARD:I

    invoke-virtual {v0, v2, v3}, Landroid/taobao/filecache/FileBufferPool;->init(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_3
    :goto_0
    monitor-exit v1

    return-void

    .line 45
    :cond_4
    :try_start_1
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    sget v2, Landroid/taobao/cache/Cache;->TMP_CAP_PHONE:I

    sget v3, Landroid/taobao/cache/Cache;->TMP_BLOCK_SIZE_PHONE:I

    invoke-virtual {v0, v2, v3}, Landroid/taobao/filecache/FileBufferPool;->init(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isCacheExpired(Landroid/taobao/cache/CacheDo;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    .line 370
    if-nez p0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v2

    .line 373
    :cond_1
    invoke-static {}, Landroid/taobao/cache/Cache;->getCurrentTime()J

    move-result-wide v0

    .line 374
    .local v0, curTime:J
    iget-wide v3, p0, Landroid/taobao/cache/CacheDo;->expireTime:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 377
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static putPersistedCache(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 97
    const-wide/16 v0, 0xe10

    .line 99
    .local v0, defaultTimeOut:J
    invoke-static {p0, p1, v0, v1}, Landroid/taobao/cache/Cache;->putPersistedCache(Ljava/lang/String;Ljava/lang/Object;J)Z

    move-result v2

    return v2
.end method

.method public static putPersistedCache(Ljava/lang/String;Ljava/lang/Object;J)Z
    .locals 10
    .parameter "key"
    .parameter "obj"
    .parameter "timeOut"

    .prologue
    .line 104
    sget-object v6, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    if-eqz v6, :cond_0

    .line 105
    const/16 v6, 0x100

    invoke-static {v6}, Landroid/taobao/protostuff/LinkedBuffer;->allocate(I)Landroid/taobao/protostuff/LinkedBuffer;

    move-result-object v5

    .line 106
    .local v5, tmp:Landroid/taobao/protostuff/LinkedBuffer;
    new-instance v1, Landroid/taobao/cache/CacheDo;

    invoke-direct {v1}, Landroid/taobao/cache/CacheDo;-><init>()V

    .line 107
    .local v1, cache:Landroid/taobao/cache/CacheDo;
    iput-object p1, v1, Landroid/taobao/cache/CacheDo;->data:Ljava/lang/Object;

    .line 108
    invoke-static {}, Landroid/taobao/cache/Cache;->getCurrentTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, p2

    add-long/2addr v6, v8

    iput-wide v6, v1, Landroid/taobao/cache/CacheDo;->expireTime:J

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 110
    .local v3, time:J
    const-class v6, Landroid/taobao/cache/CacheDo;

    invoke-static {v6}, Landroid/taobao/protostuff/RuntimeSchema;->getSchema(Ljava/lang/Class;)Landroid/taobao/protostuff/Schema;

    move-result-object v6

    invoke-static {v1, v6, v5}, Landroid/taobao/protostuff/ProtostuffIOUtil;->toByteArray(Ljava/lang/Object;Landroid/taobao/protostuff/Schema;Landroid/taobao/protostuff/LinkedBuffer;)[B

    move-result-object v2

    .line 111
    .local v2, data:[B
    const-string v6, "Cache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "serialize time cost:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 113
    .local v0, buffer:Ljava/nio/ByteBuffer;
    sget-object v6, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v6, p0, v0}, Landroid/taobao/filecache/FileDir;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z

    move-result v6

    .line 115
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v1           #cache:Landroid/taobao/cache/CacheDo;
    .end local v2           #data:[B
    .end local v3           #time:J
    .end local v5           #tmp:Landroid/taobao/protostuff/LinkedBuffer;
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static putPersistedCache(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 9
    .parameter "key"
    .parameter "dataObject"
    .parameter "dataClass"

    .prologue
    .line 81
    sget-object v5, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    if-eqz v5, :cond_0

    .line 82
    const/16 v5, 0x100

    invoke-static {v5}, Landroid/taobao/protostuff/LinkedBuffer;->allocate(I)Landroid/taobao/protostuff/LinkedBuffer;

    move-result-object v4

    .line 85
    .local v4, tmp:Landroid/taobao/protostuff/LinkedBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 86
    .local v2, time:J
    invoke-static {p2}, Landroid/taobao/protostuff/RuntimeSchema;->getSchema(Ljava/lang/Class;)Landroid/taobao/protostuff/Schema;

    move-result-object v5

    invoke-static {p1, v5, v4}, Landroid/taobao/protostuff/ProtostuffIOUtil;->toByteArray(Ljava/lang/Object;Landroid/taobao/protostuff/Schema;Landroid/taobao/protostuff/LinkedBuffer;)[B

    move-result-object v1

    .line 87
    .local v1, data:[B
    const-string v5, "Cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deserialize time cost:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 89
    .local v0, buffer:Ljava/nio/ByteBuffer;
    sget-object v5, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v5, p0, v0}, Landroid/taobao/filecache/FileDir;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z

    move-result v5

    .line 91
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v1           #data:[B
    .end local v2           #time:J
    .end local v4           #tmp:Landroid/taobao/protostuff/LinkedBuffer;
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static putPersistedCache(Ljava/lang/String;[B)Z
    .locals 2
    .parameter "key"
    .parameter "data"

    .prologue
    .line 69
    sget-object v1, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    if-eqz v1, :cond_0

    .line 70
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 71
    .local v0, buffer:Ljava/nio/ByteBuffer;
    sget-object v1, Landroid/taobao/cache/Cache;->persistedCache:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v1, p0, v0}, Landroid/taobao/filecache/FileDir;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z

    move-result v1

    .line 73
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static putTmpCache(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 309
    const-wide/16 v0, 0xe10

    .line 311
    .local v0, defaultTimeOut:J
    invoke-static {p0, p1, v0, v1}, Landroid/taobao/cache/Cache;->putTmpCache(Ljava/lang/String;Ljava/lang/Object;J)Z

    move-result v2

    return v2
.end method

.method public static putTmpCache(Ljava/lang/String;Ljava/lang/Object;J)Z
    .locals 7
    .parameter "key"
    .parameter "obj"
    .parameter "timeOut"

    .prologue
    .line 316
    sget-object v3, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    if-eqz v3, :cond_0

    .line 317
    const/16 v3, 0x100

    invoke-static {v3}, Landroid/taobao/protostuff/LinkedBuffer;->allocate(I)Landroid/taobao/protostuff/LinkedBuffer;

    move-result-object v2

    .line 318
    .local v2, tmp:Landroid/taobao/protostuff/LinkedBuffer;
    new-instance v0, Landroid/taobao/cache/CacheDo;

    invoke-direct {v0}, Landroid/taobao/cache/CacheDo;-><init>()V

    .line 320
    .local v0, cache:Landroid/taobao/cache/CacheDo;
    iput-object p1, v0, Landroid/taobao/cache/CacheDo;->data:Ljava/lang/Object;

    .line 321
    invoke-static {}, Landroid/taobao/cache/Cache;->getCurrentTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/taobao/cache/CacheDo;->expireTime:J

    .line 322
    const-class v3, Landroid/taobao/cache/CacheDo;

    invoke-static {v3}, Landroid/taobao/protostuff/RuntimeSchema;->getSchema(Ljava/lang/Class;)Landroid/taobao/protostuff/Schema;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/taobao/protostuff/ProtostuffIOUtil;->toByteArray(Ljava/lang/Object;Landroid/taobao/protostuff/Schema;Landroid/taobao/protostuff/LinkedBuffer;)[B

    move-result-object v1

    .line 323
    .local v1, data:[B
    sget-object v3, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    invoke-virtual {v3, p0, v1}, Landroid/taobao/filecache/FileBufferPool;->write(Ljava/lang/String;[B)Z

    move-result v3

    .line 325
    .end local v0           #cache:Landroid/taobao/cache/CacheDo;
    .end local v1           #data:[B
    .end local v2           #tmp:Landroid/taobao/protostuff/LinkedBuffer;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static putTmpCache(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 8
    .parameter "key"
    .parameter "dataObject"
    .parameter "dataClass"

    .prologue
    .line 235
    sget-object v4, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    if-eqz v4, :cond_0

    .line 236
    const/16 v4, 0x100

    invoke-static {v4}, Landroid/taobao/protostuff/LinkedBuffer;->allocate(I)Landroid/taobao/protostuff/LinkedBuffer;

    move-result-object v3

    .line 238
    .local v3, tmp:Landroid/taobao/protostuff/LinkedBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 239
    .local v1, time:J
    invoke-static {p2}, Landroid/taobao/protostuff/RuntimeSchema;->getSchema(Ljava/lang/Class;)Landroid/taobao/protostuff/Schema;

    move-result-object v4

    invoke-static {p1, v4, v3}, Landroid/taobao/protostuff/ProtostuffIOUtil;->toByteArray(Ljava/lang/Object;Landroid/taobao/protostuff/Schema;Landroid/taobao/protostuff/LinkedBuffer;)[B

    move-result-object v0

    .line 240
    .local v0, data:[B
    const-string v4, "Cache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serialize time cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v4, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    invoke-virtual {v4, p0, v0}, Landroid/taobao/filecache/FileBufferPool;->write(Ljava/lang/String;[B)Z

    move-result v4

    .line 243
    .end local v0           #data:[B
    .end local v1           #time:J
    .end local v3           #tmp:Landroid/taobao/protostuff/LinkedBuffer;
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static putTmpCache(Ljava/lang/String;[B)Z
    .locals 1
    .parameter "key"
    .parameter "data"

    .prologue
    .line 225
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Landroid/taobao/cache/Cache;->tmpCache:Landroid/taobao/filecache/FileBufferPool;

    invoke-virtual {v0, p0, p1}, Landroid/taobao/filecache/FileBufferPool;->write(Ljava/lang/String;[B)Z

    move-result v0

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
