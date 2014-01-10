.class public Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "WallpaperViewActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperManagerX$WallpaperStatus:[I = null

.field private static final TAG:Ljava/lang/String; = "WallpaperViewActivity"


# instance fields
.field private mBtnChecked:Landroid/widget/LinearLayout;

.field private mBtnDel:Landroid/widget/LinearLayout;

.field private mCheckedStatusImage:Landroid/widget/ImageView;

.field private mCheckedText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mInDeleting:Z

.field private targetIndex:I

.field private textSelectNumDes:Landroid/widget/TextView;

.field private viewIndex:Landroid/widget/TextView;

.field private wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;

.field private wallpapers_bounce:Landroid/support/v4/view/ViewPager;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperManagerX$WallpaperStatus()[I
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->$SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperManagerX$WallpaperStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->values()[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->AVAILABLE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->USED:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->$SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperManagerX$WallpaperStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mInDeleting:Z

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->updatePageInfos(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->targetIndex:I

    return v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpapers_bounce:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mInDeleting:Z

    return-void
.end method

.method private backResultViewIndex()V
    .locals 3

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "viewIndex"

    iget v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->targetIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->finish()V

    .line 147
    return-void
.end method

.method private getIndexFromIntent()I
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "targetIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private initContentView()V
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f0800a8

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpapers_bounce:Landroid/support/v4/view/ViewPager;

    .line 97
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->viewIndex:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->textSelectNumDes:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mBtnDel:Landroid/widget/LinearLayout;

    .line 100
    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mBtnChecked:Landroid/widget/LinearLayout;

    .line 101
    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mCheckedStatusImage:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f0800ae

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mCheckedText:Landroid/widget/TextView;

    .line 103
    return-void
.end method

.method private initRenderPager()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;

    .line 75
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpapers_bounce:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpapers_bounce:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpapers_bounce:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->targetIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 93
    return-void
.end method

.method private setBtnCheckChecked(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 127
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mCheckedStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mCheckedText:Landroid/widget/TextView;

    const v1, 0x7f0a014d

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mCheckedStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mCheckedText:Landroid/widget/TextView;

    const v1, 0x7f0a014e

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private upDateSelectedNumber(I)V
    .locals 5
    .parameter "number"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->textSelectNumDes:Landroid/widget/TextView;

    const v1, 0x7f0a013e

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method private updatePageInfos(I)V
    .locals 7
    .parameter "curItemIndex"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    iput p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->targetIndex:I

    .line 117
    iget v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->targetIndex:I

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->getDisplayItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v1, v4, :cond_0

    .line 118
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->getDisplayItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->targetIndex:I

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->getDisplayItems()Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->targetIndex:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;->getmWallpaperConfigItem()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v0

    .line 122
    .local v0, cur:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->viewIndex:Landroid/widget/TextView;

    const v4, 0x7f0a0147

    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->targetIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->getDisplayItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getStatus()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v1

    sget-object v4, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->USED:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->setBtnCheckChecked(Ljava/lang/Boolean;)V

    .line 124
    return-void

    :cond_1
    move v1, v3

    .line 123
    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->backResultViewIndex()V

    .line 152
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 159
    :sswitch_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->backResultViewIndex()V

    goto :goto_0

    .line 162
    :sswitch_1
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mInDeleting:Z

    if-nez v3, :cond_0

    .line 165
    iput-boolean v7, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mInDeleting:Z

    .line 166
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->getDisplayItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v7, :cond_1

    .line 167
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0a013b

    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 170
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 172
    const v4, 0x7f0200d6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 173
    const v4, 0x7f0a0141

    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 174
    const v4, 0x7f0a0143

    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 175
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a009f

    .line 176
    new-instance v4, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$2;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)V

    .line 175
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    const v3, 0x7f0a00a0

    .line 198
    new-instance v4, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$3;

    invoke-direct {v4, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$3;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)V

    .line 197
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 204
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 207
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_2
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->getDisplayItems()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->targetIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;

    .line 208
    .local v2, configItemIndex:Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;->getmWallpaperConfigItem()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v1

    .line 209
    .local v1, configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 210
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->$SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperManagerX$WallpaperStatus()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getStatus()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 216
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;->getIndex()I

    move-result v4

    sget-object v5, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-static {v3, v4, v5}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->changeStatus(Landroid/content/Context;ILcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;)Ljava/lang/Boolean;

    .line 217
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->setBtnCheckChecked(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 212
    :pswitch_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;->getIndex()I

    move-result v4

    sget-object v5, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->NOT_USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-static {v3, v4, v5}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->changeStatus(Landroid/content/Context;ILcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;)Ljava/lang/Boolean;

    .line 213
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->setBtnCheckChecked(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x7f080009 -> :sswitch_0
        0x7f0800ab -> :sswitch_1
        0x7f0800ac -> :sswitch_2
    .end sparse-switch

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 59
    iput-object p0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mContext:Landroid/content/Context;

    .line 60
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->setContentView(I)V

    .line 61
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->getIndexFromIntent()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->targetIndex:I

    .line 62
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->initContentView()V

    .line 63
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->initRenderPager()V

    .line 64
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getUsedWallpaperNum()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->upDateSelectedNumber(I)V

    .line 65
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->targetIndex:I

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->updatePageInfos(I)V

    .line 67
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->setOnWallpaperChangeListener(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mBtnDel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mBtnChecked:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public onSelectNumberChange(II)V
    .locals 0
    .parameter "totalNum"
    .parameter "usedNum"

    .prologue
    .line 139
    invoke-direct {p0, p2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->upDateSelectedNumber(I)V

    .line 140
    return-void
.end method
