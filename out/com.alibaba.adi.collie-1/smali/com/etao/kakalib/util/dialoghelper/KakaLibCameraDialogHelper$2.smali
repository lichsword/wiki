.class Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$2;
.super Ljava/lang/Object;
.source "KakaLibCameraDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->dismissOpenCameraDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$2;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 73
    const-string v0, "MainViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dismissOpenCameraDialog ,inintCameraDialogFragment ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->access$0()Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->access$0()Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->access$0()Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    move-result-object v0

    new-instance v1, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$2$1;

    invoke-direct {v1, p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$2$1;-><init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$2;)V

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->setKaCallback(Lcom/etao/kakalib/views/IKaDialogCallback;)V

    .line 88
    invoke-static {}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->access$0()Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->startAnimAndDismisDialog()V

    .line 90
    :cond_0
    return-void
.end method
