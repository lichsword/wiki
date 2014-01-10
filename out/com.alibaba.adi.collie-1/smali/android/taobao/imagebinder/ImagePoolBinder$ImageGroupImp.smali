.class public Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;
.super Lcom/taobao/tao/imagepool/ImageGroupBase;
.source "ImagePoolBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/imagebinder/ImagePoolBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageGroupImp"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/imagebinder/ImagePoolBinder;


# direct methods
.method public constructor <init>(Landroid/taobao/imagebinder/ImagePoolBinder;Ljava/lang/String;Landroid/app/Application;II)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "context"
    .parameter "priority"
    .parameter "cache_type"

    .prologue
    .line 259
    iput-object p1, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    .line 260
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/taobao/tao/imagepool/ImageGroupBase;-><init>(Ljava/lang/String;Landroid/app/Application;II)V

    .line 262
    invoke-virtual {p0, p0}, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->setImageListener(Lcom/taobao/tao/imagepool/ImageListener;)V

    .line 264
    invoke-virtual {p0}, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->start()V

    .line 265
    return-void
.end method


# virtual methods
.method public appendList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 399
    return-void
.end method

.method public appendURIList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 406
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mImageGroup:Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;
    invoke-static {v0}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$100(Landroid/taobao/imagebinder/ImagePoolBinder;)Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->getCachePolicy()I

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/tao/imagepool/ImagePool;->clearCache(I)V

    .line 300
    :cond_0
    return-void
.end method

