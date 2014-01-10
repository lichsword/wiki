.class public Lcom/alibaba/adi/collie/ui/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/alibaba/adi/collie/ui/lock/IUnlockController;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;,
        Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;,
        Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;
    }
.end annotation


# static fields
.field private static final ANIM_MOVE_MODE_INTERPOLATION:I = 0x1

.field private static final DEFAUL_ANIM_MOVE_MODE:I = 0x1

.field private static final DELAY_TIME_FOR_SCROLL:J = 0x1f4L

.field private static final FLAG_HOMEKEY_DISPATCHED:I = -0x80000000

.field public static final INTENT_EXTRA_EXIT:Ljava/lang/String; = "exit"

.field public static final INTENT_EXTRA_FROM:Ljava/lang/String; = "from"

.field public static MAX_SLIDE_DIFF:I = 0x0

.field private static final MSG_MOVE:I = 0x1

.field private static final MSG_SCROLL_PAGE:I = 0x4

.field private static final MSG_WALLPAPER_BMP_READY:I = 0x5

.field private static final SLIDE_AREA_HEIGHT:I = 0x30

.field public static SLIDE_AREA_HEIGHT_PIXEL:I = 0x0

.field public static final TAG:Ljava/lang/String; = null

.field private static final TOOLBOX_HEIGHT_DPI:I = 0x5f

.field public static TOOLBOX_HEIGHT_PIXEL:I

.field public static sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;


# instance fields
.field private final DEFAULT_PAGE_INDEX_VALUE:I

.field private final MAX_SLIDE_DIFF_PERCENT:F

.field private animMoveMode:I

.field private currentPagePosition:I

.field private density:F

.field private durationTime:J

.field private endDtentionTime:J

.field private mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

.field protected mBatteryImageView:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

.field private final mChooseWallpaperBroadcast:Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;

.field private mContainerLayout:Landroid/widget/FrameLayout;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private final mKeyguardBroadcastReceiver:Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;

.field private mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

.field private mLockLayout:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

.field private mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

.field protected mNetworkInfo:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

.field private mPageIndication:Lcom/alibaba/adi/collie/ui/view/PageIndication;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mShowStatusBar:Z

.field private final mSlideUnlock:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

.field protected mTinyTimeView:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

.field private mTopNavigationLayout:Landroid/widget/RelativeLayout;

.field private mUnlockArrow:Lcom/alibaba/adi/collie/ui/view/UnlockArrow;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private offsetY:F

.field private pm:Landroid/os/PowerManager;

.field private previousPagePosition:I

.field private screenHeight:I

.field private screenOffTimeout:I

.field private screenWidth:I

.field private startDtentionTime:J

