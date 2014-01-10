.class public Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "BounceBackViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;,
        Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;
    }
.end annotation


# static fields
.field private static final DEFAULT_OVERSCROLL_ANIMATION_DURATION:I = 0x2ee

.field static final DEFAULT_OVERSCROLL_TRANSLATION:I = 0x168

.field private static final INVALID_POINTER_ID:I = -0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private isSupportObjectAnimator:Ljava/lang/Boolean;

.field private mActivePointerId:I

.field private final mCamera:Landroid/graphics/Camera;

.field private mDefaultPagerIndex:I

.field private mLastMotionX:F

.field private mLastPosition:I

.field private mOverscrollAnimationDuration:I

.field private final mOverscrollEffect:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;

.field private mOverscrollTranslation:F

.field private mScrollListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mScrollPosition:I

.field private mScrollPositionOffset:F

.field private final mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    new-instance v3, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;

    invoke-direct {v3, p0, v5}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;-><init>(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;)V

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;

    .line 125
    new-instance v3, Landroid/graphics/Camera;

    invoke-direct {v3}, Landroid/graphics/Camera;-><init>()V

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    .line 200
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mLastPosition:I

    .line 141
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->isSupportObjectAnimator:Ljava/lang/Boolean;

    .line 142
    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->setStaticTransformationsEnabled(Z)V

    .line 143
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 144
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mTouchSlop:I

    .line 145
    sget-object v1, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mTouchSlop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mTouchSlop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v1, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;

    invoke-direct {v1, p0, v5}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;-><init>(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;)V

    invoke-super {p0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 147
    invoke-direct {p0, p2}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->init(Landroid/util/AttributeSet;)V

    .line 148
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)I
    .locals 1
    .parameter

    .prologue
    .line 200
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mLastPosition:I

    return v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->invalidateVisibleChilds(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->isSupportObjectAnimator:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)I
    .locals 1
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    return v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)I
    .locals 1
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollPosition:I

    return v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollPosition:I

    return-void
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollPositionOffset:F

    return-void
.end method

