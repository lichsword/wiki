.class public Lcom/etao/kakalib/KakaLibProductResultActivity;
.super Lcom/etao/kakalib/BaseFragmentActivity;
.source "KakaLibProductResultActivity.java"


# static fields
.field public static final KEY_OF_PRODUCT:Ljava/lang/String; = "KEY_OF_PRODUCT"

.field protected static final TAG:Ljava/lang/String; = "KakaLibProductResultActivity"


# instance fields
.field private mImageBinder:Landroid/taobao/imagebinder/ImagePoolBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/etao/kakalib/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private checkHuoyanPRMsg()V
    .locals 5

    .prologue
    .line 99
    invoke-static {p0}, Lcom/etao/kakalib/util/KaKaLibUtils;->readHuoyanPRMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, msgString:Ljava/lang/String;
    const-string v2, "KakaLibProductResultActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7cfb\u7edf\u5f53\u524d\u5ba3\u4f20\u6587\u6848"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    :try_start_0
    const-string v2, "viewHuoyanLine2"

    .line 105
    const v3, 0x7f0a0033

    .line 104
    invoke-static {p0, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 103
    invoke-virtual {p0, v2}, Lcom/etao/kakalib/KakaLibProductResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 105
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 107
    const-string v2, "textViewMsgFromKakaServer"

    .line 108
    const v3, 0x7f0a0059

    .line 107
    invoke-static {p0, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 106
    invoke-virtual {p0, v2}, Lcom/etao/kakalib/KakaLibProductResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 108
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    const-string v2, "textViewMsgFromKakaServer"

    const v3, 0x7f0a0059

    .line 109
    invoke-static {p0, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/etao/kakalib/KakaLibProductResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private showProductMessageFragment(Lcom/etao/kakalib/api/beans/TBBarcodeResult;)V
    .locals 4
    .parameter "productInfo"

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibProductResultActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 131
    .local v1, transation:Landroid/support/v4/app/FragmentTransaction;
    invoke-static {p1}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->newInstance(Lcom/etao/kakalib/api/beans/TBBarcodeResult;)Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;

    move-result-object v0

    .line 132
    .local v0, productDialogFragment:Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;
    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibProductResultActivity;->getmImageBinder()Landroid/taobao/imagebinder/ImagePoolBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->setImageBinder(Landroid/taobao/imagebinder/ImageBinder;)V

    .line 133
    new-instance v2, Lcom/etao/kakalib/KakaLibProductResultActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/etao/kakalib/KakaLibProductResultActivity$2;-><init>(Lcom/etao/kakalib/KakaLibProductResultActivity;Lcom/etao/kakalib/api/beans/TBBarcodeResult;)V

    invoke-virtual {v0, v2}, Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const-string v2, "containerOfProductMsg"

    .line 147
    const v3, 0x7f0a0057

    .line 146
    invoke-static {p0, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 147
    const-string v3, "KEY_OF_PRODUCT"

    .line 146
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 148
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 150
    .end local v0           #productDialogFragment:Lcom/etao/kakalib/views/Product4TaobaoDialogFragment;
    .end local v1           #transation:Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method


# virtual methods
.method public getmImageBinder()Landroid/taobao/imagebinder/ImagePoolBinder;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibProductResultActivity;->mImageBinder:Landroid/taobao/imagebinder/ImagePoolBinder;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/16 v6, 0x8

    .line 39
    const-string v1, "BarcodeProductMsg"

    invoke-virtual {p0, v1}, Lcom/etao/kakalib/KakaLibProductResultActivity;->setPageName(Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1}, Lcom/etao/kakalib/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const-string v1, "kakalib_product_result_activity"

    const v2, 0x7f030018

    .line 41
    invoke-static {p0, v1, v2}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/etao/kakalib/KakaLibProductResultActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibProductResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_OF_PRODUCT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    .line 45
    .local v0, result:Lcom/etao/kakalib/api/beans/TBBarcodeResult;
    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibProductResultActivity;->finish()V

    .line 59
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v1, Landroid/taobao/imagebinder/ImagePoolBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibProductResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 51
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/taobao/imagebinder/ImagePoolBinder;-><init>(Ljava/lang/String;Landroid/app/Application;II)V

    .line 50
    iput-object v1, p0, Lcom/etao/kakalib/KakaLibProductResultActivity;->mImageBinder:Landroid/taobao/imagebinder/ImagePoolBinder;

    .line 52
    invoke-direct {p0, v0}, Lcom/etao/kakalib/KakaLibProductResultActivity;->showProductMessageFragment(Lcom/etao/kakalib/api/beans/TBBarcodeResult;)V

    .line 53
    const-string v1, "viewHuoyanLine2"

    const v2, 0x7f0a0033

    invoke-static {p0, v1, v2}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/etao/kakalib/KakaLibProductResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 56
    const-string v1, "textViewMsgFromKakaServer"

    .line 57
    const v2, 0x7f0a0059

    .line 56
    invoke-static {p0, v1, v2}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 55
    invoke-virtual {p0, v1}, Lcom/etao/kakalib/KakaLibProductResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-direct {p0}, Lcom/etao/kakalib/KakaLibProductResultActivity;->checkHuoyanPRMsg()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "KakaLibProductResultActivity"

    const-string v1, "------onDestroy"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-super {p0}, Lcom/etao/kakalib/BaseFragmentActivity;->onDestroy()V

    .line 121
    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibProductResultActivity;->getmImageBinder()Landroid/taobao/imagebinder/ImagePoolBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibProductResultActivity;->getmImageBinder()Landroid/taobao/imagebinder/ImagePoolBinder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/imagebinder/ImagePoolBinder;->destroy()V

    .line 124
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 63
    .line 64
    const-string v2, "buttonDownloadHuoyan"

    const v3, 0x7f0a0034

    .line 63
    invoke-static {p0, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/etao/kakalib/KakaLibProductResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    .local v0, huoyanButton:Landroid/widget/Button;
    const-string v2, "kakalib_kaka_package_name"

    .line 67
    const v3, 0x7f070001

    .line 66
    invoke-static {p0, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/etao/kakalib/KakaLibProductResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {p0, v2}, Lcom/etao/kakalib/util/KaKaLibUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 68
    .local v1, isHuoyanInstalled:Z
    if-eqz v1, :cond_0

    .line 70
    const-string v2, "kakalib_huoyan_ad_open"

    const v3, 0x7f070014

    .line 69
    invoke-static {p0, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 75
    :goto_0
    new-instance v2, Lcom/etao/kakalib/KakaLibProductResultActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/etao/kakalib/KakaLibProductResultActivity$1;-><init>(Lcom/etao/kakalib/KakaLibProductResultActivity;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-super {p0}, Lcom/etao/kakalib/BaseFragmentActivity;->onResume()V

    .line 96
    return-void

    .line 73
    :cond_0
    const-string v2, "kakalib_huoyan_ad_download"

    const v3, 0x7f070015

    .line 72
    invoke-static {p0, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
