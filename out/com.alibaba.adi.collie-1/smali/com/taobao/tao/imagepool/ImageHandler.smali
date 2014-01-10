.class public Lcom/taobao/tao/imagepool/ImageHandler;
.super Ljava/lang/Object;
.source "ImageHandler.java"


# static fields
.field static final CONVERTED:I = 0x6

.field static final LOADED:I = 0x3

.field static final LOADING:I = 0x2

.field static final LOAD_FAILED:I = 0x4

.field static final LOAD_RECYCLE:I = 0x5

.field static final NOT_LOADED:I


# instance fields
.field private loadState:I

.field private m_URI:Ljava/lang/String;

.field private m_bitmapCreator:Lcom/taobao/tao/imagepool/BitmapCreator;

.field private m_cachePolicy:I

.field m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

.field m_refCount:I

.field private viewTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "uri"
    .parameter "cp"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_refCount:I

    .line 176
    iput v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->loadState:I

    .line 33
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_URI:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_cachePolicy:I

    .line 35
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILcom/taobao/tao/imagepool/BitmapCreator;)V
    .locals 1
    .parameter "uri"
    .parameter "cp"
    .parameter "bc"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_refCount:I

    .line 176
    iput v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->loadState:I

    .line 45
    iput-object p3, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_bitmapCreator:Lcom/taobao/tao/imagepool/BitmapCreator;

    .line 46
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_URI:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_cachePolicy:I

    .line 48
    return-void
.end method


# virtual methods
.method public final URI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_URI:Ljava/lang/String;

    return-object v0
.end method

.method _ReloadRecyceledIfNeed()Z
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageHandler;->isRecyceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_cachePolicy:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/taobao/tao/imagepool/ImagePool;->_loadDrawable(Lcom/taobao/tao/imagepool/ImageHandler;Ljava/lang/String;I)Z

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized addRef()V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_refCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method bitmapSize()I
    .locals 2

    .prologue
    .line 164
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    if-eqz v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    .line 167
    .local v0, td:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    invoke-virtual {v0}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->bitmapSize()I

    move-result v1

    .line 169
    .end local v0           #td:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBitmapCreator()Lcom/taobao/tao/imagepool/BitmapCreator;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_bitmapCreator:Lcom/taobao/tao/imagepool/BitmapCreator;

    return-object v0
.end method

