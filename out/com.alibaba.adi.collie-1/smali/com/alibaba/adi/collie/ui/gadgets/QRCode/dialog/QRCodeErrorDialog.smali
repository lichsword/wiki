.class public Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;
.super Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;
.source "QRCodeErrorDialog.java"


# instance fields
.field private mMsgTv:Landroid/widget/TextView;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "scanController"
    .parameter "keyGuardController"
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;-><init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030066

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    const v1, 0x7f080157

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;->mTitleTv:Landroid/widget/TextView;

    .line 26
    const v1, 0x7f080158

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;->mMsgTv:Landroid/widget/TextView;

    .line 27
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;->mMsgTv:Landroid/widget/TextView;

    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    const v1, 0x7f08013b

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 31
    .local v0, cancelBtn:Landroid/widget/Button;
    new-instance v1, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog$1;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 42
    return-void
.end method
