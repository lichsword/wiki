.class public abstract Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;
.super Landroid/widget/LinearLayout;
.source "BaseResultDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

.field protected mScanController:Lcom/etao/kakalib/KakaLibScanController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;)V
    .locals 1
    .parameter "context"
    .parameter "scanController"
    .parameter "keyGuardController"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;->mScanController:Lcom/etao/kakalib/KakaLibScanController;

    .line 24
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;->mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    .line 25
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;->setGravity(I)V

    .line 26
    const v0, 0x7f02010b

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;->setBackgroundResource(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public close(Z)V
    .locals 2
    .parameter "explicitRestart"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;->mScanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-static {v0, p0, v1, p1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeResultDialogController;->closeDialog(Landroid/content/Context;Landroid/view/View;Lcom/etao/kakalib/KakaLibScanController;Z)V

    .line 35
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;->close(Z)V

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;->close(Z)V

    .line 40
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/BaseResultDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeResultDialogController;->showDialog(Landroid/content/Context;Landroid/view/View;)V

    .line 31
    return-void
.end method
