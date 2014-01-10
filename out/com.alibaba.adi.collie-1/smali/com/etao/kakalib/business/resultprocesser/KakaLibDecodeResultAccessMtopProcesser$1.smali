.class Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;
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
        "Lcom/etao/kakalib/api/beans/MailTraceWrapper;",
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
    iput-object p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    .line 134
    invoke-direct {p0}, Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    return-object v0
.end method


# virtual methods
.method public onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/MailTraceWrapper;Ljava/lang/String;)V
    .locals 3
    .parameter "result"
    .parameter "rawJson"

    .prologue
    .line 138
    const-string v0, "AccessMtopProcesser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    invoke-virtual {v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v0, "AccessMtopProcesser"

    const-string v1, "KakaLibAsyncExpressListener onDataArrive"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    invoke-virtual {v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1$1;

    invoke-direct {v1, p0, p1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1$1;-><init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;Lcom/etao/kakalib/api/beans/MailTraceWrapper;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic onHttpLoadingEnded(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/etao/kakalib/api/beans/MailTraceWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;->onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/MailTraceWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public onHttpLoadingFailed(Ljava/lang/Throwable;)V
    .locals 6
    .parameter "exception"

    .prologue
    .line 157
    instance-of v1, p1, Lcom/etao/kakalib/api/KakaLibMTopRequestException;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 158
    check-cast v0, Lcom/etao/kakalib/api/KakaLibMTopRequestException;

    .line 159
    .local v0, requestException:Lcom/etao/kakalib/api/KakaLibMTopRequestException;
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v1

    .line 160
    invoke-virtual {v0}, Lcom/etao/kakalib/api/KakaLibMTopRequestException;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;->getBarCode()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v1, v2, v3}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showRequestProductMsgError(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v0           #requestException:Lcom/etao/kakalib/api/KakaLibMTopRequestException;
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    invoke-virtual {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 164
    iget-object v3, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    invoke-virtual {v3}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 165
    const-string v4, "kakalib_server_error"

    const v5, 0x7f07000d

    .line 164
    invoke-static {v3, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 163
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$1;->getBarCode()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {v1, v2, v3}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showRequestProductMsgError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
