.class public Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;
.super Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;
.source "QRCodeScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomDecodeResultRawProcesser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter
    .parameter "scanController"
    .parameter "fragmentActivity"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    .line 394
    invoke-direct {p0, p2, p3}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;-><init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V

    .line 395
    return-void
.end method


# virtual methods
.method protected handleBarCodeDecodeResult(Lcom/etao/kaka/decode/DecodeResult;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/NetworkUtil;->networkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    .line 444
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)Lcom/etao/kakalib/KakaLibScanController;

    move-result-object v1

    .line 445
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v2, v2, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    .line 446
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    const v4, 0x7f0a0006

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 447
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    const v5, 0x7f0a0007

    invoke-virtual {v4, v5}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 443
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeResultDialogController;->showErrorDialog(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 450
    :cond_1
    iget-object v0, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 451
    iget-object v0, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->productInfoCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    iget-object v1, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;->setBarCode(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget v1, p1, Lcom/etao/kaka/decode/DecodeResult;->type:I

    iget-object v2, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->productInfoCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    invoke-static {v0, v1, v2, v3}, Lcom/etao/kakalib/api/KaKaLibApiProcesser;->asyncSearchBarCode(Landroid/content/Context;ILjava/lang/String;Lcom/etao/kakalib/api/HttpRequstCallback;)Landroid/taobao/apirequest/ApiID;

    goto :goto_0
.end method

.method protected handleExpressResult(Lcom/etao/kaka/decode/DecodeResult;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/NetworkUtil;->networkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    .line 426
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)Lcom/etao/kakalib/KakaLibScanController;

    move-result-object v1

    .line 427
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v2, v2, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    .line 428
    const-string v3, "\u65e0\u7f51\u7edc"

    const-string v4, "\u9700\u8981\u7f51\u7edc\u6765\u67e5\u8be2\u8fd0\u5355\u4fe1\u606f"

    .line 425
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeResultDialogController;->showErrorDialog(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->expressCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    iget-object v1, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;->setBarCode(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    .line 432
    iget-object v1, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v2, v2, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->expressCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    .line 431
    invoke-static {v0, v1, v2}, Lcom/etao/kakalib/api/KaKaLibApiProcesser;->asyncSearchExpress(Landroid/content/Context;Ljava/lang/String;Lcom/etao/kakalib/api/HttpRequstCallback;)Landroid/taobao/apirequest/ApiID;

    goto :goto_0
.end method

.method protected handleQRCodeDecodeResult(Lcom/etao/kaka/decode/DecodeResult;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 404
    iget-object v0, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    .line 405
    .local v0, strCode:Ljava/lang/String;
    invoke-static {v0}, Lcom/etao/kakalib/util/KaKaLibUtils;->isHttpUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    new-instance v2, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    .line 407
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->getScanController()Lcom/etao/kakalib/KakaLibScanController;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v5, v5, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    .line 406
    invoke-direct {v2, v3, v4, v5, v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;-><init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Ljava/lang/String;)V

    .line 408
    .local v2, webLinkResultDialog:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->show()V

    .line 416
    .end local v2           #webLinkResultDialog:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;
    :goto_0
    return-void

    .line 411
    :cond_0
    new-instance v1, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeTextResultDialog;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->getScanController()Lcom/etao/kakalib/KakaLibScanController;

    move-result-object v4

    .line 412
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v5, v5, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    .line 411
    invoke-direct {v1, v3, v4, v5, v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeTextResultDialog;-><init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Ljava/lang/String;)V

    .line 414
    .local v1, textResultDialog:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeTextResultDialog;
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeTextResultDialog;->show()V

    goto :goto_0
.end method
