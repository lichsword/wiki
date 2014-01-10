.class Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/ProductInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;

.field private final synthetic val$productInfo:Lcom/etao/kakalib/api/beans/ProductInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;Lcom/etao/kakalib/api/beans/ProductInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;->val$productInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 466
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;->val$productInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;->val$productInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    invoke-virtual {v1}, Lcom/etao/kakalib/api/beans/ProductInfo;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;->val$productInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    invoke-virtual {v1}, Lcom/etao/kakalib/api/beans/ProductInfo;->hasAnyPrice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    new-instance v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v1

    .line 468
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v2

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)Lcom/etao/kakalib/KakaLibScanController;

    move-result-object v2

    .line 469
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    .line 470
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;->val$productInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    .line 467
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;-><init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Lcom/etao/kakalib/api/beans/ProductInfo;)V

    .line 471
    .local v0, productResultDialog:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->show()V

    .line 479
    .end local v0           #productResultDialog:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v1

    .line 474
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v2

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)Lcom/etao/kakalib/KakaLibScanController;

    move-result-object v2

    .line 475
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    .line 476
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v4

    const v5, 0x7f0a0008

    invoke-virtual {v4, v5}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 477
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v6}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v6

    const v7, 0x7f0a000a

    invoke-virtual {v6, v7}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;->val$productInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    invoke-virtual {v9}, Lcom/etao/kakalib/api/beans/ProductInfo;->getBarcode()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 473
    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeResultDialogController;->showErrorDialog(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