.field private viewPagerState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/adi/collie/ui/MainActivity;->MAX_SLIDE_DIFF:I

    .line 265
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 95
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mShowStatusBar:Z

    .line 105
    const/16 v0, 0x7530

    iput v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->screenOffTimeout:I

    .line 214
    iput v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->DEFAULT_PAGE_INDEX_VALUE:I

    .line 241
    iput v3, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->MAX_SLIDE_DIFF_PERCENT:F

    .line 284
    iput v3, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->density:F

    .line 294
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->animMoveMode:I

    .line 296
    iput v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->currentPagePosition:I

    .line 298
    iput v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->previousPagePosition:I

    .line 307
    new-instance v0, Lcom/alibaba/adi/collie/ui/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/MainActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mHandler:Landroid/os/Handler;

    .line 354
    new-instance v0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity;Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mKeyguardBroadcastReceiver:Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;

    .line 356
    new-instance v0, Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity;Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mChooseWallpaperBroadcast:Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;

    .line 358
    iput v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->viewPagerState:I

    .line 360
    new-instance v0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity;Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mSlideUnlock:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/MainActivity;[Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1004
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/MainActivity;->setWallpaper([Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$10(Lcom/alibaba/adi/collie/ui/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 989
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->changeWallpaper()V

    return-void
.end method

.method static synthetic access$11(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/ui/view/PageIndication;
    .locals 1
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPageIndication:Lcom/alibaba/adi/collie/ui/view/PageIndication;

    return-object v0
.end method

.method static synthetic access$12(Lcom/alibaba/adi/collie/ui/MainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 296
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->currentPagePosition:I

    return v0
.end method

.method static synthetic access$13(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$14(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/MainActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 292
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->offsetY:F

    return v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/MainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 282
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->screenHeight:I

    return v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/MainActivity;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->offsetY:F

    return-void
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mContainerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/MainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 281
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->screenWidth:I

    return v0
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/ui/MainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1114
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/MainActivity;->setBackgroundAlpha(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/ui/MainPagerAdapter;
    .locals 1
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/model/LockStateKeeper;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    return-object v0
.end method

.method private changeWallpaper()V
    .locals 3

    .prologue
    .line 990
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, "ruibo: changeWallpaper"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    new-instance v0, Lcom/alibaba/adi/collie/ui/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/MainActivity$5;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity;)V

    .line 1001
    .local v0, loadWallpaperBmpRunable:Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1002
    return-void
.end method

.method private checkAppOnSDCard()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1437
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/adi/collie/util/ApkUtil;->isInstallOnSDCard(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1439
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1440
    .local v2, inflater:Landroid/view/LayoutInflater;
    new-instance v4, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    invoke-direct {v4, p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;-><init>(Landroid/content/Context;)V

    .line 1442
    .local v4, stepDialog:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    const v5, 0x7f03002d

    invoke-virtual {v2, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1443
    .local v3, step1View:Landroid/view/View;
    const v5, 0x7f0800d8

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1444
    .local v0, contentTextView:Landroid/widget/TextView;
    const v5, 0x7f080023

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1445
    .local v1, imageView:Landroid/widget/ImageView;
    const v5, 0x7f0a017d

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1446
    const v5, 0x7f0201af

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1448
    const v5, 0x7f0a017e

    invoke-virtual {v4, v5}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setTitleEx(I)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setView(Landroid/view/View;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    move-result-object v5

    .line 1449
    const v6, 0x7f0a012b

    new-instance v7, Lcom/alibaba/adi/collie/ui/MainActivity$6;

    invoke-direct {v7, p0, v4}, Lcom/alibaba/adi/collie/ui/MainActivity$6;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity;Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)V

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    move-result-object v5

    .line 1458
    const v6, 0x7f0a00a0

    invoke-virtual {v5, v6, v8}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->show()V

    .line 1460
    .end local v0           #contentTextView:Landroid/widget/TextView;
    .end local v1           #imageView:Landroid/widget/ImageView;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #step1View:Landroid/view/View;
    .end local v4           #stepDialog:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;
    :cond_0
    return-void
.end method

.method private hideView(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "isAnim"

    .prologue
    const/4 v2, 0x4

    .line 623
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 624
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 625
    if-eqz p2, :cond_0

    .line 626
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 627
    .local v0, putAm:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 628
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 631
    .end local v0           #putAm:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private initContentData()V
    .locals 5

    .prologue
    .line 909
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-direct {p0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->setViewPagerWithAndroidVer(Lcom/alibaba/adi/collie/ui/MainPagerAdapter;)V

    .line 910
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 911
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 912
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 914
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 916
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    const-string v2, "home"

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getPositionByTag(Ljava/lang/String;)I

    move-result v0

    .line 917
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 918
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 919
    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->pageSelected(I)V

    .line 922
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPageIndication:Lcom/alibaba/adi/collie/ui/view/PageIndication;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    const-string v4, "home"

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/adi/collie/ui/view/PageIndication;->initData(II)V

    .line 923
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPageIndication:Lcom/alibaba/adi/collie/ui/view/PageIndication;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getHomePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/view/PageIndication;->change(I)V

    .line 924
    return-void
.end method

.method private initContentView()V
    .locals 3

    .prologue
    .line 887
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mContainerLayout:Landroid/widget/FrameLayout;

    .line 889
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockLayout:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    .line 890
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockLayout:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->setMainActivity(Lcom/alibaba/adi/collie/ui/MainActivity;)V

    .line 891
    const v0, 0x7f0801bf

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mTopNavigationLayout:Landroid/widget/RelativeLayout;

    .line 892
    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mBatteryImageView:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    .line 893
    const v0, 0x7f0801c2

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mNetworkInfo:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    .line 894
    const v0, 0x7f0801c0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mTinyTimeView:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    .line 895
    const v0, 0x7f0801c1

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/PageIndication;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPageIndication:Lcom/alibaba/adi/collie/ui/view/PageIndication;

    .line 896
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPageIndication:Lcom/alibaba/adi/collie/ui/view/PageIndication;

    const v1, 0x7f02009f

    .line 897
    const v2, 0x7f0200a0

    .line 896
    invoke-virtual {v0, p0, v1, v2}, Lcom/alibaba/adi/collie/ui/view/PageIndication;->init(Landroid/content/Context;II)V

    .line 899
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/UnlockArrow;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mUnlockArrow:Lcom/alibaba/adi/collie/ui/view/UnlockArrow;

    .line 900
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    sput-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    .line 902
    const/16 v0, 0xbf

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->setBackgroundAlpha(I)V

    .line 903
    return-void
.end method

.method private initForKeyGuard()V
    .locals 2

    .prologue
    .line 1035
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1044
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1066
    const-string v0, "adi_lock_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    .line 1067
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/CoreApplication;->initKeyGuardService(Landroid/content/Intent;)V

    .line 1068
    return-void
.end method

.method private initScreenSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1071
    iput p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->screenWidth:I

    .line 1072
    iput p2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->screenHeight:I

    .line 1074
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getDensity(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->density:F

    .line 1075
    sget-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "density: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->screenHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/alibaba/adi/collie/ui/MainActivity;->MAX_SLIDE_DIFF:I

    .line 1078
    const/high16 v0, 0x4240

    sget v1, Lcom/alibaba/adi/collie/CoreApplication;->sDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/alibaba/adi/collie/ui/MainActivity;->SLIDE_AREA_HEIGHT_PIXEL:I

    .line 1079
    const/high16 v0, 0x42be

    sget v1, Lcom/alibaba/adi/collie/CoreApplication;->sDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/alibaba/adi/collie/ui/MainActivity;->TOOLBOX_HEIGHT_PIXEL:I

    .line 1080
    return-void
.end method

.method private initWallpaper()V
    .locals 3

    .prologue
    .line 975
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, "ruibo: initWallpaper"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    new-instance v0, Lcom/alibaba/adi/collie/ui/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/MainActivity$4;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity;)V

    .line 986
    .local v0, loadWallpaperBmpRunable:Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 987
    return-void
.end method

.method private pageSelected(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 807
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getHomePosition()I

    move-result v2

    .line 809
    .local v2, posOfHomePage:I
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    iget v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->currentPagePosition:I

    invoke-virtual {v4, v5}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->onPageSelected(I)V

    .line 811
    if-ne p1, v2, :cond_4

    .line 813
    iget-boolean v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mShowStatusBar:Z

    if-nez v4, :cond_0

    .line 814
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mTinyTimeView:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->hide()V

    .line 837
    :cond_0
    :goto_0
    iget v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->previousPagePosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 838
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    iget v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->previousPagePosition:I

    invoke-virtual {v4, v5}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getTagByPosition(I)Ljava/lang/String;

    move-result-object v3

    .line 839
    .local v3, previousPageTag:Ljava/lang/String;
    const-string v4, "taobao"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 841
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/CoreApplication;->getNotificationInfo()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->getTaobaoNotifyNum()I

    move-result v4

    if-lez v4, :cond_1

    .line 842
    const-string v4, "com.adi.collie.TAOBAO_NUM_CHANGE"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;->send(Ljava/lang/String;I)V

    .line 847
    .end local v3           #previousPageTag:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPageIndication:Lcom/alibaba/adi/collie/ui/view/PageIndication;

    if-eqz v4, :cond_2

    .line 848
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPageIndication:Lcom/alibaba/adi/collie/ui/view/PageIndication;

    invoke-virtual {v4, p1}, Lcom/alibaba/adi/collie/ui/view/PageIndication;->change(I)V

    .line 850
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/alibaba/adi/collie/ui/MainActivity;->utPageCtrlClicked(Z)V

    .line 851
    iput p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->previousPagePosition:I

    .line 854
    :cond_2
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    iget v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->currentPagePosition:I

    invoke-virtual {v4, v5}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getTagByPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, currentPageTag:Ljava/lang/String;
    const-string v4, "system"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 863
    invoke-static {}, Lcom/alibaba/adi/collie/util/NotificationHelper;->resetSmsCallNotify()V

    .line 865
    :cond_3
    return-void

    .line 819
    .end local v0           #currentPageTag:Ljava/lang/String;
    :cond_4
    iget v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->previousPagePosition:I

    if-ne v4, v2, :cond_0

    .line 821
    iget-boolean v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mShowStatusBar:Z

    if-nez v4, :cond_5

    .line 822
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mTinyTimeView:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->show()V

    .line 826
    :cond_5
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mTopNavigationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 827
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getHomeFragmentReference()Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    move-result-object v1

    .line 828
    .local v1, home:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;
    if-eqz v1, :cond_0

    .line 829
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->showContent()V

    goto :goto_0
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 868
    const-string v1, "exit"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 869
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, "ruibo: received exit intent"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->finish()V

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    const-string v1, "from"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, from:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 876
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, "ruibo: launched from desktop shortcut"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->checkAppOnSDCard()V

    .line 878
    const-string v1, "desktop"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 880
    :cond_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    const-string v1, "boot"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setBackgroundAlpha(I)V
    .locals 3
    .parameter "alpha"

    .prologue
    const/4 v2, 0x0

    .line 1115
    const v1, 0x7f080057

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1116
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1120
    if-eqz v0, :cond_0

    .line 1123
    invoke-static {p1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1124
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method private setStatusBarVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 928
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 929
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 930
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 936
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 938
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 940
    return-void

    .line 933
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 934
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private setViewPagerWithAndroidVer(Lcom/alibaba/adi/collie/ui/MainPagerAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 960
    const v2, 0x7f08005a

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    .line 961
    .local v1, viewPagerBounce:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;
    const v2, 0x7f08005b

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 962
    .local v0, viewPager:Landroid/support/v4/view/ViewPager;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 963
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 964
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 965
    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 966
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getHomePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->setDefaultPagerIndex(I)V

    .line 972
    :goto_0
    return-void

    .line 968
    :cond_0
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 969
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 970
    invoke-virtual {v1, v5}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->setVisibility(I)V

    goto :goto_0
.end method

.method private setWallpaper([Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "bitmaps"

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1005
    sget-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    if-nez v0, :cond_0

    .line 1032
    :goto_0
    return-void

    .line 1008
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 1010
    sget-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    aget-object v1, p1, v3

    aget-object v2, p1, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getHomeFragmentReference()Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1016
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getHomeFragmentReference()Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->ismPushCenterViewHasShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1017
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "[blur] set bg to blur when setWallPaper"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    sget-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    invoke-virtual {v0, v4}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setFgBitmapBlur(Z)V

    .line 1021
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->isCurrentHomePage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1022
    sget-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    invoke-virtual {v0, v3, v3}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setBlurBitmapAlpha(II)V

    goto :goto_0

    .line 1024
    :cond_3
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->currentPagePosition:I

    if-nez v0, :cond_4

    .line 1026
    sget-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    invoke-virtual {v0, v5, v4}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setBlurBitmapAlpha(II)V

    goto :goto_0

    .line 1028
    :cond_4
    sget-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    const/4 v1, -0x1

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setBlurBitmapAlpha(II)V

    goto :goto_0
.end method

.method private showView(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "isAnim"

    .prologue
    .line 608
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 610
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 611
    .local v0, putAm:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 612
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 614
    .end local v0           #putAm:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private utPageCtrlClicked(Z)V
    .locals 6
    .parameter "flag"

    .prologue
    const-wide/16 v4, -0x1

    .line 943
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->previousPagePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->startDtentionTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 944
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->endDtentionTime:J

    .line 945
    iget-wide v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->endDtentionTime:J

    iget-wide v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->startDtentionTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->durationTime:J

    .line 946
    const v0, 0x13880

    .line 947
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    iget v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->previousPagePosition:I

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getTagByPosition(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->durationTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 946
    invoke-static {v0, v1, v2}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTAdiCommitEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 952
    :cond_0
    if-eqz p1, :cond_1

    .line 953
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->startDtentionTime:J

    .line 957
    :goto_0
    return-void

    .line 955
    :cond_1
    iput-wide v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->startDtentionTime:J

    goto :goto_0
.end method


# virtual methods
.method public executeUnlockTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockLayout:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockLayout:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockLayout:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    invoke-virtual {v0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mSlideUnlock:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

    invoke-virtual {v0, p1}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->executeTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public getCurrentAnimMoveMode()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->animMoveMode:I

    return v0
.end method

.method public getMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mContainerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public hideViewsOnLockShow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 634
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->hideView(Landroid/view/View;Z)V

    .line 635
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mTopNavigationLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->hideView(Landroid/view/View;Z)V

    .line 636
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mUnlockArrow:Lcom/alibaba/adi/collie/ui/view/UnlockArrow;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->hideView(Landroid/view/View;Z)V

    .line 637
    return-void
.end method

.method public hideViewsOnToolboxShow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 603
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mTopNavigationLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->hideView(Landroid/view/View;Z)V

    .line 604
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mUnlockArrow:Lcom/alibaba/adi/collie/ui/view/UnlockArrow;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->hideView(Landroid/view/View;Z)V

    .line 605
    return-void
.end method

.method public isCurrentHomePage()Z
    .locals 2

    .prologue
    .line 505
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->currentPagePosition:I

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getHomePosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentJokePage()Z
    .locals 2

    .prologue
    .line 513
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->currentPagePosition:I

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getJokePosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentNewsPage()Z
    .locals 2

    .prologue
    .line 509
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->currentPagePosition:I

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getNewsPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewPagerBusing()Z
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->viewPagerState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 109
    sget-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "xhh: MainActivity onCreate"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v9, Lcom/alibaba/adi/collie/util/PerfUtil;

    invoke-direct {v9}, Lcom/alibaba/adi/collie/util/PerfUtil;-><init>()V

    .line 112
    .local v9, perf:Lcom/alibaba/adi/collie/util/PerfUtil;
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const-string v0, "super"

    invoke-virtual {v9, v0}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->initForKeyGuard()V

    .line 116
    const-string v0, "flags"

    invoke-virtual {v9, v0}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/ApkUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v1, "app_update_first_launcher_key"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    if-nez v0, :cond_1

    .line 119
    const-string v0, "app_update_first_launcher_key"

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/alibaba/adi/collie/ui/UserGuideActivity;

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v10, startUserGuideIntent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v10}, Lcom/alibaba/adi/collie/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->shortcutExists(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/adi/collie/ui/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/MainActivity$2;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity;)V

    .line 137
    const-wide/16 v2, 0x12c

    .line 126
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    .end local v10           #startUserGuideIntent:Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/ui/weather/DBManager;->deleteOldCityDB()V

    .line 141
    const-string v0, "app_update_first_launcher_key"

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/ApkUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_1
    const-string v0, "first boot check: show user guide / add desktop shortcut"

    invoke-virtual {v9, v0}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 147
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->setContentView(I)V

    .line 148
    const-string v0, "setContentView"

    invoke-virtual {v9, v0}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    aget v0, v0, v11

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->initScreenSize(II)V

    .line 153
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->initContentView()V

    .line 154
    const-string v0, "initContentView"

    invoke-virtual {v9, v0}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 157
    new-instance v6, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-direct {v6, p0}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity;)V

    .line 158
    .local v6, context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockLayout:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    invoke-virtual {v6, v0}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->setLockLayout(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V

    .line 159
    new-instance v0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    .line 160
    const-string v0, "init adapter"

    invoke-virtual {v9, v0}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->initContentData()V

    .line 163
    const-string v0, "initContentData"

    invoke-virtual {v9, v0}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->initWallpaper()V

    .line 166
    const-string v0, "init Wallpaper"

    invoke-virtual {v9, v0}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->initUT(Landroid/content/Context;)V

    .line 169
    const-string v0, "init WDM"

    invoke-virtual {v9, v0}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 170
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->getSimpleActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTPageCreate(Ljava/lang/String;)V

    .line 172
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v8, filter:Landroid/content/IntentFilter;
    const-string v0, "com.alibaba.adi.collie.SCREEN_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v0, "com.alibaba.adi.collie.SCREEN_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v0, "com.alibaba.adi.collie.INIT_PAGER"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mKeyguardBroadcastReceiver:Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/alibaba/adi/collie/ui/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    const-string v0, "register keyguard broadcast receiver"

    invoke-virtual {v9, v0}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->screenOffTimeout:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->pm:Landroid/os/PowerManager;

    .line 187
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->pm:Landroid/os/PowerManager;

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 188
    new-instance v0, Lcom/alibaba/adi/collie/ui/MainActivity$3;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->screenOffTimeout:I

    int-to-long v2, v1

    iget v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->screenOffTimeout:I

    int-to-long v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/adi/collie/ui/MainActivity$3;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity;JJ)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 201
    const-string v0, "init timer"

    invoke-virtual {v9, v0}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/CoreApplication;->getNotificationInfo()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v0

    .line 204
    const-string v1, "taobao_logistics"

    invoke-static {v1, v11}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;I)I

    move-result v1

    .line 203
    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->setTaobaoNotifyNum(I)V

    .line 206
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->processIntent(Landroid/content/Intent;)V

    .line 210
    :cond_2
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    .line 211
    invoke-virtual {v9}, Lcom/alibaba/adi/collie/util/PerfUtil;->close()V

    .line 212
    return-void

    .line 181
    :catch_0
    move-exception v7

    .line 183
    .local v7, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    .line 779
    sget-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "xhh: MainActivity onDestroy"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mKeyguardBroadcastReceiver:Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 782
    invoke-static {}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTUninit()V

    .line 784
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/LocationUtil;->destroyLocationManager(Lcom/amap/api/location/LocationManagerProxy;)V

    .line 791
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    .line 793
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 794
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 798
    if-eqz p1, :cond_0

    .line 799
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/MainActivity;->processIntent(Landroid/content/Intent;)V

    .line 801
    :cond_0
    const-string v0, "home"

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->scrollPage(Ljava/lang/String;)V

    .line 802
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 803
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 9
    .parameter "state"

    .prologue
    const/16 v8, 0xff

    const/4 v7, 0x0

    .line 364
    iput p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->viewPagerState:I

    .line 366
    packed-switch p1, :pswitch_data_0

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 368
    :pswitch_0
    sget-object v5, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v6, "[Page Scroll]dragging..."

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :pswitch_1
    sget-object v5, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v6, "[Page Scroll]idle..."

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 375
    .local v0, current:I
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getJokePosition()I

    move-result v5

    if-ne v0, v5, :cond_2

    .line 376
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getJokeFragment()Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v1

    .line 377
    .local v1, jokeFragment:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_1

    .line 378
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->lazyInit()V

    .line 397
    .end local v1           #jokeFragment:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    :cond_1
    :goto_1
    const-string v5, "home"

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v6, v0}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getTagByPosition(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 398
    sget-object v5, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    invoke-virtual {v5, v7, v7}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setBlurBitmapAlpha(II)V

    .line 408
    :goto_2
    iget v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->previousPagePosition:I

    iget v6, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->currentPagePosition:I

    if-eq v5, v6, :cond_0

    .line 409
    iget v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->currentPagePosition:I

    invoke-direct {p0, v5}, Lcom/alibaba/adi/collie/ui/MainActivity;->pageSelected(I)V

    goto :goto_0

    .line 380
    :cond_2
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getNewsPosition()I

    move-result v5

    if-ne v0, v5, :cond_3

    .line 381
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getNewsFragment()Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v2

    .line 382
    .local v2, newsFragment:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_1

    .line 383
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->lazyInit()V

    goto :goto_1

    .line 385
    .end local v2           #newsFragment:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getTaoPosition()I

    move-result v5

    if-ne v0, v5, :cond_4

    .line 386
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getTaoFragment()Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    move-result-object v4

    .line 387
    .local v4, taobaoFragment:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_1

    .line 388
    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->lazyInit()V

    goto :goto_1

    .line 390
    .end local v4           #taobaoFragment:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;
    :cond_4
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getSysPositioin()I

    move-result v5

    if-ne v0, v5, :cond_1

    .line 391
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getSystemNoticeFragment()Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    move-result-object v3

    .line 392
    .local v3, systemNoticeFragment:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_1

    .line 393
    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->lazyInit()V

    goto :goto_1

    .line 400
    .end local v3           #systemNoticeFragment:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;
    :cond_5
    iget v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->currentPagePosition:I

    if-nez v5, :cond_6

    .line 402
    sget-object v5, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    const/4 v6, 0x1

    invoke-virtual {v5, v8, v6}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setBlurBitmapAlpha(II)V

    goto :goto_2

    .line 404
    :cond_6
    sget-object v5, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    const/4 v6, -0x1

    invoke-virtual {v5, v8, v6}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setBlurBitmapAlpha(II)V

    goto :goto_2

    .line 413
    .end local v0           #current:I
    :pswitch_2
    sget-object v5, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v6, "[Page Scroll]settling..."

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    const/high16 v3, 0x437f

    .line 423
    if-nez p1, :cond_1

    const/4 v1, 0x1

    .line 424
    .local v1, direction:I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getHomePosition()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 425
    mul-float v2, p2, v3

    float-to-int v0, v2

    .line 426
    .local v0, alpha:I
    sget-object v2, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setBlurBitmapAlpha(II)V

    .line 431
    .end local v0           #alpha:I
    :cond_0
    :goto_1
    return-void

    .line 423
    .end local v1           #direction:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 427
    .restart local v1       #direction:I
    :cond_2
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getHomePosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 428
    const/high16 v2, 0x3f80

    sub-float/2addr v2, p2

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 429
    .restart local v0       #alpha:I
    sget-object v2, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setBlurBitmapAlpha(II)V

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 436
    iput p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->currentPagePosition:I

    .line 437
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 738
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 739
    sget-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "xhh: MainActivity onPause"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockLayout:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockLayout:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockLayout:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->hide(Z)V

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->reset()V

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mChooseWallpaperBroadcast:Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;->unregister()V

    .line 749
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mShowStatusBar:Z

    if-nez v0, :cond_4

    .line 750
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mBatteryImageView:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mBatteryImageView:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->getBatteryChangeReceiver()Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;->unregister()V

    .line 754
    :cond_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mTinyTimeView:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    if-eqz v0, :cond_3

    .line 755
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mTinyTimeView:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->getTimeChangeReceiver()Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;->unregister()V

    .line 757
    :cond_3
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mNetworkInfo:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    if-eqz v0, :cond_4

    .line 758
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mNetworkInfo:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->getConnectivityChangedReceiver()Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->unregister()V

    .line 762
    :cond_4
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_5

    .line 763
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 766
    :cond_5
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 767
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 770
    :cond_6
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->sendKeepLock()V

    .line 772
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->getSimpleActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTPageLeave(Ljava/lang/String;)V

    .line 773
    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/ui/MainActivity;->utPageCtrlClicked(Z)V

    .line 774
    return-void
.end method

.method protected onResume()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 642
    sget-object v2, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v3, "xhh on resume"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    new-instance v1, Lcom/alibaba/adi/collie/util/PerfUtil;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/util/PerfUtil;-><init>()V

    .line 644
    .local v1, perf:Lcom/alibaba/adi/collie/util/PerfUtil;
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 645
    const-string v2, "super"

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 646
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 649
    :cond_0
    const-string v2, "show_statusbar"

    invoke-static {v2, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mShowStatusBar:Z

    .line 650
    iget-boolean v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mShowStatusBar:Z

    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/ui/MainActivity;->setStatusBarVisible(Z)V

    .line 651
    const-string v2, "show/hideStatusBar"

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 653
    iget-boolean v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mShowStatusBar:Z

    if-nez v2, :cond_8

    .line 654
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mBatteryImageView:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    if-eqz v2, :cond_1

    .line 655
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mBatteryImageView:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->getBatteryChangeReceiver()Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;->register()V

    .line 656
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mBatteryImageView:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    invoke-virtual {v2, v4}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->setVisibility(I)V

    .line 658
    :cond_1
    const-string v2, "register battery receiver"

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 660
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mTinyTimeView:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    if-eqz v2, :cond_2

    .line 661
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mTinyTimeView:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->getTimeChangeReceiver()Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;->register()V

    .line 663
    :cond_2
    const-string v2, "register time change receiver"

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 665
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mNetworkInfo:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    if-eqz v2, :cond_3

    .line 666
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mNetworkInfo:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->getConnectivityChangedReceiver()Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->register()V

    .line 668
    :cond_3
    const-string v2, "register network change receiver"

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 675
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_4

    .line 676
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 678
    :cond_4
    const-string v2, "dim system soft navigation key"

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 685
    :goto_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mChooseWallpaperBroadcast:Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;->register()V

    .line 686
    const-string v2, "register wallpaper receiver"

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 688
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->getSimpleActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTPageEnter(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->onUserInteraction()V

    .line 690
    const-string v2, "onUserInteraction"

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 693
    const v2, 0x7f0801ce

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;

    .line 694
    .local v0, flash:Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;
    if-eqz v0, :cond_5

    .line 695
    invoke-static {}, Lcom/alibaba/adi/collie/util/FlashLight;->getInstance()Lcom/alibaba/adi/collie/util/FlashLight;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/util/FlashLight;->isActive()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;->setChecked(Z)V

    .line 704
    :cond_5
    const-string v2, "reset flashlight && alpha"

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 706
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 707
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mSlideUnlock:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

    #calls: Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->resetPosition()V
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->access$5(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)V

    .line 708
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mTopNavigationLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v4}, Lcom/alibaba/adi/collie/ui/MainActivity;->showView(Landroid/view/View;Z)V

    .line 709
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mUnlockArrow:Lcom/alibaba/adi/collie/ui/view/UnlockArrow;

    invoke-direct {p0, v2, v4}, Lcom/alibaba/adi/collie/ui/MainActivity;->showView(Landroid/view/View;Z)V

    .line 712
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->cancelKeepLock()V

    .line 714
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    invoke-static {}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getInstance()Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->isDefaultLauncher()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->setEnabled(Ljava/lang/Boolean;)V

    .line 716
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_6

    .line 721
    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->isSlideUnlockMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 723
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 730
    :cond_6
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/util/PerfUtil;->close()V

    .line 731
    const-string v2, "STARTTIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    iget v3, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->previousPagePosition:I

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getTagByPosition(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 733
    invoke-direct {p0, v6}, Lcom/alibaba/adi/collie/ui/MainActivity;->utPageCtrlClicked(Z)V

    .line 734
    :cond_7
    return-void

    .line 680
    .end local v0           #flash:Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;
    :cond_8
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mTinyTimeView:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    invoke-virtual {v2, v5}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->setVisibility(I)V

    .line 681
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mBatteryImageView:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    invoke-virtual {v2, v5}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->setVisibility(I)V

    .line 682
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mNetworkInfo:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    invoke-virtual {v2, v5}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 726
    .restart local v0       #flash:Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onUnlocked()V
    .locals 3

    .prologue
    .line 1101
    const-string v1, "Unlock"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 1102
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, "xhh: moveTaskToBack"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->moveTaskToBack(Z)Z

    move-result v0

    .line 1106
    .local v0, ret:Z
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->setLockState(Ljava/lang/Boolean;)V

    .line 1108
    if-nez v0, :cond_0

    .line 1109
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, "xhh: moveTaskToBack returned false, try finish()"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->finish()V

    .line 1112
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 446
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserInteraction()V

    .line 447
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 449
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 450
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 454
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .parameter "hasFocus"

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 459
    if-nez p1, :cond_0

    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->isSlideUnlockMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 464
    :try_start_0
    const-string v4, "statusbar"

    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 465
    .local v3, service:Ljava/lang/Object;
    const-string v4, "android.app.StatusBarManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 467
    .local v1, manager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_2

    .line 468
    const-string v4, "collapsePanels"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 472
    .local v2, method:Ljava/lang/reflect/Method;
    :goto_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 484
    .end local v1           #manager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #service:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    if-nez v4, :cond_1

    .line 485
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v4}, Lcom/alibaba/adi/collie/util/LocationUtil;->initLocationManager(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    .line 488
    :cond_1
    return-void

    .line 470
    .restart local v1       #manager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #service:Ljava/lang/Object;
    :cond_2
    :try_start_1
    const-string v4, "collapse"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .restart local v2       #method:Ljava/lang/reflect/Method;
    goto :goto_0

    .line 473
    .end local v1           #manager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #service:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 474
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 475
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 476
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 477
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 478
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 479
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 480
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public scrollPage(Ljava/lang/String;)V
    .locals 5
    .parameter "tag"

    .prologue
    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, position:I
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    if-eqz v2, :cond_0

    .line 552
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v2, p1}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getPositionByTag(Ljava/lang/String;)I

    move-result v1

    .line 555
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 556
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 557
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 558
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 559
    return-void
.end method

.method public setCurrentAnimMoveMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 546
    iput p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->animMoveMode:I

    .line 547
    return-void
.end method

.method public showViewsOnLockHide()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 617
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->showView(Landroid/view/View;Z)V

    .line 618
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mTopNavigationLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->showView(Landroid/view/View;Z)V

    .line 619
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mUnlockArrow:Lcom/alibaba/adi/collie/ui/view/UnlockArrow;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->showView(Landroid/view/View;Z)V

    .line 620
    return-void
.end method

.method public showViewsOnToolboxHide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 598
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mTopNavigationLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->showView(Landroid/view/View;Z)V

    .line 599
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mUnlockArrow:Lcom/alibaba/adi/collie/ui/view/UnlockArrow;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->showView(Landroid/view/View;Z)V

    .line 600
    return-void
.end method

.method public slideOut()V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mSlideUnlock:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->slideOut()V

    .line 595
    return-void
.end method

.method public toggleLockStateKeeper(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->setLockState(Ljava/lang/Boolean;)V

    .line 569
    :cond_0
    return-void
.end method

.method public unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V
    .locals 4
    .parameter "nextAction"

    .prologue
    .line 1088
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1089
    .local v0, currentItem:I
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v3, v0}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getFragmentByPosition(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1091
    .local v1, fragment:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/alibaba/adi/collie/ui/lock/IUnlockController;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 1092
    check-cast v2, Lcom/alibaba/adi/collie/ui/lock/IUnlockController;

    .line 1093
    .local v2, unlockFragment:Lcom/alibaba/adi/collie/ui/lock/IUnlockController;
    invoke-interface {v2, p1}, Lcom/alibaba/adi/collie/ui/lock/IUnlockController;->unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    .line 1095
    .end local v2           #unlockFragment:Lcom/alibaba/adi/collie/ui/lock/IUnlockController;
    :cond_0
    return-void
.end method
