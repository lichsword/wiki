.class public Landroid/taobao/imagebinder/ImagePoolBinder;
.super Landroid/taobao/imagebinder/ImageBinder;
.source "ImagePoolBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;
    }
.end annotation


# instance fields
.field private mCachePolicy:I

.field private mDownloadIndex:I

.field private mImageGroup:Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;

.field private mIsPaused:Z

.field private mMapUrlToCreator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/tao/imagepool/BitmapCreator;",
            ">;"
        }
    .end annotation
.end field

.field private mUrlContainer:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUrlsToLoad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/app/Application;II)V
    .locals 6
    .parameter "animId"
    .parameter "name"
    .parameter "context"
    .parameter "priority"
    .parameter "cacheType"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p3}, Landroid/taobao/imagebinder/ImageBinder;-><init>(ILandroid/app/Application;)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mMapUrlToCreator:Ljava/util/Map;

    .line 33
    iput v1, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mDownloadIndex:I

    .line 34
    iput-boolean v1, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mIsPaused:Z

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlContainer:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;

    .line 75
    iput p5, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mCachePolicy:I

    .line 76
    new-instance v0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;-><init>(Landroid/taobao/imagebinder/ImagePoolBinder;Ljava/lang/String;Landroid/app/Application;II)V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mImageGroup:Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;

    .line 77
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/app/Application;IILcom/taobao/tao/imagepool/BitmapConvertor;)V
    .locals 6
    .parameter "animId"
    .parameter "name"
    .parameter "context"
    .parameter "priority"
    .parameter "cacheType"
    .parameter "convertor"

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, p3, p6}, Landroid/taobao/imagebinder/ImageBinder;-><init>(ILandroid/app/Application;Lcom/taobao/tao/imagepool/BitmapConvertor;)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mMapUrlToCreator:Ljava/util/Map;

    .line 33
    iput v1, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mDownloadIndex:I

    .line 34
    iput-boolean v1, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mIsPaused:Z

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlContainer:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;

    .line 92
    iput p5, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mCachePolicy:I

    .line 93
    new-instance v0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;-><init>(Landroid/taobao/imagebinder/ImagePoolBinder;Ljava/lang/String;Landroid/app/Application;II)V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mImageGroup:Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Application;II)V
    .locals 6
    .parameter "name"
    .parameter "context"
    .parameter "priority"
    .parameter "cacheType"

    .prologue
    .line 46
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/taobao/imagebinder/ImagePoolBinder;-><init>(Ljava/lang/String;Landroid/app/Application;IILcom/taobao/tao/imagepool/BitmapConvertor;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Application;IILcom/taobao/tao/imagepool/BitmapConvertor;)V
    .locals 6
    .parameter "name"
    .parameter "context"
    .parameter "priority"
    .parameter "cacheType"
    .parameter "convertor"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, v1, p2, p5}, Landroid/taobao/imagebinder/ImageBinder;-><init>(ILandroid/app/Application;Lcom/taobao/tao/imagepool/BitmapConvertor;)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mMapUrlToCreator:Ljava/util/Map;

    .line 33
    iput v1, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mDownloadIndex:I

    .line 34
    iput-boolean v1, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mIsPaused:Z

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlContainer:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;

    .line 60
    iput p4, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mCachePolicy:I

    .line 61
    new-instance v0, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;-><init>(Landroid/taobao/imagebinder/ImagePoolBinder;Ljava/lang/String;Landroid/app/Application;II)V

    iput-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mImageGroup:Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;

    .line 62
    return-void
.end method

