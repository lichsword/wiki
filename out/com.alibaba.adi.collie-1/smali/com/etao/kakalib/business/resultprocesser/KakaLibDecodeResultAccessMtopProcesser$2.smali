.class Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$2;
.super Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;
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
        "Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack",
        "<",
        "Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;",
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
    iput-object p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$2;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    .line 173
    invoke-direct {p0}, Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;Ljava/lang/String;)V
    .locals 1
    .parameter "result"
    .parameter "rawJson"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$2;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    invoke-virtual {v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$2;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;
    invoke-static {v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->updateStatusUrlResult(Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;)V

    goto :goto_0
.end method

.method public bridge synthetic onHttpLoadingEnded(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;

    invoke-virtual {p0, p1, p2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$2;->onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;Ljava/lang/String;)V

    return-void
.end method

.method public onHttpLoadingFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$2;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;
    invoke-static {v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->updateStatusUrlResult(Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;)V

    .line 185
    return-void
.end method
