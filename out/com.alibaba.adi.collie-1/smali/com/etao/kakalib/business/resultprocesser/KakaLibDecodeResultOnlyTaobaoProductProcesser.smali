.class public Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;
.super Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;
.source "KakaLibDecodeResultOnlyTaobaoProductProcesser.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "OnlyTaobaoProductProcesser"


# instance fields
.field private taobaoProductCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack",
            "<",
            "Lcom/etao/kakalib/api/beans/TBBarcodeResult;",
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
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;-><init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V

    .line 47
    new-instance v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;

    invoke-direct {v0, p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;-><init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;)V

    iput-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->taobaoProductCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    .line 28
    return-void
.end method


# virtual methods
.method protected handleBarCodeDecodeResult(Lcom/etao/kaka/decode/DecodeResult;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/taobao/util/NetWork;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getBarCodeProductDialogHelper()Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showNetWorkErrorDialog()V

    .line 45
    :goto_0
    return-void

    .line 34
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

    .line 35
    :cond_1
    iget-object v1, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 36
    iget-object v1, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->taobaoProductCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    iget-object v2, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;->setBarCode(Ljava/lang/String;)V

    .line 40
    const-string v1, "OnlyTaobaoProductProcesser"

    const-string v2, "prepare createKakaLibTextDialogFragment:"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p1, Lcom/etao/kaka/decode/DecodeResult;->type:I

    iget-object v3, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->taobaoProductCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    .line 41
    invoke-static {v1, v2, v3, v4}, Lcom/etao/kakalib/api/KaKaLibApiProcesser;->asyncSearchBarCode4Taobao(Landroid/content/Context;ILjava/lang/String;Lcom/etao/kakalib/api/HttpRequstCallback;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    .line 43
    .local v0, apiID:Landroid/taobao/apirequest/ApiID;
    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getBarCodeProductDialogHelper()Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showRequestDialog(Landroid/taobao/apirequest/ApiID;)V

    goto :goto_0
.end method
