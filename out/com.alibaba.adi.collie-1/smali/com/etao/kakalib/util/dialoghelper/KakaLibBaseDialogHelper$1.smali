.class Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$1;
.super Ljava/lang/Object;
.source "KakaLibBaseDialogHelper.java"

# interfaces
.implements Lcom/etao/kakalib/views/IKaDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$1;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$1;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;

    invoke-virtual {v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->restartPreviewModeAndRequestOneFrame()V

    .line 46
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper$1;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;

    invoke-virtual {v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;->restartPreviewMode()V

    .line 41
    return-void
.end method
