.class public Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;
.super Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;
.source "QRCodeExpressResultDialog.java"


# instance fields
.field private mCancelBtn:Landroid/widget/Button;

.field private mDeliveryIdTv:Landroid/widget/TextView;

.field private mExpressResult:Lcom/etao/kakalib/express/ExpressResult;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Lcom/etao/kakalib/api/beans/MailTraceWrapper;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "scanController"
    .parameter "keyGuardController"
    .parameter "mailTraceWrapper"
    .parameter "deliveryId"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;-><init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;)V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030059

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    const v1, 0x7f080139

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->mTitleTv:Landroid/widget/TextView;

    .line 35
    const v1, 0x7f08013a

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->mDeliveryIdTv:Landroid/widget/TextView;

    .line 36
    const v1, 0x7f08013b

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->mCancelBtn:Landroid/widget/Button;

    .line 37
    const v1, 0x7f080136

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 39
    .local v0, qrExpressLayout:Landroid/view/ViewGroup;
    if-eqz p4, :cond_0

    .line 40
    invoke-virtual {p4}, Lcom/etao/kakalib/api/beans/MailTraceWrapper;->getTraces()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p4}, Lcom/etao/kakalib/api/beans/MailTraceWrapper;->getTraces()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 42
    invoke-virtual {p4}, Lcom/etao/kakalib/api/beans/MailTraceWrapper;->getTraces()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etao/kakalib/express/ExpressResult;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->mExpressResult:Lcom/etao/kakalib/express/ExpressResult;

    .line 43
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->mExpressResult:Lcom/etao/kakalib/express/ExpressResult;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->mExpressResult:Lcom/etao/kakalib/express/ExpressResult;

    iput-object p5, v1, Lcom/etao/kakalib/express/ExpressResult;->mExpressCode:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->mTitleTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->mExpressResult:Lcom/etao/kakalib/express/ExpressResult;

    iget-object v2, v2, Lcom/etao/kakalib/express/ExpressResult;->companyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->mDeliveryIdTv:Landroid/widget/TextView;

    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->mCancelBtn:Landroid/widget/Button;

    new-instance v2, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog$1;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog$1;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;->onClick(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->mExpressResult:Lcom/etao/kakalib/express/ExpressResult;

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "ExpressDeliverClick"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->mExpressResult:Lcom/etao/kakalib/express/ExpressResult;

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/Tools;->startHuoYanExpressActivity(Landroid/content/Context;Lcom/etao/kakalib/express/ExpressResult;)V

    .line 66
    :cond_0
    return-void
.end method
