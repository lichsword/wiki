.class Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$1;
.super Ljava/lang/Object;
.source "KakaLibCameraDialogHelper.java"

# interfaces
.implements Lcom/etao/kakalib/views/IKaDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->showOpenCameraErrorDialog()V
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
    iput-object p1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$1;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$1;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;

    invoke-virtual {v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$1;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;

    invoke-virtual {v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 42
    :cond_0
    return-void
.end method
