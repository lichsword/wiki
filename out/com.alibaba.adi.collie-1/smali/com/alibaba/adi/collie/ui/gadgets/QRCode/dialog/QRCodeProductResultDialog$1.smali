.class Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$1;
.super Landroid/os/Handler;
.source "QRCodeProductResultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;

    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 99
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->access$0(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 103
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->access$0(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
