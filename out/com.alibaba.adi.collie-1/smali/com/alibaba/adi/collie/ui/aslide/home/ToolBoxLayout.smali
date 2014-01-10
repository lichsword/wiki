.class public Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;
.super Landroid/widget/RelativeLayout;
.source "ToolBoxLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;,
        Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$ToolBoxGestureListener;
    }
.end annotation


# static fields
.field private static HEIGHT_PIXEL_INT:I = 0x0

.field public static final TAG:Ljava/lang/String; = null

.field private static final TOOLBOX_MODE_HIDE:I = 0x2

.field private static final TOOLBOX_MODE_SHOW:I = 0x1


# instance fields
.field private firstInit:Z

.field private intentHide:Z

.field private isIntentHideWithGesture:Z

.field private isSettled:Z

.field private mCameraView:Landroid/widget/ImageView;

.field private mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsBeingDragged:Z

.field private mLightView:Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;

.field private mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

.field private mMoveHeight:I

.field private mScanView:Landroid/widget/ImageView;

.field private mSettingView:Landroid/widget/ImageView;

.field private mToolBoxHeight:I

.field private mToolboxContainer:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

.field private mToolboxViewMode:I

.field private mUpgradeImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->TAG:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    .line 40
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->isSettled:Z

    .line 195
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->firstInit:Z

    .line 251
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mIsBeingDragged:Z

    .line 277
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxViewMode:I

    .line 475
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->isIntentHideWithGesture:Z

    .line 476
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->intentHide:Z

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->initContentView(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    .line 40
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->isSettled:Z

    .line 195
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->firstInit:Z

    .line 251
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mIsBeingDragged:Z

    .line 277
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxViewMode:I

    .line 475
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->isIntentHideWithGesture:Z

    .line 476
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->intentHide:Z

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->initContentView(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 475
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->isIntentHideWithGesture:Z

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->intentHide:Z

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 252
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolBoxHeight:I

    return v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxContainer:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 253
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveHeight:I

    return v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->hideCallback()V

    return-void
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->showCallback()V

    return-void
.end method

.method private actionDown(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 256
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mIsBeingDragged:Z

    if-nez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;->onMoveBegin()V

    .line 262
    :cond_0
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mIsBeingDragged:Z

    .line 263
    const/4 v1, 0x2

    new-array v0, v1, [I

    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveHeight:I

    aput v1, v0, v2

    .line 264
    .local v0, range1:[I
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxViewMode:I

    if-ne v1, v2, :cond_1

    .line 265
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveHeight:I

    neg-int v1, v1

    aput v1, v0, v3

    .line 266
    aput v3, v0, v2

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onStartMove(FF[I)V

    .line 273
    return-void
.end method

.method private creatMoveAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 282
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    if-eqz v2, :cond_0

    .line 302
    :goto_0
    return-void

    .line 285
    :cond_0
    new-array v0, v3, [Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxContainer:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    aput-object v2, v0, v4

    .line 286
    .local v0, containerList:[Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;
    new-array v1, v3, [Z

    aput-boolean v3, v1, v4

    .line 287
    .local v1, isRemeberLayout:[Z
    new-instance v2, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;-><init>([Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;I[Z)V

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    .line 289
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    new-instance v3, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$1;

    invoke-direct {v3, p0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$1;-><init>(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->setMoveCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$MoveCallback;)V

    goto :goto_0
.end method

.method private hideCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    const-string v0, "msg"

    const-string v1, "mLockViewMode\u4e3aLOCK_MODE_HIDE"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mIsBeingDragged:Z

    .line 309
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxViewMode:I

    .line 310
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxContainer:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->reCountViewSize()V

    .line 311
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxContainer:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->requestLayout()V

    .line 313
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;->onHideFinish()V

    .line 317
    :cond_0
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->isSettled:Z

    .line 318
    return-void
.end method

.method private initContentView(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 57
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03008f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    const v1, 0x7f0801cc

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxContainer:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    .line 60
    const v1, 0x7f0801d0

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mSettingView:Landroid/widget/ImageView;

    .line 61
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mSettingView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v1, 0x7f0801ce

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mLightView:Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;

    .line 63
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mLightView:Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;

    invoke-virtual {v1, p0}, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v1, 0x7f0801cf

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mScanView:Landroid/widget/ImageView;

    .line 65
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mScanView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v1, 0x7f0801cd

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mCameraView:Landroid/widget/ImageView;

    .line 67
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mCameraView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f0801d1

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mUpgradeImageView:Landroid/widget/ImageView;

    .line 71
    sget v1, Lcom/alibaba/adi/collie/ui/MainActivity;->TOOLBOX_HEIGHT_PIXEL:I

    sput v1, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->HEIGHT_PIXEL_INT:I

    .line 73
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$ToolBoxGestureListener;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$ToolBoxGestureListener;-><init>(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 75
    return-void
.end method

.method private intentToHide(I)Z
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->isIntentHideWithGesture:Z

    if-eqz v3, :cond_0

    .line 334
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->isIntentHideWithGesture:Z

    .line 335
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->intentHide:Z

    .line 350
    :goto_0
    return v0

    .line 338
    :cond_0
    const/4 v0, 0x0

    .line 339
    .local v0, result:Z
    iget v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxViewMode:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 345
    :pswitch_0
    const/4 v3, -0x5

    if-ge p1, v3, :cond_2

    move v0, v1

    .line 346
    :goto_1
    goto :goto_0

    .line 341
    :pswitch_1
    iget v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveHeight:I

    div-int/lit8 v3, v3, 0x2

    if-ge p1, v3, :cond_1

    move v0, v1

    .line 342
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v2

    .line 341
    goto :goto_2

    :cond_2
    move v0, v2

    .line 345
    goto :goto_1

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private playMoveEndAnimation(ZI)V
    .locals 6
    .parameter "isHide"
    .parameter "s"

    .prologue
    const/high16 v5, 0x3f80

    .line 356
    if-eqz p1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    const/high16 v2, 0x420c

    int-to-float v3, p2

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->inDecelerate(FFFI)V

    .line 360
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    new-instance v2, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$2;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$2;-><init>(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->setDecelerateCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;)V

    .line 402
    :goto_0
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x5

    .line 383
    .local v0, direction:I
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    const/high16 v2, 0x41f0

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3, v5, v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->inDecelerate(FFFI)V

    .line 384
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    new-instance v2, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$3;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$3;-><init>(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->setDecelerateCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;)V

    goto :goto_0
.end method

.method private showCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 323
    const-string v0, "msg"

    const-string v1, "mLockViewMode\u4e3aLOCK_MODE_SHOW"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mIsBeingDragged:Z

    .line 325
    iput v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxViewMode:I

    .line 326
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxContainer:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->requestLayout()V

    .line 327
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->isSettled:Z

    .line 328
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    .line 406
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 97
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 100
    :pswitch_1
    const-string v0, "msg"

    const-string v1, "dispatchTouchEvent ACTION_MOVE"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 120
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    return v2

    .line 124
    :pswitch_0
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "aciton down settled : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->isSettled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation()Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->actionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 132
    :pswitch_1
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "aciton move settled : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->isSettled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->TAG:Ljava/lang/String;

    const-string v4, "playing animation"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mIsBeingDragged:Z

    if-nez v3, :cond_2

    .line 142
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->actionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3, p1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 150
    :pswitch_2
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mIsBeingDragged:Z

    if-nez v3, :cond_3

    .line 151
    const/4 v2, 0x0

    goto :goto_0

    .line 153
    :cond_3
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "aciton up settled : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->isSettled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 155
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->TAG:Ljava/lang/String;

    const-string v4, "playing animation"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_4
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onMoveEnd()V

    .line 166
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->getOffset()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->intentToHide(I)Z

    move-result v0

    .line 167
    .local v0, isHide:Z
    const/4 v1, 0x0

    .line 168
    .local v1, s:I
    if-eqz v0, :cond_5

    .line 169
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->getOffsetToStart()I

    move-result v1

    .line 175
    :goto_1
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "intentToHide : "

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

    .line 177
    if-eqz v1, :cond_6

    .line 179
    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->playMoveEndAnimation(ZI)V

    goto/16 :goto_0

    .line 172
    :cond_5
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->getOffsetToEnd()I

    move-result v1

    goto :goto_1

    .line 182
    :cond_6
    if-eqz v0, :cond_7

    .line 183
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->TAG:Ljava/lang/String;

    const-string v4, "\u76f4\u63a5\u8c03\u7528hideCallback"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->hideCallback()V

    goto/16 :goto_0

    .line 186
    :cond_7
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->TAG:Ljava/lang/String;

    const-string v4, "\u76f4\u63a5\u8c03\u7528showCallback"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->showCallback()V

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hide(Z)V
    .locals 3
    .parameter "smooth"

    .prologue
    .line 231
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->TAG:Ljava/lang/String;

    const-string v2, "hide"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onStopAnimation()V

    .line 236
    :cond_0
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolBoxHeight:I

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxContainer:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 237
    .local v0, s:I
    if-eqz p1, :cond_1

    .line 238
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->playMoveEndAnimation(ZI)V

    .line 246
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onMoveTo(II)V

    .line 241
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->TAG:Ljava/lang/String;

    const-string v2, "\u76f4\u63a5\u8c03\u7528hideCallback"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->hideCallback()V

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 414
    const-string v0, "msg"

    const-string v1, "click\u4e8b\u4ef6"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 417
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;->onCameraClick()V

    goto :goto_0

    .line 422
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;->onLightClick()V

    goto :goto_0

    .line 427
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;->onScanClick()V

    goto :goto_0

    .line 433
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;->onSettingClick()V

    goto :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x7f0801cd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 110
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->isSettled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public refreshUpgradeState()V
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mUpgradeImageView:Landroid/widget/ImageView;

    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v0}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->hasUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public removeEventListener()V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mEventListener:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;

    .line 410
    return-void
.end method

.method public show(Z)V
    .locals 3
    .parameter "smooth"

    .prologue
    .line 219
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveHeight:I

    .line 220
    .local v0, s:I
    if-eqz p1, :cond_0

    .line 221
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->playMoveEndAnimation(ZI)V

    .line 228
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onMoveTo(II)V

    .line 224
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->TAG:Ljava/lang/String;

    const-string v2, "\u76f4\u63a5\u8c03\u7528showCallback"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->showCallback()V

    goto :goto_0
.end method

.method public showViewLock()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setBlurAreaPosition(I)V

    .line 200
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->firstInit:Z

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxContainer:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    const v2, 0x7f0801cd

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 202
    .local v0, button:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxContainer:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolBoxHeight:I

    .line 203
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxContainer:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getPaddingBottom()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveHeight:I

    .line 204
    iput-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->firstInit:Z

    .line 207
    .end local v0           #button:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->setVisibility(I)V

    .line 208
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->creatMoveAnimation()V

    .line 209
    iput-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->isSettled:Z

    .line 210
    return-void
.end method
