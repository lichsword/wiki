.class public Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;
.super Landroid/widget/FrameLayout;
.source "ContentSlideLayout.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I = null

.field private static final BOTTOM_ARROW_HEIGHT_DPI:I = 0x30

.field private static BOTTOM_ARROW_HEIGHT_PIXEL:I

.field private static BOTTOM_ARROW_HEIGHT_PIXEL_F:F

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mFirstPointF:Landroid/graphics/PointF;

.field private mHasPredicate:Z

.field private mIsBeingDragged:Z

.field private mSecondPointF:Landroid/graphics/PointF;

.field private parent:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType()[I
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I

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
    sput-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I

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
    .line 24
    const-class v0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mIsBeingDragged:Z

    .line 65
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mFirstPointF:Landroid/graphics/PointF;

    .line 66
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mSecondPointF:Landroid/graphics/PointF;

    .line 178
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mHasPredicate:Z

    .line 38
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->initContentView()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mIsBeingDragged:Z

    .line 65
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mFirstPointF:Landroid/graphics/PointF;

    .line 66
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mSecondPointF:Landroid/graphics/PointF;

    .line 178
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mHasPredicate:Z

    .line 33
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->initContentView()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mIsBeingDragged:Z

    .line 65
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mFirstPointF:Landroid/graphics/PointF;

    .line 66
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mSecondPointF:Landroid/graphics/PointF;

    .line 178
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mHasPredicate:Z

    .line 28
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->initContentView()V

    .line 29
    return-void
.end method

.method private inSlidableArea(F)Z
    .locals 2
    .parameter "y"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->getHeight()I

    move-result v0

    sget v1, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->BOTTOM_ARROW_HEIGHT_PIXEL:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initContentView()V
    .locals 2

    .prologue
    .line 48
    const/high16 v0, 0x4240

    sget v1, Lcom/alibaba/adi/collie/CoreApplication;->sDensity:F

    mul-float/2addr v0, v1

    sput v0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->BOTTOM_ARROW_HEIGHT_PIXEL_F:F

    .line 49
    sget v0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->BOTTOM_ARROW_HEIGHT_PIXEL_F:F

    float-to-int v0, v0

    sput v0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->BOTTOM_ARROW_HEIGHT_PIXEL:I

    .line 50
    return-void
.end method


# virtual methods
.method protected doPredicate(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 5
    .parameter "firstPointF"
    .parameter "secondPointF"

    .prologue
    .line 181
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 182
    :cond_0
    sget-object v2, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v3, "first point or second point is null"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v2, 0x0

    .line 202
    :goto_0
    return v2

    .line 186
    :cond_1
    sget-object v2, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v3, "do predicate..."

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 189
    .local v0, diffX:F
    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 191
    .local v1, diffY:F
    sget-object v2, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "diffX = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", diffY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    cmpl-float v2, v1, v0

    if-lez v2, :cond_3

    .line 193
    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->onScrollDownStart()Z

    move-result v2

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->onScrollUpStart()Z

    move-result v2

    goto :goto_0

    .line 199
    :cond_3
    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->onScrollRightStart()Z

    move-result v2

    goto :goto_0

    .line 202
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->onScrollLeftStart()Z

    move-result v2

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 79
    .local v0, action:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 80
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "[on intercept]action move, in dragged..."

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 107
    :goto_0
    return v2

    .line 85
    :cond_0
    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 107
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mIsBeingDragged:Z

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 88
    .local v1, y:F
    invoke-direct {p0, v1}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->inSlidableArea(F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mIsBeingDragged:Z

    .line 92
    :cond_2
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_1

    .line 93
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "[on intercept]action down, begin dragged..."

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 102
    .end local v1           #y:F
    :pswitch_2
    sget-object v2, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v3, "[on intercept]action up, reset dragged"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mIsBeingDragged:Z

    goto :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onScrollDownStart()Z
    .locals 2

    .prologue
    .line 228
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v1, "onScrollDownStart..."

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method protected onScrollLeftStart()Z
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v1, "onScrollLeftStart..."

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method protected onScrollRightStart()Z
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v1, "onScrollRightStart..."

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method protected onScrollUpStart()Z
    .locals 4

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, result:Z
    sget-object v2, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v3, "onScrollUpStart..."

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v1

    .line 211
    .local v1, type:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;
    invoke-static {}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 217
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->setLockLayoutVisible()Z

    move-result v0

    .line 224
    :goto_0
    return v0

    .line 213
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 214
    const/4 v0, 0x1

    .line 215
    goto :goto_0

    .line 220
    :cond_0
    sget-object v2, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v3, "parent BaseFragment reference is null"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 113
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "beingDragged : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mIsBeingDragged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hasPredicate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mHasPredicate:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mIsBeingDragged:Z

    return v3

    .line 115
    :pswitch_0
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "action [down]"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 121
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "action [down], begin dragged..."

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 125
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 126
    .local v2, y:F
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mFirstPointF:Landroid/graphics/PointF;

    .line 127
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "first point: x="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v1           #x:F
    .end local v2           #y:F
    :pswitch_1
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mHasPredicate:Z

    if-eqz v3, :cond_2

    .line 132
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "action [move], invoke main act..."

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    if-eqz v3, :cond_1

    .line 134
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    invoke-virtual {v3, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->executeTouchEventByMainActivity(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 136
    :cond_1
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "parent fragment is null"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :cond_2
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "action [move], begin dragged..."

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 143
    .restart local v1       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 144
    .restart local v2       #y:F
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mSecondPointF:Landroid/graphics/PointF;

    .line 145
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "second point: x="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mFirstPointF:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mSecondPointF:Landroid/graphics/PointF;

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->doPredicate(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iput-boolean v6, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mHasPredicate:Z

    goto/16 :goto_0

    .line 152
    .end local v1           #x:F
    .end local v2           #y:F
    :pswitch_2
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mHasPredicate:Z

    if-eqz v3, :cond_4

    .line 153
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "action [up], invoke main act..."

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    if-eqz v3, :cond_3

    .line 155
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    invoke-virtual {v3, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->executeTouchEventByMainActivity(Landroid/view/MotionEvent;)V

    .line 162
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->reset()V

    goto/16 :goto_0

    .line 157
    :cond_3
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "parent fragment is null"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :cond_4
    sget-object v3, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    const-string v4, "action [up], no invoke main act"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 113
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

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mIsBeingDragged:Z

    .line 173
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mHasPredicate:Z

    .line 174
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mFirstPointF:Landroid/graphics/PointF;

    .line 175
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->mSecondPointF:Landroid/graphics/PointF;

    .line 176
    return-void
.end method

.method public setParentFragment(Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->parent:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    .line 70
    return-void
.end method