.method public final getCachePolicy()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_cachePolicy:I

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taobao/tao/imagepool/ImageHandler;->getDrawable(Lcom/taobao/tao/imagepool/BitmapConvertor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Lcom/taobao/tao/imagepool/BitmapConvertor;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "convertor"

    .prologue
    .line 225
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    if-nez v3, :cond_0

    .line 226
    const/4 v3, 0x0

    .line 252
    :goto_0
    return-object v3

    .line 227
    :cond_0
    monitor-enter p0

    .line 230
    :try_start_0
    iget v3, p0, Lcom/taobao/tao/imagepool/ImageHandler;->loadState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 233
    if-eqz p1, :cond_1

    .line 235
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    invoke-virtual {v3}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 236
    .local v2, originBitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1, v2}, Lcom/taobao/tao/imagepool/BitmapConvertor;->convertTo(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 237
    .local v0, newBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    .line 241
    new-instance v1, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    invoke-direct {v1, v0}, Lcom/taobao/tao/imagepool/utility/TBDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 242
    .local v1, newDrawable:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/taobao/tao/imagepool/ImageHandler;->setDrawable(Landroid/graphics/drawable/Drawable;Z)Z

    .line 243
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v3

    iget-object v3, v3, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v4, v3, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createNum:I

    .line 244
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v3

    iget-object v3, v3, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v4, v3, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->bitmapSize()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    .line 246
    const/4 v3, 0x6

    iput v3, p0, Lcom/taobao/tao/imagepool/ImageHandler;->loadState:I

    .line 251
    .end local v0           #newBitmap:Landroid/graphics/Bitmap;
    .end local v1           #newDrawable:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    .end local v2           #originBitmap:Landroid/graphics/Bitmap;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method getState()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->loadState:I

    return v0
.end method

.method public getViewTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->viewTag:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized isRecyceled()Z
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x1

    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    if-nez v2, :cond_2

    .line 191
    iget v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->loadState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_1

    .line 212
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 196
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 200
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    invoke-virtual {v2}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    .line 204
    .local v1, r:Z
    if-eqz v1, :cond_0

    .line 206
    const/4 v2, 0x5

    iput v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->loadState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #r:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method isRecyclable()Z
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_refCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isValideDrawable()Z
    .locals 3

    .prologue
    .line 109
    monitor-enter p0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageHandler;->addRef()V

    .line 112
    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageHandler;->isRecyceled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageHandler;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageHandler;->subRef()V

    .line 115
    const-string v0, "TaoSdk.ImgPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageHandler ih is not contians bitmap url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    monitor-exit p0

    .line 119
    :goto_0
    return v0

    .line 118
    :cond_1
    monitor-exit p0

    .line 119
    const/4 v0, 0x1

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printState(Z)V
    .locals 3
    .parameter "bOnlyRefed"

    .prologue
    .line 330
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_refCount:I

    if-gtz v0, :cond_0

    if-nez p1, :cond_1

    .line 331
    :cond_0
    const-string v0, "PerfImageLeak"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ih ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->viewTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->loadState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_refCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",   uri= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_1
    return-void
.end method

.method public final setCachePolicy(I)V
    .locals 0
    .parameter "cp"

    .prologue
    .line 279
    iput p1, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_cachePolicy:I

    return-void
.end method

.method final setDrawable(Landroid/graphics/drawable/Drawable;Z)Z
    .locals 6
    .parameter "drawable"
    .parameter "force"

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    .line 285
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    if-eq v2, p1, :cond_1

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    invoke-virtual {v2}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v2, p1

    check-cast v2, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    invoke-virtual {v2}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v4, v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    invoke-virtual {v2}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageHandler;->isRecyclable()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_3

    .line 292
    :cond_0
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v3, v2, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroyNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroyNum:I

    .line 293
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v3, v2, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroySize:I

    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    invoke-virtual {v4}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->bitmapSize()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroySize:I

    .line 294
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    invoke-virtual {v2}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->recycle()Z

    .line 295
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->setImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;)V

    .line 312
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1
    check-cast p1, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    .end local p1
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    .line 313
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    invoke-virtual {v2, p0}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->setImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;)V

    .line 314
    iget v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->loadState:I

    if-eq v2, v5, :cond_2

    .line 316
    invoke-virtual {p0, v5}, Lcom/taobao/tao/imagepool/ImageHandler;->setState(I)V

    .line 322
    :cond_2
    const/4 v2, 0x1

    :goto_0
    return v2

    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_3
    move-object v1, p1

    .line 301
    check-cast v1, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    .line 302
    .local v1, d:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->recycle()Z

    .line 303
    const-string v2, "TaoSdk.ImgPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a none recycled bitmap m_dr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0, v3}, Lcom/taobao/tao/imagepool/ImageHandler;->printState(Z)V

    move v2, v3

    .line 305
    goto :goto_0
.end method

.method setState(I)V
    .locals 0
    .parameter "s"

    .prologue
    .line 180
    iput p1, p0, Lcom/taobao/tao/imagepool/ImageHandler;->loadState:I

    .line 181
    return-void
.end method

.method public final setURI(Ljava/lang/String;)V
    .locals 0
    .parameter "URI"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_URI:Ljava/lang/String;

    return-void
.end method

.method public setViewTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImageHandler;->viewTag:Ljava/lang/String;

    .line 58
    return-void
.end method

.method declared-synchronized subRef()V
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_refCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method tryRecycle()Z
    .locals 5

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, res:Z
    const/4 v1, 0x0

    .line 129
    .local v1, size:I
    monitor-enter p0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageHandler;->isRecyclable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    if-eqz v3, :cond_0

    .line 137
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    .line 138
    .local v2, td:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    invoke-virtual {v2}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->bitmapSize()I

    move-result v1

    .line 139
    invoke-virtual {v2}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->recycle()Z

    move-result v0

    .line 143
    .end local v2           #td:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-eqz v0, :cond_1

    .line 150
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v3

    iget-object v3, v3, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v4, v3, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroyNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroyNum:I

    .line 151
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v3

    iget-object v3, v3, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v4, v3, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroySize:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroySize:I

    .line 152
    const/4 v3, 0x5

    iput v3, p0, Lcom/taobao/tao/imagepool/ImageHandler;->loadState:I

    .line 155
    :cond_1
    return v0

    .line 143
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
