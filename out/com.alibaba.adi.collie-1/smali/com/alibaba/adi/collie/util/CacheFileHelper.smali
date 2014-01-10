.class public Lcom/alibaba/adi/collie/util/CacheFileHelper;
.super Ljava/lang/Object;
.source "CacheFileHelper.java"


# static fields
.field private static final FILE_NAME_BG:Ljava/lang/String; = "sys.png"

.field private static final FILE_NAME_BLUR:Ljava/lang/String; = "sys_blur.png"

.field public static final ROOT_PATH:Ljava/lang/String;

.field public static final TEMP:Ljava/lang/String;

.field public static final THUMBNAIL:Ljava/lang/String;

.field public static final WALLPAPER:Ljava/lang/String;

.field private static sInstance:Lcom/alibaba/adi/collie/util/CacheFileHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 22
    const-string v1, "ADILock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/util/CacheFileHelper;->ROOT_PATH:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/adi/collie/util/CacheFileHelper;->ROOT_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/util/CacheFileHelper;->WALLPAPER:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/adi/collie/util/CacheFileHelper;->WALLPAPER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 33
    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/util/CacheFileHelper;->THUMBNAIL:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/adi/collie/util/CacheFileHelper;->ROOT_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/util/CacheFileHelper;->TEMP:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static ensureDir(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 108
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 112
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getBlurredWallpaperPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/adi/collie/util/CacheFileHelper;->WALLPAPER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/adi/collie/util/CacheFileHelper;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/alibaba/adi/collie/util/CacheFileHelper;->sInstance:Lcom/alibaba/adi/collie/util/CacheFileHelper;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Lcom/alibaba/adi/collie/util/CacheFileHelper;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/util/CacheFileHelper;->sInstance:Lcom/alibaba/adi/collie/util/CacheFileHelper;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/alibaba/adi/collie/util/CacheFileHelper;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/CacheFileHelper;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/CacheFileHelper;->sInstance:Lcom/alibaba/adi/collie/util/CacheFileHelper;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/util/CacheFileHelper;->ROOT_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/CacheFileHelper;->ensureDir(Ljava/lang/String;)Z

    .line 56
    sget-object v0, Lcom/alibaba/adi/collie/util/CacheFileHelper;->WALLPAPER:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/CacheFileHelper;->ensureDir(Ljava/lang/String;)Z

    .line 57
    sget-object v0, Lcom/alibaba/adi/collie/util/CacheFileHelper;->THUMBNAIL:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/CacheFileHelper;->ensureDir(Ljava/lang/String;)Z

    .line 58
    sget-object v0, Lcom/alibaba/adi/collie/util/CacheFileHelper;->TEMP:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/CacheFileHelper;->ensureDir(Ljava/lang/String;)Z

    .line 59
    sget-object v0, Lcom/alibaba/adi/collie/util/CacheFileHelper;->sInstance:Lcom/alibaba/adi/collie/util/CacheFileHelper;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getWallpaperPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/adi/collie/util/CacheFileHelper;->WALLPAPER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static recyleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 63
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    :cond_0
    return-void
.end method

.method private saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .parameter "bitmap"
    .parameter "path"

    .prologue
    .line 92
    if-eqz p1, :cond_1

    .line 93
    invoke-static {p2}, Lcom/alibaba/adi/collie/util/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    invoke-static {p2}, Lcom/alibaba/adi/collie/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 96
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, file:Ljava/io/File;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    .local v1, outputStream:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 99
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 100
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 99
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 101
    .local v2, stream:Ljava/io/InputStream;
    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/FileUtil;->writeDataToFile(Ljava/io/File;Ljava/io/InputStream;)V

    .line 105
    .end local v0           #file:Ljava/io/File;
    .end local v1           #outputStream:Ljava/io/ByteArrayOutputStream;
    .end local v2           #stream:Ljava/io/InputStream;
    :cond_1
    return-void
.end method


# virtual methods
.method public getBlurWallpaper()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 76
    const-string v2, "sys_blur.png"

    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/util/CacheFileHelper;->getWallpaperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 78
    .local v1, result:Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public getWallpaper()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 69
    const-string v2, "sys.png"

    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/util/CacheFileHelper;->getWallpaperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 71
    .local v1, result:Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public saveBlurWallpaer(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 87
    const-string v1, "sys_blur.png"

    invoke-direct {p0, v1}, Lcom/alibaba/adi/collie/util/CacheFileHelper;->getBlurredWallpaperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, path:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/alibaba/adi/collie/util/CacheFileHelper;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public saveWallpaper(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 82
    const-string v1, "sys.png"

    invoke-direct {p0, v1}, Lcom/alibaba/adi/collie/util/CacheFileHelper;->getWallpaperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, path:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/alibaba/adi/collie/util/CacheFileHelper;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 84
    return-void
.end method
