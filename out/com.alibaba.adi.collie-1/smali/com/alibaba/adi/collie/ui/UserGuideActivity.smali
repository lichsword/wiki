.class public Lcom/alibaba/adi/collie/ui/UserGuideActivity;
.super Landroid/app/Activity;
.source "UserGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/UserGuideActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field public static final DEFAULT_ITEM_INDEX:I = 0x0

.field public static final TAG:Ljava/lang/String; = "UserGuideActivity"


# instance fields
.field private activeDot:Landroid/widget/ImageView;

.field private dotsContainer:Landroid/widget/LinearLayout;

.field private dotsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mflater:Landroid/view/LayoutInflater;

.field private pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private stepLayouts:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->dotsList:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->activeDot:Landroid/widget/ImageView;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->stepLayouts:[I

    .line 24
    return-void

    .line 37
    :array_0
    .array-data 0x4
        0x91t 0x0t 0x3t 0x7ft
        0x92t 0x0t 0x3t 0x7ft
        0x93t 0x0t 0x3t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/UserGuideActivity;)[I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->stepLayouts:[I

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/UserGuideActivity;I)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->renderPagerItem(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/UserGuideActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->activeDot(I)V

    return-void
.end method

.method private activeDot(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->activeDot:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->activeDot:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->dotsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->activeDot:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->activeDot:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 82
    return-void
.end method

.method private initDots()V
    .locals 4

    .prologue
    .line 67
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->stepLayouts:[I

    array-length v1, v3

    .local v1, len:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 72
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->activeDot(I)V

    .line 73
    return-void

    .line 68
    :cond_0
    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->renderDotItem(I)Landroid/widget/ImageView;

    move-result-object v2

    .line 69
    .local v2, mImageView:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->dotsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->dotsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private renderDotItem(I)Landroid/widget/ImageView;
    .locals 6
    .parameter "index"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 96
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 97
    const/high16 v2, 0x4180

    .line 96
    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 98
    .local v1, mParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, mImageView:Landroid/widget/ImageView;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    const/4 v2, 0x2

    invoke-virtual {v0, v5, v4, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 101
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 102
    const v2, 0x7f0201e8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 104
    return-object v0
.end method

.method private renderPagerItem(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->mflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->stepLayouts:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, item:Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->stepLayouts:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 88
    const v1, 0x7f0801d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v1, 0x7f0801da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 111
    :pswitch_0
    const-string v0, "ToSetHomeButtonLater"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->finish()V

    goto :goto_0

    .line 115
    :pswitch_1
    const-string v0, "ToSetHomeButtonImmediately"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->finish()V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x7f0801d9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iput-object p0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->mflater:Landroid/view/LayoutInflater;

    .line 43
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 45
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->dotsContainer:Landroid/widget/LinearLayout;

    .line 46
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/alibaba/adi/collie/ui/UserGuideActivity$ViewPagerAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/adi/collie/ui/UserGuideActivity$ViewPagerAdapter;-><init>(Lcom/alibaba/adi/collie/ui/UserGuideActivity;Lcom/alibaba/adi/collie/ui/UserGuideActivity$ViewPagerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/alibaba/adi/collie/ui/UserGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/UserGuideActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/UserGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 63
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->initDots()V

    .line 64
    return-void
.end method
