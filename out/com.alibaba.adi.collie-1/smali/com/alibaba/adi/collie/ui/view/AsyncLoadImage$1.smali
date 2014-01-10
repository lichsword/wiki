.class Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$1;
.super Landroid/os/Handler;
.source "AsyncLoadImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    .line 228
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 232
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 233
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    #setter for: Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v0}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->access$0(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;Landroid/graphics/Bitmap;)V

    .line 234
    return-void
.end method
