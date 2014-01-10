.class public Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;
.super Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;
.source "QrCodeWebLinkResultDialog.java"


# instance fields
.field mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

.field private mCancelBtn:Landroid/widget/Button;

.field private mWebLink:Ljava/lang/String;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "scanController"
    .parameter "keyGuardController"
    .parameter "webLink"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;-><init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;)V

    .line 70
    new-instance v2, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog$1;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog$1;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;)V

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    .line 30
    iput-object p4, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->mWebLink:Ljava/lang/String;

    .line 31
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->mWindowManager:Landroid/view/WindowManager;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03005e

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    const v2, 0x7f08013b

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->mCancelBtn:Landroid/widget/Button;

    .line 36
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->mCancelBtn:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog$2;

    invoke-direct {v3, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog$2;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v2, 0x7f080148

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    .local v0, qrCodeContentTv:Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v2, 0x7f080138

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 47
    .local v1, visitLinkImage:Landroid/widget/ImageView;
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->mWebLink:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;->onClick(Landroid/view/View;)V

    .line 65
    const-string v0, "URLClick"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    invoke-interface {v0, v1}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->setAction(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->showKeyGuard()V

    .line 68
    return-void
.end method
