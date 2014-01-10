.class public Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;
.super Landroid/widget/RelativeLayout;
.source "LockLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$LockViewGestureListener;,
        Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I = null

.field private static final LOCK_MODE_HIDE:I = 0x2

.field private static final LOCK_MODE_SHOW:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private firstInit:Z

.field private intentHide:Z

.field private isDoActionDown:Z

.field private isIntentHideWithGesture:Z

.field private mCurrentContainerHeight:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsSettled:Z

.field private mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

.field private mLockNumLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

.field private final mLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

.field private mLockPatternLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

.field private final mLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

.field private mLockViewMode:I

.field private mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

.field private mOldHeight:I

.field private mOnEventListener:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;

.field private mScreenHeight:I

.field private mainActivityRef:Lcom/alibaba/adi/collie/ui/MainActivity;

.field private mheight:I

.field private mlockLayoutHeight:I

.field private mlockLayoutWidth:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->values()[Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->NUMBER:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->PATTERN:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->SLIDE:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockViewMode:I

    .line 47
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mIsSettled:Z

    .line 70
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutHeight:I

    .line 71
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mCurrentContainerHeight:I

    .line 72
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutWidth:I

    .line 76
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isDoActionDown:Z

    .line 77
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isIntentHideWithGesture:Z

    .line 78
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->intentHide:Z

    .line 80
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->firstInit:Z

    .line 81
    new-instance v0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$1;-><init>(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

    .line 98
    new-instance v0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$2;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$2;-><init>(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    .line 140
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mheight:I

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOnEventListener:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;

    .line 317
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOldHeight:I

    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->initContentView(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockViewMode:I

    .line 47
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mIsSettled:Z

    .line 70
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutHeight:I

    .line 71
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mCurrentContainerHeight:I

    .line 72
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutWidth:I

    .line 76
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isDoActionDown:Z

    .line 77
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isIntentHideWithGesture:Z

    .line 78
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->intentHide:Z

    .line 80
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->firstInit:Z

    .line 81
    new-instance v0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$1;-><init>(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

    .line 98
    new-instance v0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$2;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$2;-><init>(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    .line 140
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mheight:I

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOnEventListener:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;

    .line 317
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOldHeight:I

    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->initContentView(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->doUnlockAnim()V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isIntentHideWithGesture:Z

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->intentHide:Z

    return-void
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 140
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mheight:I

    return v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutHeight:I

    return v0
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->hideCallback(Z)V

    return-void
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->showCallback()V

    return-void
.end method

.method static synthetic access$9(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOnEventListener:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;

    return-object v0
.end method

.method private actionDown(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mainActivityRef:Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/MainActivity;->isCurrentHomePage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    sget-object v2, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setHostId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    iget-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isDoActionDown:Z

    if-nez v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOnEventListener:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOnEventListener:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;

    invoke-interface {v2}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;->onMoveBegin()V

    .line 355
    :cond_0
    iput-boolean v4, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isDoActionDown:Z

    .line 357
    new-array v1, v6, [I

    iget v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutHeight:I

    neg-int v2, v2

    aput v2, v1, v5

    .line 358
    .local v1, range1:[I
    iget v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockViewMode:I

    if-ne v2, v4, :cond_1

    .line 359
    aput v5, v1, v5

    .line 360
    iget v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutHeight:I

    aput v2, v1, v4

    .line 361
    const-string v2, "msg"

    const-string v3, "\u6a21\u5f0fLOCK_MODE_SHOW"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v2, p1, p2, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onStartMove(FF[I)V

    .line 365
    return v4

    .line 342
    .end local v1           #range1:[I
    :cond_2
    :try_start_1
    sget-object v2, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setHostId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 346
    sget-object v2, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    const-string v3, "mainActivityRef is null"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private actionDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->actionDown(FF)Z

    move-result v0

    return v0
.end method

.method private chooseLockLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 520
    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v0

    .line 521
    .local v0, type:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;
    invoke-static {}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 540
    :goto_0
    return-void

    .line 523
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->setVisibility(I)V

    .line 524
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockNumLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    invoke-virtual {v1, v5}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->setVisibility(I)V

    .line 525
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockPatternLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    .line 526
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->setOnLockPatternStatusListener(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;)V

    .line 527
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockPatternLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v1, v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->startLockPatternStatusMachine(Z)V

    .line 528
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockPatternLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 531
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->setVisibility(I)V

    .line 532
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockNumLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->setVisibility(I)V

    .line 533
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockNumLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->setOnLockNumStatusListener(Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;)V

    .line 534
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockNumLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    invoke-virtual {v1, v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->setCheckLockPwd(Z)V

    .line 535
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockPatternLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v1, v5}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private creatMoveAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 371
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    if-eqz v3, :cond_0

    .line 406
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getTop()I

    move-result v3

    if-nez v3, :cond_1

    .line 377
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    .line 378
    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 377
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 379
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mheight:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 380
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v3, v2}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 384
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-array v0, v4, [Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    aput-object v3, v0, v5

    .line 385
    .local v0, containerList:[Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;
    new-array v1, v4, [Z

    aput-boolean v4, v1, v5

    .line 386
    .local v1, isRemeberLayout:[Z
    new-instance v3, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    .line 387
    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;-><init>([Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;I[Z)V

    .line 386
    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    .line 389
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    new-instance v4, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$3;

    invoke-direct {v4, p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$3;-><init>(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->setMoveCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$MoveCallback;)V

    goto :goto_0
.end method

.method private doUnlockAnim()V
    .locals 5

    .prologue
    .line 544
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    const/high16 v1, 0x40e0

    iget v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    .line 545
    const/4 v4, 0x5

    .line 544
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->inFreefall(FFFI)V

    .line 546
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    new-instance v1, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$6;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$6;-><init>(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->setFreefallCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;)V

    .line 561
    return-void
.end method

.method private hideCallback(Z)V
    .locals 4
    .parameter "cancelUnlock"

    .prologue
    const/4 v3, 0x0

    .line 498
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hide call back, mLockViewMode\u4e3aLOCK_MODE_HIDE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockViewMode:I

    .line 500
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->reCountViewSize()V

    .line 501
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->requestLayout()V

    .line 502
    iput-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isDoActionDown:Z

    .line 503
    iput-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mIsSettled:Z

    .line 504
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOnEventListener:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOnEventListener:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;

    invoke-interface {v0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;->onHideFinish(Z)V

    .line 508
    :cond_0
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    const-string v1, "hide call back, mLockViewMode\u4e3aLOCK_MODE_HIDE"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method private initContentView(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 51
    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 54
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Landroid/view/LayoutInflater;

    .line 55
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030090

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    const v2, 0x7f0801d2

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    .line 57
    const v2, 0x7f0801d4

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockPatternLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    .line 58
    const v2, 0x7f0801d5

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockNumLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    .line 59
    new-instance v2, Landroid/view/GestureDetector;

    .line 60
    new-instance v3, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$LockViewGestureListener;

    invoke-direct {v3, p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$LockViewGestureListener;-><init>(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 59
    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 61
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    .line 62
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 61
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    aget v2, v2, v4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 64
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v2, v1}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->setBackgroundResource(I)V

    .line 66
    return-void
.end method

.method private intentToHide(I)Z
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 436
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isIntentHideWithGesture:Z

    if-eqz v3, :cond_0

    .line 438
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isIntentHideWithGesture:Z

    .line 439
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->intentHide:Z

    .line 455
    :goto_0
    return v0

    .line 442
    :cond_0
    const/4 v0, 0x0

    .line 444
    .local v0, result:Z
    iget v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockViewMode:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 449
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutHeight:I

    div-int/lit8 v4, v4, 0xa

    if-le v3, v4, :cond_2

    move v0, v1

    .line 450
    :goto_1
    goto :goto_0

    .line 446
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutHeight:I

    div-int/lit8 v4, v4, 0xa

    if-ge v3, v4, :cond_1

    move v0, v1

    .line 447
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v2

    .line 446
    goto :goto_2

    :cond_2
    move v0, v2

    .line 449
    goto :goto_1

    .line 444
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onHeightChange()V
    .locals 2

    .prologue
    .line 312
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    .line 313
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 312
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 314
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mheight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 315
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    return-void
.end method

.method private playMoveEndAnimation(ZI)V
    .locals 5
    .parameter "isHide"
    .parameter "s"

    .prologue
    const/high16 v4, 0x3f80

    .line 460
    if-eqz p1, :cond_0

    .line 461
    const-string v0, "msg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u64cd\u4f5c\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    const/high16 v1, 0x40e0

    int-to-float v2, p2

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->inFreefall(FFFI)V

    .line 463
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    new-instance v1, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$4;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$4;-><init>(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->setFreefallCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;)V

    .line 494
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    const/high16 v1, 0x4316

    int-to-float v2, p2

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->inDecelerate(FFFI)V

    .line 480
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    new-instance v1, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$5;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$5;-><init>(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->setDecelerateCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;)V

    goto :goto_0
.end method

.method private showCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 512
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    const-string v1, "show call back, mLockViewMode\u4e3aLOCK_MODE_SHOW"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iput v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockViewMode:I

    .line 514
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->requestLayout()V

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isDoActionDown:Z

    .line 516
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mIsSettled:Z

    .line 517
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOnEventListener:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;

    .line 305
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mIsSettled:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 152
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 155
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 174
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    return v2

    .line 177
    :pswitch_0
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action down settled :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mIsSettled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation()Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->actionDown(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 184
    :pswitch_1
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action move settled : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mIsSettled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    const-string v4, "animation moving"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_2
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isDoActionDown:Z

    if-nez v3, :cond_3

    .line 192
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->actionDown(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 197
    :cond_3
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3, p1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 200
    :pswitch_2
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action up settled : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mIsSettled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isDoActionDown:Z

    if-nez v3, :cond_4

    .line 202
    const/4 v2, 0x0

    goto :goto_0

    .line 205
    :cond_4
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 206
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    const-string v4, "animation moving"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :cond_5
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onMoveEnd()V

    .line 213
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->getOffset()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->intentToHide(I)Z

    move-result v0

    .line 214
    .local v0, isHide:Z
    const/4 v1, 0x0

    .line 215
    .local v1, s:I
    if-eqz v0, :cond_6

    .line 216
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->getOffsetToEnd()I

    move-result v1

    .line 220
    :goto_1
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isHide : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", s : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-eqz v1, :cond_7

    .line 224
    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->playMoveEndAnimation(ZI)V

    goto/16 :goto_0

    .line 218
    :cond_6
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->getOffsetToStart()I

    move-result v1

    goto :goto_1

    .line 227
    :cond_7
    if-eqz v0, :cond_8

    .line 228
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    const-string v4, "\u76f4\u63a5\u8c03\u7528hide callback"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->hideCallback(Z)V

    goto/16 :goto_0

    .line 231
    :cond_8
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    const-string v4, "\u76f4\u63a5\u8c03\u7528show callback"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->showCallback()V

    goto/16 :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hide(Z)V
    .locals 4
    .parameter "smooth"

    .prologue
    const/4 v3, 0x1

    .line 288
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    const-string v2, "hide"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onStopAnimation()V

    .line 293
    :cond_0
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mheight:I

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 294
    .local v0, s:I
    if-eqz p1, :cond_1

    .line 295
    invoke-direct {p0, v3, v0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->playMoveEndAnimation(ZI)V

    .line 301
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onMoveTo(II)V

    .line 298
    invoke-direct {p0, v3}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->hideCallback(Z)V

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 322
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mheight:I

    .line 324
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mheight:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 325
    .local v0, sheightMeasureSpec:I
    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 327
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOldHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOldHeight:I

    iget v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mheight:I

    if-eq v1, v2, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->onHeightChange()V

    .line 330
    :cond_0
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mheight:I

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOldHeight:I

    .line 331
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 164
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mIsSettled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeEventListener()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOnEventListener:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;

    .line 309
    return-void
.end method

.method public setMainActivity(Lcom/alibaba/adi/collie/ui/MainActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mainActivityRef:Lcom/alibaba/adi/collie/ui/MainActivity;

    .line 145
    return-void
.end method

.method public show(Z)V
    .locals 3
    .parameter "smooth"

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->showViewLock()V

    .line 277
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutHeight:I

    .line 278
    .local v0, s:I
    if-eqz p1, :cond_0

    .line 279
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->playMoveEndAnimation(ZI)V

    .line 285
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onMoveTo(II)V

    .line 282
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->showCallback()V

    goto :goto_0
.end method

.method public showViewLock()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 245
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    .line 246
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setBlurAreaPosition(I)V

    .line 247
    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v0

    .line 248
    .local v0, type:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->NUMBER:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    if-ne v0, v1, :cond_3

    .line 249
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    const v2, 0x7f0801d5

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutHeight:I

    .line 253
    :cond_0
    :goto_0
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutHeight:I

    iget v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mheight:I

    if-le v1, v2, :cond_1

    .line 254
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mheight:I

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutHeight:I

    .line 256
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->firstInit:Z

    if-eqz v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutWidth:I

    .line 258
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mheight:I

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mCurrentContainerHeight:I

    .line 259
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mScreenHeight:I

    .line 260
    iput-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->firstInit:Z

    .line 264
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->chooseLockLayout()V

    .line 265
    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->setVisibility(I)V

    .line 266
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->creatMoveAnimation()V

    .line 268
    iput-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mIsSettled:Z

    .line 269
    return-void

    .line 250
    :cond_3
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->PATTERN:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    const v2, 0x7f0801d4

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutHeight:I

    goto :goto_0
.end method
