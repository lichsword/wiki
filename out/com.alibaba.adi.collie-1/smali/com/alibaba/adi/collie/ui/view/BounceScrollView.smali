.class public Lcom/alibaba/adi/collie/ui/view/BounceScrollView;
.super Landroid/widget/ScrollView;
.source "BounceScrollView.java"


# static fields
.field private static final MAX_OVERSCROLL_FACTOR:F = 0.35f

.field private static final MAX_Y_OVERSCROLL_DISTANCE:I = 0x1c2

.field private static final REBOUND_DURATION:I = 0x15e

.field private static final REBOUND_FRAME_DELAY:I = 0x10

.field public static final TAG:Ljava/lang/String; = "BounceScrollView"


# instance fields
.field private final mBunceInterpolator:Landroid/view/animation/Interpolator;

.field private mContext:Landroid/content/Context;

.field private mFlingTimestamp:J

.field private mIsBeingDragged:Ljava/lang/Boolean;

.field private mLastBounceTime:J

.field private final mOverInterpolator:Landroid/view/animation/Interpolator;

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mRebound:Z

.field private mScrollEdgeY:I

.field private mScrollRange:I

.field private mScroller:Landroid/widget/OverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mBunceInterpolator:Landroid/view/animation/Interpolator;

    .line 24
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3ef0a3d7

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mOverInterpolator:Landroid/view/animation/Interpolator;

    .line 27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mIsBeingDragged:Ljava/lang/Boolean;

    .line 30
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScrollEdgeY:I

    .line 31
    const/16 v0, 0x258

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScrollRange:I

    .line 34
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mRebound:Z

    .line 38
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->initScrollView()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mBunceInterpolator:Landroid/view/animation/Interpolator;

    .line 24
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3ef0a3d7

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mOverInterpolator:Landroid/view/animation/Interpolator;

    .line 27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mIsBeingDragged:Ljava/lang/Boolean;

    .line 30
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScrollEdgeY:I

    .line 31
    const/16 v0, 0x258

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScrollRange:I

    .line 34
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mRebound:Z

    .line 43
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->initScrollView()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mBunceInterpolator:Landroid/view/animation/Interpolator;

    .line 24
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3ef0a3d7

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mOverInterpolator:Landroid/view/animation/Interpolator;

    .line 27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mIsBeingDragged:Ljava/lang/Boolean;

    .line 30
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScrollEdgeY:I

    .line 31
    const/16 v0, 0x258

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScrollRange:I

    .line 34
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mRebound:Z

    .line 48
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->initScrollView()V

    .line 49
    return-void
.end method

.method private getScrollRange()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 327
    const/4 v3, 0x0

    .line 328
    .local v3, scrollRange:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getPaddingBottom()I

    move-result v1

    .line 330
    .local v1, paddingBottom:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getPaddingTop()I

    move-result v2

    .line 331
    .local v2, paddingTop:I
    invoke-virtual {p0, v6}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 332
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    sub-int/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 334
    .end local v0           #child:Landroid/view/View;
    .end local v1           #paddingBottom:I
    .end local v2           #paddingTop:I
    :cond_0
    return v3
.end method

.method private initScrollView()V
    .locals 4

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mFlingTimestamp:J

    .line 55
    new-instance v2, Landroid/widget/OverScroller;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 57
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 58
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 60
    .local v0, density:F
    const/high16 v2, 0x43e1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mOverscrollDistance:I

    .line 61
    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mOverscrollDistance:I

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mOverflingDistance:I

    .line 63
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->setFillViewport(Z)V

    .line 64
    return-void
.end method

.method private startBounceScroll(IIIIII)V
    .locals 7
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "minScrollX"
    .parameter "maxScrollX"
    .parameter "minScrollY"
    .parameter "maxScrollY"

    .prologue
    const/4 v6, 0x1

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 86
    .local v0, now:J
    iget-wide v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mLastBounceTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x10

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 112
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-wide v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mLastBounceTime:J

    .line 92
    iget-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mRebound:Z

    if-eqz v2, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->stopBounceScroll()V

    .line 96
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mFlingTimestamp:J

    .line 98
    if-ge p2, p5, :cond_3

    .line 99
    iput p5, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScrollEdgeY:I

    .line 100
    iput p2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mOverscrollDistance:I

    .line 101
    iput-boolean v6, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mRebound:Z

    .line 111
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->invalidate()V

    goto :goto_0

    .line 102
    :cond_3
    if-le p2, p6, :cond_2

    .line 103
    iput p6, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScrollEdgeY:I

    .line 104
    sub-int v2, p2, p6

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mOverscrollDistance:I

    .line 105
    iput-boolean v6, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mRebound:Z

    goto :goto_1
.end method

