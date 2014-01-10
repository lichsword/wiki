.class public Lcom/etao/kakalib/views/KakaLibScanHelpDialogFragment;
.super Lcom/etao/kakalib/views/KaDialogFragment;
.source "KakaLibScanHelpDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/etao/kakalib/views/KaDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/etao/kakalib/views/KakaLibScanHelpDialogFragment;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/etao/kakalib/views/KakaLibScanHelpDialogFragment;

    invoke-direct {v0}, Lcom/etao/kakalib/views/KakaLibScanHelpDialogFragment;-><init>()V

    .line 16
    .local v0, kakaLibProductMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibScanHelpDialogFragment;
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 28
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibScanHelpDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 22
    const-string v2, "kakalib_scan_help_dialog"

    const v3, 0x7f03001a

    .line 21
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 23
    .local v0, v:Landroid/view/View;
    return-object v0
.end method
