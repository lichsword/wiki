.class Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/MailTraceWrapper;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

.field private final synthetic val$mailTraceWrapper:Lcom/etao/kakalib/api/beans/MailTraceWrapper;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;Lcom/etao/kakalib/api/beans/MailTraceWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->val$mailTraceWrapper:Lcom/etao/kakalib/api/beans/MailTraceWrapper;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 504
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->val$mailTraceWrapper:Lcom/etao/kakalib/api/beans/MailTraceWrapper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->val$mailTraceWrapper:Lcom/etao/kakalib/api/beans/MailTraceWrapper;

    invoke-virtual {v2}, Lcom/etao/kakalib/api/beans/MailTraceWrapper;->getTraces()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 505
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->val$mailTraceWrapper:Lcom/etao/kakalib/api/beans/MailTraceWrapper;

    invoke-virtual {v2}, Lcom/etao/kakalib/api/beans/MailTraceWrapper;->getTraces()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 506
    new-instance v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v1

    .line 507
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v2

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)Lcom/etao/kakalib/KakaLibScanController;

    move-result-object v2

    .line 508
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    .line 509
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->val$mailTraceWrapper:Lcom/etao/kakalib/api/beans/MailTraceWrapper;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->getBarCode()Ljava/lang/String;

    move-result-object v5

    .line 506
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;-><init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Lcom/etao/kakalib/api/beans/MailTraceWrapper;Ljava/lang/String;)V

    .line 510
    .local v0, expressResultDialog:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->show()V

    .line 524
    .end local v0           #expressResultDialog:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;
    :goto_0
    return-void

    .line 512
    :cond_0
    new-instance v1, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v2

    .line 513
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v3

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)Lcom/etao/kakalib/KakaLibScanController;

    move-result-object v3

    .line 514
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    .line 515
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->val$mailTraceWrapper:Lcom/etao/kakalib/api/beans/MailTraceWrapper;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->getBarCode()Ljava/lang/String;

    move-result-object v6

    .line 512
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;-><init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Lcom/etao/kakalib/api/beans/MailTraceWrapper;Ljava/lang/String;)V

    .line 516
    .local v1, nonStandardExpressResultDialog:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;->show()V

    goto :goto_0

    .line 519
    .end local v1           #nonStandardExpressResultDialog:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v2

    .line 520
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v3

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)Lcom/etao/kakalib/KakaLibScanController;

    move-result-object v3

    .line 521
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    .line 522
    const-string v5, "\u65e0\u6cd5\u8bfb\u53d6\u5230\u5bf9\u5e94\u7684\u8fd0\u5355\u72b6\u6001"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u8fd0\u5355\u7f16\u53f7"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v7}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->expressCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    invoke-virtual {v7}, Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;->getBarCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 519
    invoke-static {v2, v3, v4, v5, v6}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeResultDialogController;->showErrorDialog(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
