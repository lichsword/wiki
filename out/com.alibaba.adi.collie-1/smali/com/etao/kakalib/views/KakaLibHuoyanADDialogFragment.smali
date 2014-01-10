.class public Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;
.super Lcom/etao/kakalib/views/KaDialogFragment;
.source "KakaLibHuoyanADDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etao/kakalib/views/KaDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/etao/kakalib/views/KaDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x2

    const v1, 0x1030011

    invoke-virtual {p0, v0, v1}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->setStyle(II)V

    .line 23
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 27
    const-string v2, "kakalib_huoyan_ad_layout"

    const v3, 0x7f03000c

    .line 26
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "relativeLayoutHuoyanADBg"

    .line 30
    const v3, 0x7f0a0029

    .line 29
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 30
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-object v0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 37
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "buttonDownloadHuoyan"

    .line 38
    const v5, 0x7f0a0034

    .line 37
    invoke-static {v3, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 36
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 40
    .local v0, huoyanDownloadButton:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 41
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 42
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 43
    const-string v5, "kakalib_kaka_package_name"

    const v6, 0x7f070001

    .line 42
    invoke-static {v4, v5, v6}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 41
    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KaKaLibUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 44
    .local v1, isHuoyanInstalled:Z
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 46
    const-string v3, "kakalib_huoyan_ad_open"

    const v4, 0x7f070014

    .line 45
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 51
    :goto_0
    new-instance v2, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment$1;-><init>(Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-super {p0}, Lcom/etao/kakalib/views/KaDialogFragment;->onResume()V

    .line 78
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibHuoyanADDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 49
    const-string v3, "kakalib_huoyan_ad_download"

    const v4, 0x7f070015

    .line 48
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
