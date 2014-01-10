.class public Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "WallpaperDelActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$gridItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "WallpaperDelModeActivity"


# instance fields
.field private cacheUiStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;",
            ">;"
        }
    .end annotation
.end field

.field private isTouchSeeked:Z

.field private mBtnDelConfirm:Landroid/widget/Button;

.field private mBtngoMarket:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mIvPopupDialog:Landroid/widget/ImageView;

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mbtnGoBack:Landroid/widget/TextView;

.field private selectDelNum:I

.field private selectedText:Landroid/widget/TextView;

.field private targetPageNum:I

.field private viewPagerPageSum:I

.field private wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;

.field private wallpaperPanelsContainer:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

.field private wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->cacheUiStatusMap:Ljava/util/HashMap;

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->targetPageNum:I

    .line 56
    iput v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->selectDelNum:I

    .line 57
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->isTouchSeeked:Z

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->setSeekbarProcsssToPageNum(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->isTouchSeeked:Z

    return v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperPanelsContainer:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->targetPageNum:I

    return v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->isTouchSeeked:Z

    return-void
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->viewPagerPageSum:I

    return v0
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->targetPageNum:I

    return-void
.end method

.method private clearCacheMaps()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->cacheUiStatusMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 289
    return-void
.end method

.method private initContentView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 94
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperPanelsContainer:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    .line 95
    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    .line 96
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mbtnGoBack:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->selectedText:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mBtngoMarket:Landroid/widget/Button;

    .line 99
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mBtnDelConfirm:Landroid/widget/Button;

    .line 100
    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mIvPopupDialog:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperPanelsContainer:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->setDefaultPagerIndex(I)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperPanelsContainer:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    const/high16 v1, 0x4100

    invoke-static {p0, v1}, Lcom/alibaba/adi/collie/util/DensityPixel;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->setPageMargin(I)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mIvPopupDialog:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mbtnGoBack:Landroid/widget/TextView;

    const v1, 0x7f0a0148

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mBtngoMarket:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mBtnDelConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 109
    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->setSelectNumber(I)V

    .line 110
    return-void
.end method

.method private initListeners()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 129
    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 162
    return-void
.end method

.method private initSeekBar()V
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->targetPageNum:I

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->setSeekbarProcsssToPageNum(I)V

    .line 172
    return-void
.end method

.method private initViewPager()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;-><init>(Landroid/content/Context;Ljava/lang/Boolean;Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$gridItemClickListener;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;

    .line 166
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->getPageSum()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->viewPagerPageSum:I

    .line 167
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperPanelsContainer:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 168
    return-void
.end method

.method private recoverAllStatus()V
    .locals 4

    .prologue
    .line 198
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->cacheUiStatusMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 199
    .local v2, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->clearCacheMaps()V

    .line 205
    return-void

    .line 200
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 201
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 202
    .local v0, bufferIndex:I
    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->recoverDefaultStatus(I)V

    goto :goto_0
.end method

.method private recoverDefaultStatus(I)V
    .locals 3
    .parameter "bufferIndex"

    .prologue
    .line 279
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->cacheUiStatusMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    .line 280
    .local v0, lastUiStatus:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->changeStatus(Landroid/content/Context;ILcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;)Ljava/lang/Boolean;

    .line 281
    return-void
.end method

.method private saveSelectedStatus(ILcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;)V
    .locals 2
    .parameter "bufferIndex"
    .parameter "curUiStatus"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->cacheUiStatusMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method private setSeekBarVisible()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->getPageSum()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->viewPagerPageSum:I

    .line 176
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->viewPagerPageSum:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setVisibility(I)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSeekbarProcsssToPageNum(I)V
    .locals 2
    .parameter "pageNum"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->viewPagerPageSum:I

    invoke-static {v0, p1, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->setSeekBarProcessToPage(Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;II)V

    .line 185
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->finish()V

    .line 62
    const/high16 v0, 0x7f04

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->overridePendingTransition(II)V

    .line 63
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->recoverAllStatus()V

    .line 194
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->finish()V

    .line 195
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 210
    :sswitch_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->recoverAllStatus()V

    .line 211
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->finish()V

    goto :goto_0

    .line 214
    :sswitch_1
    const-string v1, "TryToDeleteWallpaper"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->cacheUiStatusMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 216
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    const v2, 0x7f0200d6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 218
    const v2, 0x7f0a0141

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 219
    const v2, 0x7f0a0142

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->selectDelNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 220
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a009f

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    new-instance v2, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$3;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)V

    .line 220
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    const v1, 0x7f0a00a0

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    new-instance v2, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$4;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)V

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 208
    :sswitch_data_0
    .sparse-switch
        0x7f080009 -> :sswitch_0
        0x7f0800a2 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 77
    iput-object p0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mContext:Landroid/content/Context;

    .line 78
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->setContentView(I)V

    .line 80
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->initContentView()V

    .line 81
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->initViewPager()V

    .line 82
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->initListeners()V

    .line 83
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->initSeekBar()V

    .line 85
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperPanelsContainer:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mbtnGoBack:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->setSeekBarVisible()V

    .line 90
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onDestroy()V

    .line 73
    return-void
.end method

.method public onGridItemClick(Landroid/view/View;)V
    .locals 9
    .parameter "curview"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;

    .line 246
    .local v1, curTag:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->getBufferIndex()I

    move-result v0

    .line 247
    .local v0, bufferIndex:I
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getTargetUpDatesStatus(I)Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    move-result-object v2

    .local v2, curUiStatus:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;
    move-object v4, p1

    .line 249
    check-cast v4, Landroid/widget/ImageView;

    .line 250
    .local v4, view:Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 274
    :goto_0
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mBtnDelConfirm:Landroid/widget/Button;

    iget v8, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->selectDelNum:I

    if-lez v8, :cond_4

    :goto_1
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 276
    return-void

    .line 252
    :pswitch_0
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->getDelMode()Z

    move-result v3

    .line 254
    .local v3, isToDel:Z
    if-nez v3, :cond_2

    .line 255
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->mContext:Landroid/content/Context;

    .line 256
    sget-object v8, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->DEL:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    .line 255
    invoke-static {v5, v0, v8}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->changeStatus(Landroid/content/Context;ILcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 256
    if-eqz v5, :cond_0

    .line 257
    iget v5, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->selectDelNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->selectDelNum:I

    .line 258
    const v5, 0x7f020042

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    invoke-direct {p0, v0, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->saveSelectedStatus(ILcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;)V

    .line 260
    if-eqz v3, :cond_1

    move v5, v6

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->setDelMode(Ljava/lang/Boolean;)V

    .line 271
    :cond_0
    :goto_3
    iget v5, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->selectDelNum:I

    invoke-virtual {p0, v5}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->setSelectNumber(I)V

    goto :goto_0

    :cond_1
    move v5, v7

    .line 260
    goto :goto_2

    .line 265
    :cond_2
    const v5, 0x7f020018

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    iget v5, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->selectDelNum:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->selectDelNum:I

    .line 267
    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->recoverDefaultStatus(I)V

    .line 268
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->cacheUiStatusMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    if-eqz v3, :cond_3

    move v5, v6

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->setDelMode(Ljava/lang/Boolean;)V

    goto :goto_3

    :cond_3
    move v5, v7

    goto :goto_4

    .end local v3           #isToDel:Z
    :cond_4
    move v7, v6

    .line 274
    goto :goto_1

    .line 250
    :pswitch_data_0
    .packed-switch 0x7f080116
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onResume()V

    .line 68
    return-void
.end method

.method public setSelectNumber(I)V
    .locals 5
    .parameter "number"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->selectedText:Landroid/widget/TextView;

    const v1, 0x7f0a013f

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->getString(I)Ljava/lang/String;

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

    .line 189
    return-void
.end method
