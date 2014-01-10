.class public abstract Landroid/taobao/imagebinder/ImageBinder;
.super Ljava/lang/Object;
.source "ImageBinder.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/imagebinder/ImageBinder$ImageBinderFailedListener;,
        Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;,
        Landroid/taobao/imagebinder/ImageBinder$ProgressImageMaker;
    }
.end annotation


# static fields
.field private static final HARDWARE_UI_PROPERTY:Ljava/lang/String; = "persist.sys.ui.hw"

.field private static final UPDATE_IMG:I = 0x3e9

.field private static final UPDATE_IMG_FAILED:I = 0x3eb

.field private static final UPDATE_PROGRESS:I = 0x3ea


# instance fields
.field private mAnimId:I

.field private mBinderFailedListener:Landroid/taobao/imagebinder/ImageBinder$ImageBinderFailedListener;

.field private mBkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/app/Application;

.field protected mConvertor:Lcom/taobao/tao/imagepool/BitmapConvertor;

.field private mDelayTime:J

.field private mForceGPU:Z

.field private mImageBinderListener:Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;

.field private mMainHandler:Landroid/taobao/util/SafeHandler;

.field private mPercentImageMaker:Landroid/taobao/imagebinder/ImageBinder$ProgressImageMaker;

.field private mProgressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScaleTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/widget/ImageView$ScaleType;",
            ">;"
        }
    .end annotation
.end field

.field private mShowProgress:Z

.field private mSrcMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/taobao/imagebinder/ImageBinder;->mDelayTime:J

    .line 58
    iput-boolean v2, p0, Landroid/taobao/imagebinder/ImageBinder;->mForceGPU:Z

    .line 744
    iput-boolean v2, p0, Landroid/taobao/imagebinder/ImageBinder;->mShowProgress:Z

    .line 745
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Landroid/taobao/imagebinder/ImageBinder;->mProgressScaleType:Landroid/widget/ImageView$ScaleType;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImageBinder;->mProgressMap:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImageBinder;->mScaleTypeMap:Ljava/util/Map;

    .line 64
    new-instance v0, Landroid/taobao/util/SafeHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/taobao/util/SafeHandler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImageBinder;->mMainHandler:Landroid/taobao/util/SafeHandler;

    .line 65
    return-void
.end method

.method public constructor <init>(ILandroid/app/Application;)V
    .locals 0
    .parameter "animId"
    .parameter "applicationContext"

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/taobao/imagebinder/ImageBinder;-><init>()V

    .line 73
    iput p1, p0, Landroid/taobao/imagebinder/ImageBinder;->mAnimId:I

    .line 74
    iput-object p2, p0, Landroid/taobao/imagebinder/ImageBinder;->mContext:Landroid/app/Application;

    .line 75
    return-void
.end method

.method public constructor <init>(ILandroid/app/Application;Lcom/taobao/tao/imagepool/BitmapConvertor;)V
    .locals 0
    .parameter "animId"
    .parameter "applicationContext"
    .parameter "convertor"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/taobao/imagebinder/ImageBinder;-><init>()V

    .line 79
    iput p1, p0, Landroid/taobao/imagebinder/ImageBinder;->mAnimId:I

    .line 80
    iput-object p2, p0, Landroid/taobao/imagebinder/ImageBinder;->mContext:Landroid/app/Application;

    .line 81
    iput-object p3, p0, Landroid/taobao/imagebinder/ImageBinder;->mConvertor:Lcom/taobao/tao/imagepool/BitmapConvertor;

    .line 82
    return-void
.end method