.method private stopBounceScroll()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mRebound:Z

    .line 77
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 23

    .prologue
    .line 273
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mRebound:Z

    if-eqz v3, :cond_5

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 278
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v16

    .line 279
    .local v16, now:J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mFlingTimestamp:J

    sub-long v8, v16, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 281
    .local v13, deltaTime:J
    const-wide/16 v8, 0x15e

    cmp-long v3, v13, v8

    if-lez v3, :cond_2

    .line 282
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mRebound:Z

    .line 324
    .end local v13           #deltaTime:J
    .end local v16           #now:J
    :cond_1
    :goto_0
    return-void

    .line 285
    .restart local v13       #deltaTime:J
    .restart local v16       #now:J
    :cond_2
    long-to-float v3, v13

    const/high16 v8, 0x43af

    div-float v18, v3, v8

    .line 287
    .local v18, percent:F
    const/4 v3, 0x0

    cmpg-float v3, v18, v3

    if-gez v3, :cond_4

    .line 288
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mRebound:Z

    .line 289
    const/16 v18, 0x0

    .line 294
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mBunceInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    .line 295
    const/high16 v3, 0x3f80

    sub-float v3, v3, v18

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mOverscrollDistance:I

    int-to-float v8, v8

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScrollEdgeY:I

    add-int v15, v3, v8

    .line 297
    .local v15, newScrollY:I
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15, v8, v9}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->onOverScrolled(IIZZ)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_1

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->postInvalidate()V

    goto :goto_0

    .line 290
    .end local v15           #newScrollY:I
    :cond_4
    const/high16 v3, 0x3f80

    cmpl-float v3, v18, v3

    if-lez v3, :cond_3

    .line 291
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mRebound:Z

    .line 292
    const/high16 v18, 0x3f80

    goto :goto_1

    .line 303
    .end local v13           #deltaTime:J
    .end local v16           #now:J
    .end local v18           #percent:F
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getScrollX()I

    move-result v6

    .line 305
    .local v6, oldX:I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getScrollY()I

    move-result v7

    .line 306
    .local v7, oldY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v21

    .line 307
    .local v21, x:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v22

    .line 309
    .local v22, y:I
    move/from16 v0, v21

    if-ne v6, v0, :cond_6

    move/from16 v0, v22

    if-eq v7, v0, :cond_7

    .line 310
    :cond_6
    sub-int v4, v21, v6

    .line 311
    .local v4, deltaX:I
    sub-int v5, v22, v7

    .line 313
    .local v5, deltaY:I
    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getScrollRange()I

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mOverflingDistance:I

    const/4 v12, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getScrollX()I

    move-result v19

    .line 315
    .local v19, scrollX:I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getScrollY()I

    move-result v20

    .line 316
    .local v20, scrollY:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->onScrollChanged(IIII)V

    .line 319
    .end local v4           #deltaX:I
    .end local v5           #deltaY:I
    .end local v19           #scrollX:I
    .end local v20           #scrollY:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_1

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->postInvalidate()V

    goto/16 :goto_0
.end method

