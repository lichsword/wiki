.class public Lcom/alibaba/adi/collie/ui/settings/AboutActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;
    }
.end annotation


# instance fields
.field private BackImageView:Landroid/widget/Button;

.field private about_copyright:Landroid/view/View;

.field private about_provision:Landroid/view/View;

.field private about_version:Landroid/widget/TextView;

.field private logo:Landroid/widget/ImageView;

.field mHits:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->mHits:[J

    .line 33
    return-void
.end method

.method private initContentViews()V
    .locals 6

    .prologue
    .line 50
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->logo:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->logo:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/settings/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->logo:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$2;-><init>(Lcom/alibaba/adi/collie/ui/settings/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->BackImageView:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->BackImageView:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$3;-><init>(Lcom/alibaba/adi/collie/ui/settings/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->about_provision:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->about_provision:Landroid/view/View;

    new-instance v1, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$4;-><init>(Lcom/alibaba/adi/collie/ui/settings/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->about_copyright:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->about_copyright:Landroid/view/View;

    new-instance v1, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$5;-><init>(Lcom/alibaba/adi/collie/ui/settings/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->about_version:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->about_version:Landroid/widget/TextView;

    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a004a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 130
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/ApkUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 129
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 44
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->setContentView(I)V

    .line 45
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->initContentViews()V

    .line 47
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onPause()V

    .line 143
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onResume()V

    .line 137
    return-void
.end method