.method private bindImageFail(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 6
    .parameter "map"
    .parameter "url"
    .parameter "bkg"

    .prologue
    .line 519
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 520
    .local v2, entrySet:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_2

    .line 521
    aget-object v5, v2, v3

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 522
    .local v0, bkUrl:Ljava/lang/Object;
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 523
    aget-object v5, v2, v3

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 524
    .local v4, view:Landroid/view/View;
    const/4 v1, 0x0

    .line 525
    .local v1, done:Z
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mBinderFailedListener:Landroid/taobao/imagebinder/ImageBinder$ImageBinderFailedListener;

    if-eqz v5, :cond_0

    .line 526
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mBinderFailedListener:Landroid/taobao/imagebinder/ImageBinder$ImageBinderFailedListener;

    invoke-interface {v5, p2, p3, v4}, Landroid/taobao/imagebinder/ImageBinder$ImageBinderFailedListener;->onBindFailed(Ljava/lang/String;ZLandroid/view/View;)Z

    move-result v1

    .line 528
    :cond_0
    if-nez v1, :cond_1

    .line 529
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .end local v1           #done:Z
    .end local v4           #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 534
    .end local v0           #bkUrl:Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private bindImg(Ljava/util/Map;Ljava/lang/String;ZLandroid/taobao/imagebinder/DrawableProxy;)V
    .locals 11
    .parameter "map"
    .parameter "url"
    .parameter "bkg"
    .parameter "drawable"

    .prologue
    .line 379
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 380
    .local v4, entrySet:[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v8, v4

    if-ge v5, v8, :cond_9

    .line 381
    aget-object v8, v4, v5

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 382
    .local v0, bkUrl:Ljava/lang/Object;
    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 385
    const/4 v3, 0x0

    .line 386
    .local v3, drawableProxy:Landroid/taobao/imagebinder/DrawableProxy;
    if-eqz p4, :cond_3

    .line 387
    move-object v3, p4

    .line 388
    const/4 p4, 0x0

    .line 391
    :goto_1
    if-eqz v3, :cond_2

    .line 392
    aget-object v8, v4, v5

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 394
    .local v7, view:Landroid/view/View;
    iget-object v8, p0, Landroid/taobao/imagebinder/ImageBinder;->mProgressMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 395
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v8, v1, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    if-eqz v8, :cond_0

    .line 396
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v8

    check-cast v1, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->getImageHandler()Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/taobao/tao/imagepool/ImagePool;->releaseImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;)V

    .line 397
    iget-object v8, p0, Landroid/taobao/imagebinder/ImageBinder;->mProgressMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_0
    const/4 v2, 0x0

    .line 401
    .local v2, done:Z
    iget-object v8, p0, Landroid/taobao/imagebinder/ImageBinder;->mImageBinderListener:Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;

    if-eqz v8, :cond_1

    .line 402
    iget-object v8, p0, Landroid/taobao/imagebinder/ImageBinder;->mImageBinderListener:Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;

    invoke-virtual {v3}, Landroid/taobao/imagebinder/DrawableProxy;->getRealDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v8, p2, p3, v9, v7}, Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;->onImageBind(Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Landroid/view/View;)Z

    move-result v2

    .line 403
    :cond_1
    if-eqz v2, :cond_4

    .line 404
    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v2           #done:Z
    .end local v3           #drawableProxy:Landroid/taobao/imagebinder/DrawableProxy;
    .end local v7           #view:Landroid/view/View;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 390
    .restart local v3       #drawableProxy:Landroid/taobao/imagebinder/DrawableProxy;
    :cond_3
    invoke-direct {p0, p2}, Landroid/taobao/imagebinder/ImageBinder;->getDrawableInner(Ljava/lang/String;)Landroid/taobao/imagebinder/DrawableProxy;

    move-result-object v3

    goto :goto_1

    .line 409
    .restart local v2       #done:Z
    .restart local v7       #view:Landroid/view/View;
    :cond_4
    if-eqz p3, :cond_7

    .line 410
    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    :cond_5
    :goto_3
    iget v8, p0, Landroid/taobao/imagebinder/ImageBinder;->mAnimId:I

    if-eqz v8, :cond_6

    .line 423
    iget-object v8, p0, Landroid/taobao/imagebinder/ImageBinder;->mContext:Landroid/app/Application;

    iget v9, p0, Landroid/taobao/imagebinder/ImageBinder;->mAnimId:I

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 424
    const-string v8, "ImageBinder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "animation:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_6
    invoke-virtual {v3, v7}, Landroid/taobao/imagebinder/DrawableProxy;->setBindedView(Landroid/view/View;)V

    .line 427
    invoke-interface {p1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v8, "ImageBinder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "image download and bind:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 412
    :cond_7
    instance-of v8, v7, Landroid/widget/ImageView;

    if-eqz v8, :cond_5

    move-object v6, v7

    .line 413
    check-cast v6, Landroid/widget/ImageView;

    .line 414
    .local v6, image:Landroid/widget/ImageView;
    iget-object v8, p0, Landroid/taobao/imagebinder/ImageBinder;->mScaleTypeMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 415
    iget-object v8, p0, Landroid/taobao/imagebinder/ImageBinder;->mScaleTypeMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 416
    :cond_8
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 433
    .end local v0           #bkUrl:Ljava/lang/Object;
    .end local v2           #done:Z
    .end local v3           #drawableProxy:Landroid/taobao/imagebinder/DrawableProxy;
    .end local v6           #image:Landroid/widget/ImageView;
    .end local v7           #view:Landroid/view/View;
    :cond_9
    return-void
.end method

.method private bindProgressImg(Ljava/util/Map;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)V
    .locals 8
    .parameter "map"
    .parameter "url"
    .parameter "bkg"
    .parameter "progress"

    .prologue
    .line 484
    if-nez p4, :cond_1

    .line 516
    :cond_0
    return-void

    .line 486
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 487
    .local v3, entrySet:[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_0

    .line 488
    aget-object v6, v3, v4

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 489
    .local v0, bkUrl:Ljava/lang/Object;
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 490
    aget-object v6, v3, v4

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 492
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Landroid/taobao/imagebinder/ImageBinder;->mProgressMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 493
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    instance-of v6, v1, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    if-eqz v6, :cond_2

    .line 494
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v6

    check-cast v1, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->getImageHandler()Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/taobao/tao/imagepool/ImagePool;->releaseImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;)V

    .line 497
    :cond_2
    iget-object v6, p0, Landroid/taobao/imagebinder/ImageBinder;->mProgressMap:Ljava/util/Map;

    invoke-interface {v6, v5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const/4 v2, 0x0

    .line 500
    .local v2, done:Z
    iget-object v6, p0, Landroid/taobao/imagebinder/ImageBinder;->mImageBinderListener:Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;

    if-eqz v6, :cond_3

    .line 501
    iget-object v6, p0, Landroid/taobao/imagebinder/ImageBinder;->mImageBinderListener:Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;

    invoke-interface {v6, p2, p4, v5}, Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;->onProgressBind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View;)Z

    move-result v2

    .line 502
    :cond_3
    if-eqz v2, :cond_5

    .line 487
    .end local v2           #done:Z
    .end local v5           #view:Landroid/view/View;
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 505
    .restart local v2       #done:Z
    .restart local v5       #view:Landroid/view/View;
    :cond_5
    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_6

    move-object v6, v5

    .line 506
    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Landroid/taobao/imagebinder/ImageBinder;->mProgressScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 507
    check-cast v5, Landroid/widget/ImageView;

    .end local v5           #view:Landroid/view/View;
    invoke-virtual {v5, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 510
    .restart local v5       #view:Landroid/view/View;
    :cond_6
    invoke-virtual {v5, p4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private getDrawableInMemInner(Ljava/lang/String;)Landroid/taobao/imagebinder/DrawableProxy;
    .locals 2
    .parameter "url"

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Landroid/taobao/imagebinder/ImageBinder;->getDrawableInMem(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 543
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 544
    invoke-static {v0, p1, p0}, Landroid/taobao/imagebinder/DrawableProxy;->obtain(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/taobao/imagebinder/ImageBinder;)Landroid/taobao/imagebinder/DrawableProxy;

    move-result-object v1

    .line 546
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDrawableInner(Ljava/lang/String;)Landroid/taobao/imagebinder/DrawableProxy;
    .locals 2
    .parameter "url"

    .prologue
    .line 555
    invoke-virtual {p0, p1}, Landroid/taobao/imagebinder/ImageBinder;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 556
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 557
    invoke-static {v0, p1, p0}, Landroid/taobao/imagebinder/DrawableProxy;->obtain(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/taobao/imagebinder/ImageBinder;)Landroid/taobao/imagebinder/DrawableProxy;

    move-result-object v1

    .line 559
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPercentImage(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "percent"
    .parameter "url"

    .prologue
    .line 777
    iget-object v0, p0, Landroid/taobao/imagebinder/ImageBinder;->mPercentImageMaker:Landroid/taobao/imagebinder/ImageBinder$ProgressImageMaker;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Landroid/taobao/imagebinder/ImageBinder;->mPercentImageMaker:Landroid/taobao/imagebinder/ImageBinder$ProgressImageMaker;

    invoke-interface {v0, p1, p2}, Landroid/taobao/imagebinder/ImageBinder$ProgressImageMaker;->getProgressImage(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 779
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDrawable(Ljava/lang/String;Landroid/view/View;Ljava/util/Map;Z)Z
    .locals 6
    .parameter "url"
    .parameter "view"
    .parameter "map"
    .parameter "bkg"

    .prologue
    .line 564
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/taobao/imagebinder/ImageBinder;->setDrawable(Ljava/lang/String;Landroid/view/View;Ljava/util/Map;ZLcom/taobao/tao/imagepool/BitmapCreator;)Z

    move-result v0

    return v0
.end method

.method private setDrawable(Ljava/lang/String;Landroid/view/View;Ljava/util/Map;ZLcom/taobao/tao/imagepool/BitmapCreator;)Z
    .locals 8
    .parameter "url"
    .parameter "view"
    .parameter "map"
    .parameter "bkg"
    .parameter "bc"

    .prologue
    .line 570
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 571
    new-instance v4, Landroid/taobao/util/CalledFromWrongThreadException;

    invoke-direct {v4}, Landroid/taobao/util/CalledFromWrongThreadException;-><init>()V

    throw v4

    .line 576
    :cond_0
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 578
    .local v3, img:Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 579
    instance-of v4, v3, Landroid/taobao/imagebinder/DrawableProxy;

    if-eqz v4, :cond_4

    .line 581
    if-eqz p1, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/taobao/imagebinder/DrawableProxy;

    invoke-virtual {v4}, Landroid/taobao/imagebinder/DrawableProxy;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/taobao/imagebinder/DrawableProxy;

    invoke-virtual {v4}, Landroid/taobao/imagebinder/DrawableProxy;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 582
    const-string v4, "ImageBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebind and loaded:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/4 v4, 0x1

    .line 685
    .end local v3           #img:Ljava/lang/Object;
    :goto_0
    return v4

    .line 586
    .restart local v3       #img:Ljava/lang/Object;
    :cond_1
    if-eqz p4, :cond_3

    .line 587
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 590
    :goto_1
    check-cast v3, Landroid/taobao/imagebinder/DrawableProxy;

    .end local v3           #img:Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/taobao/imagebinder/DrawableProxy;->recycle()V

    .line 611
    :cond_2
    :goto_2
    if-nez p1, :cond_6

    .line 612
    const-string v4, "ImageBinder"

    const-string v5, "url is null error"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const/4 v4, 0x1

    goto :goto_0

    .restart local v3       #img:Ljava/lang/Object;
    :cond_3
    move-object v4, p2

    .line 589
    check-cast v4, Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 593
    :cond_4
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 594
    const-string v4, "ImageBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebind and loading:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v4, 0x0

    goto :goto_0

    .line 598
    :cond_5
    check-cast v3, Ljava/lang/String;

    .end local v3           #img:Ljava/lang/Object;
    invoke-virtual {p0, v3}, Landroid/taobao/imagebinder/ImageBinder;->cancelDownload(Ljava/lang/String;)V

    goto :goto_2

    .line 616
    :cond_6
    invoke-direct {p0, p1}, Landroid/taobao/imagebinder/ImageBinder;->getDrawableInMemInner(Ljava/lang/String;)Landroid/taobao/imagebinder/DrawableProxy;

    move-result-object v2

    .line 618
    .local v2, drawableProxy:Landroid/taobao/imagebinder/DrawableProxy;
    if-eqz v2, :cond_a

    .line 620
    invoke-virtual {v2, p2}, Landroid/taobao/imagebinder/DrawableProxy;->setBindedView(Landroid/view/View;)V

    .line 622
    const/4 v1, 0x0

    .line 623
    .local v1, done:Z
    iget-object v4, p0, Landroid/taobao/imagebinder/ImageBinder;->mImageBinderListener:Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;

    if-eqz v4, :cond_7

    .line 624
    iget-object v4, p0, Landroid/taobao/imagebinder/ImageBinder;->mImageBinderListener:Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;

    invoke-virtual {v2}, Landroid/taobao/imagebinder/DrawableProxy;->getRealDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, p1, p4, v5, p2}, Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;->onImageBind(Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Landroid/view/View;)Z

    move-result v1

    .line 625
    :cond_7
    if-nez v1, :cond_8

    .line 626
    const-string v4, "ImageBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "done:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    if-eqz p4, :cond_9

    .line 628
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    :cond_8
    :goto_3
    invoke-interface {p3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string v4, "ImageBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "image binded:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_9
    move-object v4, p2

    .line 630
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 640
    .end local v1           #done:Z
    :cond_a
    const-string v4, "ImageBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "image to be downloaded:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Landroid/taobao/imagebinder/ImageBinder;->isShowProgress()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 647
    iget-object v4, p0, Landroid/taobao/imagebinder/ImageBinder;->mPercentImageMaker:Landroid/taobao/imagebinder/ImageBinder$ProgressImageMaker;

    if-eqz v4, :cond_e

    .line 649
    if-nez p4, :cond_b

    instance-of v4, p2, Landroid/widget/ImageView;

    if-eqz v4, :cond_b

    .line 650
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mScaleTypeMap:Ljava/util/Map;

    move-object v4, p2

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    invoke-interface {v5, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :cond_b
    iget-object v4, p0, Landroid/taobao/imagebinder/ImageBinder;->mPercentImageMaker:Landroid/taobao/imagebinder/ImageBinder$ProgressImageMaker;

    const/4 v5, 0x0

    invoke-interface {v4, v5, p1}, Landroid/taobao/imagebinder/ImageBinder$ProgressImageMaker;->getProgressImage(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 653
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_e

    .line 654
    const/4 v1, 0x0

    .line 655
    .restart local v1       #done:Z
    iget-object v4, p0, Landroid/taobao/imagebinder/ImageBinder;->mImageBinderListener:Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;

    if-eqz v4, :cond_c

    .line 656
    iget-object v4, p0, Landroid/taobao/imagebinder/ImageBinder;->mImageBinderListener:Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;

    invoke-interface {v4, p1, v0, p2}, Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;->onProgressBind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View;)Z

    move-result v1

    .line 658
    :cond_c
    if-nez v1, :cond_d

    .line 659
    if-eqz p4, :cond_f

    .line 660
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    :cond_d
    :goto_4
    iget-object v4, p0, Landroid/taobao/imagebinder/ImageBinder;->mProgressMap:Ljava/util/Map;

    invoke-interface {v4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #done:Z
    :cond_e
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    if-nez p5, :cond_10

    .line 676
    invoke-virtual {p0, p1}, Landroid/taobao/imagebinder/ImageBinder;->downloadImg(Ljava/lang/String;)V

    .line 685
    :goto_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #done:Z
    :cond_f
    move-object v4, p2

    .line 662
    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mProgressScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object v4, p2

    .line 664
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 678
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #done:Z
    :cond_10
    invoke-virtual {p0, p1, p5}, Landroid/taobao/imagebinder/ImageBinder;->downloadImg(Ljava/lang/String;Lcom/taobao/tao/imagepool/BitmapCreator;)V

    goto :goto_5
.end method


# virtual methods
.method protected abstract cancelDownload(Ljava/lang/String;)V
.end method

.method protected abstract clearCache()V
.end method

.method public abstract destroy()V
.end method

.method protected abstract downloadImg(Ljava/lang/String;)V
.end method

.method protected abstract downloadImg(Ljava/lang/String;Lcom/taobao/tao/imagepool/BitmapCreator;)V
.end method

.method public flushCache2Img()V
    .locals 5

    .prologue
    .line 201
    iget-boolean v4, p0, Landroid/taobao/imagebinder/ImageBinder;->mForceGPU:Z

    if-nez v4, :cond_1

    .line 224
    :cond_0
    return-void

    .line 204
    :cond_1
    iget-object v4, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, entrySet:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 206
    aget-object v4, v0, v1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 207
    .local v2, url:Ljava/lang/Object;
    aget-object v4, v0, v1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 208
    .local v3, view:Landroid/view/View;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 209
    iget-object v4, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    check-cast v2, Ljava/lang/String;

    .end local v2           #url:Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Landroid/taobao/imagebinder/ImageBinder;->setBackgroundDrawable(Ljava/lang/String;Landroid/view/View;)Z

    .line 205
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v3           #view:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 216
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 217
    aget-object v4, v0, v1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 218
    .restart local v2       #url:Ljava/lang/Object;
    aget-object v4, v0, v1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 219
    .local v3, view:Landroid/widget/ImageView;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 220
    iget-object v4, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    check-cast v2, Ljava/lang/String;

    .end local v2           #url:Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Landroid/taobao/imagebinder/ImageBinder;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)Z

    .line 216
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public flushImg2Cache()V
    .locals 7

    .prologue
    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 231
    new-instance v3, Landroid/taobao/util/CalledFromWrongThreadException;

    invoke-direct {v3}, Landroid/taobao/util/CalledFromWrongThreadException;-><init>()V

    throw v3

    .line 235
    :cond_0
    iget-object v3, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 236
    .local v1, entrySet:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 237
    aget-object v3, v1, v2

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, bkUrl:Ljava/lang/Object;
    instance-of v3, v0, Landroid/taobao/imagebinder/DrawableProxy;

    if-eqz v3, :cond_1

    .line 242
    check-cast v0, Landroid/taobao/imagebinder/DrawableProxy;

    .end local v0           #bkUrl:Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/taobao/imagebinder/DrawableProxy;->flushImg2Cache()V

    .line 236
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_2
    iget-object v3, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 247
    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 248
    aget-object v3, v1, v2

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 250
    .restart local v0       #bkUrl:Ljava/lang/Object;
    instance-of v3, v0, Landroid/taobao/imagebinder/DrawableProxy;

    if-eqz v3, :cond_3

    .line 252
    check-cast v0, Landroid/taobao/imagebinder/DrawableProxy;

    .end local v0           #bkUrl:Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/taobao/imagebinder/DrawableProxy;->flushImg2Cache()V

    .line 247
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 256
    :cond_4
    return-void
.end method

.method flushImg2Cache(Z)V
    .locals 13
    .parameter "checkGPU"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 260
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 261
    new-instance v7, Landroid/taobao/util/CalledFromWrongThreadException;

    invoke-direct {v7}, Landroid/taobao/util/CalledFromWrongThreadException;-><init>()V

    throw v7

    .line 263
    :cond_0
    iput-boolean v11, p0, Landroid/taobao/imagebinder/ImageBinder;->mForceGPU:Z

    .line 264
    if-eqz p1, :cond_1

    .line 266
    :try_start_0
    const-string v7, "android.os.SystemProperties"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 267
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v7, "getBoolean"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 269
    .local v5, m:Ljava/lang/reflect/Method;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "persist.sys.ui.hw"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Landroid/taobao/imagebinder/ImageBinder;->mForceGPU:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    .line 289
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #m:Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    iget-object v7, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 290
    .local v3, entrySet:[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_4

    .line 292
    aget-object v7, v3, v4

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 295
    .local v0, bkUrl:Ljava/lang/Object;
    instance-of v7, v0, Landroid/taobao/imagebinder/DrawableProxy;

    if-eqz v7, :cond_2

    move-object v7, v0

    .line 297
    check-cast v7, Landroid/taobao/imagebinder/DrawableProxy;

    invoke-virtual {v7}, Landroid/taobao/imagebinder/DrawableProxy;->flushImg2Cache()V

    .line 300
    :cond_2
    iget-boolean v7, p0, Landroid/taobao/imagebinder/ImageBinder;->mForceGPU:Z

    if-eqz v7, :cond_3

    .line 302
    aget-object v7, v3, v4

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 303
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    instance-of v7, v0, Landroid/taobao/imagebinder/DrawableProxy;

    if-eqz v7, :cond_3

    .line 305
    iget-object v7, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    check-cast v0, Landroid/taobao/imagebinder/DrawableProxy;

    .end local v0           #bkUrl:Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/taobao/imagebinder/DrawableProxy;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .end local v6           #view:Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 271
    .end local v3           #entrySet:[Ljava/lang/Object;
    .end local v4           #i:I
    :catch_0
    move-exception v2

    .line 273
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 274
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 276
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 277
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 279
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 280
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    .line 282
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 283
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v2

    .line 285
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    .restart local v3       #entrySet:[Ljava/lang/Object;
    .restart local v4       #i:I
    :cond_4
    iget-object v7, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 312
    const/4 v4, 0x0

    :goto_2
    array-length v7, v3

    if-ge v4, v7, :cond_7

    .line 314
    aget-object v7, v3, v4

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 317
    .restart local v0       #bkUrl:Ljava/lang/Object;
    instance-of v7, v0, Landroid/taobao/imagebinder/DrawableProxy;

    if-eqz v7, :cond_5

    move-object v7, v0

    .line 319
    check-cast v7, Landroid/taobao/imagebinder/DrawableProxy;

    invoke-virtual {v7}, Landroid/taobao/imagebinder/DrawableProxy;->flushImg2Cache()V

    .line 322
    :cond_5
    iget-boolean v7, p0, Landroid/taobao/imagebinder/ImageBinder;->mForceGPU:Z

    if-eqz v7, :cond_6

    .line 324
    aget-object v7, v3, v4

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 325
    .local v6, view:Landroid/widget/ImageView;
    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    instance-of v7, v0, Landroid/taobao/imagebinder/DrawableProxy;

    if-eqz v7, :cond_6

    .line 327
    iget-object v7, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    check-cast v0, Landroid/taobao/imagebinder/DrawableProxy;

    .end local v0           #bkUrl:Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/taobao/imagebinder/DrawableProxy;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .end local v6           #view:Landroid/widget/ImageView;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 332
    :cond_7
    return-void
.end method

.method protected abstract getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getDrawableInMem(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 438
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x3e9

    if-ne v5, v6, :cond_3

    .line 440
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/taobao/imagebinder/DrawableProxy;

    .line 441
    .local v1, drawable:Landroid/taobao/imagebinder/DrawableProxy;
    if-nez v1, :cond_1

    .line 442
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, url:Ljava/lang/String;
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    invoke-direct {p0, v5, v2, v3}, Landroid/taobao/imagebinder/ImageBinder;->bindImageFail(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 444
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    invoke-direct {p0, v5, v2, v4}, Landroid/taobao/imagebinder/ImageBinder;->bindImageFail(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 479
    .end local v1           #drawable:Landroid/taobao/imagebinder/DrawableProxy;
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 447
    .restart local v1       #drawable:Landroid/taobao/imagebinder/DrawableProxy;
    :cond_1
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/taobao/imagebinder/DrawableProxy;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v3, v1}, Landroid/taobao/imagebinder/ImageBinder;->bindImg(Ljava/util/Map;Ljava/lang/String;ZLandroid/taobao/imagebinder/DrawableProxy;)V

    .line 449
    invoke-virtual {v1}, Landroid/taobao/imagebinder/DrawableProxy;->getBindedView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    .line 450
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/taobao/imagebinder/DrawableProxy;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v4, v1}, Landroid/taobao/imagebinder/ImageBinder;->bindImg(Ljava/util/Map;Ljava/lang/String;ZLandroid/taobao/imagebinder/DrawableProxy;)V

    .line 454
    :goto_1
    invoke-virtual {v1}, Landroid/taobao/imagebinder/DrawableProxy;->getBindedView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 455
    invoke-virtual {v1}, Landroid/taobao/imagebinder/DrawableProxy;->recycle()V

    goto :goto_0

    .line 452
    :cond_2
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/taobao/imagebinder/DrawableProxy;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v4, v7}, Landroid/taobao/imagebinder/ImageBinder;->bindImg(Ljava/util/Map;Ljava/lang/String;ZLandroid/taobao/imagebinder/DrawableProxy;)V

    goto :goto_1

    .line 466
    .end local v1           #drawable:Landroid/taobao/imagebinder/DrawableProxy;
    :cond_3
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_4

    .line 467
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 468
    .restart local v2       #url:Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 469
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    invoke-direct {p0, v5, v2, v3, v0}, Landroid/taobao/imagebinder/ImageBinder;->bindProgressImg(Ljava/util/Map;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)V

    .line 470
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    invoke-direct {p0, v5, v2, v4, v0}, Landroid/taobao/imagebinder/ImageBinder;->bindProgressImg(Ljava/util/Map;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 473
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #url:Ljava/lang/String;
    :cond_4
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x3eb

    if-ne v5, v6, :cond_5

    .line 474
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 475
    .restart local v2       #url:Ljava/lang/String;
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    invoke-direct {p0, v5, v2, v3}, Landroid/taobao/imagebinder/ImageBinder;->bindImageFail(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 476
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    invoke-direct {p0, v5, v2, v4}, Landroid/taobao/imagebinder/ImageBinder;->bindImageFail(Ljava/util/Map;Ljava/lang/String;Z)V

    goto :goto_0

    .end local v2           #url:Ljava/lang/String;
    :cond_5
    move v3, v4

    .line 479
    goto :goto_0
.end method

.method public isShowProgress()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Landroid/taobao/imagebinder/ImageBinder;->mShowProgress:Z

    return v0
.end method

.method protected onImageDownloaded(Ljava/lang/String;I)V
    .locals 6
    .parameter "url"
    .parameter "index"

    .prologue
    .line 335
    const-string v1, "ImageBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image download:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 339
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 341
    invoke-direct {p0, p1}, Landroid/taobao/imagebinder/ImageBinder;->getDrawableInner(Ljava/lang/String;)Landroid/taobao/imagebinder/DrawableProxy;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-wide v1, p0, Landroid/taobao/imagebinder/ImageBinder;->mDelayTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 344
    iget-object v1, p0, Landroid/taobao/imagebinder/ImageBinder;->mMainHandler:Landroid/taobao/util/SafeHandler;

    iget-wide v2, p0, Landroid/taobao/imagebinder/ImageBinder;->mDelayTime:J

    int-to-long v4, p2

    mul-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/taobao/util/SafeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 348
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 346
    .restart local v0       #msg:Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Landroid/taobao/imagebinder/ImageBinder;->mMainHandler:Landroid/taobao/util/SafeHandler;

    invoke-virtual {v1, v0}, Landroid/taobao/util/SafeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onImageDownloadedFailed(Ljava/lang/String;I)V
    .locals 4
    .parameter "url"
    .parameter "index"

    .prologue
    .line 350
    const-string v1, "ImageBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image download Failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 354
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 355
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    iget-object v1, p0, Landroid/taobao/imagebinder/ImageBinder;->mMainHandler:Landroid/taobao/util/SafeHandler;

    invoke-virtual {v1, v0}, Landroid/taobao/util/SafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 358
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method protected onImageProgress(Ljava/lang/String;II)V
    .locals 5
    .parameter "url"
    .parameter "size"
    .parameter "total"

    .prologue
    .line 361
    invoke-virtual {p0}, Landroid/taobao/imagebinder/ImageBinder;->isShowProgress()Z

    move-result v2

    if-nez v2, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    const-string v2, "ImageBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image onProgress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 366
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x3ea

    iput v2, v0, Landroid/os/Message;->what:I

    .line 367
    mul-int/lit8 v2, p2, 0xa

    div-int/2addr v2, p3

    mul-int/lit8 v1, v2, 0xa

    .line 368
    .local v1, per:I
    invoke-direct {p0, v1, p1}, Landroid/taobao/imagebinder/ImageBinder;->getPercentImage(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 370
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Landroid/taobao/imagebinder/ImageBinder;->mMainHandler:Landroid/taobao/util/SafeHandler;

    invoke-virtual {v2, v0}, Landroid/taobao/util/SafeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public abstract pauseDownload()V
.end method

.method public recycle()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 158
    new-instance v5, Landroid/taobao/util/CalledFromWrongThreadException;

    invoke-direct {v5}, Landroid/taobao/util/CalledFromWrongThreadException;-><init>()V

    throw v5

    .line 160
    :cond_0
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 161
    .local v2, entrySet:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_2

    .line 162
    aget-object v5, v2, v3

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, bkUrl:Ljava/lang/Object;
    instance-of v5, v0, Landroid/taobao/imagebinder/DrawableProxy;

    if-eqz v5, :cond_1

    .line 165
    check-cast v0, Landroid/taobao/imagebinder/DrawableProxy;

    .end local v0           #bkUrl:Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/taobao/imagebinder/DrawableProxy;->recycle()V

    .line 166
    aget-object v5, v2, v3

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 167
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    .end local v4           #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_2
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 173
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 174
    const/4 v3, 0x0

    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_4

    .line 176
    aget-object v5, v2, v3

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 177
    .restart local v0       #bkUrl:Ljava/lang/Object;
    instance-of v5, v0, Landroid/taobao/imagebinder/DrawableProxy;

    if-eqz v5, :cond_3

    .line 179
    check-cast v0, Landroid/taobao/imagebinder/DrawableProxy;

    .end local v0           #bkUrl:Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/taobao/imagebinder/DrawableProxy;->recycle()V

    .line 180
    aget-object v5, v2, v3

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 181
    .restart local v4       #view:Landroid/view/View;
    check-cast v4, Landroid/widget/ImageView;

    .end local v4           #view:Landroid/view/View;
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 184
    :cond_4
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 186
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mProgressMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 187
    const/4 v3, 0x0

    :goto_2
    array-length v5, v2

    if-ge v3, v5, :cond_6

    .line 188
    aget-object v5, v2, v3

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 189
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_5

    instance-of v5, v1, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    if-eqz v5, :cond_5

    .line 190
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v5

    check-cast v1, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->getImageHandler()Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/taobao/tao/imagepool/ImagePool;->releaseImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;)V

    .line 187
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 193
    :cond_6
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mProgressMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 194
    iget-object v5, p0, Landroid/taobao/imagebinder/ImageBinder;->mScaleTypeMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 195
    invoke-virtual {p0}, Landroid/taobao/imagebinder/ImageBinder;->clearCache()V

    .line 197
    return-void
.end method

.method protected abstract releaseDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract resume()V
.end method

.method public abstract resumeDownload()V
.end method

.method public setBackgroundDrawable(Ljava/lang/String;Landroid/view/View;)Z
    .locals 2
    .parameter "url"
    .parameter "view"

    .prologue
    .line 104
    iget-object v0, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/taobao/imagebinder/ImageBinder;->setDrawable(Ljava/lang/String;Landroid/view/View;Ljava/util/Map;Z)Z

    move-result v0

    return v0
.end method

.method public setBackgroundDrawable(Ljava/lang/String;Landroid/view/View;Lcom/taobao/tao/imagepool/BitmapCreator;)Z
    .locals 6
    .parameter "url"
    .parameter "view"
    .parameter "bc"

    .prologue
    .line 108
    iget-object v3, p0, Landroid/taobao/imagebinder/ImageBinder;->mBkgMap:Ljava/util/Map;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/taobao/imagebinder/ImageBinder;->setDrawable(Ljava/lang/String;Landroid/view/View;Ljava/util/Map;ZLcom/taobao/tao/imagepool/BitmapCreator;)Z

    move-result v0

    return v0
.end method

.method public setDelayTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 89
    iput-wide p1, p0, Landroid/taobao/imagebinder/ImageBinder;->mDelayTime:J

    .line 90
    return-void
.end method

.method public setImageBinderFailedListener(Landroid/taobao/imagebinder/ImageBinder$ImageBinderFailedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 838
    iput-object p1, p0, Landroid/taobao/imagebinder/ImageBinder;->mBinderFailedListener:Landroid/taobao/imagebinder/ImageBinder$ImageBinderFailedListener;

    .line 839
    return-void
.end method

.method public setImageBinderListener(Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 823
    iput-object p1, p0, Landroid/taobao/imagebinder/ImageBinder;->mImageBinderListener:Landroid/taobao/imagebinder/ImageBinder$ImageBinderListener;

    .line 824
    return-void
.end method

.method public setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 2
    .parameter "url"
    .parameter "view"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/taobao/imagebinder/ImageBinder;->setDrawable(Ljava/lang/String;Landroid/view/View;Ljava/util/Map;Z)Z

    move-result v0

    return v0
.end method

.method public setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/tao/imagepool/BitmapCreator;)Z
    .locals 6
    .parameter "url"
    .parameter "view"
    .parameter "bc"

    .prologue
    .line 123
    iget-object v3, p0, Landroid/taobao/imagebinder/ImageBinder;->mSrcMap:Ljava/util/Map;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/taobao/imagebinder/ImageBinder;->setDrawable(Ljava/lang/String;Landroid/view/View;Ljava/util/Map;ZLcom/taobao/tao/imagepool/BitmapCreator;)Z

    move-result v0

    return v0
.end method

.method public abstract setImageDrawableDelay(Ljava/lang/String;Landroid/widget/ImageView;)Z
.end method

.method public setProgressImageMaker(Landroid/taobao/imagebinder/ImageBinder$ProgressImageMaker;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 789
    iput-object p1, p0, Landroid/taobao/imagebinder/ImageBinder;->mPercentImageMaker:Landroid/taobao/imagebinder/ImageBinder$ProgressImageMaker;

    .line 790
    return-void
.end method

.method public setProgressScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .parameter "scaleType"

    .prologue
    .line 798
    iput-object p1, p0, Landroid/taobao/imagebinder/ImageBinder;->mProgressScaleType:Landroid/widget/ImageView$ScaleType;

    .line 799
    return-void
.end method

.method public showProgress(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 767
    iput-boolean p1, p0, Landroid/taobao/imagebinder/ImageBinder;->mShowProgress:Z

    .line 768
    return-void
.end method

.method public abstract stop()V
.end method
