.class Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;
.super Ljava/lang/Object;
.source "ImagePool.java"

# interfaces
.implements Landroid/taobao/util/MemoryManager$MemoryManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/imagepool/ImagePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageMemCache"
.end annotation


# static fields
.field private static final MEM_KEEP_SIZE:I = 0xc


# instance fields
.field private final MAX_CACHE_SIZE:I

.field private final m_imagesHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/tao/imagepool/ImageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final m_imagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/tao/imagepool/ImageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private m_memCacheMaxSize:I

.field final synthetic this$0:Lcom/taobao/tao/imagepool/ImagePool;


# direct methods
.method public constructor <init>(Lcom/taobao/tao/imagepool/ImagePool;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v0, 0x20

    .line 1265
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1270
    iput v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->MAX_CACHE_SIZE:I

    .line 1271
    iput v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_memCacheMaxSize:I

    .line 1273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesHash:Ljava/util/HashMap;

    .line 1274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesList:Ljava/util/ArrayList;

    .line 1266
    invoke-static {}, Landroid/taobao/util/MemoryManager;->getInstance()Landroid/taobao/util/MemoryManager;

    move-result-object v0

    const-string v1, "ImagePool"

    invoke-virtual {v0, v1, p0}, Landroid/taobao/util/MemoryManager;->addListener(Ljava/lang/String;Landroid/taobao/util/MemoryManager$MemoryManagerListener;)V

    .line 1267
    return-void
.end method


# virtual methods
.method protected ForceBitmapRecycle(I)V
    .locals 8
    .parameter "keepsize"

    .prologue
    .line 1425
    monitor-enter p0

    .line 1427
    :try_start_0
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v5, v5, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    const-string v6, "before recycle"

    invoke-virtual {v5, v6}, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->report(Ljava/lang/String;)V

    .line 1428
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1429
    .local v0, c:I
    const/4 v2, 0x0

    .line 1430
    .local v2, recycleCount:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1432
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/tao/imagepool/ImageHandler;

    .line 1433
    .local v3, toDel:Lcom/taobao/tao/imagepool/ImageHandler;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/taobao/tao/imagepool/ImageHandler;->tryRecycle()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1435
    invoke-virtual {v3}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/taobao/tao/imagepool/ImagePool;->UUIDUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5}, Lcom/taobao/tao/imagepool/ImagePool;->access$1600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1437
    .local v4, uuidURL:Ljava/lang/String;
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesHash:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1441
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_HandlerMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/taobao/tao/imagepool/ImagePool;->access$1700(Lcom/taobao/tao/imagepool/ImagePool;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    const-string v5, "TaoSdk.ImgPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!! ForceBitmapRecycle remove:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    add-int/lit8 v2, v2, 0x1

    .line 1445
    add-int v5, p1, v2

    if-lt v5, v0, :cond_2

    .line 1451
    .end local v3           #toDel:Lcom/taobao/tao/imagepool/ImageHandler;
    .end local v4           #uuidURL:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v5, v5, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "after recycle recycle count"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->report(Ljava/lang/String;)V

    .line 1453
    sub-int v5, v0, v2

    const/16 v6, 0x19

    if-le v5, v6, :cond_1

    .line 1455
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->dumpMemory(Z)V

    .line 1459
    :cond_1
    monitor-exit p0

    .line 1460
    return-void

    .line 1430
    .restart local v3       #toDel:Lcom/taobao/tao/imagepool/ImageHandler;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1459
    .end local v0           #c:I
    .end local v1           #i:I
    .end local v2           #recycleCount:I
    .end local v3           #toDel:Lcom/taobao/tao/imagepool/ImageHandler;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method protected ForceBitmapRecycleAll()V
    .locals 1

    .prologue
    .line 1465
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->ForceBitmapRecycle(I)V

    .line 1466
    return-void
.end method

.method protected LRUBitmapRecycle(I)V
    .locals 2
    .parameter "newSize"

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v0, v0, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v0, v0, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v1, v1, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v1, v1, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroySize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_memCacheMaxSize:I

    if-lt v0, v1, :cond_0

    .line 1373
    invoke-virtual {p0, p1}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->_LRUBitmapRecycle(I)V

    .line 1375
    :cond_0
    return-void
.end method

.method protected _LRUBitmapRecycle(I)V
    .locals 9
    .parameter "newSize"

    .prologue
    .line 1383
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v6, v6, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v2, v6, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroySize:I

    .line 1385
    .local v2, initDestroySize:I
    monitor-enter p0

    .line 1387
    :try_start_0
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v6, v6, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    const-string v7, "before recycle"

    invoke-virtual {v6, v7}, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->report(Ljava/lang/String;)V

    .line 1388
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1389
    .local v0, c:I
    const/4 v3, 0x0

    .line 1390
    .local v3, recycleCount:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1392
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/tao/imagepool/ImageHandler;

    .line 1393
    .local v4, toDel:Lcom/taobao/tao/imagepool/ImageHandler;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/taobao/tao/imagepool/ImageHandler;->tryRecycle()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1395
    invoke-virtual {v4}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/taobao/tao/imagepool/ImagePool;->UUIDUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/taobao/tao/imagepool/ImagePool;->access$1600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1397
    .local v5, uuidURL:Ljava/lang/String;
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesHash:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1399
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_HandlerMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Lcom/taobao/tao/imagepool/ImagePool;->access$1700(Lcom/taobao/tao/imagepool/ImagePool;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    const-string v6, "TaoSdk.ImgPool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!! _LRUBitmapRecycle remove:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v6, v6, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v6, v6, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroySize:I

    sub-int/2addr v6, v2

    if-le v6, p1, :cond_2

    .line 1407
    .end local v4           #toDel:Lcom/taobao/tao/imagepool/ImageHandler;
    .end local v5           #uuidURL:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v6, v6, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "after recycle recycle count"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->report(Ljava/lang/String;)V

    .line 1409
    sub-int v6, v0, v3

    const/16 v7, 0x19

    if-le v6, v7, :cond_1

    .line 1411
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->dumpMemory(Z)V

    .line 1417
    :cond_1
    monitor-exit p0

    .line 1418
    return-void

    .line 1390
    .restart local v4       #toDel:Lcom/taobao/tao/imagepool/ImageHandler;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1417
    .end local v0           #c:I
    .end local v1           #i:I
    .end local v3           #recycleCount:I
    .end local v4           #toDel:Lcom/taobao/tao/imagepool/ImageHandler;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method protected add(Lcom/taobao/tao/imagepool/ImageHandler;)Z
    .locals 7
    .parameter "handler"

    .prologue
    const/4 v3, 0x0

    .line 1279
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    if-nez v4, :cond_1

    .line 1308
    :cond_0
    :goto_0
    return v3

    .line 1283
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v0

    .line 1286
    .local v0, URL:Ljava/lang/String;
    iget-object v4, p1, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    invoke-virtual {v4}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->bitmapSize()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->LRUBitmapRecycle(I)V

    .line 1287
    #calls: Lcom/taobao/tao/imagepool/ImagePool;->UUIDUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImagePool;->access$1600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1288
    .local v1, UUIDURL:Ljava/lang/String;
    monitor-enter p0

    .line 1289
    :try_start_0
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesHash:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1292
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesHash:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/tao/imagepool/ImageHandler;

    .line 1293
    .local v2, node:Lcom/taobao/tao/imagepool/ImageHandler;
    if-eqz v2, :cond_2

    if-eq v2, p1, :cond_2

    .line 1295
    const-string v4, "TaoSdk.ImgPool"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "potential memory leak a different image handler already in mem url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/taobao/tao/imagepool/ImageHandler;->printState(Z)V

    .line 1298
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 1309
    .end local v2           #node:Lcom/taobao/tao/imagepool/ImageHandler;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1304
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1305
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesHash:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    const-string v3, "TaoSdk.ImgPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!! ImageMemCache.add() added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to mem cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const/4 v3, 0x1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public dumpMemory(Z)V
    .locals 8
    .parameter "bOnlyRef"

    .prologue
    .line 1473
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v5, v5, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    const-string v6, "dumpmemory"

    invoke-virtual {v5, v6}, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->report(Ljava/lang/String;)V

    .line 1474
    const-string v5, "TaoSdk.ImgPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---------------dump image  in memCache:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",hash size"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesHash:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const-string v5, "PerfImageLeak"

    const-string v6, "start dump image in image pool memory"

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const/4 v4, 0x0

    .line 1477
    .local v4, totalsize:I
    monitor-enter p0

    .line 1479
    :try_start_0
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1480
    .local v0, c:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 1482
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/tao/imagepool/ImageHandler;

    .line 1483
    .local v3, toDel:Lcom/taobao/tao/imagepool/ImageHandler;
    if-eqz v3, :cond_1

    .line 1485
    invoke-virtual {v3}, Lcom/taobao/tao/imagepool/ImageHandler;->isRecyceled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1487
    invoke-virtual {v3, p1}, Lcom/taobao/tao/imagepool/ImageHandler;->printState(Z)V

    .line 1488
    invoke-virtual {v3}, Lcom/taobao/tao/imagepool/ImageHandler;->bitmapSize()I

    move-result v2

    .line 1489
    .local v2, size:I
    add-int/2addr v4, v2

    .line 1480
    .end local v2           #size:I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1494
    :cond_0
    const-string v5, "TaoSdk.ImgPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawable is recycled in memory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1503
    .end local v0           #c:I
    .end local v1           #i:I
    .end local v3           #toDel:Lcom/taobao/tao/imagepool/ImageHandler;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1499
    .restart local v0       #c:I
    .restart local v1       #i:I
    .restart local v3       #toDel:Lcom/taobao/tao/imagepool/ImageHandler;
    :cond_1
    :try_start_1
    const-string v5, "TaoSdk.ImgPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawable is null in memory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1502
    .end local v3           #toDel:Lcom/taobao/tao/imagepool/ImageHandler;
    :cond_2
    const-string v5, "PerfImageLeak"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handler size in map:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_HandlerMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v7}, Lcom/taobao/tao/imagepool/ImagePool;->access$1700(Lcom/taobao/tao/imagepool/ImagePool;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1504
    const-string v5, "PerfImageLeak"

    const-string v6, "end dump image in image pool memory"

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const-string v5, "TaoSdk.ImgPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---------------dump image end totalsize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    return-void
.end method

.method public onGetMemory()I
    .locals 2

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v0, v0, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v0, v0, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v1, v1, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v1, v1, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroySize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1523
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->ForceBitmapRecycle(I)V

    .line 1524
    return-void
.end method

.method public onSetMaxMemory(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 1512
    iput p1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_memCacheMaxSize:I

    .line 1513
    const-string v0, "TaoSdk.ImgPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imagepool memory limit set:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_memCacheMaxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    return-void
.end method

.method protected remove(Lcom/taobao/tao/imagepool/ImageHandler;)Z
    .locals 6
    .parameter "ih"

    .prologue
    .line 1347
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1364
    :goto_0
    return v0

    .line 1348
    :cond_0
    const/4 v0, 0x0

    .line 1349
    .local v0, res:Z
    monitor-enter p0

    .line 1350
    if-eqz v0, :cond_1

    .line 1352
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/taobao/tao/imagepool/ImagePool;->UUIDUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/taobao/tao/imagepool/ImagePool;->access$1600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1353
    .local v2, uuidURL:Ljava/lang/String;
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesHash:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/tao/imagepool/ImageHandler;

    .line 1354
    .local v1, toGet:Lcom/taobao/tao/imagepool/ImageHandler;
    if-eqz v1, :cond_1

    .line 1357
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesHash:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->m_imagesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1359
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_HandlerMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/taobao/tao/imagepool/ImagePool;->access$1700(Lcom/taobao/tao/imagepool/ImagePool;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    const-string v3, "TaoSdk.ImgPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!! remove:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    .end local v1           #toGet:Lcom/taobao/tao/imagepool/ImageHandler;
    .end local v2           #uuidURL:Ljava/lang/String;
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