.method public deleteImage(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 412
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    const/4 v1, 0x1

    #setter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mIsPaused:Z
    invoke-static {v0, v1}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$002(Landroid/taobao/imagebinder/ImagePoolBinder;Z)Z

    .line 287
    invoke-virtual {p0}, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->clear()V

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->setImageListener(Lcom/taobao/tao/imagepool/ImageListener;)V

    .line 289
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/tao/imagepool/ImagePool;->removeGroup(Lcom/taobao/tao/imagepool/ImageGroup;)Z

    .line 290
    return-void
.end method

.method public feedImage(ILjava/lang/String;I)V
    .locals 6
    .parameter "res"
    .parameter "URI"
    .parameter "index"

    .prologue
    .line 351
    if-nez p1, :cond_0

    .line 352
    const-string v2, "ImagePoolBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadSuccess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$200(Landroid/taobao/imagebinder/ImagePoolBinder;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 355
    :try_start_0
    iget-object v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #calls: Landroid/taobao/imagebinder/ImagePoolBinder;->removeDownloadUrl(Ljava/lang/String;)V
    invoke-static {v2, p2}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$500(Landroid/taobao/imagebinder/ImagePoolBinder;Ljava/lang/String;)V

    .line 356
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-object v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    invoke-virtual {v2, p2, p3}, Landroid/taobao/imagebinder/ImagePoolBinder;->onImageDownloaded(Ljava/lang/String;I)V

    .line 385
    :goto_0
    return-void

    .line 356
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 361
    :cond_0
    const-string v2, "ImagePoolBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadFailed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$200(Landroid/taobao/imagebinder/ImagePoolBinder;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 364
    :try_start_2
    iget-object v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$200(Landroid/taobao/imagebinder/ImagePoolBinder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 365
    .local v1, location:I
    iget-object v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mDownloadIndex:I
    invoke-static {v2}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$300(Landroid/taobao/imagebinder/ImagePoolBinder;)I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 366
    iget-object v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    invoke-static {v2}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$310(Landroid/taobao/imagebinder/ImagePoolBinder;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 369
    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$200(Landroid/taobao/imagebinder/ImagePoolBinder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 370
    const/4 v2, -0x2

    if-eq p1, v2, :cond_2

    .line 371
    iget-object v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$200(Landroid/taobao/imagebinder/ImagePoolBinder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 381
    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 382
    invoke-virtual {p0}, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->resume()V

    goto :goto_0

    .line 373
    :cond_2
    :try_start_5
    const-string v2, "ImagePoolBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FAIL_NO_REPEAT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    invoke-virtual {v2, p2, p3}, Landroid/taobao/imagebinder/ImagePoolBinder;->onImageDownloadedFailed(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 381
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #location:I
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2
.end method

.method public onProgress(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 1
    .parameter "desc"
    .parameter "size"
    .parameter "total"
    .parameter "url"
    .parameter "index"

    .prologue
    .line 431
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    invoke-virtual {v0, p4, p2, p3}, Landroid/taobao/imagebinder/ImagePoolBinder;->onImageProgress(Ljava/lang/String;II)V

    .line 432
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 270
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    iget v1, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->m_priority:I

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/taobao/tao/imagepool/ImagePool;->groupPriorityChanged(Lcom/taobao/tao/imagepool/ImageGroup;II)V

    .line 271
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    const/4 v1, 0x1

    #setter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mIsPaused:Z
    invoke-static {v0, v1}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$002(Landroid/taobao/imagebinder/ImagePoolBinder;Z)Z

    .line 273
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 278
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->m_priority:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/taobao/tao/imagepool/ImagePool;->groupPriorityChanged(Lcom/taobao/tao/imagepool/ImageGroup;II)V

    .line 279
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    const/4 v1, 0x0

    #setter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mIsPaused:Z
    invoke-static {v0, v1}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$002(Landroid/taobao/imagebinder/ImagePoolBinder;Z)Z

    .line 280
    return-void
.end method

.method public scheduleNext()Lcom/taobao/tao/imagepool/ScheduleInfo;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 305
    const-string v4, "ImagePoolBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scheduleNext"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ispause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mIsPaused:Z
    invoke-static {v7}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$000(Landroid/taobao/imagebinder/ImagePoolBinder;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v4, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mIsPaused:Z
    invoke-static {v4}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$000(Landroid/taobao/imagebinder/ImagePoolBinder;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v5

    .line 343
    :goto_0
    return-object v1

    .line 309
    :cond_0
    iget-object v4, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$200(Landroid/taobao/imagebinder/ImagePoolBinder;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 311
    :try_start_0
    iget-object v4, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$200(Landroid/taobao/imagebinder/ImagePoolBinder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 314
    .local v2, size:I
    :cond_1
    iget-object v4, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mDownloadIndex:I
    invoke-static {v4}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$300(Landroid/taobao/imagebinder/ImagePoolBinder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ge v4, v2, :cond_3

    .line 317
    :try_start_1
    iget-object v4, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$200(Landroid/taobao/imagebinder/ImagePoolBinder;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mDownloadIndex:I
    invoke-static {v7}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$300(Landroid/taobao/imagebinder/ImagePoolBinder;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 318
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    invoke-static {v4}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$308(Landroid/taobao/imagebinder/ImagePoolBinder;)I

    .line 319
    const-string v4, "ImagePoolBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get url to download:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v1, 0x0

    .line 321
    .local v1, info:Lcom/taobao/tao/imagepool/ScheduleInfo;
    if-eqz v3, :cond_1

    .line 322
    new-instance v1, Lcom/taobao/tao/imagepool/ScheduleInfo;

    .end local v1           #info:Lcom/taobao/tao/imagepool/ScheduleInfo;
    invoke-direct {v1}, Lcom/taobao/tao/imagepool/ScheduleInfo;-><init>()V

    .line 323
    .restart local v1       #info:Lcom/taobao/tao/imagepool/ScheduleInfo;
    iget-object v4, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mDownloadIndex:I
    invoke-static {v4}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$300(Landroid/taobao/imagebinder/ImagePoolBinder;)I

    move-result v4

    iput v4, v1, Lcom/taobao/tao/imagepool/ScheduleInfo;->index:I

    .line 324
    if-eqz v3, :cond_2

    iget-object v4, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mMapUrlToCreator:Ljava/util/Map;
    invoke-static {v4}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$400(Landroid/taobao/imagebinder/ImagePoolBinder;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mMapUrlToCreator:Ljava/util/Map;
    invoke-static {v4}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$400(Landroid/taobao/imagebinder/ImagePoolBinder;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 325
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v7

    iget v8, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->m_cachePolicy:I

    iget-object v4, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->this$0:Landroid/taobao/imagebinder/ImagePoolBinder;

    #getter for: Landroid/taobao/imagebinder/ImagePoolBinder;->mMapUrlToCreator:Ljava/util/Map;
    invoke-static {v4}, Landroid/taobao/imagebinder/ImagePoolBinder;->access$400(Landroid/taobao/imagebinder/ImagePoolBinder;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/tao/imagepool/BitmapCreator;

    invoke-virtual {v7, v3, v8, v4}, Lcom/taobao/tao/imagepool/ImagePool;->_createImageHandler(Ljava/lang/String;ILcom/taobao/tao/imagepool/BitmapCreator;)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/tao/imagepool/ScheduleInfo;->ih:Lcom/taobao/tao/imagepool/ImageHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 329
    :goto_1
    :try_start_2
    monitor-exit v6

    goto/16 :goto_0

    .line 344
    .end local v1           #info:Lcom/taobao/tao/imagepool/ScheduleInfo;
    .end local v2           #size:I
    .end local v3           #url:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 327
    .restart local v1       #info:Lcom/taobao/tao/imagepool/ScheduleInfo;
    .restart local v2       #size:I
    .restart local v3       #url:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v4

    iget v7, p0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->m_cachePolicy:I

    invoke-virtual {v4, v3, v7}, Lcom/taobao/tao/imagepool/ImagePool;->_createImageHandler(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/tao/imagepool/ScheduleInfo;->ih:Lcom/taobao/tao/imagepool/ImageHandler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 332
    .end local v1           #info:Lcom/taobao/tao/imagepool/ScheduleInfo;
    .end local v3           #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 335
    monitor-exit v6

    move-object v1, v5

    goto/16 :goto_0

    .line 343
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v5

    goto/16 :goto_0
.end method

.method public setActiveWindow(II)Z
    .locals 1
    .parameter "startPosition"
    .parameter "size"

    .prologue
    .line 426
    const/4 v0, 0x1

    return v0
.end method

.method public setHandlerList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 419
    return-void
.end method

.method public setURIList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 392
    return-void
.end method
