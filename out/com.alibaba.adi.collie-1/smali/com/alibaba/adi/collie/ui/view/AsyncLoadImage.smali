.class public Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;
.super Landroid/widget/ImageView;
.source "AsyncLoadImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DRAG:I = 0x1

.field public static final IMG_CLICKED:I = 0x1

.field private static MAX_ACTIVE_THREAD:I = 0x0

.field public static final MAX_SCALE_FACTOR:I = 0x5

.field private static final NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TFNetImageView"

.field private static final ZOOM:I = 0x2

.field private static sExecutorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final finishHandler:Landroid/os/Handler;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCurMidPoint:Landroid/graphics/PointF;

.field private final mCurSavedMatrix:Landroid/graphics/Matrix;

.field private mCurUri:Ljava/lang/String;

.field private mCurrentMode:I

.field private mFuture:Ljava/util/concurrent/Future;

.field private final mIsDrayOrZoom:Z

.field private mMaxScale:F

.field private mMinScale:F

.field private mMinScaleMatrix:Landroid/graphics/Matrix;

.field private mNotifyHandler:Landroid/os/Handler;

.field private final mOldDist:F

.field private final mTmpValues:[F

.field private final mViewMatrix:Landroid/graphics/Matrix;

.field private mWasScaleTypeSet:Z

.field private final start:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    sput v0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->MAX_ACTIVE_THREAD:I

    .line 39
    sget v0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->MAX_ACTIVE_THREAD:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "notifyHandler"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mViewMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurSavedMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->start:Landroid/graphics/PointF;

    .line 51
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurMidPoint:Landroid/graphics/PointF;

    .line 52
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mOldDist:F

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mTmpValues:[F

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mIsDrayOrZoom:Z

    .line 228
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$1;-><init>(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->finishHandler:Landroid/os/Handler;

    .line 78
    invoke-direct {p0, p2}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->initFields(Landroid/os/Handler;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "notifyHandler"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mViewMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurSavedMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->start:Landroid/graphics/PointF;

    .line 51
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurMidPoint:Landroid/graphics/PointF;

    .line 52
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mOldDist:F

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mTmpValues:[F

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mIsDrayOrZoom:Z

    .line 228
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$1;-><init>(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->finishHandler:Landroid/os/Handler;

    .line 83
    invoke-direct {p0, p3}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->initFields(Landroid/os/Handler;)V

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->downloadBitmapInBackground(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->finishHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private downloadBitmapInBackground(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "params"

    .prologue
    .line 95
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 96
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 119
    :cond_0
    :goto_0
    return-object v1

    .line 98
    :cond_1
    const/4 v1, 0x0

    .line 99
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 101
    .local v2, con:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 103
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 104
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 105
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 107
    .local v4, inputStream:Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 110
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v5           #url:Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 111
    .local v3, e:Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 112
    .end local v3           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    .line 113
    .local v3, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 114
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 115
    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 118
    :cond_2
    throw v6
.end method

.method private downscaleMatrix(FLandroid/graphics/Matrix;)V
    .locals 3
    .parameter "scale"
    .parameter "dist"

    .prologue
    .line 257
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mMaxScale:F

    div-float v0, v1, p1

    .line 258
    .local v0, resScale:F
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurMidPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurMidPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 259
    return-void
.end method

.method private getMatrixScale(Landroid/graphics/Matrix;)F
    .locals 2
    .parameter "matrix"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mTmpValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mTmpValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private initFields(Landroid/os/Handler;)V
    .locals 1
    .parameter "notifyHandler"

    .prologue
    .line 69
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    const v0, 0x7f0200fe

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->setImageResource(I)V

    .line 71
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->setBackgroundColor(I)V

    .line 72
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mNotifyHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method


# virtual methods
.method public destroyBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 218
    :cond_0
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 219
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    .line 220
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 224
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 225
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->destroyBitmap()V

    .line 226
    return-void
.end method

.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getmBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getmCurUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    return-object v0
.end method

.method public loadFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2
    .parameter "assetManager"
    .parameter "assetPath"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 172
    :cond_1
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 211
    :cond_2
    :goto_0
    return-void

    .line 176
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$4;-><init>(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 209
    .local v0, thread:Ljava/lang/Thread;
    sget-object v1, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mFuture:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public loadFromFile(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 140
    :cond_1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 168
    :cond_2
    :goto_0
    return-void

    .line 144
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$3;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$3;-><init>(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    .local v0, thread:Ljava/lang/Thread;
    sget-object v1, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mFuture:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public loadFromUri(Ljava/lang/String;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 124
    :cond_1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$2;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$2;-><init>(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 134
    .local v0, thread:Ljava/lang/Thread;
    sget-object v1, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mFuture:Ljava/util/concurrent/Future;

    .line 136
    .end local v0           #thread:Ljava/lang/Thread;
    :cond_2
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 239
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->downloadBitmapInBackground(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->finishHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 241
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->finishHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    return-void
.end method
