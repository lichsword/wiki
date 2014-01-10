.class public Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;
.super Lcom/etao/kakalib/views/KaDialogFragment;
.source "KakaLibQRUrlDialogFragment.java"


# instance fields
.field private destroyView:Z

.field private loadingImageView:Landroid/widget/ImageView;

.field private networkError:Z

.field private qrURlSafeStatusTextView:Landroid/widget/TextView;

.field private qrUrlImg:Landroid/widget/ImageView;

.field private qrUrlSafeStatusImageView:Landroid/widget/ImageView;

.field private qrUrlTextView:Landroid/widget/TextView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etao/kakalib/views/KaDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;
    .locals 3
    .parameter "url"

    .prologue
    .line 28
    new-instance v1, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;

    invoke-direct {v1}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;-><init>()V

    .line 29
    .local v1, f:Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, v0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    return-object v1
.end method

.method private updateStatusNetworkError()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlSafeStatusImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrURlSafeStatusTextView:Landroid/widget/TextView;

    .line 174
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "kakalib_url_safe_checking_netwrong"

    .line 175
    const v3, 0x7f070017

    .line 173
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlSafeStatusImageView:Landroid/widget/ImageView;

    .line 178
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "kakalib_url_unknown"

    .line 179
    const v3, 0x7f020063

    .line 177
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/etao/kakalib/views/KaDialogFragment;->onClick(Landroid/view/View;)V

    .line 185
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KaKaLibUtils;->openAnUrlByNativeBrowserActivity(Landroid/content/Context;Ljava/lang/String;)Z

    .line 186
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 43
    iput-boolean v3, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->destroyView:Z

    .line 44
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "url"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->url:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/etao/kakalib/util/common/NetWork;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->networkError:Z

    .line 46
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 47
    const-string v4, "kakalib_dialog_qr_url_result"

    const v5, 0x7f030008

    .line 46
    invoke-static {v2, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 50
    const-string v3, "qr_url_icon"

    const v4, 0x7f0a001d

    .line 49
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlImg:Landroid/widget/ImageView;

    .line 51
    iget-object v2, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 52
    const-string v4, "kakalib_text_icon"

    const v5, 0x7f020054

    .line 51
    invoke-static {v3, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "qr_url_icon_safe_status"

    const v4, 0x7f0a001e

    .line 54
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlSafeStatusImageView:Landroid/widget/ImageView;

    .line 56
    iget-object v2, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlSafeStatusImageView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "loadingImageView"

    const v4, 0x7f0a0022

    .line 58
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->loadingImageView:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "dailog_qr_content"

    const v4, 0x7f0a001b

    .line 61
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlTextView:Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlTextView:Landroid/widget/TextView;

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "dailog_qr_url_status"

    const v4, 0x7f0a0021

    .line 66
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrURlSafeStatusTextView:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "qr_text_copy"

    const v4, 0x7f0a001c

    .line 69
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 71
    .local v0, qrTextCopy:Landroid/widget/ImageButton;
    new-instance v2, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment$1;-><init>(Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-boolean v2, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->networkError:Z

    if-nez v2, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->updateStatusChecking()V

    .line 95
    :goto_1
    return-object v1

    .line 45
    .end local v0           #qrTextCopy:Landroid/widget/ImageButton;
    .end local v1           #v:Landroid/view/View;
    :cond_0
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 87
    .restart local v0       #qrTextCopy:Landroid/widget/ImageButton;
    .restart local v1       #v:Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->updateStatusNetworkError()V

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/etao/kakalib/views/KaDialogFragment;->onDestroyView()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->destroyView:Z

    .line 105
    return-void
.end method

.method public updateStatusChecking()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrURlSafeStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 110
    const-string v3, "kakalib_url_safe_checking"

    const v4, 0x7f070016

    .line 109
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrURlSafeStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 112
    const-string v3, "kakalib_color_gray"

    const v4, 0x7f060001

    .line 111
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getColorByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->loadingImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->loadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 115
    .local v0, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 116
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 117
    const-string v3, "kakalib_url_web_icon"

    const v4, 0x7f020064

    .line 116
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlSafeStatusImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    return-void
.end method

.method public updateStatusUrlResult(Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;)V
    .locals 5
    .parameter "dBarcodeSafeResult"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 123
    iget-boolean v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->destroyView:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->loadingImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->loadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 128
    .local v0, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 129
    if-nez p1, :cond_2

    .line 130
    invoke-direct {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->updateStatusNetworkError()V

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p1}, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 133
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p1}, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->url:Ljava/lang/String;

    .line 136
    :cond_3
    invoke-virtual {p1}, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->isUrlBlack()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrURlSafeStatusTextView:Landroid/widget/TextView;

    .line 138
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 139
    const-string v3, "kakalib_url_black"

    const v4, 0x7f070018

    .line 137
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrURlSafeStatusTextView:Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 142
    const-string v3, "kakalib_url_black_icon"

    const v4, 0x7f020062

    .line 141
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlSafeStatusImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 145
    :cond_4
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 146
    const-string v3, "kakalib_url_web_icon"

    const v4, 0x7f020064

    .line 145
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlSafeStatusImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getActivity() =="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrURlSafeStatusTextView:Landroid/widget/TextView;

    .line 150
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 151
    const-string v3, "kakalib_color_gray"

    const v4, 0x7f060001

    .line 149
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getColorByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    invoke-virtual {p1}, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->isUrlWhite()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 153
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrURlSafeStatusTextView:Landroid/widget/TextView;

    .line 154
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "kakalib_url_white"

    const v4, 0x7f070019

    .line 153
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlSafeStatusImageView:Landroid/widget/ImageView;

    .line 157
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "kakalib_url_white"

    .line 158
    const v4, 0x7f020065

    .line 156
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 155
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 160
    :cond_5
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrURlSafeStatusTextView:Landroid/widget/TextView;

    .line 161
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "kakalib_url_unknow"

    const v4, 0x7f07001a

    .line 160
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->qrUrlSafeStatusImageView:Landroid/widget/ImageView;

    .line 164
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "kakalib_url_unknown"

    .line 165
    const v4, 0x7f020063

    .line 163
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 162
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
