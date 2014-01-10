.class Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideUnlock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$SlideUnlockGestureListener;
    }
.end annotation


# instance fields
.field private containerLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

.field private intentToUnlockByGesture:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMotionEventYList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

.field private final screenHeight:I

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/MainActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/MainActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1192
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->screenHeight:I

    .line 1194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMotionEventYList:Ljava/util/ArrayList;

    .line 1277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->intentToUnlockByGesture:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/MainActivity;Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1188
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMotionEventYList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1277
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->intentToUnlockByGesture:Z

    return-void
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)V
    .locals 0
    .parameter

    .prologue
    .line 1330
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->showCallback()V

    return-void
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)V
    .locals 0
    .parameter

    .prologue
    .line 1337
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->hideCallback()V

    return-void
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)V
    .locals 0
    .parameter

    .prologue
    .line 1342
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->resetPosition()V

    return-void
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)Lcom/alibaba/adi/collie/ui/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    return-object v0
.end method

.method private actionDown(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1353
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->createMoveAnimation()V

    .line 1354
    const/4 v1, 0x2

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->screenHeight:I

    neg-int v2, v2

    aput v2, v0, v1

    .line 1355
    .local v0, range:[I
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    if-eqz v1, :cond_0

    .line 1356
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v1, p1, p2, v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onStartMove(FF[I)V

    .line 1359
    :cond_0
    return-void
.end method

.method private createMoveAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1369
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mContainerLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$5(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->containerLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    .line 1370
    new-array v0, v3, [Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->containerLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    aput-object v2, v0, v4

    .line 1371
    .local v0, containerList:[Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;
    new-array v1, v3, [Z

    aput-boolean v3, v1, v4

    .line 1372
    .local v1, isRemeberLayout:[Z
    new-instance v2, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;-><init>([Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;I[Z)V

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    .line 1373
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$SlideUnlockGestureListener;

    invoke-direct {v4, p0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$SlideUnlockGestureListener;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1374
    return-void
.end method

.method private hideCallback()V
    .locals 1

    .prologue
    .line 1338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    .line 1339
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->resetPosition()V

    .line 1340
    return-void
.end method

.method private intentToUnlock(I)Z
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1266
    iget-boolean v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->intentToUnlockByGesture:Z

    if-eqz v2, :cond_1

    .line 1267
    sget-object v2, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "slide unlock by gesture "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->intentToUnlockByGesture:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->intentToUnlockByGesture:Z

    .line 1272
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->screenHeight:I

    div-int/lit8 v3, v3, 0x5

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private playMoveEndAnimation(ZI)V
    .locals 7
    .parameter "intentToUnlock"
    .parameter "s"

    .prologue
    const/high16 v3, 0x3f80

    .line 1295
    if-eqz p1, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    const/high16 v1, 0x4100

    int-to-float v2, p2

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->inFreefall(FFFI)V

    .line 1298
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    new-instance v1, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$1;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->setFreefallCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;)V

    .line 1328
    :goto_0
    return-void

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    const/high16 v1, 0x4000

    int-to-float v2, p2

    const/4 v4, 0x5

    const/high16 v5, -0x3fa0

    const/high16 v6, 0x3fc0

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->inRebound(FFFIFF)V

    .line 1316
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    new-instance v1, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$2;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$2;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->setReboundCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ReboundCallback;)V

    goto :goto_0
.end method

.method private resetPosition()V
    .locals 3

    .prologue
    .line 1343
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mContainerLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$5(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    if-eqz v1, :cond_0

    .line 1344
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mContainerLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$5(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    .line 1345
    .local v0, myRelativeLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->reCountViewSize()V

    .line 1346
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->requestLayout()V

    .line 1350
    .end local v0           #myRelativeLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;
    :goto_0
    return-void

    .line 1348
    :cond_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, "mContainerLayout [Not] instanceof MyRelativeLayout"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showCallback()V
    .locals 2

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$8(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->currentPagePosition:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$12(Lcom/alibaba/adi/collie/ui/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getTagByPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 1332
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->SLIDE:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1331
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTAdiUnlockSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    .line 1334
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->resetPosition()V

    .line 1335
    return-void
.end method


# virtual methods
.method public executeTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 1197
    sget-object v2, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v3, "executeTouchEvent"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_1

    .line 1199
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMotionEventYList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMotionEventYList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 1201
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMotionEventYList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1203
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1206
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1258
    :cond_2
    :goto_0
    return-void

    .line 1208
    :pswitch_0
    sget-object v2, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v3, "slide action move"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1214
    :cond_3
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    if-nez v2, :cond_4

    .line 1215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->actionDown(FF)V

    goto :goto_0

    .line 1219
    :cond_4
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v2, p1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1222
    :pswitch_1
    sget-object v2, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v3, "slide action up"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1229
    :cond_5
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onMoveEnd()V

    .line 1232
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->getOffset()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->intentToUnlock(I)Z

    move-result v0

    .line 1233
    .local v0, intentToUnlock:Z
    const/4 v1, 0x0

    .line 1234
    .local v1, s:I
    if-eqz v0, :cond_6

    .line 1235
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->getOffsetToStart()I

    move-result v1

    .line 1240
    :goto_1
    if-eqz v1, :cond_7

    .line 1242
    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->playMoveEndAnimation(ZI)V

    goto :goto_0

    .line 1237
    :cond_6
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->getOffsetToEnd()I

    move-result v1

    goto :goto_1

    .line 1245
    :cond_7
    if-eqz v0, :cond_8

    .line 1246
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/MainActivity;->onUnlocked()V

    .line 1250
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->showCallback()V

    goto :goto_0

    .line 1252
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->hideCallback()V

    goto :goto_0

    .line 1206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fadeOut()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1400
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3e4ccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1401
    .local v0, alphaAniamtion:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1402
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1403
    new-instance v1, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$4;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$4;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1423
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mContainerLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$5(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1426
    const-string v1, "msg"

    const-string v2, "\u52a8\u753b\u6267\u884c"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    return-void
.end method

.method public slideOut()V
    .locals 6

    .prologue
    .line 1378
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->createMoveAnimation()V

    .line 1380
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    const/4 v2, 0x1

    aget v0, v1, v2

    .line 1381
    .local v0, s:I
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    const/high16 v2, 0x4100

    int-to-float v3, v0

    const/high16 v4, 0x3f80

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->inFreefall(FFFI)V

    .line 1382
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMoveAnimation:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    new-instance v2, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$3;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$3;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->setFreefallCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;)V

    .line 1394
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->onUnlocked()V

    .line 1395
    const-string v1, "msg"

    const-string v2, "\u6ed1\u52a8\u753b\u6267\u884c"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    return-void
.end method
