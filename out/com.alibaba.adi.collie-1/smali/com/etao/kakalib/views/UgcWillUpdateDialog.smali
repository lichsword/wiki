.class public Lcom/etao/kakalib/views/UgcWillUpdateDialog;
.super Lcom/etao/kakalib/views/KaDialogFragment;
.source "UgcWillUpdateDialog.java"


# instance fields
.field private mCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/etao/kakalib/views/KaDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/etao/kakalib/views/UgcWillUpdateDialog;
    .locals 3
    .parameter "code"

    .prologue
    .line 18
    new-instance v1, Lcom/etao/kakalib/views/UgcWillUpdateDialog;

    invoke-direct {v1}, Lcom/etao/kakalib/views/UgcWillUpdateDialog;-><init>()V

    .line 19
    .local v1, f:Lcom/etao/kakalib/views/UgcWillUpdateDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "code"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v0}, Lcom/etao/kakalib/views/UgcWillUpdateDialog;->setArguments(Landroid/os/Bundle;)V

    .line 22
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/etao/kakalib/views/UgcWillUpdateDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/etao/kakalib/views/UgcWillUpdateDialog;->mCode:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/etao/kakalib/views/UgcWillUpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 28
    const-string v3, "kakalib_dialog_ugc_will_update"

    const v4, 0x7f030009

    .line 27
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 30
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/UgcWillUpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 31
    const-string v3, "barCode"

    const v4, 0x7f0a0023

    .line 30
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    .local v0, tv:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/etao/kakalib/views/UgcWillUpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lcom/etao/kakalib/views/UgcWillUpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "kakalib_ugc_bar"

    .line 34
    const v6, 0x7f07000c

    .line 33
    invoke-static {v4, v5, v6}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 32
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/etao/kakalib/views/UgcWillUpdateDialog;->mCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-object v1
.end method
