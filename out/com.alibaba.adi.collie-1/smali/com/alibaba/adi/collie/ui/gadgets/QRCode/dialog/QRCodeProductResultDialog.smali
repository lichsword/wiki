.class public Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;
.super Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;
.source "QRCodeProductResultDialog.java"


# static fields
.field private static final MSG_PROD_IMG_LOADED:I = 0x64


# instance fields
.field mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

.field private mCancelBtn:Landroid/widget/Button;

.field mHandler:Landroid/os/Handler;

.field private mOfflinePriceTv:Landroid/widget/TextView;

.field private mOnlinePriceTv:Landroid/widget/TextView;

.field private mProductImageView:Landroid/widget/ImageView;

.field private mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Lcom/etao/kakalib/api/beans/ProductInfo;)V
    .locals 4
    .parameter "context"
    .parameter "scanController"
    .parameter "keyGuardController"
    .parameter "productInfo"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;-><init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;)V

    .line 96
    new-instance v2, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$1;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$1;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)V

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v2, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$2;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$2;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)V

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    .line 41
    iput-object p4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030064

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    const v2, 0x7f080140

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mTitleTv:Landroid/widget/TextView;

    .line 45
    const v2, 0x7f080143

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mOnlinePriceTv:Landroid/widget/TextView;

    .line 46
    const v2, 0x7f080141

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mOfflinePriceTv:Landroid/widget/TextView;

    .line 47
    const v2, 0x7f08013b

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mCancelBtn:Landroid/widget/Button;

    .line 48
    const v2, 0x7f08013f

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductImageView:Landroid/widget/ImageView;

    .line 49
    const v2, 0x7f080154

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 51
    .local v1, productLayout:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    invoke-virtual {v2}, Lcom/etao/kakalib/api/beans/ProductInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mTitleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    invoke-virtual {v3}, Lcom/etao/kakalib/api/beans/ProductInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    if-eqz v2, :cond_1

    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mOnlinePriceTv:Landroid/widget/TextView;

    invoke-virtual {p4}, Lcom/etao/kakalib/api/beans/ProductInfo;->getOnLinePrice()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mOfflinePriceTv:Landroid/widget/TextView;

    invoke-virtual {p4}, Lcom/etao/kakalib/api/beans/ProductInfo;->getOffLinePrice()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :goto_1
    new-instance v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$3;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$3;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)V

    .line 83
    .local v0, downloadImageRunnable:Ljava/lang/Runnable;
    sget-object v2, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 86
    .end local v0           #downloadImageRunnable:Ljava/lang/Runnable;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mCancelBtn:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$4;

    invoke-direct {v3, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$4;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void

    .line 63
    :catch_0
    move-exception v2

    goto :goto_1

    .line 58
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)Lcom/etao/kakalib/api/beans/ProductInfo;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;->onClick(Landroid/view/View;)V

    .line 115
    const-string v0, "GoodsClick"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    invoke-interface {v0, v1}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->setAction(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->showKeyGuard()V

    .line 118
    return-void
.end method
