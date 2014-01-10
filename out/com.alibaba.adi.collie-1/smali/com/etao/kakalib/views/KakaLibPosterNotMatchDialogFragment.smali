.class public Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;
.super Lcom/etao/kakalib/views/KaDialogFragment;
.source "KakaLibPosterNotMatchDialogFragment.java"


# static fields
.field private static posterNotMatchDialogFragment:Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/etao/kakalib/views/KaDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;->posterNotMatchDialogFragment:Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;

    invoke-direct {v0}, Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;-><init>()V

    sput-object v0, Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;->posterNotMatchDialogFragment:Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;

    .line 20
    :cond_0
    sget-object v0, Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;->posterNotMatchDialogFragment:Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibPosterNotMatchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 25
    const-string v2, "kakalib_poster_not_match_dialog"

    const v3, 0x7f030013

    .line 24
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, v:Landroid/view/View;
    return-object v0
.end method
