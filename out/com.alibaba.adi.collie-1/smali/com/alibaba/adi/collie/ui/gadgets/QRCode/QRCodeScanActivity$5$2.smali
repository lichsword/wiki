.class Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$2;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->onHttpLoadingFailed(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$2;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 533
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$2;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$2;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v1

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)Lcom/etao/kakalib/KakaLibScanController;

    move-result-object v1

    .line 535
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$2;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    .line 536
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$2;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v3

    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 537
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$2;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v4

    const v5, 0x7f0a0006

    invoke-virtual {v4, v5}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 533
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeResultDialogController;->showErrorDialog(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method
