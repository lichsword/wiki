.class Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
.super Ljava/lang/Object;
.source "ImagePool.java"

# interfaces
.implements Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/imagepool/ImagePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageExecutor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor$FeedImageListener;
    }
.end annotation


# instance fields
.field private m_b_executing:Z

.field private m_feedQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor$FeedImageListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_group:Lcom/taobao/tao/imagepool/ImageGroup;

.field private m_idl:Lcom/taobao/tao/imagepool/IImageDownloader;

.field private m_image:Lcom/taobao/tao/imagepool/ImageHandler;

.field private m_indexInGroup:I

.field final synthetic this$0:Lcom/taobao/tao/imagepool/ImagePool;


# direct methods
.method public constructor <init>(Lcom/taobao/tao/imagepool/ImagePool;Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V
    .locals 3
    .parameter
    .parameter "ih"
    .parameter "group"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 311
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    if-nez p3, :cond_0

    .line 313
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "ImagePool::ImageExecutor new exception: null group param"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, e:Ljava/lang/Exception;
    throw v0

    .line 316
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iput-object p3, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    .line 317
    iput-object p2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;

    .line 318
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    invoke-interface {v2}, Lcom/taobao/tao/imagepool/ImageGroup;->getCachePolicy()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/taobao/tao/imagepool/ImageHandler;->setCachePolicy(I)V

    .line 319
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_b_executing:Z

    .line 320
    iput p4, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_indexInGroup:I

    .line 322
    return-void
.end method

.method private _handleDownloadFinish([BLjava/lang/String;)Z
    .locals 10
    .parameter "data"
    .parameter "originurl"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 410
    move-object v4, p2

    .line 412
    .local v4, url:Ljava/lang/String;
    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->mStragery:Lcom/taobao/tao/imagepool/IImageQualityStrategy;
    invoke-static {v7}, Lcom/taobao/tao/imagepool/ImagePool;->access$000(Lcom/taobao/tao/imagepool/ImagePool;)Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 414
    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->mStragery:Lcom/taobao/tao/imagepool/IImageQualityStrategy;
    invoke-static {v7}, Lcom/taobao/tao/imagepool/ImagePool;->access$000(Lcom/taobao/tao/imagepool/ImagePool;)Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    move-result-object v7

    invoke-interface {v7, p2}, Lcom/taobao/tao/imagepool/IImageQualityStrategy;->decideUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 417
    :cond_0
    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    if-eqz v7, :cond_1

    if-eqz p1, :cond_1

    .line 418
    const-string v7, "ImageLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    invoke-interface {v9}, Lcom/taobao/tao/imagepool/ImageGroup;->getGroupName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_1
    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;

    if-nez v7, :cond_2

    .line 422
    const-string v6, "TaoSdk.ImgPool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "null pointer m_image in _handleDownloadFinish url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0, v5, p2}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->allFeedImage(ILjava/lang/String;)V

    .line 484
    :goto_0
    return v5

    .line 428
    :cond_2
    if-eqz p1, :cond_3

    array-length v7, p1

    if-nez v7, :cond_4

    .line 430
    :cond_3
    const/4 v6, -0x1

    invoke-direct {p0, v6, p2}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->allFeedImage(ILjava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_4
    const/4 v3, 0x0

    .line 436
    .local v3, saved:Z
    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v7, v7, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    if-eqz v7, :cond_7

    .line 438
    const-string v7, "TaoSdk.ImgPool"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "write to file cache url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " data len="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v9}, Lcom/taobao/tao/imagepool/ImageHandler;->getCachePolicy()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v7, v7, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    iget-object v8, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v8}, Lcom/taobao/tao/imagepool/ImageHandler;->getCachePolicy()I

    move-result v8

    invoke-virtual {v7, v4, p1, v8}, Lcom/taobao/tao/imagepool/ImageCache;->saveData(Ljava/lang/String;[BI)Z

    move-result v3

    .line 445
    :goto_1
    if-nez v3, :cond_9

    .line 448
    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v8, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v8}, Lcom/taobao/tao/imagepool/ImageHandler;->getCachePolicy()I

    move-result v8

    #calls: Lcom/taobao/tao/imagepool/ImagePool;->_getImageHandler(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;
    invoke-static {v7, p2, v8}, Lcom/taobao/tao/imagepool/ImagePool;->access$100(Lcom/taobao/tao/imagepool/ImagePool;Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v1

    .line 449
    .local v1, ih:Lcom/taobao/tao/imagepool/ImageHandler;
    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/ImageHandler;->isRecyceled()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/ImageHandler;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_6

    .line 454
    :cond_5
    invoke-static {p1, v4}, Lcom/taobao/tao/imagepool/ImagePool;->_createTBDrawable([BLjava/lang/String;)Lcom/taobao/tao/imagepool/utility/TBDrawable;

    move-result-object v0

    .line 456
    .local v0, d:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    if-eqz v0, :cond_8

    .line 458
    invoke-virtual {v1, v0, v5}, Lcom/taobao/tao/imagepool/ImageHandler;->setDrawable(Landroid/graphics/drawable/Drawable;Z)Z

    move-result v2

    .line 459
    .local v2, res:Z
    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;
    invoke-static {v7}, Lcom/taobao/tao/imagepool/ImagePool;->access$200(Lcom/taobao/tao/imagepool/ImagePool;)Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->add(Lcom/taobao/tao/imagepool/ImageHandler;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 461
    if-eqz v2, :cond_6

    .line 463
    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v7, v7, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v8, v7, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createNum:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createNum:I

    .line 464
    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v7, v7, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v8, v7, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    invoke-virtual {v0}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->bitmapSize()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    .line 477
    .end local v0           #d:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    .end local v2           #res:Z
    :cond_6
    invoke-direct {p0, v5, p2}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->allFeedImage(ILjava/lang/String;)V

    move v5, v6

    .line 478
    goto/16 :goto_0

    .line 442
    .end local v1           #ih:Lcom/taobao/tao/imagepool/ImageHandler;
    :cond_7
    const-string v7, "TaoSdk.ImgPool"

    const-string v8, "ic is null"

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 471
    .restart local v0       #d:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    .restart local v1       #ih:Lcom/taobao/tao/imagepool/ImageHandler;
    :cond_8
    const/4 v6, -0x2

    invoke-direct {p0, v6, p2}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->allFeedImage(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 483
    .end local v0           #d:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    .end local v1           #ih:Lcom/taobao/tao/imagepool/ImageHandler;
    :cond_9
    invoke-direct {p0, v5, p2}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->allFeedImage(ILjava/lang/String;)V

    move v5, v6

    .line 484
    goto/16 :goto_0
.end method

.method static synthetic access$1000(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->lockExecutor()V

    return-void
.end method

.method static synthetic access$1100(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;Lcom/taobao/tao/imagepool/ImageHandler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 262
    invoke-direct {p0, p1, p2}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->setImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;Lcom/taobao/tao/imagepool/ImageGroup;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->setGroup(Lcom/taobao/tao/imagepool/ImageGroup;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->start()V

    return-void
.end method

.method static synthetic access$1400(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->stop()V

    return-void
.end method

.method static synthetic access$1500(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->releaseIDL()V

    return-void
.end method

.method static synthetic access$600(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_b_executing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)Lcom/taobao/tao/imagepool/ImageHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 262
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->joinExecutor(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V

    return-void
.end method

.method private allFeedImage(ILjava/lang/String;)V
    .locals 8
    .parameter "res"
    .parameter "url"

    .prologue
    .line 493
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    if-eqz v6, :cond_0

    .line 495
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    iget v7, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_indexInGroup:I

    invoke-interface {v6, p1, p2, v7}, Lcom/taobao/tao/imagepool/ImageGroup;->feedImage(ILjava/lang/String;I)V

    .line 498
    :cond_0
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_feedQueue:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 502
    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_feedQueue:Ljava/util/ArrayList;

    monitor-enter v7

    .line 504
    :try_start_0
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_feedQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 505
    .local v5, listeners:[Ljava/lang/Object;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .local v2, l:Ljava/lang/Object;
    move-object v4, v2

    .line 509
    check-cast v4, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor$FeedImageListener;

    .line 510
    .local v4, listener:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor$FeedImageListener;
    iget-object v6, v4, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor$FeedImageListener;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    iget v7, v4, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor$FeedImageListener;->m_index:I

    invoke-interface {v6, p1, p2, v7}, Lcom/taobao/tao/imagepool/ImageGroup;->feedImage(ILjava/lang/String;I)V

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i$:I
    .end local v2           #l:Ljava/lang/Object;
    .end local v3           #len$:I
    .end local v4           #listener:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor$FeedImageListener;
    .end local v5           #listeners:[Ljava/lang/Object;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 515
    :cond_1
    return-void
.end method

.method private joinExecutor(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V
    .locals 3
    .parameter "ih"
    .parameter "ig"
    .parameter "index"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_feedQueue:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_feedQueue:Ljava/util/ArrayList;

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_feedQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_feedQueue:Ljava/util/ArrayList;

    new-instance v2, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor$FeedImageListener;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor$FeedImageListener;-><init>(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    monitor-exit v1

    .line 302
    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final declared-synchronized lockExecutor()V
    .locals 1

    .prologue
    .line 327
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_b_executing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final releaseIDL()V
    .locals 1

    .prologue
    .line 388
    monitor-enter p0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_idl:Lcom/taobao/tao/imagepool/IImageDownloader;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_idl:Lcom/taobao/tao/imagepool/IImageDownloader;

    invoke-interface {v0}, Lcom/taobao/tao/imagepool/IImageDownloader;->destroy()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_idl:Lcom/taobao/tao/imagepool/IImageDownloader;

    .line 395
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_b_executing:Z

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;

    .line 397
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    invoke-interface {v0}, Lcom/taobao/tao/imagepool/ImageGroup;->subLoadingCount()V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    .line 402
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_feedQueue:Ljava/util/ArrayList;

    .line 403
    monitor-exit p0

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized setGroup(Lcom/taobao/tao/imagepool/ImageGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized setImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;I)V
    .locals 1
    .parameter "ih"
    .parameter "index"

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;

    .line 334
    iput p2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_indexInGroup:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized start()V
    .locals 4

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_idl:Lcom/taobao/tao/imagepool/IImageDownloader;

    if-nez v1, :cond_0

    .line 356
    new-instance v1, Lcom/taobao/tao/imagepool/ImageDownloader;

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v2, v2, Lcom/taobao/tao/imagepool/ImagePool;->m_context:Landroid/app/Application;

    invoke-direct {v1, p0, v2}, Lcom/taobao/tao/imagepool/ImageDownloader;-><init>(Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;Landroid/app/Application;)V

    iput-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_idl:Lcom/taobao/tao/imagepool/IImageDownloader;

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, mapurl:Ljava/lang/String;
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->mStragery:Lcom/taobao/tao/imagepool/IImageQualityStrategy;
    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImagePool;->access$000(Lcom/taobao/tao/imagepool/ImagePool;)Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->mStragery:Lcom/taobao/tao/imagepool/IImageQualityStrategy;
    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImagePool;->access$000(Lcom/taobao/tao/imagepool/ImagePool;)Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/taobao/tao/imagepool/IImageQualityStrategy;->decideUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_idl:Lcom/taobao/tao/imagepool/IImageDownloader;

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v2}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    invoke-interface {v3}, Lcom/taobao/tao/imagepool/ImageGroup;->getCachePolicy()I

    move-result v3

    invoke-interface {v1, v2, v0, v3}, Lcom/taobao/tao/imagepool/IImageDownloader;->setURL(Ljava/lang/String;Ljava/lang/String;I)V

    .line 365
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_idl:Lcom/taobao/tao/imagepool/IImageDownloader;

    invoke-interface {v1}, Lcom/taobao/tao/imagepool/IImageDownloader;->startDownload()V

    .line 366
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_b_executing:Z

    .line 367
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    if-eqz v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    invoke-interface {v1}, Lcom/taobao/tao/imagepool/ImageGroup;->addLoadingCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :cond_2
    monitor-exit p0

    return-void

    .line 355
    .end local v0           #mapurl:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final stop()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_idl:Lcom/taobao/tao/imagepool/IImageDownloader;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_idl:Lcom/taobao/tao/imagepool/IImageDownloader;

    invoke-interface {v0}, Lcom/taobao/tao/imagepool/IImageDownloader;->stop()V

    .line 381
    :cond_0
    return-void
.end method


# virtual methods
.method public notify(I[BLjava/lang/String;)V
    .locals 5
    .parameter "msg"
    .parameter "data"
    .parameter "result"

    .prologue
    .line 525
    packed-switch p1, :pswitch_data_0

    .line 542
    :pswitch_0
    :try_start_0
    const-string v0, "TaoSdk.ImgPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImagePool.ImageExecutor.notify() msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    :goto_0
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImagePool;->access$300(Lcom/taobao/tao/imagepool/ImagePool;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 553
    :try_start_1
    const-string v0, "TaoSdk.ImgPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageExecute m_b_executing false url  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_b_executing:Z

    .line 555
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_feedQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 557
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_feedQueue:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 559
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_feedQueue:Ljava/util/ArrayList;

    .line 560
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 562
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;

    .line 565
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImagePool;->access$300(Lcom/taobao/tao/imagepool/ImagePool;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_concurrentDownloadCount:I
    invoke-static {v2}, Lcom/taobao/tao/imagepool/ImagePool;->access$400(Lcom/taobao/tao/imagepool/ImagePool;)I

    move-result v2

    if-le v0, v2, :cond_4

    .line 566
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->releaseIDL()V

    .line 567
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImagePool;->access$300(Lcom/taobao/tao/imagepool/ImagePool;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 579
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 580
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #calls: Lcom/taobao/tao/imagepool/ImagePool;->reSchedule()V
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImagePool;->access$500(Lcom/taobao/tao/imagepool/ImagePool;)V

    .line 582
    return-void

    .line 528
    :pswitch_1
    :try_start_4
    invoke-direct {p0, p2, p3}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->_handleDownloadFinish([BLjava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 551
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImagePool;->access$300(Lcom/taobao/tao/imagepool/ImagePool;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 553
    :try_start_5
    const-string v2, "TaoSdk.ImgPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageExecute m_b_executing false url  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_b_executing:Z

    .line 555
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_feedQueue:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 557
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_feedQueue:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 559
    const/4 v3, 0x0

    :try_start_6
    iput-object v3, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_feedQueue:Ljava/util/ArrayList;

    .line 560
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 562
    :cond_2
    const/4 v2, 0x0

    :try_start_7
    iput-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;

    .line 565
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/taobao/tao/imagepool/ImagePool;->access$300(Lcom/taobao/tao/imagepool/ImagePool;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_concurrentDownloadCount:I
    invoke-static {v3}, Lcom/taobao/tao/imagepool/ImagePool;->access$400(Lcom/taobao/tao/imagepool/ImagePool;)I

    move-result v3

    if-le v2, v3, :cond_5

    .line 566
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->releaseIDL()V

    .line 567
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/taobao/tao/imagepool/ImagePool;->access$300(Lcom/taobao/tao/imagepool/ImagePool;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 579
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 580
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #calls: Lcom/taobao/tao/imagepool/ImagePool;->reSchedule()V
    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImagePool;->access$500(Lcom/taobao/tao/imagepool/ImagePool;)V

    throw v0

    .line 532
    :pswitch_2
    const/4 v0, -0x1

    :try_start_8
    invoke-direct {p0, v0, p3}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->allFeedImage(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 536
    :pswitch_3
    const/4 v0, -0x2

    invoke-direct {p0, v0, p3}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->allFeedImage(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 539
    :pswitch_4
    const-string v0, "TaoSdk.ImgPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImagePool.ImageExecutor.notify() msg MSG_DL_USER_CANCELED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 560
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0

    .line 579
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    .line 572
    :cond_4
    :try_start_b
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    invoke-interface {v0}, Lcom/taobao/tao/imagepool/ImageGroup;->subLoadingCount()V

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_1

    .line 560
    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0

    .line 579
    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    .line 572
    :cond_5
    :try_start_e
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    if-eqz v2, :cond_3

    .line 574
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    invoke-interface {v2}, Lcom/taobao/tao/imagepool/ImageGroup;->subLoadingCount()V

    .line 575
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_2

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x3f7
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 6
    .parameter "desc"
    .parameter "size"
    .parameter "total"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_indexInGroup:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/taobao/tao/imagepool/ImageGroup;->onProgress(Ljava/lang/String;IILjava/lang/String;I)V

    .line 593
    :goto_0
    return-void

    .line 591
    :cond_0
    const-string v0, "TaoSdk.ImgPool"

    const-string v1, "!!!null point in onProgress"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
