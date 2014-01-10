.class public Landroid/taobao/imagebinder/DrawableProxy;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableProxy.java"


# static fields
.field private static final MAX_POOL_SIZE:I = 0x32

.field private static sPool:Landroid/taobao/imagebinder/DrawableProxy;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;


# instance fields
.field private mBindedView:Landroid/view/View;

.field private mIsRecycled:Z

.field protected mNext:Landroid/taobao/imagebinder/DrawableProxy;

.field private mOwner:Landroid/taobao/imagebinder/ImageBinder;

.field protected mRealDrawable:Landroid/graphics/drawable/Drawable;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/taobao/imagebinder/DrawableProxy;->sPoolSync:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    sput v0, Landroid/taobao/imagebinder/DrawableProxy;->sPoolSize:I

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/taobao/imagebinder/ImageBinder;)V
    .locals 3
    .parameter "drawable"
    .parameter "url"
    .parameter "owner"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 77
    const-string v0, "DrawableProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create DrawableProxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    iput-object p2, p0, Landroid/taobao/imagebinder/DrawableProxy;->mUrl:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mIsRecycled:Z

    .line 81
    iput-object p3, p0, Landroid/taobao/imagebinder/DrawableProxy;->mOwner:Landroid/taobao/imagebinder/ImageBinder;

    .line 82
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 83
    return-void
.end method

.method public static obtain(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/taobao/imagebinder/ImageBinder;)Landroid/taobao/imagebinder/DrawableProxy;
    .locals 3
    .parameter "d"
    .parameter "url"
    .parameter "owner"

    .prologue
    .line 59
    sget-object v2, Landroid/taobao/imagebinder/DrawableProxy;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 60
    :try_start_0
    sget-object v1, Landroid/taobao/imagebinder/DrawableProxy;->sPool:Landroid/taobao/imagebinder/DrawableProxy;

    if-eqz v1, :cond_0

    .line 61
    sget-object v0, Landroid/taobao/imagebinder/DrawableProxy;->sPool:Landroid/taobao/imagebinder/DrawableProxy;

    .line 62
    .local v0, p:Landroid/taobao/imagebinder/DrawableProxy;
    iget-object v1, v0, Landroid/taobao/imagebinder/DrawableProxy;->mNext:Landroid/taobao/imagebinder/DrawableProxy;

    sput-object v1, Landroid/taobao/imagebinder/DrawableProxy;->sPool:Landroid/taobao/imagebinder/DrawableProxy;

    .line 63
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/taobao/imagebinder/DrawableProxy;->mNext:Landroid/taobao/imagebinder/DrawableProxy;

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/taobao/imagebinder/DrawableProxy;->mIsRecycled:Z

    .line 65
    iput-object p1, v0, Landroid/taobao/imagebinder/DrawableProxy;->mUrl:Ljava/lang/String;

    .line 66
    iput-object p2, v0, Landroid/taobao/imagebinder/DrawableProxy;->mOwner:Landroid/taobao/imagebinder/ImageBinder;

    .line 67
    iput-object p0, v0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    sget v1, Landroid/taobao/imagebinder/DrawableProxy;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/taobao/imagebinder/DrawableProxy;->sPoolSize:I

    .line 69
    monitor-exit v2

    .line 72
    .end local v0           #p:Landroid/taobao/imagebinder/DrawableProxy;
    :goto_0
    return-object v0

    .line 71
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    new-instance v0, Landroid/taobao/imagebinder/DrawableProxy;

    invoke-direct {v0, p0, p1, p2}, Landroid/taobao/imagebinder/DrawableProxy;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/taobao/imagebinder/ImageBinder;)V

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 301
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 91
    iget-boolean v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mIsRecycled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 92
    const-string v0, "DrawableProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/imagebinder/DrawableProxy;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mOwner:Landroid/taobao/imagebinder/ImageBinder;

    iget-object v1, p0, Landroid/taobao/imagebinder/DrawableProxy;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/taobao/imagebinder/ImageBinder;->getDrawableInMem(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 97
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mBindedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mIsRecycled:Z

    .line 99
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mBindedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 100
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mOwner:Landroid/taobao/imagebinder/ImageBinder;

    iget-object v1, p0, Landroid/taobao/imagebinder/DrawableProxy;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/imagebinder/DrawableProxy;->mBindedView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/taobao/imagebinder/ImageBinder;->setBackgroundDrawable(Ljava/lang/String;Landroid/view/View;)Z

    .line 127
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/taobao/imagebinder/DrawableProxy;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 131
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    :cond_1
    :goto_1
    return-void

    .line 102
    :cond_2
    iget-object v1, p0, Landroid/taobao/imagebinder/DrawableProxy;->mOwner:Landroid/taobao/imagebinder/ImageBinder;

    iget-object v2, p0, Landroid/taobao/imagebinder/DrawableProxy;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mBindedView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/taobao/imagebinder/ImageBinder;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)Z

    goto :goto_0

    .line 106
    :cond_3
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/taobao/imagebinder/DrawableProxy;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 111
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mBindedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mBindedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 113
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mBindedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/taobao/imagebinder/DrawableProxy;->flushImg2Cache()V

    .line 26
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 27
    return-void
