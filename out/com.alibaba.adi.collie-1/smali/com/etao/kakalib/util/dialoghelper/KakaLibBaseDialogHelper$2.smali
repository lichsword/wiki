.class Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;
.super Ljava/lang/Object;
.source "KakaLibBaseDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;Lcom/etao/kakalib/views/IKaDialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;

.field private final synthetic val$dialogCallback:Lcom/etao/kakalib/views/IKaDialogCallback;

.field private final synthetic val$dialogFragment:Lcom/etao/kakalib/views/KaDialogFragment;

.field private final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;Ljava/lang/String;Lcom/etao/kakalib/views/KaDialogFragment;Lcom/etao/kakalib/views/IKaDialogCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;

    iput-object p2, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;->val$dialogFragment:Lcom/etao/kakalib/views/KaDialogFragment;

    iput-object p4, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;->val$dialogCallback:Lcom/etao/kakalib/views/IKaDialogCallback;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;

    invoke-virtual {v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;

    iget-object v1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->dismissDialog(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;

    invoke-virtual {v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;

    invoke-virtual {v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->stopCameraFrame()V

    .line 68
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;->val$dialogFragment:Lcom/etao/kakalib/views/KaDialogFragment;

    iget-object v1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;->val$dialogCallback:Lcom/etao/kakalib/views/IKaDialogCallback;

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/views/KaDialogFragment;->setKaCallback(Lcom/etao/kakalib/views/IKaDialogCallback;)V

    .line 69
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;->val$dialogFragment:Lcom/etao/kakalib/views/KaDialogFragment;

    iget-object v1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;

    invoke-virtual {v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$2;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/etao/kakalib/views/KaDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
