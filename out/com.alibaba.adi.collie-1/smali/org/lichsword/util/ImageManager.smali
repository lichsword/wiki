.class public final Lorg/lichsword/util/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lichsword/util/ImageManager$ImageDownloadListener;,
        Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;,
        Lorg/lichsword/util/ImageManager$ImageDownloadTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lorg/lichsword/util/ImageManager;


# instance fields
.field private mCacheDir:Ljava/io/File;

.field private final mCacheDirMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDensityDpi:I

.field private final mImagesRefs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/lichsword/util/ImageManager$ImageDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageDir:Ljava/io/File;

.field private final mTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/lichsword/util/ImageManager$ImageDownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/lichsword/util/ImageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/lichsword/util/ImageManager;->TAG:Ljava/lang/String;

    .line 105
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/lichsword/util/ImageManager;->mImagesRefs:Landroid/util/SparseArray;

    .line 551
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/lichsword/util/ImageManager;->mTasks:Landroid/util/SparseArray;

    .line 552
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/lichsword/util/ImageManager;->mThreads:Landroid/util/SparseArray;

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lichsword/util/ImageManager;->mListeners:Ljava/util/ArrayList;

    .line 554
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lorg/lichsword/util/ImageManager;->mDensityDpi:I

    .line 555
    iput-object v1, p0, Lorg/lichsword/util/ImageManager;->mCacheDir:Ljava/io/File;

    .line 556
    iput-object v1, p0, Lorg/lichsword/util/ImageManager;->mStorageDir:Ljava/io/File;

    .line 560
    iput-object p1, p0, Lorg/lichsword/util/ImageManager;->mContext:Landroid/content/Context;

    .line 561
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/lichsword/util/ImageManager;->mCacheDirMap:Ljava/util/Map;

    .line 562
    invoke-virtual {p0}, Lorg/lichsword/util/ImageManager;->ensureCacheDir()Z

    .line 563
    return-void
.end method

