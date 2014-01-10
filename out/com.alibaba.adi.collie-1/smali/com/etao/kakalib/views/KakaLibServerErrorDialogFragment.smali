.class public Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;
.super Lcom/etao/kakalib/views/KaDialogFragment;
.source "KakaLibServerErrorDialogFragment.java"


# instance fields
.field private pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/etao/kakalib/views/KaDialogFragment;-><init>()V

    .line 18
    const-string v0, "huoyansdk_barcode_nobarcode"

    iput-object v0, p0, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->pageName:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;
    .locals 3
    .parameter "error"
    .parameter "productCode"

    .prologue
    .line 21
    new-instance v1, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;

    invoke-direct {v1}, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;-><init>()V

    .line 22
    .local v1, kakaLibProductMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "Error"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v2, "productCode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v0}, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 26
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 86
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/etao/kakalib/views/KaDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->pageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->onCreatePage(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "Error"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, error:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "productCode"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, productCode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "kakalib_product_server_error_dialog"

    .line 60
    const v7, 0x7f030019

    .line 59
    invoke-static {v5, v6, v7}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 60
    const/4 v6, 0x0

    .line 58
    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 62
    .local v4, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "textViewProductErrorTitle"

    .line 63
    const v7, 0x7f0a005a

    .line 62
    invoke-static {v5, v6, v7}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 61
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 65
    .local v3, textViewProductErrorTitle:Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "textViewProductErrorBarcode"

    .line 68
    const v7, 0x7f0a005b

    .line 67
    invoke-static {v5, v6, v7}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 66
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    .local v2, textViewProductErrorBarcode:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "buttonProductError2Search"

    .line 72
    const v7, 0x7f0a005c

    .line 71
    invoke-static {v5, v6, v7}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 70
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 72
    new-instance v6, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment$1;-><init>(Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-object v4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/etao/kakalib/views/KaDialogFragment;->onDestroy()V

    .line 50
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->pageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->onDestroyPage(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/etao/kakalib/views/KaDialogFragment;->onPause()V

    .line 44
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->pageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->onPausePage(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/etao/kakalib/views/KaDialogFragment;->onResume()V

    .line 38
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->pageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->onResumePage(Ljava/lang/String;)V

    .line 39
    return-void
.end method
