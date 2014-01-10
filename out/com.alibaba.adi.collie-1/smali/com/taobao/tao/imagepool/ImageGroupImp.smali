.class public Lcom/taobao/tao/imagepool/ImageGroupImp;
.super Lcom/taobao/tao/imagepool/ImageGroupBase;
.source "ImageGroupImp.java"


# static fields
.field public static final WINDOW_TO_TAIL:I = -0x1


# instance fields
.field private m_activeWindowSize:I

.field private m_activeWindowStart:I

.field private m_b_paused:Z

.field private m_dlIndex:I

.field private m_queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/tao/imagepool/ImageHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Application;II)V
    .locals 1
    .parameter "name"
    .parameter "context"
    .parameter "priority"
    .parameter "cache_type"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/tao/imagepool/ImageGroupBase;-><init>(Ljava/lang/String;Landroid/app/Application;II)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_dlIndex:I

    .line 101
    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageGroupImp;->defaultInit()V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Application;Lcom/taobao/tao/imagepool/ImageListener;II)V
    .locals 1
    .parameter "name"
    .parameter
    .parameter "context"
    .parameter "listener"
    .parameter "priority"
    .parameter "cachePolicy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Application;",
            "Lcom/taobao/tao/imagepool/ImageListener;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, URIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p3, p5, p6}, Lcom/taobao/tao/imagepool/ImageGroupBase;-><init>(Ljava/lang/String;Landroid/app/Application;II)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_dlIndex:I

    .line 117
    iput-object p4, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_il:Lcom/taobao/tao/imagepool/ImageListener;

    .line 118
    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageGroupImp;->defaultInit()V

    .line 119
    invoke-virtual {p0, p2}, Lcom/taobao/tao/imagepool/ImageGroupImp;->setURIList(Ljava/util/ArrayList;)V

    .line 120
    return-void
.end method

