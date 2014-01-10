.class public Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;
.super Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultDefaultProcesser;
.source "KakaLibDecodeResultAccessMtopProcesser.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "AccessMtopProcesser"


# instance fields
.field private barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

.field private expressHttpRequestCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack",
            "<",
            "Lcom/etao/kakalib/api/beans/MailTraceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private needUrlTranslateHttpRequestCallBack:Lcom/etao/kakalib/api/HttpRequstCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etao/kakalib/api/HttpRequstCallback",
            "<",
            "Lcom/etao/kakalib/api/beans/DBarcodeResult;",
            ">;"
        }
    .end annotation
.end field

.field private productCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack",
            "<",
            "Lcom/etao/kakalib/api/beans/ProductInfo;",
            ">;"
        }
    .end annotation
.end field

.field private qrHttpRequestCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack",
            "<",
            "Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .parameter "scanController"
    .parameter "fragmentActivity"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultDefaultProcesser;-><init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V

    .line 134
    new-instance v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;

    invoke-direct {v0, p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;-><init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)V

    iput-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->expressHttpRequestCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    .line 173
    new-instance v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$2;

    invoke-direct {v0, p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$2;-><init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)V

    iput-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->qrHttpRequestCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    .line 188
    new-instance v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$3;

    invoke-direct {v0, p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$3;-><init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)V

    iput-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->needUrlTranslateHttpRequestCallBack:Lcom/etao/kakalib/api/HttpRequstCallback;

    .line 206
    new-instance v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;

    invoke-direct {v0, p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;-><init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)V

    iput-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->productCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    .line 44
    new-instance v0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    .line 45
    invoke-direct {v0, p2, p1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/etao/kakalib/KakaLibScanController;)V

    .line 44
    iput-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    return-object v0
.end method


# virtual methods
.method public getBarCodeProductDialogHelper()Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    return-object v0
.end method

.method protected handleBarCodeDecodeResult(Lcom/etao/kaka/decode/DecodeResult;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/taobao/util/NetWork;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    invoke-virtual {v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showNetWorkErrorDialog()V

    .line 132
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 123
    :cond_1
    iget-object v1, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 124
    iget-object v1, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->productCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    iget-object v2, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;->setBarCode(Ljava/lang/String;)V

    .line 127
    const-string v1, "AccessMtopProcesser"

    const-string v2, "prepare createKakaLibTextDialogFragment:"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 129
    iget v2, p1, Lcom/etao/kaka/decode/DecodeResult;->type:I

    iget-object v3, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->productCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    .line 128
    invoke-static {v1, v2, v3, v4}, Lcom/etao/kakalib/api/KaKaLibApiProcesser;->asyncSearchBarCode(Landroid/content/Context;ILjava/lang/String;Lcom/etao/kakalib/api/HttpRequstCallback;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    .line 130
    .local v0, apiID:Landroid/taobao/apirequest/ApiID;
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    invoke-virtual {v1, v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showRequestDialog(Landroid/taobao/apirequest/ApiID;)V

    goto :goto_0
.end method

.method public final handleDecodeResult(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/lang/Object;,"TT;"
    const/4 v2, 0x0

    .line 59
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return v2

    :cond_0
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/etao/kaka/decode/DecodeResult;

    .line 64
    .local v0, decodeResult:Lcom/etao/kaka/decode/DecodeResult;
    iget v1, v0, Lcom/etao/kaka/decode/DecodeResult;->type:I

    packed-switch v1, :pswitch_data_0

    .line 75
    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getScanController()Lcom/etao/kakalib/KakaLibScanController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etao/kakalib/KakaLibScanController;->restartPreviewModeAndRequestOneFrame()Z

    goto :goto_0

    .line 66
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->handleBarCodeDecodeResult(Lcom/etao/kaka/decode/DecodeResult;)V

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->handleQRCodeDecodeResult(Lcom/etao/kaka/decode/DecodeResult;)V

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->handleExpressResult(Lcom/etao/kaka/decode/DecodeResult;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected handleExpressResult(Lcom/etao/kaka/decode/DecodeResult;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/taobao/util/NetWork;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    invoke-virtual {v2}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showNetWorkErrorDialog()V

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    .line 86
    .local v1, expressCode:Ljava/lang/String;
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->expressHttpRequestCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    invoke-virtual {v2, v1}, Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;->setBarCode(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 89
    iget-object v3, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->expressHttpRequestCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    .line 88
    invoke-static {v2, v1, v3}, Lcom/etao/kakalib/api/KaKaLibApiProcesser;->asyncSearchExpress(Landroid/content/Context;Ljava/lang/String;Lcom/etao/kakalib/api/HttpRequstCallback;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    .line 90
    .local v0, apiID:Landroid/taobao/apirequest/ApiID;
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    invoke-virtual {v2, v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showRequestDialog(Landroid/taobao/apirequest/ApiID;)V

    goto :goto_0
.end method

.method protected handleQRCodeDecodeResult(Lcom/etao/kaka/decode/DecodeResult;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 95
    const-string v2, "AccessMtopProcesser"

    const-string v3, "result.type == CodeType.QR"

    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    .line 101
    .local v1, strCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/etao/kakalib/util/KaKaLibUtils;->isHttpUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/etao/kakalib/util/KaKaLibUtils;->urlNeedTranslate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 106
    iget-object v3, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->needUrlTranslateHttpRequestCallBack:Lcom/etao/kakalib/api/HttpRequstCallback;

    .line 105
    invoke-static {v2, v1, v3}, Lcom/etao/kakalib/api/KaKaLibApiProcesser;->asyncSearchQRCode(Landroid/content/Context;Ljava/lang/String;Lcom/etao/kakalib/api/HttpRequstCallback;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    .line 107
    .local v0, apiID:Landroid/taobao/apirequest/ApiID;
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    invoke-virtual {v2, v0, v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showQRUrlDialog(Landroid/taobao/apirequest/ApiID;Ljava/lang/String;)V

    .line 116
    .end local v0           #apiID:Landroid/taobao/apirequest/ApiID;
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 110
    iget-object v3, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->qrHttpRequestCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    .line 109
    invoke-static {v2, v1, v3}, Lcom/etao/kakalib/api/KaKaLibApiProcesser;->asyncCheckUrlIsSafe(Landroid/content/Context;Ljava/lang/String;Lcom/etao/kakalib/api/HttpRequstCallback;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    .line 111
    .restart local v0       #apiID:Landroid/taobao/apirequest/ApiID;
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    invoke-virtual {v2, v0, v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showQRUrlDialog(Landroid/taobao/apirequest/ApiID;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v0           #apiID:Landroid/taobao/apirequest/ApiID;
    :cond_1
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    invoke-virtual {v2, p1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showQRText(Lcom/etao/kaka/decode/DecodeResult;)V

    goto :goto_0
.end method

.method public setBarCodeProductDialogHelper(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;)V
    .locals 0
    .parameter "barCodeProductDialogHelper"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    .line 55
    return-void
.end method
