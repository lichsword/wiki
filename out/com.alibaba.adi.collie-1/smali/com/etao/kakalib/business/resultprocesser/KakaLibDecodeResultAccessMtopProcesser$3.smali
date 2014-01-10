.class Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$3;
.super Lcom/etao/kakalib/api/HttpRequstCallback;
.source "KakaLibDecodeResultAccessMtopProcesser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etao/kakalib/api/HttpRequstCallback",
        "<",
        "Lcom/etao/kakalib/api/beans/DBarcodeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$3;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    .line 188
    invoke-direct {p0}, Lcom/etao/kakalib/api/HttpRequstCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/DBarcodeResult;Ljava/lang/String;)V
    .locals 3
    .parameter "result"
    .parameter "rawJson"

    .prologue
    .line 192
    const-string v1, "AccessMtopProcesser"

    const-string v2, "aaaa"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$3;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    invoke-virtual {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v0, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;

    invoke-direct {v0, p1}, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;-><init>(Lcom/etao/kakalib/api/beans/DBarcodeResult;)V

    .line 197
    .local v0, mBarcodeInfoResult:Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$3;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->updateStatusUrlResult(Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;)V

    goto :goto_0
.end method

.method public bridge synthetic onHttpLoadingEnded(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/etao/kakalib/api/beans/DBarcodeResult;

    invoke-virtual {p0, p1, p2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$3;->onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/DBarcodeResult;Ljava/lang/String;)V

    return-void
.end method

.method public onHttpLoadingFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 201
    const-string v0, "AccessMtopProcesser"

    const-string v1, "aaaa"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$3;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;
    invoke-static {v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->updateStatusUrlResult(Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;)V

    .line 203
    return-void
.end method
