.class Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;
.super Ljava/lang/Object;
.source "KakaLibDecodeResultAccessMtopProcesser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/ProductInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;

.field private final synthetic val$rawJson:Ljava/lang/String;

.field private final synthetic val$result:Lcom/etao/kakalib/api/beans/ProductInfo;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;Lcom/etao/kakalib/api/beans/ProductInfo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;

    iput-object p2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->val$result:Lcom/etao/kakalib/api/beans/ProductInfo;

    iput-object p3, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->val$rawJson:Ljava/lang/String;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 218
    const-string v1, "AccessMtopProcesser"

    const-string v2, "asyncDataListener onDataArrive success"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v0, -0x1

    .line 221
    .local v0, resultCode:I
    :try_start_0
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->val$result:Lcom/etao/kakalib/api/beans/ProductInfo;

    invoke-virtual {v1}, Lcom/etao/kakalib/api/beans/ProductInfo;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 224
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 259
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 226
    :pswitch_1
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->val$result:Lcom/etao/kakalib/api/beans/ProductInfo;

    if-nez v1, :cond_1

    .line 227
    const-string v1, "AccessMtopProcesser"

    const-string v2, "decodeResult \u7adf\u7136\u7a7a\u4e86\uff1f"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    move-result-object v1

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showNetWorkErrorDialog()V

    goto :goto_1

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->val$result:Lcom/etao/kakalib/api/beans/ProductInfo;

    invoke-virtual {v1}, Lcom/etao/kakalib/api/beans/ProductInfo;->hasKeyWord()Z

    move-result v1

    if-nez v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    move-result-object v1

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;
    invoke-static {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 235
    iget-object v3, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;
    invoke-static {v3}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 236
    const-string v4, "kakalib_unknow_code"

    .line 237
    const v5, 0x7f07001e

    .line 234
    invoke-static {v3, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 233
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 238
    iget-object v3, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;

    invoke-virtual {v3}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->getBarCode()Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-virtual {v1, v2, v3}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showRequestProductMsgError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->val$result:Lcom/etao/kakalib/api/beans/ProductInfo;

    invoke-virtual {v1}, Lcom/etao/kakalib/api/beans/ProductInfo;->hasAnyPrice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 240
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    move-result-object v1

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->val$result:Lcom/etao/kakalib/api/beans/ProductInfo;

    iget-object v3, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->val$rawJson:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showProductMsgDialog(Lcom/etao/kakalib/api/beans/ProductInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    move-result-object v1

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v1

    .line 247
    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->val$result:Lcom/etao/kakalib/api/beans/ProductInfo;

    invoke-virtual {v2}, Lcom/etao/kakalib/api/beans/ProductInfo;->getKeyword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->val$result:Lcom/etao/kakalib/api/beans/ProductInfo;

    invoke-virtual {v3}, Lcom/etao/kakalib/api/beans/ProductInfo;->getBarcode()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {v1, v2, v3}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showHasNoPriceDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 253
    :pswitch_2
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;)Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    move-result-object v1

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->barCodeProductDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;->access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;)Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4$1;->this$1:Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;

    invoke-virtual {v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser$4;->getBarCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showWillUpdateDialog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 222
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
