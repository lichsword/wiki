.class public Lcom/etao/kakalib/CaptureBarcodeActivity;
.super Lcom/etao/kakalib/BaseFragmentActivity;
.source "CaptureBarcodeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureBarcodeActivity"

.field private static final WHAT_SHOW_OPEN_CAMERA:I = 0x1

.field private static final WHAT_SHOW_START_SCAN_PAGE:I = 0x2


# instance fields
.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etao/kakalib/BaseFragmentActivity;-><init>()V

    .line 27
    new-instance v0, Lcom/etao/kakalib/CaptureBarcodeActivity$1;

    invoke-direct {v0, p0}, Lcom/etao/kakalib/CaptureBarcodeActivity$1;-><init>(Lcom/etao/kakalib/CaptureBarcodeActivity;)V

    iput-object v0, p0, Lcom/etao/kakalib/CaptureBarcodeActivity;->mHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 58
    const-string v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@_@\u706b\u773cMainActivity create "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1}, Lcom/etao/kakalib/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureBarcodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 61
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 62
    const-string v1, "kakalib_activity_capture"

    .line 63
    const/high16 v2, 0x7f03

    .line 62
    invoke-static {p0, v1, v2}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/etao/kakalib/CaptureBarcodeActivity;->setContentView(I)V

    .line 64
    const-string v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@_@\u706b\u773cMainActivity start showDialog "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureBarcodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->showOpenCameraDialog(Landroid/support/v4/app/FragmentManager;)V

    .line 66
    iget-object v1, p0, Lcom/etao/kakalib/CaptureBarcodeActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 67
    const-string v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@_@\u706b\u773cMainActivity create end "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/etao/kakalib/BaseFragmentActivity;->onDestroy()V

    .line 111
    const-string v0, "CaptureBarcodeActivity"

    const-string v1, "@_@onDestroy"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/etao/kakalib/BaseFragmentActivity;->onPause()V

    .line 97
    const-string v0, "CaptureBarcodeActivity"

    const-string v1, "@_@Activity onPause"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method protected onRestart()V
    .locals 5

    .prologue
    .line 72
    invoke-super {p0}, Lcom/etao/kakalib/BaseFragmentActivity;->onRestart()V

    .line 73
    const-string v1, "CaptureBarcodeActivity"

    const-string v2, "@_@ Activity onReStart"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureBarcodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 75
    const-string v2, "scanFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 76
    .local v0, captureCodeFragment:Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureBarcodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->showOpenCameraDialog(Landroid/support/v4/app/FragmentManager;)V

    .line 78
    iget-object v1, p0, Lcom/etao/kakalib/CaptureBarcodeActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 80
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/etao/kakalib/BaseFragmentActivity;->onResume()V

    .line 91
    const-string v0, "CaptureBarcodeActivity"

    const-string v1, "@_@ Activity Resume"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 116
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/etao/kakalib/BaseFragmentActivity;->onStart()V

    .line 85
    const-string v0, "CaptureBarcodeActivity"

    const-string v1, "@_@ Activity onStart"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/etao/kakalib/BaseFragmentActivity;->onStop()V

    .line 103
    iget-object v0, p0, Lcom/etao/kakalib/CaptureBarcodeActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v0, p0, Lcom/etao/kakalib/CaptureBarcodeActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    const-string v0, "CaptureBarcodeActivity"

    const-string v1, "@_@onStop"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method