.method static synthetic access$000(Landroid/taobao/imagebinder/ImagePoolBinder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$002(Landroid/taobao/imagebinder/ImagePoolBinder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mIsPaused:Z

    return p1
.end method

.method static synthetic access$100(Landroid/taobao/imagebinder/ImagePoolBinder;)Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mImageGroup:Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;

    return-object v0
.end method

.method static synthetic access$200(Landroid/taobao/imagebinder/ImagePoolBinder;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/taobao/imagebinder/ImagePoolBinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mDownloadIndex:I

    return v0
.end method

.method static synthetic access$308(Landroid/taobao/imagebinder/ImagePoolBinder;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mDownloadIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mDownloadIndex:I

    return v0
.end method

.method static synthetic access$310(Landroid/taobao/imagebinder/ImagePoolBinder;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mDownloadIndex:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mDownloadIndex:I

    return v0
.end method

.method static synthetic access$400(Landroid/taobao/imagebinder/ImagePoolBinder;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mMapUrlToCreator:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Landroid/taobao/imagebinder/ImagePoolBinder;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/taobao/imagebinder/ImagePoolBinder;->removeDownloadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private removeDownloadUrl(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    const/4 v3, -0x1

    .line 233
    iget-object v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 234
    .local v1, location:I
    iget v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mDownloadIndex:I

    if-ge v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    .line 235
    iget v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mDownloadIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mDownloadIndex:I

    .line 237
    :cond_0
    if-eq v1, v3, :cond_1

    .line 239
    :try_start_0
    iget-object v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected cancelDownload(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 222
    const-string v0, "ImagePoolBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelDownload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/tao/imagepool/ImagePool;->cancelLoad(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;

    monitor-enter v1

    .line 227
    :try_start_0
    invoke-direct {p0, p1}, Landroid/taobao/imagebinder/ImagePoolBinder;->removeDownloadUrl(Ljava/lang/String;)V

    .line 228
    monitor-exit v1

    .line 230
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected clearCache()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mImageGroup:Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;

    invoke-virtual {v0}, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->getCachePolicy()I

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/tao/imagepool/ImagePool;->clearCache(I)V

    .line 255
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mImageGroup:Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;

    invoke-virtual {v0}, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->destroy()V

    .line 214
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlContainer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 215
    invoke-virtual {p0}, Landroid/taobao/imagebinder/ImagePoolBinder;->recycle()V

    .line 217
    return-void
.end method

.method protected downloadImg(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/taobao/imagebinder/ImagePoolBinder;->downloadImg(Ljava/lang/String;Lcom/taobao/tao/imagepool/BitmapCreator;)V

    .line 190
    return-void
.end method

.method protected downloadImg(Ljava/lang/String;Lcom/taobao/tao/imagepool/BitmapCreator;)V
    .locals 3
    .parameter "url"
    .parameter "bc"

    .prologue
    .line 196
    const-string v0, "ImagePoolBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadImg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    if-eqz p2, :cond_0

    .line 202
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mMapUrlToCreator:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    iget-boolean v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mIsPaused:Z

    if-nez v0, :cond_1

    .line 207
    invoke-virtual {p0}, Landroid/taobao/imagebinder/ImagePoolBinder;->resumeDownload()V

    .line 208
    :cond_1
    return-void

    .line 204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "url"

    .prologue
    .line 123
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v2

    iget v3, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mCachePolicy:I

    invoke-virtual {v2, p1, v3}, Lcom/taobao/tao/imagepool/ImagePool;->getImageHandler(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v1

    .line 125
    .local v1, ih:Lcom/taobao/tao/imagepool/ImageHandler;
    const/4 v0, 0x0

    .line 126
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_0

    .line 127
    iget-object v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mConvertor:Lcom/taobao/tao/imagepool/BitmapConvertor;

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mConvertor:Lcom/taobao/tao/imagepool/BitmapConvertor;

    invoke-virtual {v1, v2}, Lcom/taobao/tao/imagepool/ImageHandler;->getDrawable(Lcom/taobao/tao/imagepool/BitmapConvertor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 132
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 137
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    return-object v0

    .line 130
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/ImageHandler;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 136
    :cond_2
    const-string v2, "TaoSdk.ImgPool"

    const-string v3, "getImageHandler return a recycled drawable! "

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Landroid/taobao/imagebinder/ImagePoolBinder;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected getDrawableInMem(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "url"

    .prologue
    .line 97
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/tao/imagepool/ImagePool;->getImageHandlerInMemory(Ljava/lang/String;)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v0

    .line 98
    .local v0, ih:Lcom/taobao/tao/imagepool/ImageHandler;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/taobao/tao/imagepool/ImageHandler;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 103
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pauseDownload()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mImageGroup:Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;

    invoke-virtual {v0}, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->pause()V

    .line 161
    return-void
.end method

.method protected releaseDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "drawable"

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 112
    check-cast v0, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    .line 113
    .local v0, dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    invoke-virtual {v0}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->getImageHandler()Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v1

    .line 114
    .local v1, ih:Lcom/taobao/tao/imagepool/ImageHandler;
    if-eqz v1, :cond_1

    .line 115
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/tao/imagepool/ImagePool;->releaseImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;)V

    goto :goto_0

    .line 118
    :cond_1
    const-string v2, "TaoSdk.ImgPool"

    const-string v3, "releaseDrawable not released"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 444
    invoke-virtual {p0}, Landroid/taobao/imagebinder/ImagePoolBinder;->resumeDownload()V

    .line 445
    invoke-virtual {p0}, Landroid/taobao/imagebinder/ImagePoolBinder;->flushCache2Img()V

    .line 446
    return-void
.end method

.method public resumeDownload()V
    .locals 5

    .prologue
    .line 172
    iget-object v4, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mImageGroup:Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;

    invoke-virtual {v4}, Landroid/taobao/imagebinder/ImagePoolBinder$ImageGroupImp;->resume()V

    .line 173
    iget-boolean v4, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mIsPaused:Z

    if-nez v4, :cond_1

    .line 174
    iget-object v4, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlContainer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 176
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/widget/ImageView;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 177
    .local v3, v:Landroid/widget/ImageView;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/taobao/imagebinder/ImagePoolBinder;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)Z

    goto :goto_0

    .line 180
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/widget/ImageView;Ljava/lang/String;>;"
    .end local v2           #url:Ljava/lang/String;
    .end local v3           #v:Landroid/widget/ImageView;
    :cond_0
    iget-object v4, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlContainer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 184
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setImageDrawableDelay(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 1
    .parameter "url"
    .parameter "view"

    .prologue
    .line 143
    iget-boolean v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlContainer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p0, p1, p2}, Landroid/taobao/imagebinder/ImagePoolBinder;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    .line 150
    :goto_0
    return v0

    .line 148
    :cond_0
    iget-object v0, p0, Landroid/taobao/imagebinder/ImagePoolBinder;->mUrlContainer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/taobao/imagebinder/ImagePoolBinder;->pauseDownload()V

    .line 438
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/taobao/imagebinder/ImagePoolBinder;->flushImg2Cache(Z)V

    .line 439
    return-void
.end method
