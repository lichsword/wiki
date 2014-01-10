.class public Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;
.super Lcom/etao/kakalib/views/KaDialogFragment;
.source "KakaLibProductNotInServerErrorDialogFragment.java"


# instance fields
.field private pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/etao/kakalib/views/KaDialogFragment;-><init>()V

    .line 16
    const-string v0, "huoyansdk_barcode_nosearch"

    iput-object v0, p0, Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;->pageName:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;
    .locals 3
    .parameter "title"
    .parameter "productCode"

    .prologue
    .line 44
    new-instance v1, Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;

    invoke-direct {v1}, Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;-><init>()V

    .line 45
    .local v1, kakaLibProductMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "Title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "productCode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v0}, Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/etao/kakalib/views/KaDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;->pageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->onCreatePage(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 57
    const-string v4, "kakalib_product_not_in_server_dialog"

    .line 58
    const v5, 0x7f030017

    .line 56
    invoke-static {v3, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 58
    const/4 v4, 0x0

    .line 56
    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 60
    .local v2, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "textViewProductTitle"

    const v5, 0x7f0a0056

    .line 59
    invoke-static {v3, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, textViewProductTitle:Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/etao/kakalib/views/KaDialogFragment;->onDestroy()V

    .line 39
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;->pageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->onDestroyPage(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/etao/kakalib/views/KaDialogFragment;->onPause()V

    .line 33
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;->pageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->onPausePage(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/etao/kakalib/views/KaDialogFragment;->onResume()V

    .line 27
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibProductNotInServerErrorDialogFragment;->pageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->onResumePage(Ljava/lang/String;)V

    .line 28
    return-void
.end method
