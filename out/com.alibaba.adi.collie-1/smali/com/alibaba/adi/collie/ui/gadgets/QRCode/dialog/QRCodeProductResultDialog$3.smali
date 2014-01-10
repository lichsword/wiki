.class Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$3;
.super Ljava/lang/Object;
.source "QRCodeProductResultDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;-><init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Lcom/etao/kakalib/api/beans/ProductInfo;)V
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$3;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 70
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$3;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)Lcom/etao/kakalib/api/beans/ProductInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etao/kakalib/api/beans/ProductInfo;->getPic()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, picUrl:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 72
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/ImageUtil;->downloadImage(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 74
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$3;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 75
    .local v1, msg:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$3;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #picUrl:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v3

    goto :goto_0
.end method
