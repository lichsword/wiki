.class Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->startFaceDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;)Lcom/alibaba/adi/collie/ui/crop/view/CropImage;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 62
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 63
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$4(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;-><init>(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 83
    return-void

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
