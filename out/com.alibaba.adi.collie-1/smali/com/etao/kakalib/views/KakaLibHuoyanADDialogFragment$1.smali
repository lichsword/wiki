.class Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment$1;
.super Ljava/lang/Object;
.source "KakaLibHuoyanADDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;

.field private final synthetic val$isHuoyanInstalled:Z


# direct methods
.method constructor <init>(Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;

    iput-boolean p2, p0, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment$1;->val$isHuoyanInstalled:Z

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 55
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "huoyanDownloadButton  clicked,isHuoyanInstalled"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    iget-boolean v2, p0, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment$1;->val$isHuoyanInstalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;

    invoke-virtual {v0}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->dismiss()V

    .line 59
    iget-boolean v0, p0, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment$1;->val$isHuoyanInstalled:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;

    invoke-virtual {v0}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;

    invoke-virtual {v1}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;

    invoke-virtual {v2}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 64
    const-string v3, "kakalib_kaka_package_name"

    .line 65
    const v4, 0x7f070001

    .line 63
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 62
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KaKaLibUtils;->openApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 75
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v0, "huoyansdk_main_down"

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->onButtonClick(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;

    invoke-virtual {v0}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;

    invoke-virtual {v1}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;

    invoke-virtual {v2}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 72
    const-string v3, "kakalib_url_huoyan_apk_download"

    .line 73
    const/high16 v4, 0x7f07

    .line 71
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 70
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KaKaLibUtils;->openAnUrlByBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method
