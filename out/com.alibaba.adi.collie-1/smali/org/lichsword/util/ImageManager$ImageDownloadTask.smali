.class final Lorg/lichsword/util/ImageManager$ImageDownloadTask;
.super Landroid/os/AsyncTask;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lichsword/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImageDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCacheFile:Ljava/io/File;

.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final mSubDir:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lorg/lichsword/util/ImageManager;


# direct methods
.method constructor <init>(Lorg/lichsword/util/ImageManager;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 1
    .parameter
    .parameter "url"
    .parameter "subDir"
    .parameter "compressFormat"

    .prologue
    .line 53
    iput-object p1, p0, Lorg/lichsword/util/ImageManager$ImageDownloadTask;->this$0:Lorg/lichsword/util/ImageManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    iput-object p2, p0, Lorg/lichsword/util/ImageManager$ImageDownloadTask;->mUrl:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lorg/lichsword/util/ImageManager$ImageDownloadTask;->mSubDir:Ljava/lang/String;

    .line 56
    invoke-virtual {p1, p2, p3}, Lorg/lichsword/util/ImageManager;->getImageCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/lichsword/util/ImageManager$ImageDownloadTask;->mCacheFile:Ljava/io/File;

    .line 57
    iput-object p4, p0, Lorg/lichsword/util/ImageManager$ImageDownloadTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 58
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .parameter "params"

    .prologue
    .line 67
    iget-object v1, p0, Lorg/lichsword/util/ImageManager$ImageDownloadTask;->this$0:Lorg/lichsword/util/ImageManager;

    iget-object v2, p0, Lorg/lichsword/util/ImageManager$ImageDownloadTask;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lorg/lichsword/util/ImageManager$ImageDownloadTask;->mCacheFile:Ljava/io/File;

    iget-object v4, p0, Lorg/lichsword/util/ImageManager$ImageDownloadTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v2, v3, v4}, Lorg/lichsword/util/ImageManager;->downloadBitmap(Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v0

    .line 68
    .local v0, result:Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/lichsword/util/ImageManager$ImageDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 78
    iget-object v0, p0, Lorg/lichsword/util/ImageManager$ImageDownloadTask;->this$0:Lorg/lichsword/util/ImageManager;

    iget-object v1, p0, Lorg/lichsword/util/ImageManager$ImageDownloadTask;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/lichsword/util/ImageManager$ImageDownloadTask;->mSubDir:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/lichsword/util/ImageManager;->finishTask(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/lichsword/util/ImageManager$ImageDownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
