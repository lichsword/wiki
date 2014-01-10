.class public Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;
.super Lcom/etao/kakalib/views/KaDialogFragment;
.source "KakaLibQrTextDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etao/kakalib/views/KaDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;
    .locals 3
    .parameter "text"

    .prologue
    .line 23
    new-instance v1, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;

    invoke-direct {v1}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;-><init>()V

    .line 24
    .local v1, f:Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "text"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, v0}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->mText:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 33
    const-string v5, "kakalib_dialog_qr_text_result"

    const v6, 0x7f030007

    .line 32
    invoke-static {v4, v5, v6}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 34
    const/4 v5, 0x0

    .line 32
    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 36
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "qr_product_img"

    const v6, 0x7f0a0019

    .line 35
    invoke-static {v4, v5, v6}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 37
    .local v2, qrTypeImg:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 38
    const-string v5, "kakalib_text_icon"

    const v6, 0x7f020054

    .line 37
    invoke-static {v4, v5, v6}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "dailog_qr_content"

    const v6, 0x7f0a001b

    .line 39
    invoke-static {v4, v5, v6}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    .local v0, qrContent:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->mText:Ljava/lang/String;

    invoke-static {v4, v0, v5}, Lcom/etao/kakalib/util/KaKaLibUtils;->setTextViewFilterUrl(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "qr_text_copy"

    const v6, 0x7f0a001c

    .line 43
    invoke-static {v4, v5, v6}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 45
    .local v1, qrTextCopy:Landroid/widget/ImageButton;
    new-instance v4, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment$1;-><init>(Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-object v3
.end method
