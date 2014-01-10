.class Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;
.super Ljava/lang/Object;
.source "KakaLibDecodeResultOnlyTaobaoProductProcesser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/TBBarcodeResult;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;

.field private final synthetic val$result:Lcom/etao/kakalib/api/beans/TBBarcodeResult;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;Lcom/etao/kakalib/api/beans/TBBarcodeResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;

    iput-object p2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->val$result:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 59
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->val$result:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    invoke-virtual {v2}, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const-string v2, "OnlyTaobaoProductProcesser"

    const-string v3, "asyncDataListener onDataArrive success"

    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->val$result:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    invoke-virtual {v2}, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->hasKeyWord()Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;
    invoke-static {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getBarCodeProductDialogHelper()Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;
    invoke-static {v3}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;
    invoke-static {v4}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "kakalib_unknow_code"

    .line 66
    const v6, 0x7f07001e

    .line 64
    invoke-static {v4, v5, v6}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 63
    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    iget-object v4, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;

    invoke-virtual {v4}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->getBarCode()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {v2, v3, v4}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showRequestProductMsgError(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->val$result:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    invoke-virtual {v2}, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->hasAnyPrice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;
    invoke-static {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 72
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;
    invoke-static {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 73
    const-class v3, Lcom/etao/kakalib/KakaLibProductResultActivity;

    .line 72
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "KEY_OF_PRODUCT"

    iget-object v3, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->val$result:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 75
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;
    invoke-static {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getBarCodeProductDialogHelper()Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->dismissRequestDialog()V

    .line 76
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;
    invoke-static {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;
    invoke-static {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;
    invoke-static {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getScanController()Lcom/etao/kakalib/KakaLibScanController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etao/kakalib/KakaLibScanController;->restartPreviewMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OnlyTaobaoProductProcesser"

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6253\u5f00\u7ed3\u679c\u9875\u9762\u5931\u8d25\uff0c\u8bf7\u5728AndroidManifest.xml\u52a0\u5165KakaLibProductResultActivity\u7684\u914d\u7f6e"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 88
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;
    invoke-static {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;->getBarCodeProductDialogHelper()Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v2

    .line 89
    iget-object v3, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->val$result:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    invoke-virtual {v3}, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->getKeyword()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser$1$1;->val$result:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    invoke-virtual {v4}, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->getBarcode()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v2, v3, v4}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showHasNoPriceDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
