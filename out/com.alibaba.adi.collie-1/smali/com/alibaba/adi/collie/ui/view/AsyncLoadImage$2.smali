.class Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$2;
.super Ljava/lang/Object;
.source "AsyncLoadImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->loadFromUri(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$2;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 128
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$2;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$2;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->access$1(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->downloadBitmapInBackground(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->access$2(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$2;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->finishHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->access$3(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 130
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$2;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->finishHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->access$3(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    return-void
.end method
