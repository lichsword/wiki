.class Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;
.super Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;
.source "KakaLibDecodeResultOnlyTaobaoProductProcesser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack",
        "<",
        "Lcom/etao/kakalib/api/beans/TBBarcodeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    .line 47
    invoke-direct {p0}, Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    return-object v0
.end method


# virtual methods
.method public onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/TBBarcodeResult;Ljava/lang/String;)V
    .locals 2
    .parameter "result"
    .parameter "rawJson"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    invoke-virtual {v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v0, "OnlyTaobaoProductProcesser"

    const-string v1, "asyncDataListener onDataArrive"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    invoke-virtual {v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;

    invoke-direct {v1, p0, p1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;-><init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;Lcom/etao/kakalib/api/beans/TBBarcodeResult;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic onHttpLoadingEnded(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    invoke-virtual {p0, p1, p2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/TBBarcodeResult;Ljava/lang/String;)V

    return-void
.end method

.method public onHttpLoadingFailed(Ljava/lang/Throwable;)V
    .locals 6
    .parameter "exception"

    .prologue
    .line 98
    instance-of v1, p1, Lcom/etao/kakalib/api/KakaLibMTopRequestException;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 99
    check-cast v0, Lcom/etao/kakalib/api/KakaLibMTopRequestException;

    .line 100
    .local v0, requestException:Lcom/etao/kakalib/api/KakaLibMTopRequestException;
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    invoke-virtual {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getBarCodeProductDialogHelper()Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v1

    .line 101
    invoke-virtual {v0}, Lcom/etao/kakalib/api/KakaLibMTopRequestException;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->getBarCode()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v1, v2, v3}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showRequestProductMsgError(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v0           #requestException:Lcom/etao/kakalib/api/KakaLibMTopRequestException;
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    invoke-virtual {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getBarCodeProductDialogHelper()Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    invoke-virtual {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 105
    iget-object v3, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    invoke-virtual {v3}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 106
    const-string v4, "kakalib_server_error"

    const v5, 0x7f07000d

    .line 105
    invoke-static {v3, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 104
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->getBarCode()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {v1, v2, v3}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showRequestProductMsgError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
