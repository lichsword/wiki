.class public Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;
.super Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;
.source "QRCodeNonStandardExpressResultDialog.java"


# instance fields
.field private mExpressResult1:Lcom/etao/kakalib/express/ExpressResult;

.field private mExpressResult2:Lcom/etao/kakalib/express/ExpressResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Lcom/etao/kakalib/api/beans/MailTraceWrapper;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "scanController"
    .parameter "keyGuardController"
    .parameter "mailTraceWrapper"
    .parameter "expressId"

    .prologue
    const/4 v6, 0x1

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;-><init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;)V

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03005a

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    const v4, 0x7f08013a

    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 31
    .local v3, expressIdTv:Landroid/widget/TextView;
    invoke-virtual {v3, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const v4, 0x7f08013d

    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 34
    .local v1, expressBtn1:Landroid/widget/Button;
    const v4, 0x7f08013e

    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 35
    .local v2, expressBtn2:Landroid/widget/Button;
    const v4, 0x7f08013b

    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 36
    .local v0, cancelBtn:Landroid/widget/Button;
    new-instance v4, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog$1;

    invoke-direct {v4, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog$1;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/etao/kakalib/api/beans/MailTraceWrapper;->getTraces()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {p4}, Lcom/etao/kakalib/api/beans/MailTraceWrapper;->getTraces()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 45
    invoke-virtual {p4}, Lcom/etao/kakalib/api/beans/MailTraceWrapper;->getTraces()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/etao/kakalib/express/ExpressResult;

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;->mExpressResult1:Lcom/etao/kakalib/express/ExpressResult;

    .line 46
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;->mExpressResult1:Lcom/etao/kakalib/express/ExpressResult;

    iput-object p5, v4, Lcom/etao/kakalib/express/ExpressResult;->mExpressCode:Ljava/lang/String;

    .line 47
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;->mExpressResult1:Lcom/etao/kakalib/express/ExpressResult;

    iget-object v4, v4, Lcom/etao/kakalib/express/ExpressResult;->companyName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;->mExpressResult1:Lcom/etao/kakalib/express/ExpressResult;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_0
    invoke-virtual {p4}, Lcom/etao/kakalib/api/beans/MailTraceWrapper;->getTraces()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 52
    invoke-virtual {p4}, Lcom/etao/kakalib/api/beans/MailTraceWrapper;->getTraces()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/etao/kakalib/express/ExpressResult;

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;->mExpressResult2:Lcom/etao/kakalib/express/ExpressResult;

    .line 53
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;->mExpressResult2:Lcom/etao/kakalib/express/ExpressResult;

    iput-object p5, v4, Lcom/etao/kakalib/express/ExpressResult;->mExpressCode:Ljava/lang/String;

    .line 54
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;->mExpressResult2:Lcom/etao/kakalib/express/ExpressResult;

    iget-object v4, v4, Lcom/etao/kakalib/express/ExpressResult;->companyName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;->mExpressResult2:Lcom/etao/kakalib/express/ExpressResult;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;->onClick(Landroid/view/View;)V

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/etao/kakalib/express/ExpressResult;

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etao/kakalib/express/ExpressResult;

    .line 67
    .local v0, expressResult:Lcom/etao/kakalib/express/ExpressResult;
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeNonStandardExpressResultDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/adi/collie/util/Tools;->startHuoYanExpressActivity(Landroid/content/Context;Lcom/etao/kakalib/express/ExpressResult;)V

    .line 69
    .end local v0           #expressResult:Lcom/etao/kakalib/express/ExpressResult;
    :cond_0
    return-void
.end method
