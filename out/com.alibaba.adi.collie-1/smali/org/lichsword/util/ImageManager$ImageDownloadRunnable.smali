.class final Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lichsword/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImageDownloadRunnable"
.end annotation


# instance fields
.field private final mCacheFile:Ljava/io/File;

.field private final mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final mSubDir:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lorg/lichsword/util/ImageManager;


# direct methods
.method constructor <init>(Lorg/lichsword/util/ImageManager;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 1
    .parameter
    .parameter "url"
    .parameter "subDir"
    .parameter "format"

    .prologue
    .line 90
    iput-object p1, p0, Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;->this$0:Lorg/lichsword/util/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;->mUrl:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;->mSubDir:Ljava/lang/String;

    .line 93
    invoke-virtual {p1, p2, p3}, Lorg/lichsword/util/ImageManager;->getImageCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;->mCacheFile:Ljava/io/File;

    .line 94
    iput-object p4, p0, Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 95
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 99
    iget-object v1, p0, Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;->this$0:Lorg/lichsword/util/ImageManager;

    iget-object v2, p0, Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;->mCacheFile:Ljava/io/File;

    iget-object v4, p0, Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v2, v3, v4}, Lorg/lichsword/util/ImageManager;->downloadBitmap(Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v0

    .line 100
    .local v0, result:Z
    iget-object v1, p0, Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;->this$0:Lorg/lichsword/util/ImageManager;

    iget-object v2, p0, Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lorg/lichsword/util/ImageManager$ImageDownloadRunnable;->mSubDir:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/lichsword/util/ImageManager;->finishThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