.method static synthetic access$8(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 200
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mLastPosition:I

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "attrs"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alibaba/adi/collie/R$styleable;->BounceBackViewPager:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 164
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 165
    const/high16 v2, 0x43b4

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollTranslation:F

    .line 166
    const/4 v1, 0x1

    .line 167
    const/16 v2, 0x2ee

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    .line 168
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    return-void
.end method

.method private invalidateVisibleChilds(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 193
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 198
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 271
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 277
    :goto_0
    return v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 275
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 9
    .parameter "child"
    .parameter "t"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-nez v4, :cond_0

    .line 384
    sget-object v4, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    const-string v5, "child.getWidth() == 0"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v4, 0x0

    .line 422
    :goto_0
    return v4

    .line 387
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int v2, v4, v6

    .line 392
    .local v2, position:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->getWidth()I

    move-result v4

    int-to-float v0, v4

    .line 393
    .local v0, dx:F
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->getHeight()I

    move-result v1

    .line 394
    .local v1, dy:I
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 395
    iget v6, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollTranslation:F

    .line 397
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;

    #getter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->access$4(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;)F

    move-result v4

    cmpl-float v4, v4, v8

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;

    #getter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->access$4(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;)F

    move-result v4

    const/high16 v7, 0x3f80

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 395
    :goto_1
    mul-float v3, v6, v4

    .line 406
    .local v3, translateX:F
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    .line 407
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    neg-float v6, v3

    invoke-virtual {v4, v6, v8, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 408
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 409
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    .line 413
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->getChildCount()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 416
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->invalidate()V

    :goto_2
    move v4, v5

    .line 422
    goto :goto_0

    .line 398
    .end local v3           #translateX:F
    :cond_1
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;

    #getter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->access$4(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;)F

    move-result v4

    const/high16 v7, -0x4080

    .line 397
    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_1

    .line 420
    .restart local v3       #translateX:F
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_2
.end method

.method public getOverscrollAnimationDuration()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    return v0
.end method

.method public getOverscrollTranslation()F
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollTranslation:F

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    .line 240
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 241
    .local v0, action:I
    sparse-switch v0, :sswitch_data_0

    .line 258
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 264
    .end local v0           #action:I
    :goto_1
    return v4

    .line 244
    .restart local v0       #action:I
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mLastMotionX:F

    .line 245
    const/4 v5, 0x0

    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    iput v5, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mActivePointerId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 259
    .end local v0           #action:I
    :catch_0
    move-exception v1

    .line 260
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 251
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #action:I
    :sswitch_1
    :try_start_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 252
    .local v2, index:I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 253
    .local v3, x:F
    iput v3, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mLastMotionX:F

    .line 254
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    iput v5, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mActivePointerId:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 262
    .end local v0           #action:I
    .end local v2           #index:I
    .end local v3           #x:F
    :catch_1
    move-exception v1

    .line 263
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 241
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "ev"

    .prologue
    .line 283
    const/4 v3, 0x0

    .line 285
    .local v3, callSuper:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->isSupportObjectAnimator:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    .line 286
    invoke-super/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 377
    :goto_0
    return v14

    .line 289
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 290
    .local v1, action:I
    packed-switch v1, :pswitch_data_0

    .line 374
    :cond_1
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;

    #calls: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->isOverscrolling()Z
    invoke-static {v14}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->access$3(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-nez v3, :cond_6

    .line 375
    const/4 v14, 0x1

    goto :goto_0

    .line 292
    :pswitch_1
    const/4 v3, 0x1

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mLastMotionX:F

    .line 294
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mActivePointerId:I

    .line 295
    sget-object v14, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "onTouchEvent(): ACTION_DOWN, mLastMotionX="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mLastMotionX:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 299
    :pswitch_2
    const/4 v3, 0x1

    .line 300
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v6

    .line 301
    .local v6, index:I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v13

    .line 302
    .local v13, x:F
    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mLastMotionX:F

    .line 303
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mActivePointerId:I

    .line 304
    sget-object v14, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "onTouchEvent(): ACTION_POINTER_DOWN, mLastMotionX="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mLastMotionX:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    .end local v6           #index:I
    .end local v13           #x:F
    :pswitch_3
    sget-object v14, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    const-string v15, "onTouchEvent(): ACTION_MOVE"

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mActivePointerId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    .line 311
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 312
    .local v2, activePointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v13

    .line 313
    .restart local v13       #x:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mLastMotionX:F

    sub-float v5, v14, v13

    .line 318
    .local v5, deltaX:F
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->getWidth()I

    move-result v12

    .line 320
    .local v12, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .line 321
    .local v7, lastItemIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->getCurrentItem()I

    move-result v4

    .line 322
    .local v4, currentItemIndex:I
    sget-object v14, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    .line 323
    const-string v15, "deltaX=%f, lastItemIndex=%d, currentItemIndex=%d, mScrollPositionOffset=%f"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 324
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollPositionOffset:F

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v16, v17

    .line 323
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 322
    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollPositionOffset:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_3

    .line 330
    if-gtz v4, :cond_2

    .line 331
    sget-object v14, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    const-string v15, "branch A"

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mTouchSlop:I

    int-to-float v14, v14

    add-float v9, v5, v14

    .line 333
    .local v9, over:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;

    int-to-float v15, v12

    div-float v15, v9, v15

    invoke-virtual {v14, v15}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->setPull(F)V

    goto/16 :goto_1

    .line 334
    .end local v9           #over:F
    :cond_2
    if-lt v4, v7, :cond_1

    .line 335
    sget-object v14, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    const-string v15, "branch B"

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mTouchSlop:I

    int-to-float v14, v14

    sub-float v9, v5, v14

    .line 337
    .restart local v9       #over:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;

    int-to-float v15, v12

    div-float v15, v9, v15

    invoke-virtual {v14, v15}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->setPull(F)V

    goto/16 :goto_1

    .line 341
    .end local v9           #over:F
    :cond_3
    sget-object v14, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    const-string v15, "branch C"

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 345
    .end local v2           #activePointerIndex:I
    .end local v4           #currentItemIndex:I
    .end local v5           #deltaX:F
    .end local v7           #lastItemIndex:I
    .end local v12           #width:I
    .end local v13           #x:F
    :cond_4
    sget-object v14, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    const-string v15, "branch D"

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;

    #calls: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->onRelease()V
    invoke-static {v14}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->access$2(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;)V

    goto/16 :goto_1

    .line 352
    :pswitch_4
    sget-object v14, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    const-string v15, "onTouchEvent(): ACTION_UP|ACTION_CANCEL"

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/4 v3, 0x1

    .line 354
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mActivePointerId:I

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;

    #calls: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->onRelease()V
    invoke-static {v14}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->access$2(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;)V

    goto/16 :goto_1

    .line 359
    :pswitch_5
    sget-object v14, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    const-string v15, "onTouchEvent(): ACTION_POINTER_UP"

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const v15, 0xff00

    and-int/2addr v14, v15

    shr-int/lit8 v11, v14, 0x8

    .line 361
    .local v11, pointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v10

    .line 362
    .local v10, pointerId:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mActivePointerId:I

    if-ne v10, v14, :cond_1

    .line 365
    if-nez v11, :cond_5

    const/4 v8, 0x1

    .line 366
    .local v8, newPointerIndex:I
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mLastMotionX:F

    .line 367
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mActivePointerId:I

    .line 368
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 365
    .end local v8           #newPointerIndex:I
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 377
    .end local v10           #pointerId:I
    .end local v11           #pointerIndex:I
    :cond_6
    invoke-super/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public setDefaultPagerIndex(I)V
    .locals 0
    .parameter "defaultPagerIndex"

    .prologue
    .line 159
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mDefaultPagerIndex:I

    .line 160
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 190
    return-void
.end method

.method public setOverscrollAnimationDuration(I)V
    .locals 0
    .parameter "mOverscrollAnimationDuration"

    .prologue
    .line 176
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    .line 177
    return-void
.end method

.method public setOverscrollTranslation(I)V
    .locals 1
    .parameter "mOverscrollTranslation"

    .prologue
    .line 184
    int-to-float v0, p1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollTranslation:F

    .line 185
    return-void
.end method
