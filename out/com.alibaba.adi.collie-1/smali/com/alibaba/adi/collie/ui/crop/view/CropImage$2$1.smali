.class Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;

.field private final synthetic val$b:Landroid/graphics/Bitmap;

.field private final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;->this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;->val$b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;->this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;)Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    move-result-object v1

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;->val$b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;->this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;)Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;->this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;)Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;->this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;)Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;->val$b:Landroid/graphics/Bitmap;

    #setter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$7(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;Landroid/graphics/Bitmap;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;->this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;)Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;->this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;)Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->center(ZZ)V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 75
    return-void
.end method
