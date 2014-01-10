.class public Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeTextResultDialog;
.super Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;
.source "QRCodeTextResultDialog.java"


# instance fields
.field private mCancelBtn:Landroid/widget/Button;

.field private mContentTv:Landroid/widget/TextView;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "scanController"
    .parameter "keyGuardController"
    .parameter "text"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;-><init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;)V

    .line 25
    iput-object p4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeTextResultDialog;->mText:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    const v0, 0x7f080148

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeTextResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeTextResultDialog;->mContentTv:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeTextResultDialog;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    const v0, 0x7f08013b

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeTextResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeTextResultDialog;->mCancelBtn:Landroid/widget/Button;

    .line 30
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeTextResultDialog;->mCancelBtn:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeTextResultDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeTextResultDialog$1;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeTextResultDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 41
    return-void
.end method
