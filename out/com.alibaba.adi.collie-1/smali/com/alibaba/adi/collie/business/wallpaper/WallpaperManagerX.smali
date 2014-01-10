.class public Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;
.super Ljava/lang/Object;
.source "WallpaperManagerX.java"

# interfaces
.implements Lcom/alibaba/adi/collie/business/ttid/OnTtidChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;,
        Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperScheduling$SchedulingType:[I = null

.field public static final BLUR_RADIUS:I = 0x1e

.field public static final DARK_LEVEL:I = 0x1e

.field public static final ICON_HEIGHT:F = 120.0f

.field public static final ICON_WIDTH:F = 90.0f

.field public static final PRE_ADD_WALLPAPER_NUM:I = 0x9

.field public static final TAG:Ljava/lang/String; = "WallpaperManagerX"

.field private static final sExternalBlurDir:Ljava/lang/String; = null

.field private static final sExternalImageDir:Ljava/lang/String; = null

.field private static sInstance:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX; = null

.field private static final sInternalIconDir:Ljava/lang/String; = "wallpaper_icon"

.field private static volatile sNeedWallpaperChange:Z

.field private static sThreadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private volatile _blur_thread_num_:I

.field private bitmapHeight:I

.field private bitmapWidth:I

.field public currentWallpaperID:Ljava/lang/String;

.field private mBlurDir:Ljava/io/File;

.field private mBlurTaskMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedBitmap:[Landroid/graphics/Bitmap;

.field private mIconDir:Ljava/io/File;

.field private mImageDir:Ljava/io/File;

.field private mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperScheduling$SchedulingType()[I
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->$SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperScheduling$SchedulingType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->values()[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->EVERY_SCREEN_ON:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->NEVER_SCHEDULE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->NORMAL_SCHEDULE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->$SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperScheduling$SchedulingType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wallpaperx"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sExternalImageDir:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wallpaperx"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "blur"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sExternalBlurDir:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sNeedWallpaperChange:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mCachedBitmap:[Landroid/graphics/Bitmap;

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->currentWallpaperID:Ljava/lang/String;

    .line 495
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mBlurTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 496
    iput v3, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->_blur_thread_num_:I

    .line 182
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 183
    .local v0, screenSize:[I
    aget v1, v0, v3

    int-to-float v1, v1

    const v2, 0x3f8ccccc

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapWidth:I

    .line 184
    const/4 v1, 0x1

    aget v1, v0, v1

    int-to-float v1, v1

    const v2, 0x3f87ae14

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapHeight:I

    .line 186
    new-instance v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;-><init>()V

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    .line 187
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->parse()V

    .line 189
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-string v2, "wallpaper_icon"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/adi/collie/CoreApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mIconDir:Ljava/io/File;

    .line 190
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/alibaba/adi/collie/model/AdiConstants;->ROOT_DIR_EXT_ADI_LOCK:Ljava/io/File;

    sget-object v3, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sExternalImageDir:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mImageDir:Ljava/io/File;

    .line 191
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/alibaba/adi/collie/model/AdiConstants;->ROOT_DIR_EXT_ADI_LOCK:Ljava/io/File;

    sget-object v3, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sExternalBlurDir:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mBlurDir:Ljava/io/File;

    .line 192
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->ensureDirs()V

    .line 193
    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)I
    .locals 1
    .parameter

    .prologue
    .line 496
    iget v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->_blur_thread_num_:I

    return v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 496
    iput p1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->_blur_thread_num_:I

    return-void
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter

    .prologue
    .line 495
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mBlurTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapWidth:I

    return v0
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapHeight:I

    return v0
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mBlurDir:Ljava/io/File;

    return-object v0
.end method

.method private addWallpapers(Ljava/io/File;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;Z)Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    .locals 10
    .parameter "bitmapFile"
    .parameter "status"
    .parameter "needCopy"

    .prologue
    .line 395
    if-nez p1, :cond_0

    .line 396
    const-string v5, "WallpaperManagerX"

    const-string v6, "addWallpaper(): no wallpaper to add, is null"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v1, 0x0

    .line 450
    :goto_0
    return-object v1

    .line 398
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 399
    :cond_1
    const-string v5, "WallpaperManagerX"

    const-string v6, "addWallpaper(): bitmap file %s not exists or is not a file"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v1, 0x0

    goto :goto_0

    .line 403
    :cond_2
    new-instance v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;-><init>()V

    .line 404
    .local v1, configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    sget-object v5, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->FILE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    invoke-virtual {v1, v5}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setSource(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;)V

    .line 405
    invoke-virtual {v1, p2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setStatus(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V

    .line 407
    const/4 v4, 0x0

    .line 408
    .local v4, targetFile:Ljava/io/File;
    if-eqz p3, :cond_4

    .line 409
    new-instance v4, Ljava/io/File;

    .end local v4           #targetFile:Ljava/io/File;
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mImageDir:Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 411
    .restart local v4       #targetFile:Ljava/io/File;
    :try_start_0
    const-string v5, "WallpaperManagerX"

    const-string v6, "addWallpaper(): copying file : %s --> %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->ensureDirs()V

    .line 413
    invoke-static {p1, v4}, Lcom/alibaba/adi/collie/util/FileUtil;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 425
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v2

    .line 415
    .local v2, e:Ljava/io/IOException;
    const-string v5, "WallpaperManagerX"

    .line 416
    const-string v6, "addWallpaper(): copy bitmap file failed %s --> %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 415
    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 421
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    move-object v4, p1

    goto :goto_1

    .line 428
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setImagePath(Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/alibaba/adi/collie/model/AdiConstants;->ROOT_DIR_EXT_ADI_LOCK:Ljava/io/File;

    sget-object v7, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sExternalBlurDir:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/adi/collie/util/FileUtil;->getFileNameWithExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 430
    .local v0, blurFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 431
    const-string v5, "WallpaperManagerX"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "blurFile already exists, no need to blurring "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setBlurPath(Ljava/lang/String;)V

    .line 438
    :goto_2
    invoke-direct {p0, v4}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->makeIcon(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 439
    .local v3, iconFile:Ljava/io/File;
    if-eqz v3, :cond_7

    .line 440
    const-string v5, "WallpaperManagerX"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "addWallpaper(): icon cached at "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setIconPath(Ljava/lang/String;)V

    .line 447
    :goto_3
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v5, v6}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->add([Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V

    .line 448
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->setWallpaperNeedChange(ZZ)V

    goto/16 :goto_0

    .line 434
    .end local v3           #iconFile:Ljava/io/File;
    :cond_6
    const-string v5, "WallpaperManagerX"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "blurFile not found, need to blur "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->blurImageAsync(Ljava/lang/String;)V

    goto :goto_2

    .line 443
    .restart local v3       #iconFile:Ljava/io/File;
    :cond_7
    const-string v5, "WallpaperManagerX"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "addWallpaper(): failed to obtain icon for wallpaper "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setIconPath(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private blurImageAsync(Ljava/lang/String;)V
    .locals 4
    .parameter "imagePath"

    .prologue
    .line 498
    new-instance v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;-><init>(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;Ljava/lang/String;)V

    .line 562
    .local v0, blurRunable:Ljava/lang/Runnable;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 563
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mBlurTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 564
    .local v1, f:Ljava/util/concurrent/Future;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_1

    .line 571
    .end local v1           #f:Ljava/util/concurrent/Future;
    :cond_0
    :goto_0
    return-void

    .line 568
    .restart local v1       #f:Ljava/util/concurrent/Future;
    :cond_1
    sget-object v3, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 569
    .local v2, future:Ljava/util/concurrent/Future;
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mBlurTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private ensureDirs()V
    .locals 2

    .prologue
    .line 599
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, externalStorageState:Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mIconDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mIconDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 603
    :cond_0
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 604
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mImageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mImageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 607
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mBlurDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 608
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mBlurDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 611
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sInstance:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    if-nez v0, :cond_1

    .line 66
    const-class v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sInstance:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sInstance:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    .line 66
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sInstance:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getWallpaperNeedChange()Z
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->$SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperScheduling$SchedulingType()[I

    move-result-object v0

    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling;->getSchedulingType()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    sget-boolean v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sNeedWallpaperChange:Z

    return v0

    .line 106
    :pswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sNeedWallpaperChange:Z

    goto :goto_0

    .line 109
    :pswitch_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sNeedWallpaperChange:Z

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private makeIcon(Ljava/io/File;)Ljava/io/File;
    .locals 10
    .parameter "bitmapFile"

    .prologue
    const/4 v4, 0x0

    .line 574
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 575
    sget-object v6, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const/high16 v7, 0x42b4

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/DensityPixel;->dip2px(Landroid/content/Context;F)I

    move-result v6

    .line 576
    sget-object v7, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const/high16 v8, 0x42f0

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/DensityPixel;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionSave()Landroid/graphics/BitmapFactory$Options;

    move-result-object v8

    .line 574
    invoke-static {v5, v6, v7, v8}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 577
    .local v1, icon:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 579
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mIconDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/adi/collie/util/FileUtil;->getFileNameWithExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 580
    const/16 v7, 0x5a

    .line 579
    invoke-static {v1, v5, v6, v7}, Lcom/alibaba/adi/collie/util/ImageUtil;->saveBmp(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, iconPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 582
    .local v2, iconFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 594
    .end local v2           #iconFile:Ljava/io/File;
    .end local v3           #iconPath:Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v2       #iconFile:Ljava/io/File;
    .restart local v3       #iconPath:Ljava/lang/String;
    :cond_0
    move-object v2, v4

    .line 585
    goto :goto_0

    .line 587
    .end local v2           #iconFile:Ljava/io/File;
    .end local v3           #iconPath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 588
    .local v0, e:Ljava/io/IOException;
    const-string v5, "WallpaperManagerX"

    .line 589
    const-string v6, "saving icon failed for image file %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 588
    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v4

    .line 591
    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    move-object v2, v4

    .line 594
    goto :goto_0
.end method

.method private onGetWallpaperFailed(II)[Landroid/graphics/Bitmap;
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mCachedBitmap:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/CoreApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 291
    const-string v4, "wallpaper/selected_01.jpg"

    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionDefault()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 290
    invoke-static {v3, v4, p1, p2, v5}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Landroid/content/res/AssetManager;Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 292
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mCachedBitmap:[Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/CoreApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 293
    const-string v4, "wallpaper/blured/selected_01.jpg"

    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionDefault()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 292
    invoke-static {v3, v4, p1, p2, v5}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Landroid/content/res/AssetManager;Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 294
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mCachedBitmap:[Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-object v1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, error:Ljava/lang/OutOfMemoryError;
    const-string v1, "WallpaperManagerX"

    const-string v2, "OOM from onGetWallpaperFailed()"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static setWallpaperNeedChange(ZZ)V
    .locals 3
    .parameter "needChange"
    .parameter "forceChange"

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    const-string v0, "WallpaperManagerX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setWallpaperNeedChange(): forceChange=true, set to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sput-boolean p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sNeedWallpaperChange:Z

    .line 101
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->$SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperScheduling$SchedulingType()[I

    move-result-object v0

    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling;->getSchedulingType()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    const-string v0, "WallpaperManagerX"

    const-string v1, "setWallapaperNeedChange(): never_schedule, set to false"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sNeedWallpaperChange:Z

    goto :goto_0

    .line 88
    :pswitch_1
    const-string v0, "WallpaperManagerX"

    const-string v1, "setWallapaperNeedChange(): every_screen_on, set to true"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sNeedWallpaperChange:Z

    goto :goto_0

    .line 96
    :pswitch_2
    const-string v0, "WallpaperManagerX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setWallapaperNeedChange(): normal_schedule, set to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sput-boolean p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sNeedWallpaperChange:Z

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addWallpapers(Ljava/io/File;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    .locals 1
    .parameter "bitmapFile"
    .parameter "status"

    .prologue
    .line 389
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->addWallpapers(Ljava/io/File;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;Z)Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v0

    return-object v0
.end method

.method public deleteWallpapers([Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V
    .locals 3
    .parameter "items"

    .prologue
    const/4 v2, 0x1

    .line 454
    if-nez p1, :cond_0

    .line 455
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null wallpaper items to be deleted"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    invoke-virtual {v1, p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->delete([Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V

    .line 458
    invoke-static {v2, v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->setWallpaperNeedChange(ZZ)V

    .line 459
    new-instance v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$2;-><init>(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V

    .line 486
    .local v0, deleteRunnable:Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 487
    return-void
.end method

.method public getCachedWallpaper()[Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mCachedBitmap:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mCachedBitmap:[Landroid/graphics/Bitmap;

    .line 309
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getWallpaper()[Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getIconBitmap(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "configItem"

    .prologue
    const/high16 v8, 0x42f0

    const/high16 v7, 0x42b4

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, iconBitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 130
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 133
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getIconPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getIconPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 134
    const-string v3, "WallpaperManagerX"

    const-string v4, "getIconBitmap(): try to use iconPath to get the icon bitmap"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getIconPath()Ljava/lang/String;

    move-result-object v3

    .line 138
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v4, v7}, Lcom/alibaba/adi/collie/util/DensityPixel;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 139
    sget-object v5, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v5, v8}, Lcom/alibaba/adi/collie/util/DensityPixel;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionSave()Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    .line 137
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 142
    :cond_2
    if-nez v1, :cond_4

    .line 143
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getSource()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v3

    sget-object v4, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->FILE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    if-ne v3, v4, :cond_5

    .line 144
    const-string v3, "WallpaperManagerX"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getIconBitmap(): get icon from sampling file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v3

    .line 146
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v4, v7}, Lcom/alibaba/adi/collie/util/DensityPixel;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 147
    sget-object v5, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v5, v8}, Lcom/alibaba/adi/collie/util/DensityPixel;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionSave()Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    .line 145
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 156
    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    .line 158
    :try_start_0
    const-string v3, "WallpaperManagerX"

    const-string v4, "getIconBitmap(): saving icon bitmap to local cache"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->ensureDirs()V

    .line 160
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mIconDir:Ljava/io/File;

    .line 161
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/adi/collie/util/FileUtil;->getFileNameWithExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5a

    .line 160
    invoke-static {v1, v3, v4, v5}, Lcom/alibaba/adi/collie/util/ImageUtil;->saveBmp(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, iconPath:Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 163
    const-string v3, "WallpaperManagerX"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getIconBitmap(): icon is cached at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1, v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setIconPath(Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    invoke-virtual {v3, p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->setIconPath(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v2           #iconPath:Ljava/lang/String;
    :cond_4
    :goto_1
    return-object v1

    .line 148
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getSource()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v3

    sget-object v4, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->PACKAGE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    if-ne v3, v4, :cond_3

    .line 149
    const-string v3, "WallpaperManagerX"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getIconBitmap(): get icon from sampling asset "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/CoreApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v4

    .line 151
    sget-object v5, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v5, v7}, Lcom/alibaba/adi/collie/util/DensityPixel;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 152
    sget-object v6, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v6, v8}, Lcom/alibaba/adi/collie/util/DensityPixel;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionSave()Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    .line 150
    invoke-static {v3, v4, v5, v6, v7}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Landroid/content/res/AssetManager;Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 171
    .end local v0           #e:Ljava/io/IOException;
    :cond_6
    const-string v3, "WallpaperManagerX"

    const-string v4, "getIconBitmap(): unable to obtain icon bitmap, return NULL"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getWallpaper()[Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 206
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getWallpaperNeedChange()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mCachedBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v9

    if-eqz v7, :cond_0

    .line 207
    const-string v7, "WallpaperManagerX"

    const-string v8, "getWallpaper(): wallpaper no need to change, return cached bitmap"

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mCachedBitmap:[Landroid/graphics/Bitmap;

    .line 283
    :goto_0
    return-object v7

    .line 210
    :cond_0
    const-string v7, "WallpaperManagerX"

    const-string v8, "getWallpaper(): wallpaper need to change, use iterator"

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {v9, v9}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->setWallpaperNeedChange(ZZ)V

    .line 212
    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->getUsedWallpaperIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 213
    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/4 v7, 0x3

    if-lt v3, v7, :cond_1

    .line 281
    const-string v7, "WallpaperManagerX"

    const-string v8, "getWallpaper(): all wallpaper candidates are failed to fetch, use default wallpaper"

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v7, "d"

    iput-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->currentWallpaperID:Ljava/lang/String;

    .line 283
    iget v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapWidth:I

    iget v8, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapHeight:I

    invoke-direct {p0, v7, v8}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->onGetWallpaperFailed(II)[Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    .line 214
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 215
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 216
    .local v1, configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 217
    const-string v7, "WallpaperManagerX"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getWallpaper(): try next wallpaper "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v4, 0x0

    .line 220
    .local v4, imageBitmap:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 221
    .local v0, blurImageBitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 222
    .local v6, tmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getSource()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v7

    sget-object v8, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->FILE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    if-ne v7, v8, :cond_4

    .line 223
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v7

    .line 224
    iget v8, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapWidth:I

    iget v9, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapHeight:I

    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionDefault()Landroid/graphics/BitmapFactory$Options;

    move-result-object v10

    .line 223
    invoke-static {v7, v8, v9, v10}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 225
    iget v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapWidth:I

    iget v8, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapHeight:I

    invoke-static {v6, v7, v8}, Lcom/alibaba/adi/collie/util/ImageUtil;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 226
    invoke-static {v6}, Lcom/alibaba/adi/collie/util/ImageUtil;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    if-eqz v4, :cond_7

    .line 228
    const-string v7, "WallpaperManagerX"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getWallpaper(): bitmap successfully decoded from file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getBlurPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getBlurPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 230
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getBlurPath()Ljava/lang/String;

    move-result-object v7

    .line 231
    iget v8, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapWidth:I

    iget v9, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapHeight:I

    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionDefault()Landroid/graphics/BitmapFactory$Options;

    move-result-object v10

    .line 230
    invoke-static {v7, v8, v9, v10}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 232
    iget v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapWidth:I

    iget v8, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapHeight:I

    invoke-static {v6, v7, v8}, Lcom/alibaba/adi/collie/util/ImageUtil;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    invoke-static {v6}, Lcom/alibaba/adi/collie/util/ImageUtil;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 257
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mCachedBitmap:[Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    .line 258
    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mCachedBitmap:[Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    aput-object v0, v7, v8

    .line 259
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "wallpaper/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 260
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x14

    const/16 v9, 0x15

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->currentWallpaperID:Ljava/lang/String;

    .line 261
    const-string v7, "WallpaperManagerX"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "current wallpaper id = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->currentWallpaperID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_3
    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mCachedBitmap:[Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 236
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->ensureDirs()V

    .line 237
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->blurImageAsync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v7, "WallpaperManagerX"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getWallpaper(): OOM caught when get wallpaper "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 270
    const-string v7, "o"

    iput-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->currentWallpaperID:Ljava/lang/String;

    .line 271
    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mCachedBitmap:[Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 242
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getSource()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v7

    sget-object v8, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->PACKAGE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    if-ne v7, v8, :cond_2

    .line 243
    sget-object v7, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/CoreApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v8

    .line 244
    iget v9, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapWidth:I

    iget v10, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapHeight:I

    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionDefault()Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    .line 243
    invoke-static {v7, v8, v9, v10, v11}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Landroid/content/res/AssetManager;Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 245
    iget v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapWidth:I

    iget v8, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapHeight:I

    invoke-static {v6, v7, v8}, Lcom/alibaba/adi/collie/util/ImageUtil;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 246
    invoke-static {v6}, Lcom/alibaba/adi/collie/util/ImageUtil;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 247
    if-eqz v4, :cond_7

    .line 248
    const-string v7, "WallpaperManagerX"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getWallpaper(): bitmap successfully decoded from package "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v7, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/CoreApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 250
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getBlurPath()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapWidth:I

    iget v10, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapHeight:I

    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionDefault()Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    .line 249
    invoke-static {v7, v8, v9, v10, v11}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Landroid/content/res/AssetManager;Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 251
    iget v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapWidth:I

    iget v8, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapHeight:I

    invoke-static {v6, v7, v8}, Lcom/alibaba/adi/collie/util/ImageUtil;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    invoke-static {v6}, Lcom/alibaba/adi/collie/util/ImageUtil;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 263
    :cond_5
    const-string v7, "c"

    iput-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->currentWallpaperID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 277
    .end local v0           #blurImageBitmap:Landroid/graphics/Bitmap;
    .end local v1           #configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    .end local v4           #imageBitmap:Landroid/graphics/Bitmap;
    .end local v6           #tmp:Landroid/graphics/Bitmap;
    :cond_6
    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->updateUsedWallpaperIterator()V

    .line 278
    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->getUsedWallpaperIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 213
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public getWallpapers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v1, retValues:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;>;"
    sget-object v2, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->FILE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getWallpapers(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;)[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v0

    .line 370
    .local v0, configItems:[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 371
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 374
    :cond_0
    sget-object v2, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->PACKAGE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getWallpapers(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;)[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 376
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 378
    :cond_1
    return-object v1
.end method

.method public getWallpapers(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;)[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    .locals 14
    .parameter "source"

    .prologue
    .line 314
    iget-object v9, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    invoke-virtual {v9, p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->getItems(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;)[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v3

    .line 315
    .local v3, configItems:[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    sget-object v9, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->FILE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    if-ne v9, p1, :cond_4

    .line 316
    if-eqz v3, :cond_0

    array-length v9, v3

    if-gtz v9, :cond_4

    .line 317
    :cond_0
    const-string v9, "WallpaperManagerX"

    const-string v10, "no ext wallpaper config item in DB, perhaps the user clear the app data"

    invoke-static {v9, v10}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v5, Ljava/io/File;

    sget-object v9, Lcom/alibaba/adi/collie/model/AdiConstants;->ROOT_DIR_EXT_ADI_LOCK:Ljava/io/File;

    sget-object v10, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sExternalImageDir:Ljava/lang/String;

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 319
    .local v5, extImageDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 320
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 321
    .local v6, extImageFiles:[Ljava/io/File;
    if-eqz v6, :cond_1

    array-length v9, v6

    if-lez v9, :cond_1

    .line 322
    const-string v9, "WallpaperManagerX"

    .line 323
    const-string v10, "there are files in %s, try to import as available wallpapers"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 324
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 323
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 322
    invoke-static {v9, v10}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    array-length v10, v6

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v10, :cond_2

    .line 337
    .end local v6           #extImageFiles:[Ljava/io/File;
    :cond_1
    iget-object v9, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    invoke-virtual {v9, p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->getItems(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;)[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v9

    .line 357
    .end local v5           #extImageDir:Ljava/io/File;
    :goto_1
    return-object v9

    .line 325
    .restart local v5       #extImageDir:Ljava/io/File;
    .restart local v6       #extImageFiles:[Ljava/io/File;
    :cond_2
    aget-object v7, v6, v9

    .line 326
    .local v7, extImg:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/adi/collie/util/FileUtil;->getFileNameWithExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, fileName:Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-static {v8}, Lcom/alibaba/adi/collie/util/StringUtil;->isInteger(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 328
    sget-object v11, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->AVAILABLE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    const/4 v12, 0x0

    invoke-direct {p0, v7, v11, v12}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->addWallpapers(Ljava/io/File;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;Z)Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v0

    .line 329
    .local v0, addedWallpaper:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 330
    const-string v11, "WallpaperManagerX"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "scan-added:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v0           #addedWallpaper:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 340
    .end local v5           #extImageDir:Ljava/io/File;
    .end local v6           #extImageFiles:[Ljava/io/File;
    .end local v7           #extImg:Ljava/io/File;
    .end local v8           #fileName:Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v2, configItemList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;>;"
    array-length v10, v3

    const/4 v9, 0x0

    :goto_2
    if-lt v9, v10, :cond_5

    .line 357
    const/4 v9, 0x0

    new-array v9, v9, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-interface {v2, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    goto :goto_1

    .line 341
    :cond_5
    aget-object v1, v3, v9

    .line 342
    .local v1, configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-eqz v1, :cond_6

    .line 343
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->isUsable()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 344
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 347
    :cond_7
    new-instance v4, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$1;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$1;-><init>(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V

    .line 353
    .local v4, delWallpaperConfigRunnable:Ljava/lang/Runnable;
    sget-object v11, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v11, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_3
.end method

.method public getWallpapers(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    .locals 1
    .parameter "status"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    invoke-virtual {v0, p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->getItems(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v0

    return-object v0
.end method

.method public onTtidChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "oldTtid"
    .parameter "newTtid"

    .prologue
    .line 621
    sget-object v2, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->PACKAGE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getWallpapers(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;)[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v0

    .line 622
    .local v0, assetWallpapers:[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-eqz v0, :cond_0

    .line 623
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 630
    :cond_0
    return-void

    .line 623
    :cond_1
    aget-object v1, v0, v2

    .line 624
    .local v1, configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-eqz v1, :cond_2

    .line 625
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setIconPath(Ljava/lang/String;)V

    .line 626
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    invoke-virtual {v4, v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->setIconPath(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V

    .line 623
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setStatus([Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V
    .locals 2
    .parameter "items"
    .parameter "status"

    .prologue
    const/4 v1, 0x1

    .line 490
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->setStatus([Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V

    .line 491
    invoke-static {v1, v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->setWallpaperNeedChange(ZZ)V

    .line 492
    return-void
.end method
