.class public Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;
.super Lcom/etao/kakalib/views/KaDialogFragment;
.source "KakaLibLoadingDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/etao/kakalib/views/KaDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;
    .locals 2

    .prologue
    .line 19
    new-instance v1, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;

    invoke-direct {v1}, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;-><init>()V

    .line 20
    .local v1, kakaLibProductMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 22
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 27
    sget-boolean v2, Lcom/etao/kakalib/util/KaKaLibConfig;->useSystemProgressDialog:Z

    if-eqz v2, :cond_0

    .line 28
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 34
    :goto_0
    return-object v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 32
    const-string v3, "kakalib_loading_progress"

    const v4, 0x7f030010

    .line 31
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 31
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, v:Landroid/view/View;
    move-object v0, v1

    .line 34
    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 40
    sget-boolean v2, Lcom/etao/kakalib/util/KaKaLibConfig;->useSystemProgressDialog:Z

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 42
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibLoadingDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "loadingImageView"

    .line 43
    const v5, 0x7f0a0022

    .line 42
    invoke-static {v3, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 41
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 44
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 45
    .local v0, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 47
    .end local v0           #animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_0
    invoke-super {p0}, Lcom/etao/kakalib/views/KaDialogFragment;->onResume()V

    .line 48
    return-void
.end method
