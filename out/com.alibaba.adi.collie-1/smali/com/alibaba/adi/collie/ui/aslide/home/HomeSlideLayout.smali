.class public Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;
.super Landroid/widget/FrameLayout;
.source "HomeSlideLayout.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I = null

.field private static final BOTTOM_ARROW_HEIGHT_DPI:I = 0x30

.field private static BOTTOM_ARROW_HEIGHT_PIXEL:I

.field private static BOTTOM_ARROW_HEIGHT_PIXEL_F:F

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mFirstPointF:Landroid/graphics/PointF;

.field private mIsBeingDragged:Z

.field private mSecondPointF:Landroid/graphics/PointF;

.field private mTouchSlop:I

.field private parent:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

.field private toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType()[I
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I

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
    sput-object v0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I

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
    .line 29
    const-class v0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mIsBeingDragged:Z

    .line 72
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mFirstPointF:Landroid/graphics/PointF;

    .line 73
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mSecondPointF:Landroid/graphics/PointF;

    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->initContentView(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mIsBeingDragged:Z

    .line 72
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mFirstPointF:Landroid/graphics/PointF;

    .line 73
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mSecondPointF:Landroid/graphics/PointF;

    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->initContentView(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mIsBeingDragged:Z

    .line 72
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mFirstPointF:Landroid/graphics/PointF;

    .line 73
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mSecondPointF:Landroid/graphics/PointF;

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->initContentView(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private inSlidableArea(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    instance-of v1, v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    if-eqz v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    check-cast v0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    .line 222
    .local v0, fragment:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->inClickableCompomentsArea(FFI)Z

    move-result v1

    .line 224
    .end local v0           #fragment:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initContentView(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 61
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 62
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mTouchSlop:I

    .line 63
    const/high16 v1, 0x4240

    sget v2, Lcom/alibaba/adi/collie/CoreApplication;->sDensity:F

    mul-float/2addr v1, v2

    sput v1, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->BOTTOM_ARROW_HEIGHT_PIXEL_F:F

    .line 64
    sget v1, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->BOTTOM_ARROW_HEIGHT_PIXEL_F:F

    float-to-int v1, v1

    sput v1, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->BOTTOM_ARROW_HEIGHT_PIXEL:I

    .line 65
    return-void
.end method


# virtual methods
.method protected doPredicate(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 6
    .parameter "firstPointF"
    .parameter "secondPointF"

    .prologue
    const/4 v2, 0x0

    .line 157
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 158
    :cond_0
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "first point or second point is null"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    :goto_0
    return v2

    .line 162
    :cond_2
    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 163
    .local v0, diffX:F
    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 165
    .local v1, diffY:F
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "diffX = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", diffY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    const/high16 v3, 0x3f00

    mul-float/2addr v3, v0

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_1

    .line 169
    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 170
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->onScrollDownStart()Z

    move-result v2

    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->onScrollUpStart(FF)Z

    move-result v2

    goto :goto_0
.end method

.method public getToolBoxLayout()Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    return-object v0
.end method

.method protected onScrollDownStart()Z
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v1, "onScrollDownStart..."

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->showViewLock()V

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollLeftStart()V
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v1, "onScrollLeftStart..."

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method protected onScrollRightStart()V
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v1, "onScrollRightStart..."

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method protected onScrollUpStart(FF)Z
    .locals 4
    .parameter "diffx"
    .parameter "diffy"

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, result:Z
    sget-object v2, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v3, "onScrollUpStart..."

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v1

    .line 184
    .local v1, type:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;
    invoke-static {}, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 190
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->setLockLayoutVisible()Z

    move-result v0

    .line 197
    :goto_0
    return v0

    .line 186
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 187
    const/4 v0, 0x1

    .line 188
    goto :goto_0

    .line 193
    :cond_0
    sget-object v2, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v3, "parent BaseFragment reference is null"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 83
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 85
    .local v2, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 86
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mIsBeingDragged="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mIsBeingDragged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mIsBeingDragged:Z

    :goto_1
    return v3

    .line 88
    :pswitch_0
    sget-object v4, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v5, "action [down], begin dragged..."

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->reset()V

    .line 91
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mFirstPointF:Landroid/graphics/PointF;

    .line 92
    sget-object v4, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "first point: x="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :pswitch_1
    iget-boolean v4, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_3

    .line 96
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "action [move], begin dragged..."

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 98
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "toolbox visible, moving it..."

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    invoke-virtual {v3, p1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    if-eqz v3, :cond_2

    .line 102
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "action [move], invoke main act..."

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    invoke-virtual {v3, p1}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->executeTouchEventByMainActivity(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 105
    :cond_2
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "parent fragment is null"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_3
    sget-object v4, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v5, "action [move], wait doPredicate"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mSecondPointF:Landroid/graphics/PointF;

    .line 111
    sget-object v4, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "second point: x="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mFirstPointF:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mSecondPointF:Landroid/graphics/PointF;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->doPredicate(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    iput-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mIsBeingDragged:Z

    goto/16 :goto_0

    .line 118
    :pswitch_2
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 119
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "action [up], call toolbox"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    invoke-virtual {v3, p1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 133
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->reset()V

    goto/16 :goto_0

    .line 122
    :cond_4
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_6

    .line 123
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "action [up], invoke main act..."

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    if-eqz v3, :cond_5

    .line 125
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    invoke-virtual {v3, p1}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->executeTouchEventByMainActivity(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 127
    :cond_5
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "parent fragment is null"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 130
    :cond_6
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "isBeingDragged is false, no invoke main act"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mIsBeingDragged:Z

    .line 145
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mFirstPointF:Landroid/graphics/PointF;

    .line 146
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->mSecondPointF:Landroid/graphics/PointF;

    .line 147
    return-void
.end method

.method public setParentFragment(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)V
    .locals 0
    .parameter "parent"
    .parameter "toolBoxLayout"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    .line 77
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    .line 78
    return-void
.end method
