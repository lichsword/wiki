.class public Lcom/etao/kakalib/views/KakaLibTextDialogFragment;
.super Lcom/etao/kakalib/views/KaDialogFragment;
.source "KakaLibTextDialogFragment.java"


# instance fields
.field private textColor:I

.field private textSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/etao/kakalib/views/KaDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/etao/kakalib/views/KakaLibTextDialogFragment;
    .locals 3
    .parameter "text"

    .prologue
    .line 27
    new-instance v1, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;

    invoke-direct {v1}, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;-><init>()V

    .line 28
    .local v1, kakaLibProductMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibTextDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "Text"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, v0}, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 39
    const-string v4, "kakalib_one_text_msg_dialog"

    const v5, 0x7f030011

    .line 38
    invoke-static {v3, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 40
    const/4 v4, 0x0

    .line 38
    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 42
    .local v2, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "aaa"

    const v5, 0x7f0a004d

    .line 41
    invoke-static {v3, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    .local v1, textView:Landroid/widget/TextView;
    iget v3, p0, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;->textColor:I

    if-lez v3, :cond_0

    .line 44
    iget v3, p0, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;->textColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    :cond_0
    iget v3, p0, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;->textSize:I

    if-lez v3, :cond_1

    .line 47
    iget v3, p0, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;->textSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 50
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-object v2
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 19
    iput p1, p0, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;->textColor:I

    .line 20
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 23
    iput p1, p0, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;->textSize:I

    .line 24
    return-void
.end method
