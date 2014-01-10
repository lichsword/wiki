.class Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$1;
.super Landroid/os/Handler;
.source "GridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$1;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

    .line 209
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 212
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 214
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;

    if-eqz v1, :cond_0

    .line 215
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;

    .line 216
    .local v0, handlerPack:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;
    if-eqz v0, :cond_0

    .line 217
    iget-object v1, v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;->imageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;->imageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 220
    iget-object v1, v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;->imageView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 222
    iget-object v1, v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->setBmpLoaded(Z)V

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method
