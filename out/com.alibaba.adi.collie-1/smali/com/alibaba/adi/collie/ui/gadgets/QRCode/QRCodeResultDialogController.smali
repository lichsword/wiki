.class public Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeResultDialogController;
.super Ljava/lang/Object;
.source "QRCodeResultDialogController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _closeDialog(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "activityContext"
    .parameter "dialogView"

    .prologue
    .line 60
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 61
    .local v0, windowManager:Landroid/view/WindowManager;
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public static closeDialog(Landroid/content/Context;Landroid/view/View;Lcom/etao/kakalib/KakaLibScanController;Z)V
    .locals 2
    .parameter "activityContext"
    .parameter "dialogView"
    .parameter "scanController"
    .parameter "explicitRestart"

    .prologue
    .line 38
    instance-of v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 39
    check-cast v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    .line 40
    .local v0, qrscanActivity:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->showCameraLocate()V

    .line 43
    .end local v0           #qrscanActivity:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeResultDialogController;->_closeDialog(Landroid/content/Context;Landroid/view/View;)V

    .line 44
    if-eqz p2, :cond_1

    .line 45
    if-eqz p3, :cond_2

    .line 46
    invoke-virtual {p2}, Lcom/etao/kakalib/KakaLibScanController;->restartPreviewModeAndRequestOneFrame()Z

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    invoke-virtual {p2}, Lcom/etao/kakalib/KakaLibScanController;->restartPreviewMode()Z

    goto :goto_0
.end method

.method public static showDialog(Landroid/content/Context;Landroid/view/View;)V
    .locals 8
    .parameter "activityContext"
    .parameter "dialogView"

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 20
    instance-of v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    if-eqz v2, :cond_0

    move-object v6, p0

    .line 21
    check-cast v6, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    .line 22
    .local v6, qrscanActivity:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-virtual {v6}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->hideCameraLocate()V

    .line 25
    .end local v6           #qrscanActivity:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 27
    const/4 v3, 0x2

    const/4 v5, -0x3

    move v2, v1

    .line 25
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 28
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 29
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 30
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 31
    .local v7, windowManager:Landroid/view/WindowManager;
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 32
    invoke-interface {v7, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    return-void
.end method

.method public static showErrorDialog(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "scanController"
    .parameter "keyGuardController"
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 55
    new-instance v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;-><init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v0, errorDialog:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;->show()V

    .line 57
    return-void
.end method