.method private _isInList(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/tao/imagepool/ImageHandler;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, handlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/taobao/tao/imagepool/ImageHandler;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/tao/imagepool/ImageHandler;

    .line 143
    .local v1, ih:Lcom/taobao/tao/imagepool/ImageHandler;
    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 144
    const/4 v2, 0x1

    .line 146
    .end local v1           #ih:Lcom/taobao/tao/imagepool/ImageHandler;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private final cancelList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 231
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 232
    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/tao/imagepool/ImageHandler;

    .line 238
    .local v1, ih:Lcom/taobao/tao/imagepool/ImageHandler;
    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/ImageHandler;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 242
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v2

    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/tao/imagepool/ImagePool;->cancelLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #ih:Lcom/taobao/tao/imagepool/ImageHandler;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 249
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 250
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    iput v4, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_loadingCount:I

    .line 254
    iput v4, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_dlIndex:I

    .line 256
    return-void
.end method


# virtual methods
.method public final appendList(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/tao/imagepool/ImageHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, URIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/taobao/tao/imagepool/ImageHandler;>;"
    monitor-enter p0

    .line 198
    if-eqz p1, :cond_1

    .line 200
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/imagepool/ImageHandler;

    .line 202
    .local v0, URI:Lcom/taobao/tao/imagepool/ImageHandler;
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_queue:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_queue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    .end local v0           #URI:Lcom/taobao/tao/imagepool/ImageHandler;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/taobao/tao/imagepool/ImagePool;->groupChanged(Lcom/taobao/tao/imagepool/ImageGroup;)V

    .line 210
    return-void
.end method

.method public final appendURIList(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, URIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, hds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/taobao/tao/imagepool/ImageHandler;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 181
    .local v3, str:Ljava/lang/String;
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageGroupImp;->getCachePolicy()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/taobao/tao/imagepool/ImagePool;->_createImageHandler(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v2

    .line 182
    .local v2, ih:Lcom/taobao/tao/imagepool/ImageHandler;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    .end local v2           #ih:Lcom/taobao/tao/imagepool/ImageHandler;
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/taobao/tao/imagepool/ImageGroupImp;->appendList(Ljava/util/ArrayList;)V

    .line 186
    return-void
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImageGroupImp;->cancelList()V

    .line 324
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/tao/imagepool/ImagePool;->removeGroup(Lcom/taobao/tao/imagepool/ImageGroup;)Z

    .line 325
    return-void
.end method

.method protected defaultInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iput v1, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_activeWindowStart:I

    .line 131
    iput v1, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_dlIndex:I

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_activeWindowSize:I

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_queue:Ljava/util/ArrayList;

    .line 134
    iput-boolean v1, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_b_paused:Z

    .line 135
    return-void
.end method

.method public deleteImage(Ljava/lang/String;)V
    .locals 2
    .parameter "URL"

    .prologue
    .line 403
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    iget v1, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_cachePolicy:I

    invoke-virtual {v0, p1, v1}, Lcom/taobao/tao/imagepool/ImagePool;->delImage(Ljava/lang/String;I)V

    .line 404
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_il:Lcom/taobao/tao/imagepool/ImageListener;

    .line 311
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImageGroupImp;->cancelList()V

    .line 312
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/tao/imagepool/ImagePool;->removeGroup(Lcom/taobao/tao/imagepool/ImageGroup;)Z

    .line 314
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/imagepool/ImagePool;->ForceBitmapRecycleAll()V

    .line 315
    return-void
.end method

.method public feedImage(ILjava/lang/String;I)V
    .locals 2
    .parameter "res"
    .parameter "URI"
    .parameter "index"

    .prologue
    .line 377
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    if-nez p1, :cond_2

    .line 383
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/imagepool/ImageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/taobao/tao/imagepool/ImageHandler;->setState(I)V

    .line 392
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImageGroupImp;->doSendMsg(ILjava/lang/String;I)V

    goto :goto_0

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/imagepool/ImageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/tao/imagepool/ImageHandler;->setState(I)V

    goto :goto_1
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_b_paused:Z

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x2

    .line 85
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_priority:I

    goto :goto_0
.end method

.method public onProgress(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .parameter "desc"
    .parameter "size"
    .parameter "total"
    .parameter "url"
    .parameter "index"

    .prologue
    .line 411
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_b_paused:Z

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "TaoSdk.ImgPool"

    const-string v1, "ImageGroup.MSG_PAUSE abort, repeated operation"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_0
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_b_paused:Z

    .line 274
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    iget v1, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_priority:I

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/taobao/tao/imagepool/ImagePool;->groupPriorityChanged(Lcom/taobao/tao/imagepool/ImageGroup;II)V

    .line 281
    const-string v0, "TaoSdk.ImgPool"

    const-string v1, "ImageGroup pause done"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final resume()V
    .locals 3

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_b_paused:Z

    if-nez v0, :cond_0

    .line 293
    const-string v0, "TaoSdk.ImgPool"

    const-string v1, "ImageGroup.MSG_RESUME abort, repeated operation"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_b_paused:Z

    .line 298
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_activeWindowStart:I

    iput v0, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_dlIndex:I

    .line 299
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_priority:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/taobao/tao/imagepool/ImagePool;->groupPriorityChanged(Lcom/taobao/tao/imagepool/ImageGroup;II)V

    .line 300
    const-string v0, "TaoSdk.ImgPool"

    const-string v1, "ImageGroup resume done"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized scheduleNext()Lcom/taobao/tao/imagepool/ScheduleInfo;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 336
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_activeWindowSize:I

    if-eq v2, v4, :cond_0

    .line 338
    iget v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_dlIndex:I

    iget v3, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_activeWindowStart:I

    if-ge v2, v3, :cond_0

    .line 340
    iget v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_activeWindowStart:I

    iput v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_dlIndex:I

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 344
    .local v1, total:I
    iget v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_dlIndex:I

    if-ge v2, v1, :cond_1

    .line 347
    iget v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_activeWindowSize:I

    if-eq v2, v4, :cond_2

    .line 349
    iget v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_dlIndex:I

    iget v3, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_activeWindowStart:I

    iget v4, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_activeWindowSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_2

    .line 362
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 352
    :cond_2
    :try_start_1
    new-instance v0, Lcom/taobao/tao/imagepool/ScheduleInfo;

    invoke-direct {v0}, Lcom/taobao/tao/imagepool/ScheduleInfo;-><init>()V

    .line 353
    .local v0, info:Lcom/taobao/tao/imagepool/ScheduleInfo;
    iget v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_dlIndex:I

    iput v2, v0, Lcom/taobao/tao/imagepool/ScheduleInfo;->index:I

    .line 354
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_queue:Ljava/util/ArrayList;

    iget v3, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_dlIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_dlIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/tao/imagepool/ImageHandler;

    iput-object v2, v0, Lcom/taobao/tao/imagepool/ScheduleInfo;->ih:Lcom/taobao/tao/imagepool/ImageHandler;

    .line 355
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v2

    iget-object v3, v0, Lcom/taobao/tao/imagepool/ScheduleInfo;->ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v3}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/tao/imagepool/ImagePool;->getImageHandlerInMemory(Ljava/lang/String;)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v2

    if-nez v2, :cond_1

    .line 356
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v2

    iget-object v3, v0, Lcom/taobao/tao/imagepool/ScheduleInfo;->ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v3}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_cachePolicy:I

    invoke-virtual {v2, v3, v4}, Lcom/taobao/tao/imagepool/ImagePool;->_createImageHandler(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/tao/imagepool/ScheduleInfo;->ih:Lcom/taobao/tao/imagepool/ImageHandler;

    .line 357
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_queue:Ljava/util/ArrayList;

    iget v3, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_dlIndex:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, v0, Lcom/taobao/tao/imagepool/ScheduleInfo;->ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    .end local v0           #info:Lcom/taobao/tao/imagepool/ScheduleInfo;
    .end local v1           #total:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setActiveWindow(II)Z
    .locals 5
    .parameter "startPosition"
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string v2, "TaoSdk.ImgPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageGroup::setActiveWindow() called pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_groupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_queue:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 40
    const-string v2, "TaoSdk.ImgPool"

    const-string v3, "ImageGroup::setActiveWindow() can not set window to empty group"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    return v1

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 44
    .local v0, total:I
    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_2

    .line 45
    :cond_1
    const-string v2, "TaoSdk.ImgPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageGroup::setActiveWindow() error startPosition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", group size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_2
    if-ge v0, p2, :cond_3

    .line 48
    const-string v2, "TaoSdk.ImgPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageGroup::setActiveWindow() error window size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " larger than group size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_3
    iput p1, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_activeWindowStart:I

    .line 53
    sub-int v1, v0, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_activeWindowSize:I

    .line 56
    iget v1, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_activeWindowStart:I

    iput v1, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_dlIndex:I

    .line 73
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/tao/imagepool/ImagePool;->groupChanged(Lcom/taobao/tao/imagepool/ImageGroup;)V

    .line 74
    const-string v1, "TaoSdk.ImgPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageGroup::setActiveWindow() start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_activeWindowSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public final setHandlerList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/tao/imagepool/ImageHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, handlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/taobao/tao/imagepool/ImageHandler;>;"
    const/4 v2, 0x4

    iget v3, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_cachePolicy:I

    if-ne v2, v3, :cond_1

    .line 160
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/tao/imagepool/ImageHandler;

    .line 163
    .local v1, ih:Lcom/taobao/tao/imagepool/ImageHandler;
    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/taobao/tao/imagepool/ImageGroupImp;->_isInList(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/taobao/tao/imagepool/ImageGroupImp;->deleteImage(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #ih:Lcom/taobao/tao/imagepool/ImageHandler;
    :cond_1
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImageGroupImp;->cancelList()V

    .line 171
    invoke-virtual {p0, p1}, Lcom/taobao/tao/imagepool/ImageGroupImp;->appendList(Ljava/util/ArrayList;)V

    .line 172
    return-void
.end method

.method public final setURIList(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, URIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v0, handlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/taobao/tao/imagepool/ImageHandler;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, uri:Ljava/lang/String;
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v3

    iget v4, p0, Lcom/taobao/tao/imagepool/ImageGroupImp;->m_cachePolicy:I

    invoke-virtual {v3, v2, v4}, Lcom/taobao/tao/imagepool/ImagePool;->_createImageHandler(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    .end local v2           #uri:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/taobao/tao/imagepool/ImageGroupImp;->setHandlerList(Ljava/util/ArrayList;)V

    .line 225
    return-void
.end method