.method private decodeBitmapInternal(Ljava/lang/String;ILandroid/util/SparseArray;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "path"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 761
    .local p3, refs:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;"
    const/4 v0, 0x0

    .line 763
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 768
    :goto_0
    if-eqz v0, :cond_0

    .line 769
    iget v3, p0, Lorg/lichsword/util/ImageManager;->mDensityDpi:I

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 770
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 771
    .local v1, bitmapRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 773
    .end local v1           #bitmapRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    :cond_0
    return-object v0

    .line 764
    :catch_0
    move-exception v2

    .line 765
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method private static freeImageViewImage(Landroid/widget/ImageView;)V
    .locals 4
    .parameter "imageView"

    .prologue
    .line 247
    invoke-static {p0}, Lorg/lichsword/util/ImageManager;->isImageViewFreeable(Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 249
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 250
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v1, v2

    .line 251
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 252
    .local v1, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 259
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public static getCacheDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "adi_pic"

    return-object v0
.end method

.method public static getInstance()Lorg/lichsword/util/ImageManager;
    .locals 2

    .prologue
    .line 543
    sget-object v0, Lorg/lichsword/util/ImageManager;->sInstance:Lorg/lichsword/util/ImageManager;

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call ImageManager.init() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_0
    sget-object v0, Lorg/lichsword/util/ImageManager;->sInstance:Lorg/lichsword/util/ImageManager;

    return-object v0
.end method

.method private isImageFileValidInternal(Ljava/io/File;)Z
    .locals 3
    .parameter "cacheFile"

    .prologue
    const/4 v1, 0x1

    .line 414
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 415
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 416
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 417
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_0

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 422
    :goto_0
    return v1

    .line 420
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 422
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isImageViewFreeable(Landroid/widget/ImageView;)Z
    .locals 2
    .parameter "imageView"

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 267
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 268
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 270
    :goto_0
    return v1

    .restart local v0       #tag:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static markImageViewFreeable(Landroid/widget/ImageView;Z)V
    .locals 2
    .parameter "imageView"
    .parameter "freeable"

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 263
    return-void
.end method

.method public static recycle()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    sput-object v0, Lorg/lichsword/util/ImageManager;->sInstance:Lorg/lichsword/util/ImageManager;

    .line 127
    return-void
.end method

.method public static sInit(Landroid/content/Context;)Lorg/lichsword/util/ImageManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 115
    sget-object v0, Lorg/lichsword/util/ImageManager;->sInstance:Lorg/lichsword/util/ImageManager;

    if-nez v0, :cond_1

    .line 116
    const-class v1, Lorg/lichsword/util/ImageManager;

    monitor-enter v1

    .line 117
    :try_start_0
    sget-object v0, Lorg/lichsword/util/ImageManager;->sInstance:Lorg/lichsword/util/ImageManager;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lorg/lichsword/util/ImageManager;

    invoke-direct {v0, p0}, Lorg/lichsword/util/ImageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/lichsword/util/ImageManager;->sInstance:Lorg/lichsword/util/ImageManager;

    .line 116
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_1
    sget-object v0, Lorg/lichsword/util/ImageManager;->sInstance:Lorg/lichsword/util/ImageManager;

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static final setImageViewImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "imageView"
    .parameter "bitmap"

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-nez v0, :cond_2

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The ImageView must have and application specified ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2
    invoke-static {p0}, Lorg/lichsword/util/ImageManager;->freeImageViewImage(Landroid/widget/ImageView;)V

    .line 178
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/lichsword/util/ImageManager;->markImageViewFreeable(Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method

.method public static final setImageViewImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "imageView"
    .parameter "drawable"

    .prologue
    .line 198
    if-nez p0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-nez v0, :cond_2

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The ImageView must have and application specified ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_2
    invoke-static {p0}, Lorg/lichsword/util/ImageManager;->freeImageViewImage(Landroid/widget/ImageView;)V

    .line 205
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/lichsword/util/ImageManager;->markImageViewFreeable(Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method

.method public static final setImageViewImageResouce(Landroid/widget/ImageView;I)V
    .locals 2
    .parameter "imageView"
    .parameter "resId"

    .prologue
    .line 147
    if-nez p0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-nez v0, :cond_2

    .line 151
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The ImageView must have and application specified ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    invoke-static {p0}, Lorg/lichsword/util/ImageManager;->freeImageViewImage(Landroid/widget/ImageView;)V

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/lichsword/util/ImageManager;->markImageViewFreeable(Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method

.method public static final setImageViewImageURI(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 2
    .parameter "imageView"
    .parameter "uri"

    .prologue
    .line 235
    if-nez p0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 238
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-nez v0, :cond_2

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The ImageView must have and application specified ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_2
    invoke-static {p0}, Lorg/lichsword/util/ImageManager;->freeImageViewImage(Landroid/widget/ImageView;)V

    .line 242
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 243
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/lichsword/util/ImageManager;->markImageViewFreeable(Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method

.method public static final setImageViewImageURI(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .parameter "imageView"
    .parameter "uri"

    .prologue
    .line 222
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/lichsword/util/ImageManager;->setImageViewImageURI(Landroid/widget/ImageView;Landroid/net/Uri;)V

    .line 223
    return-void
.end method


# virtual methods
.method public final addListener(Lorg/lichsword/util/ImageManager$ImageDownloadListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 475
    iget-object v1, p0, Lorg/lichsword/util/ImageManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 476
    :try_start_0
    iget-object v0, p0, Lorg/lichsword/util/ImageManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lorg/lichsword/util/ImageManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_0
    monitor-exit v1

    .line 480
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bindUrlToImageView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultDrawable"

    .prologue
    .line 788
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getCacheDir()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/adi/collie/util/ImageUtil;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/lichsword/util/ImageManager;->bindUrlToImageView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 789
    return-void
.end method

.method public bindUrlToImageView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 6
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultDrawable"
    .parameter "subDir"

    .prologue
    .line 806
    sget-object v5, Lcom/alibaba/adi/collie/util/ImageUtil;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/lichsword/util/ImageManager;->bindUrlToImageView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 807
    return-void
.end method

.method public bindUrlToImageView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 2
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultDrawable"
    .parameter "subDir"
    .parameter "format"

    .prologue
    .line 825
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p4}, Lorg/lichsword/util/ImageManager;->loadBitmapByUrl(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 826
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 836
    :goto_0
    return-void

    .line 831
    :cond_0
    if-eqz p3, :cond_1

    .line 832
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 834
    :cond_1
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p4, p5}, Lorg/lichsword/util/ImageManager;->downloadBitmapAsync(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    goto :goto_0
.end method

.method public cleanCache()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lorg/lichsword/util/ImageManager;->mCacheDir:Ljava/io/File;

    invoke-static {v0}, Lorg/lichsword/util/FileSystemUtil;->cleanDir(Ljava/io/File;)V

    .line 600
    return-void
.end method

.method public cleanCache(Ljava/lang/String;I)V
    .locals 9
    .parameter "subDir"
    .parameter "saveLimit"

    .prologue
    .line 623
    sget-object v6, Lorg/lichsword/util/ImageManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "clean cache "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0, p1}, Lorg/lichsword/util/ImageManager;->getSubDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 625
    .local v1, dir:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 626
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 627
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_1

    .line 643
    .end local v2           #files:[Ljava/io/File;
    :cond_0
    return-void

    .line 630
    .restart local v2       #files:[Ljava/io/File;
    :cond_1
    array-length v5, v2

    .line 631
    .local v5, size:I
    new-instance v6, Lorg/lichsword/util/ImageManager$1;

    invoke-direct {v6, p0}, Lorg/lichsword/util/ImageManager$1;-><init>(Lorg/lichsword/util/ImageManager;)V

    invoke-static {v2, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 637
    sub-int v0, v5, p2

    .line 638
    .local v0, deleteSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 639
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v4

    .line 640
    .local v4, ret:Z
    sget-object v6, Lorg/lichsword/util/ImageManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " clean delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public cleanCache(Ljava/lang/String;J)V
    .locals 14
    .parameter "subDir"
    .parameter "delta"

    .prologue
    .line 603
    sget-object v8, Lorg/lichsword/util/ImageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "clean cache "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x18

    mul-long v10, v10, p2

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    sub-long v6, v8, v10

    .line 605
    .local v6, timesTamp:J
    invoke-virtual {p0, p1}, Lorg/lichsword/util/ImageManager;->getSubDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 606
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 608
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_1

    .line 620
    .end local v2           #files:[Ljava/io/File;
    :cond_0
    return-void

    .line 611
    .restart local v2       #files:[Ljava/io/File;
    :cond_1
    array-length v9, v2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v1, v2, v8

    .line 612
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 613
    .local v3, lastModified:J
    cmp-long v10, v3, v6

    if-gez v10, :cond_2

    .line 614
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    .line 615
    .local v5, ret:Z
    sget-object v10, Lorg/lichsword/util/ImageManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " clean delete "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    .end local v5           #ret:Z
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public final clearListeners()V
    .locals 2

    .prologue
    .line 498
    iget-object v1, p0, Lorg/lichsword/util/ImageManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 499
    :try_start_0
    iget-object v0, p0, Lorg/lichsword/util/ImageManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 498
    monitor-exit v1

    .line 501
    return-void

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public downloadBitmap(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    .line 756
    const/4 v0, 0x0

    sget-object v1, Lcom/alibaba/adi/collie/util/ImageUtil;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lichsword/util/ImageManager;->downloadBitmap(Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v0

    return v0
.end method

.method public downloadBitmap(Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z
    .locals 10
    .parameter "url"
    .parameter "saveToFile"
    .parameter "compressFormat"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 727
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 746
    :goto_0
    return v2

    .line 730
    :cond_0
    if-nez p2, :cond_1

    .line 731
    invoke-virtual {p0, p1}, Lorg/lichsword/util/ImageManager;->getImageCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 733
    :cond_1
    sget-object v4, Lorg/lichsword/util/ImageManager;->TAG:Ljava/lang/String;

    const-string v5, "Downloading image from %s to %s."

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-static {p1, p2, p3}, Lcom/alibaba/adi/collie/util/ImageUtil;->downloadImage(Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 736
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 737
    .local v2, success:Z
    if-eqz v0, :cond_2

    .line 738
    const/4 v2, 0x1

    .line 739
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 740
    .local v1, imageReference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    iget-object v4, p0, Lorg/lichsword/util/ImageManager;->mImagesRefs:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 743
    .end local v1           #imageReference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    :cond_2
    sget-object v4, Lorg/lichsword/util/ImageManager;->TAG:Ljava/lang/String;

    .line 744
    const-string v5, "Downloaded image from %s to %s, RESULT = %s."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    .line 745
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    .line 744
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 742
    invoke-static {v4, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public downloadBitmapAsync(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 704
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getCacheDir()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/adi/collie/util/ImageUtil;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lichsword/util/ImageManager;->downloadBitmapAsync(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 705
    return-void
.end method

.method public downloadBitmapAsync(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 1
    .parameter "url"
    .parameter "subDir"
    .parameter "compressFormat"

    .prologue
    .line 708
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    :goto_0
    return-void

    .line 711
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/lichsword/util/ImageManager;->ensureTask(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    goto :goto_0
.end method

.method public downloadBitmapThread(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 1
    .parameter "url"
    .parameter "subDir"
    .parameter "compressFormat"

    .prologue
    .line 715
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    :goto_0
    return-void

    .line 718
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/lichsword/util/ImageManager;->enqueueThread(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    goto :goto_0
.end method

.method protected enqueueThread(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 5
    .parameter "url"
    .parameter "subDir"
    .parameter "compressFormat"

    .prologue
    .line 526
    iget-object v3, p0, Lorg/lichsword/util/ImageManager;->mTasks:Landroid/util/SparseArray;

    monitor-enter v3

    .line 527
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v2, v4

    .line 528
    .local v0, key:I
    iget-object v2, p0, Lorg/lichsword/util/ImageManager;->mThreads:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;

    .line 529
    .local v1, runnable:Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;
    if-nez v1, :cond_0

    .line 530
    new-instance v1, Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;

    .end local v1           #runnable:Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;
    invoke-direct {v1, p0, p1, p2, p3}, Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;-><init>(Lorg/lichsword/util/ImageManager;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 531
    .restart local v1       #runnable:Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;
    iget-object v2, p0, Lorg/lichsword/util/ImageManager;->mThreads:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 532
    sget-object v2, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 526
    :cond_0
    monitor-exit v3

    .line 535
    return-void

    .line 526
    .end local v0           #key:I
    .end local v1           #runnable:Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public ensureCacheDir()Z
    .locals 3

    .prologue
    .line 569
    sget-object v0, Lcom/alibaba/adi/collie/model/AdiConstants;->ROOT_DIR_EXT_ADI_LOCK:Ljava/io/File;

    iput-object v0, p0, Lorg/lichsword/util/ImageManager;->mStorageDir:Ljava/io/File;

    .line 570
    iget-object v0, p0, Lorg/lichsword/util/ImageManager;->mStorageDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 571
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getCacheDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lichsword/util/ImageManager;->getSubDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/lichsword/util/ImageManager;->mCacheDir:Ljava/io/File;

    .line 572
    iget-object v0, p0, Lorg/lichsword/util/ImageManager;->mCacheDirMap:Ljava/util/Map;

    invoke-static {}, Lorg/lichsword/util/ImageManager;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/lichsword/util/ImageManager;->mCacheDir:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    :cond_0
    iget-object v0, p0, Lorg/lichsword/util/ImageManager;->mCacheDir:Ljava/io/File;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected ensureTask(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 510
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getCacheDir()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/adi/collie/util/ImageUtil;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lichsword/util/ImageManager;->ensureTask(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 511
    return-void
.end method

.method protected ensureTask(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 5
    .parameter "url"
    .parameter "subDir"
    .parameter "compressFormat"

    .prologue
    .line 514
    iget-object v3, p0, Lorg/lichsword/util/ImageManager;->mTasks:Landroid/util/SparseArray;

    monitor-enter v3

    .line 515
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v2, v4

    .line 516
    .local v0, key:I
    iget-object v2, p0, Lorg/lichsword/util/ImageManager;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lichsword/util/ImageManager$ImageDownloadTask;

    .line 517
    .local v1, task:Lorg/lichsword/util/ImageManager$ImageDownloadTask;
    if-nez v1, :cond_0

    .line 518
    new-instance v1, Lorg/lichsword/util/ImageManager$ImageDownloadTask;

    .end local v1           #task:Lorg/lichsword/util/ImageManager$ImageDownloadTask;
    invoke-direct {v1, p0, p1, p2, p3}, Lorg/lichsword/util/ImageManager$ImageDownloadTask;-><init>(Lorg/lichsword/util/ImageManager;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 519
    .restart local v1       #task:Lorg/lichsword/util/ImageManager$ImageDownloadTask;
    iget-object v2, p0, Lorg/lichsword/util/ImageManager;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 520
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/lichsword/util/ImageManager$ImageDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 514
    :cond_0
    monitor-exit v3

    .line 523
    return-void

    .line 514
    .end local v0           #key:I
    .end local v1           #task:Lorg/lichsword/util/ImageManager$ImageDownloadTask;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected finishTask(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "url"
    .parameter "subDir"
    .parameter "result"

    .prologue
    .line 434
    iget-object v2, p0, Lorg/lichsword/util/ImageManager;->mTasks:Landroid/util/SparseArray;

    monitor-enter v2

    .line 435
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 436
    .local v0, key:I
    iget-object v1, p0, Lorg/lichsword/util/ImageManager;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 434
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-virtual {p0, p1, p3}, Lorg/lichsword/util/ImageManager;->notifyDownloadCompleted(Ljava/lang/String;Z)V

    .line 439
    return-void

    .line 434
    .end local v0           #key:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected finishThread(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "url"
    .parameter "subDir"

    .prologue
    .line 442
    iget-object v2, p0, Lorg/lichsword/util/ImageManager;->mThreads:Landroid/util/SparseArray;

    monitor-enter v2

    .line 443
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 444
    .local v0, key:I
    iget-object v1, p0, Lorg/lichsword/util/ImageManager;->mThreads:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 442
    monitor-exit v2

    .line 446
    return-void

    .line 442
    .end local v0           #key:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lorg/lichsword/util/ImageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getImageCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "url"

    .prologue
    .line 282
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getCacheDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/lichsword/util/ImageManager;->getImageCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getImageCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "url"
    .parameter "subDir"

    .prologue
    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lorg/lichsword/util/ImageManager;->getSubDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "%08x.cache"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "subDir"

    .prologue
    .line 578
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 579
    :cond_0
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getCacheDir()Ljava/lang/String;

    move-result-object p1

    .line 581
    :cond_1
    iget-object v1, p0, Lorg/lichsword/util/ImageManager;->mCacheDirMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 582
    iget-object v1, p0, Lorg/lichsword/util/ImageManager;->mCacheDirMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 592
    :goto_0
    return-object v1

    .line 584
    :cond_2
    iget-object v1, p0, Lorg/lichsword/util/ImageManager;->mStorageDir:Ljava/io/File;

    if-eqz v1, :cond_4

    .line 585
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/lichsword/util/ImageManager;->mStorageDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 586
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 587
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 589
    :cond_3
    iget-object v1, p0, Lorg/lichsword/util/ImageManager;->mCacheDirMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 590
    goto :goto_0

    .line 592
    .end local v0           #cacheDir:Ljava/io/File;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isImageCacheValid(Ljava/lang/String;)Z
    .locals 13
    .parameter "url"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 362
    const/4 v3, 0x0

    .line 363
    .local v3, isImageCached:Z
    const/4 v4, 0x0

    .line 364
    .local v4, isImageFileExist:Z
    invoke-virtual {p0, p1}, Lorg/lichsword/util/ImageManager;->getImageCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 365
    .local v1, cacheFile:Ljava/io/File;
    iget-object v6, p0, Lorg/lichsword/util/ImageManager;->mImagesRefs:Landroid/util/SparseArray;

    .line 366
    .local v6, refs:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;"
    if-eqz v1, :cond_1

    .line 367
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 368
    .local v5, key:I
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 369
    .local v0, bitmapRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 371
    .local v2, cacheImage:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 372
    const/4 v3, 0x1

    .line 375
    .end local v2           #cacheImage:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    move v4, v7

    .line 377
    .end local v0           #bitmapRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .end local v5           #key:I
    :cond_1
    :goto_0
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    :goto_1
    return v8

    .restart local v0       #bitmapRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .restart local v5       #key:I
    :cond_2
    move v4, v8

    .line 375
    goto :goto_0

    .end local v0           #bitmapRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .end local v5           #key:I
    :cond_3
    move v8, v7

    .line 377
    goto :goto_1
.end method

.method public isImageCached(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 388
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getCacheDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/lichsword/util/ImageManager;->isImageCached(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isImageCached(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "url"
    .parameter "subDir"

    .prologue
    .line 392
    invoke-virtual {p0, p1, p2}, Lorg/lichsword/util/ImageManager;->getImageCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 393
    .local v0, cacheFile:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0, v0}, Lorg/lichsword/util/ImageManager;->isImageFileValid(Ljava/io/File;)Z

    move-result v1

    .line 396
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isImageFileValid(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 407
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-direct {p0, p1}, Lorg/lichsword/util/ImageManager;->isImageFileValidInternal(Ljava/io/File;)Z

    move-result v0

    .line 410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "path"

    .prologue
    .line 662
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 663
    const/4 v0, 0x0

    .line 675
    :cond_0
    :goto_0
    return-object v0

    .line 665
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 666
    .local v2, key:I
    iget-object v3, p0, Lorg/lichsword/util/ImageManager;->mImagesRefs:Landroid/util/SparseArray;

    .line 667
    .local v3, refs:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;"
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 668
    .local v1, bitmapRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 669
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 670
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 672
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    if-nez v0, :cond_0

    .line 673
    invoke-direct {p0, p1, v2, v3}, Lorg/lichsword/util/ImageManager;->decodeBitmapInternal(Ljava/lang/String;ILandroid/util/SparseArray;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public loadBitmapByUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"

    .prologue
    .line 685
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getCacheDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/lichsword/util/ImageManager;->loadBitmapByUrl(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadBitmapByUrl(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "url"
    .parameter "subDir"

    .prologue
    .line 689
    const/4 v1, 0x0

    .line 690
    .local v1, cachedImage:Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, p2}, Lorg/lichsword/util/ImageManager;->getImageCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 691
    .local v0, cacheFile:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/lichsword/util/ImageManager;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 694
    :cond_0
    return-object v1
.end method

.method public loadRemoteImageForImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2
    .parameter "url"
    .parameter "imageView"
    .parameter "placeHolderResId"

    .prologue
    .line 304
    if-nez p2, :cond_0

    .line 321
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    invoke-static {p2, p3}, Lorg/lichsword/util/ImageManager;->setImageViewImageResouce(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {p0, p1}, Lorg/lichsword/util/ImageManager;->getImageCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 312
    .local v0, cacheFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lorg/lichsword/util/ImageManager;->isImageFileValidInternal(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/lichsword/util/ImageManager;->setImageViewImageURI(Landroid/widget/ImageView;Landroid/net/Uri;)V

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p0, p1}, Lorg/lichsword/util/ImageManager;->downloadBitmapAsync(Ljava/lang/String;)V

    .line 318
    invoke-static {p2, p3}, Lorg/lichsword/util/ImageManager;->setImageViewImageResouce(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method public loadRemoteImageForImageView2(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2
    .parameter "url"
    .parameter "imageView"
    .parameter "placeHolderResId"

    .prologue
    .line 335
    if-nez p2, :cond_0

    .line 352
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p0, p1}, Lorg/lichsword/util/ImageManager;->getImageCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 343
    .local v0, cacheFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lorg/lichsword/util/ImageManager;->isImageFileValidInternal(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {p0, p1}, Lorg/lichsword/util/ImageManager;->downloadBitmapAsync(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected final notifyDownloadCompleted(Ljava/lang/String;Z)V
    .locals 5
    .parameter "url"
    .parameter "result"

    .prologue
    .line 458
    iget-object v3, p0, Lorg/lichsword/util/ImageManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 459
    :try_start_0
    iget-object v1, p0, Lorg/lichsword/util/ImageManager;->mListeners:Ljava/util/ArrayList;

    .line 460
    .local v1, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/lichsword/util/ImageManager$ImageDownloadListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 458
    monitor-exit v3

    .line 466
    return-void

    .line 460
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lichsword/util/ImageManager$ImageDownloadListener;

    .line 461
    .local v0, listener:Lorg/lichsword/util/ImageManager$ImageDownloadListener;
    if-eqz v0, :cond_0

    .line 462
    invoke-interface {v0, p1, p2}, Lorg/lichsword/util/ImageManager$ImageDownloadListener;->onDownloadCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 458
    .end local v0           #listener:Lorg/lichsword/util/ImageManager$ImageDownloadListener;
    .end local v1           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/lichsword/util/ImageManager$ImageDownloadListener;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final removeListener(Lorg/lichsword/util/ImageManager$ImageDownloadListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 489
    iget-object v1, p0, Lorg/lichsword/util/ImageManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 490
    :try_start_0
    iget-object v0, p0, Lorg/lichsword/util/ImageManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 489
    monitor-exit v1

    .line 492
    return-void

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
