.class public Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;
.super Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;
.source "KakaLibCameraDialogHelper.java"


# static fields
.field private static final CAMERA_OPENING:Ljava/lang/String; = "CAMERA_OPENING"

.field private static final CAMERA_OPENING_ERROR:Ljava/lang/String; = "CAMERA_OPENING_ERROR"

.field static final TAG:Ljava/lang/String; = "MainViewHelper"

.field private static inintCameraDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/etao/kakalib/KakaLibScanController;)V
    .locals 0
    .parameter "fragmentActivity"
    .parameter "scanController"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/etao/kakalib/KakaLibScanController;)V

    .line 21
    return-void
.end method

.method static synthetic access$0()Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->inintCameraDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    return-object v0
.end method

.method static synthetic access$1(Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    sput-object p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->inintCameraDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    return-void
.end method

.method public static dismissOpenCameraDialogWithOutAnim(Landroid/support/v4/app/FragmentManager;)V
    .locals 3
    .parameter "fragmentManager"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 96
    const-string v0, "MainViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dismissOpenCameraDialogWithOutAnim ,inintCameraDialogFragment ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    sget-object v2, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->inintCameraDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->inintCameraDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->inintCameraDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->removeDialog(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;)V

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->inintCameraDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    .line 102
    :cond_0
    return-void
.end method

.method public static declared-synchronized showOpenCameraDialog(Landroid/support/v4/app/FragmentManager;)V
    .locals 3
    .parameter "fragmentManager"

    .prologue
    .line 54
    const-class v1, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->inintCameraDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    if-eqz v0, :cond_1

    .line 55
    sget-object v0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->inintCameraDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    invoke-virtual {v0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->inintCameraDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    invoke-virtual {v0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->isVisible()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 59
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->newInstance()Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    move-result-object v0

    sput-object v0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->inintCameraDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    .line 61
    sget-object v0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->inintCameraDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->setCancelable(Z)V

    .line 62
    sget-object v0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->inintCameraDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->setKaCallback(Lcom/etao/kakalib/views/IKaDialogCallback;)V

    .line 63
    sget-object v0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->inintCameraDialogFragment:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    const-string v2, "CAMERA_OPENING"

    invoke-virtual {v0, p0, v2}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public dismissOpenCameraDialog()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "MainViewHelper"

    const-string v1, "dismissOpenCameraDialog"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$2;

    invoke-direct {v1, p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$2;-><init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public showOpenCameraErrorDialog()V
    .locals 5

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 33
    const-string v3, "kakalib_msg_camera_framework_bug"

    .line 34
    const v4, 0x7f070004

    .line 32
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;->newInstance(Ljava/lang/String;)Lcom/etao/kakalib/views/KakaLibTextDialogFragment;

    move-result-object v0

    .line 35
    .local v0, kakaLibTextDialogFragment:Lcom/etao/kakalib/views/KakaLibTextDialogFragment;
    new-instance v1, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$1;

    invoke-direct {v1, p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$1;-><init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;)V

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;->setKaCallback(Lcom/etao/kakalib/views/IKaDialogCallback;)V

    .line 49
    const-string v1, "CAMERA_OPENING_ERROR"

    invoke-virtual {p0, v0, v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;)V

    .line 50
    return-void
.end method