.method public fling(I)V
    .locals 15
    .parameter "velocityY"

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getPaddingBottom()I

    move-result v13

    .line 256
    .local v13, paddingBottom:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getPaddingTop()I

    move-result v14

    .line 257
    .local v14, paddingTop:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getScrollX()I

    move-result v1

    .line 258
    .local v1, scrollX:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getScrollY()I

    move-result v2

    .line 259
    .local v2, scrollY:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getHeight()I

    move-result v0

    sub-int/2addr v0, v13

    sub-int v12, v0, v14

    .line 260
    .local v12, height:I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 263
    .local v11, bottom:I
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    sub-int v8, v11, v12

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v9, 0x0

    .line 264
    iget v10, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mOverflingDistance:I

    move/from16 v4, p1

    .line 263
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 266
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->postInvalidate()V

    .line 268
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    .end local v11           #bottom:I
    .end local v12           #height:I
    .end local v13           #paddingBottom:I
    .end local v14           #paddingTop:I
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mIsBeingDragged:Ljava/lang/Boolean;

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 119
    .local v7, action:I
    and-int/lit16 v0, v7, 0xff

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mIsBeingDragged:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 123
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getScrollX()I

    move-result v1

    .line 124
    .local v1, scrollX:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getScrollY()I

    move-result v2

    .line 125
    .local v2, scrollY:I
    iget v6, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScrollRange:I

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->startBounceScroll(IIIIII)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 237
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 239
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getHeight()I

    move-result v0

    .line 241
    .local v0, height:I
    int-to-float v1, v0

    const v2, 0x3eb33333

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mOverflingDistance:I

    .line 243
    .end local v0           #height:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 135
    .local v10, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 137
    .local v7, action:I
    and-int/lit16 v0, v7, 0xff

    packed-switch v0, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    :pswitch_0
    return v10

    .line 139
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mIsBeingDragged:Ljava/lang/Boolean;

    .line 142
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 146
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mRebound:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->stopBounceScroll()V

    goto :goto_0

    .line 154
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getScrollX()I

    move-result v1

    .line 156
    .local v1, scrollX:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->getScrollY()I

    move-result v2

    .line 157
    .local v2, scrollY:I
    const/4 v9, 0x0

    .line 158
    .local v9, minScrollY:I
    iget v8, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScrollRange:I

    .line 160
    .local v8, maxScrollY:I
    if-ltz v2, :cond_2

    if-le v2, v8, :cond_3

    .line 161
    :cond_2
    iget v6, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScrollRange:I

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->startBounceScroll(IIIIII)V

    .line 164
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    .end local v8           #maxScrollY:I
    .end local v9           #minScrollY:I
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mIsBeingDragged:Ljava/lang/Boolean;

    goto :goto_0

    .line 168
    :pswitch_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mIsBeingDragged:Ljava/lang/Boolean;

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 15
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    .line 178
    if-nez p2, :cond_0

    .line 179
    const/4 v1, 0x1

    .line 231
    :goto_0
    return v1

    .line 182
    :cond_0
    add-int v2, p3, p1

    .line 183
    .local v2, newScrollX:I
    add-int v3, p4, p2

    .line 184
    .local v3, newScrollY:I
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mOverflingDistance:I

    move/from16 p8, v0

    .line 186
    move/from16 v0, p6

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScrollRange:I

    .line 189
    move/from16 v0, p7

    neg-int v10, v0

    .line 190
    .local v10, left:I
    add-int v13, p7, p5

    .line 191
    .local v13, right:I
    if-gtz v3, :cond_7

    const/4 v14, 0x0

    .line 193
    .local v14, scrollEdge:I
    :goto_1
    const/4 v12, 0x0

    .line 195
    .local v12, overDisPercent:F
    const/4 v8, 0x0

    .line 196
    .local v8, clampedX:Z
    if-le v2, v13, :cond_8

    .line 197
    move v2, v13

    .line 198
    const/4 v8, 0x1

    .line 204
    :cond_1
    :goto_2
    const/4 v9, 0x0

    .line 205
    .local v9, clampedY:Z
    if-ltz v3, :cond_2

    move/from16 v0, p6

    if-le v3, v0, :cond_6

    .line 207
    :cond_2
    sub-int v1, v3, v14

    int-to-float v1, v1

    move/from16 v0, p8

    int-to-float v4, v0

    const/high16 v5, 0x3f80

    mul-float/2addr v4, v5

    div-float v12, v1, v4

    .line 208
    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v11, v1

    .line 209
    .local v11, numSign:I
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 210
    const/4 v1, 0x0

    cmpg-float v1, v12, v1

    if-gez v1, :cond_9

    .line 211
    const/4 v12, 0x0

    .line 216
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mOverInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    .line 218
    move/from16 v0, p8

    int-to-float v1, v0

    mul-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/2addr v1, v11

    add-int v3, v1, v14

    .line 219
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x3eb33333

    cmpl-float v1, v12, v1

    if-gtz v1, :cond_5

    .line 220
    :cond_4
    const v1, 0x3f666666

    cmpl-float v1, v12, v1

    if-ltz v1, :cond_6

    .line 221
    :cond_5
    const/4 v9, 0x1

    .line 225
    .end local v11           #numSign:I
    :cond_6
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mIsBeingDragged:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz v9, :cond_a

    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mRebound:Z

    if-nez v1, :cond_a

    .line 226
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->mScrollRange:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->startBounceScroll(IIIIII)V

    .line 231
    :goto_4
    if-nez v8, :cond_b

    if-nez v9, :cond_b

    const/4 v1, 0x0

    goto :goto_0

    .end local v8           #clampedX:Z
    .end local v9           #clampedY:Z
    .end local v12           #overDisPercent:F
    .end local v14           #scrollEdge:I
    :cond_7
    move/from16 v14, p6

    .line 191
    goto :goto_1

    .line 199
    .restart local v8       #clampedX:Z
    .restart local v12       #overDisPercent:F
    .restart local v14       #scrollEdge:I
    :cond_8
    if-ge v2, v10, :cond_1

    .line 200
    move v2, v10

    .line 201
    const/4 v8, 0x1

    goto :goto_2

    .line 212
    .restart local v9       #clampedY:Z
    .restart local v11       #numSign:I
    :cond_9
    const/high16 v1, 0x3f80

    cmpl-float v1, v12, v1

    if-lez v1, :cond_3

    .line 213
    const/high16 v12, 0x3f80

    goto :goto_3

    .line 228
    .end local v11           #numSign:I
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v3, v8, v1}, Lcom/alibaba/adi/collie/ui/view/BounceScrollView;->onOverScrolled(IIZZ)V

    goto :goto_4

    .line 231
    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 69
    const/4 v0, 0x2

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 70
    return-void
.end method