.end method

.method protected flushImg2Cache()V
    .locals 4

    .prologue
    .line 151
    const-string v1, "DrawableProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache img:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/taobao/imagebinder/DrawableProxy;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 153
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    .local v0, tmpDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v1, p0, Landroid/taobao/imagebinder/DrawableProxy;->mOwner:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {v1, v0}, Landroid/taobao/imagebinder/ImageBinder;->releaseDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    .end local v0           #tmpDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected getBindedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mBindedView:Landroid/view/View;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 214
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 258
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 366
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 358
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 371
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 374
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public getRealDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 243
    :cond_0
    return-void
.end method

.method protected isRecycled()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mIsRecycled:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 308
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    goto :goto_0
.end method

.method protected recycle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 168
    const-string v0, "DrawableProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recycle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/imagebinder/DrawableProxy;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Landroid/taobao/imagebinder/DrawableProxy;->flushImg2Cache()V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mIsRecycled:Z

    .line 171
    iput-object v4, p0, Landroid/taobao/imagebinder/DrawableProxy;->mUrl:Ljava/lang/String;

    .line 172
    iput-object v4, p0, Landroid/taobao/imagebinder/DrawableProxy;->mBindedView:Landroid/view/View;

    .line 173
    iput-object v4, p0, Landroid/taobao/imagebinder/DrawableProxy;->mOwner:Landroid/taobao/imagebinder/ImageBinder;

    .line 174
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/taobao/imagebinder/DrawableProxy;->setBounds(IIII)V

    .line 175
    sget-object v1, Landroid/taobao/imagebinder/DrawableProxy;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    sget v0, Landroid/taobao/imagebinder/DrawableProxy;->sPoolSize:I

    const/16 v2, 0x32

    if-ge v0, v2, :cond_0

    .line 177
    sget-object v0, Landroid/taobao/imagebinder/DrawableProxy;->sPool:Landroid/taobao/imagebinder/DrawableProxy;

    iput-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mNext:Landroid/taobao/imagebinder/DrawableProxy;

    .line 178
    sput-object p0, Landroid/taobao/imagebinder/DrawableProxy;->sPool:Landroid/taobao/imagebinder/DrawableProxy;

    .line 179
    sget v0, Landroid/taobao/imagebinder/DrawableProxy;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/taobao/imagebinder/DrawableProxy;->sPoolSize:I

    .line 181
    :cond_0
    monitor-exit v1

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 220
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 222
    :cond_0
    return-void
.end method

.method protected setBindedView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 190
    iput-object p1, p0, Landroid/taobao/imagebinder/DrawableProxy;->mBindedView:Landroid/view/View;

    .line 191
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 270
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 272
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 274
    :cond_0
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 279
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 282
    :cond_0
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .parameter "configs"

    .prologue
    .line 286
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 288
    :cond_0
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 293
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 295
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 226
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 228
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter "dither"

    .prologue
    .line 202
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 204
    :cond_0
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 196
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 198
    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .parameter "stateSet"

    .prologue
    .line 313
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 316
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 337
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/taobao/imagebinder/DrawableProxy;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 340
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method
