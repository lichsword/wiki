.class public Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;
.super Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;
.source "KakaLibBarCodeProductDialogHelper.java"


# static fields
.field private static final REQUEST_PRODUCT:Ljava/lang/String; = "REQUEST_PRODUCT"


# instance fields
.field private qrUrlMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/etao/kakalib/KakaLibScanController;)V
    .locals 0
    .parameter "fragmentActivity"
    .parameter "scanController"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/etao/kakalib/KakaLibScanController;)V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;)Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->qrUrlMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;

    return-object v0
.end method


# virtual methods
.method public dismissRequestDialog()V
    .locals 1

    .prologue
    .line 113
    const-string v0, "REQUEST_PRODUCT"

    invoke-virtual {p0, v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->dismissDialog(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public showExpressDialog(Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 2
    .parameter "expressCode"
    .parameter
    .parameter "ret"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etao/kakalib/express/ExpressResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, expresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/etao/kakalib/express/ExpressResult;>;"
    invoke-static {p1, p2, p3}, Lcom/etao/kakalib/views/ExpressDialogFragment;->newInstance(Ljava/lang/String;Ljava/util/ArrayList;I)Lcom/etao/kakalib/views/ExpressDialogFragment;

    move-result-object v0

    .line 69
    .local v0, expressDialog:Lcom/etao/kakalib/views/ExpressDialogFragment;
    new-instance v1, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$2;

    invoke-direct {v1, p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$2;-><init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;)V

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/views/ExpressDialogFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const-string v1, "REQUEST_PRODUCT"

    invoke-virtual {p0, v0, v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public showHasNoPriceDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "keyWord"
    .parameter "code"

    .prologue
    .line 177
    invoke-static {p1, p2}, Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;

    move-result-object v0

    .line 178
    .local v0, hasNoPriceAboutProductDialogFragment:Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;
    new-instance v1, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$8;

    invoke-direct {v1, p0, p1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$8;-><init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const-string v1, "REQUEST_PRODUCT"

    invoke-virtual {p0, v0, v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public showNetWorkErrorDialog()V
    .locals 5

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 55
    const-string v3, "kakalib_network_error"

    const v4, 0x7f07001c

    .line 54
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 53
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;->newInstance(Ljava/lang/String;)Lcom/etao/kakalib/views/KakaLibTextDialogFragment;

    move-result-object v0

    .line 56
    .local v0, kakaLibTextDialogFragment:Lcom/etao/kakalib/views/KakaLibTextDialogFragment;
    new-instance v1, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$1;

    invoke-direct {v1, p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$1;-><init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;)V

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const-string v1, "REQUEST_PRODUCT"

    invoke-virtual {p0, v0, v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public showProductMsgDialog(Lcom/etao/kakalib/api/beans/ProductInfo;Ljava/lang/String;)V
    .locals 6
    .parameter "productInfo"
    .parameter "jsonString"

    .prologue
    const/4 v5, 0x1

    .line 150
    new-instance v0, Landroid/taobao/imagebinder/ImagePoolBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    .line 152
    const/4 v4, 0x0

    .line 150
    invoke-direct {v0, v3, v2, v5, v4}, Landroid/taobao/imagebinder/ImagePoolBinder;-><init>(Ljava/lang/String;Landroid/app/Application;II)V

    .line 153
    .local v0, mImageBinder:Landroid/taobao/imagebinder/ImagePoolBinder;
    invoke-virtual {v0, v5}, Landroid/taobao/imagebinder/ImagePoolBinder;->showProgress(Z)V

    .line 155
    invoke-static {p1, p2}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->newInstance(Lcom/etao/kakalib/api/beans/ProductInfo;Ljava/lang/String;)Lcom/etao/kakalib/views/KakaLibProductDialogFragment;

    move-result-object v1

    .line 156
    .local v1, productDialogFragment:Lcom/etao/kakalib/views/KakaLibProductDialogFragment;
    invoke-virtual {v1, v0}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->setImageBinder(Landroid/taobao/imagebinder/ImageBinder;)V

    .line 157
    new-instance v2, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$7;

    invoke-direct {v2, p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$7;-><init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;)V

    invoke-virtual {v1, v2}, Lcom/etao/kakalib/views/KakaLibProductDialogFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const-string v2, "REQUEST_PRODUCT"

    invoke-virtual {p0, v1, v2}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public showQRUrlDialog(Landroid/taobao/apirequest/ApiID;Ljava/lang/String;)V
    .locals 3
    .parameter "apiID"
    .parameter "url"

    .prologue
    .line 117
    invoke-static {p2}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->newInstance(Ljava/lang/String;)Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->qrUrlMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;

    .line 119
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->qrUrlMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;

    const-string v1, "REQUEST_PRODUCT"

    new-instance v2, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$5;

    invoke-direct {v2, p0, p1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$5;-><init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;Landroid/taobao/apirequest/ApiID;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;Lcom/etao/kakalib/views/IKaDialogCallback;)V

    .line 134
    return-void
.end method

.method public showRequestDialog(Landroid/taobao/apirequest/ApiID;)V
    .locals 3
    .parameter "apiID"

    .prologue
    .line 88
    invoke-static {}, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;->newInstance()Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    move-result-object v0

    .line 90
    .local v0, kakaLibTextDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;
    new-instance v1, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$3;-><init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;Landroid/taobao/apirequest/ApiID;)V

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const-string v1, "REQUEST_PRODUCT"

    new-instance v2, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$4;

    invoke-direct {v2, p0, p1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$4;-><init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;Landroid/taobao/apirequest/ApiID;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;Lcom/etao/kakalib/views/IKaDialogCallback;)V

    .line 110
    return-void
.end method

.method public showRequestProductMsgError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "errorMsg"
    .parameter "codeString"

    .prologue
    .line 171
    invoke-static {p1, p2}, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;

    move-result-object v0

    .line 172
    .local v0, dialogFragment:Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;
    const-string v1, "REQUEST_PRODUCT"

    invoke-virtual {p0, v0, v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public showWillUpdateDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "code"

    .prologue
    .line 199
    invoke-static {p1}, Lcom/etao/kakalib/views/UgcWillUpdateDialog;->newInstance(Ljava/lang/String;)Lcom/etao/kakalib/views/UgcWillUpdateDialog;

    move-result-object v0

    .line 200
    .local v0, productFragment:Lcom/etao/kakalib/views/UgcWillUpdateDialog;
    new-instance v1, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$9;

    invoke-direct {v1, p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$9;-><init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;)V

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/views/UgcWillUpdateDialog;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const-string v1, "REQUEST_PRODUCT"

    invoke-virtual {p0, v0, v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public updateStatusUrlResult(Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;)V
    .locals 2
    .parameter "dBarcodeSafeResult"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->qrUrlMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$6;

    invoke-direct {v1, p0, p1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$6;-><init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    :cond_0
    return-void
.end method
