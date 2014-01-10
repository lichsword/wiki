.class public Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;
.super Ljava/lang/Object;
.source "KakaLibBaseDialogHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KakaLibBaseDialogHelper"


# instance fields
.field private mContext:Landroid/support/v4/app/FragmentActivity;

.field private scanController:Lcom/etao/kakalib/KakaLibScanController;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/etao/kakalib/KakaLibScanController;)V
    .locals 0
    .parameter "fragmentActivity"
    .parameter "scanController"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    .line 23
    iput-object p1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->mContext:Landroid/support/v4/app/FragmentActivity;

    .line 24
    return-void
.end method

.method protected static removeDialog(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .parameter "ft"
    .parameter "fragment"

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    const-string v0, "KakaLibBaseDialogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#####find fragment"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 78
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method protected dismissDialog(Ljava/lang/String;)V
    .locals 5
    .parameter "dialogTag"

    .prologue
    .line 83
    iget-object v2, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->mContext:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->mContext:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 87
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->mContext:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 88
    .local v1, prev:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 89
    const-string v2, "KakaLibBaseDialogHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#####find dialog"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 91
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public getmContext()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->mContext:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method protected playLockAnim(Lcom/etao/kaka/decode/DecodeResult;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v0, p1}, Lcom/etao/kakalib/KakaLibScanController;->playLockAnim(Lcom/etao/kaka/decode/DecodeResult;)Z

    .line 124
    :cond_0
    return-void
.end method

.method protected playScanSuccessSound()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v0}, Lcom/etao/kakalib/KakaLibScanController;->playScanSuccessSound()Z

    .line 130
    :cond_0
    return-void
.end method

.method protected requestCameraFrame()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v0}, Lcom/etao/kakalib/KakaLibScanController;->requestCameraFrame()Z

    .line 112
    :cond_0
    return-void
.end method

.method protected restartPreviewMode()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v0}, Lcom/etao/kakalib/KakaLibScanController;->restartPreviewMode()Z

    .line 100
    :cond_0
    return-void
.end method

.method protected restartPreviewModeAndRequestOneFrame()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v0}, Lcom/etao/kakalib/KakaLibScanController;->restartPreviewModeAndRequestOneFrame()Z

    .line 106
    :cond_0
    return-void
.end method

.method public setmContext(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->mContext:Landroid/support/v4/app/FragmentActivity;

    .line 32
    return-void
.end method

.method public showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;)V
    .locals 1
    .parameter "dialogFragment"
    .parameter "tag"

    .prologue
    .line 36
    new-instance v0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$1;

    invoke-direct {v0, p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$1;-><init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;)V

    .line 48
    .local v0, dialogCallback:Lcom/etao/kakalib/views/IKaDialogCallback;
    invoke-virtual {p0, p1, p2, v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;Lcom/etao/kakalib/views/IKaDialogCallback;)V

    .line 49
    return-void
.end method

.method public showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;Lcom/etao/kakalib/views/IKaDialogCallback;)V
    .locals 2
    .parameter "dialogFragment"
    .parameter "tag"
    .parameter "dialogCallback"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;-><init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;Ljava/lang/String;Lcom/etao/kakalib/views/KaDialogFragment;Lcom/etao/kakalib/views/IKaDialogCallback;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected stopCameraFrame()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v0}, Lcom/etao/kakalib/KakaLibScanController;->stopCameraFrame()Z

    .line 118
    :cond_0
    return-void
.end method
