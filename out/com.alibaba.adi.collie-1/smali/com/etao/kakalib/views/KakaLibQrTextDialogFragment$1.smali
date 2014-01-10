.class Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment$1;
.super Ljava/lang/Object;
.source "KakaLibQrTextDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;

    invoke-virtual {v0}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;

    #getter for: Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->mText:Ljava/lang/String;
    invoke-static {v1}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->access$0(Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KaKaLibUtils;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;

    invoke-virtual {v0}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;

    invoke-virtual {v1}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "kakalib_copyed"

    const v3, 0x7f070012

    .line 50
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/ToastUtil;->toastShortMsg(Landroid/content/Context;I)V

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;

    invoke-virtual {v0}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;

    invoke-virtual {v1}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "kakalib_copyError"

    const v3, 0x7f070013

    .line 53
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/ToastUtil;->toastShortMsg(Landroid/content/Context;I)V

    goto :goto_0
.end method
