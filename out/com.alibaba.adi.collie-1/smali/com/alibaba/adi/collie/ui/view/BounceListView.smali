.class public Lcom/alibaba/adi/collie/ui/view/BounceListView;
.super Landroid/widget/ListView;
.source "BounceListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final MAX_OVERSCROLL_FACTOR:F = 0.3f

.field private static final MAX_Y_OVERSCROLL_DISTANCE:I = 0x258

.field private static final REBOUND_DURATION:I = 0x15e

.field private static final REBOUND_FRAME_DELAY:I = 0x10

.field public static final TAG:Ljava/lang/String; = "BounceListView"


# instance fields
.field private final mBunceInterpolator:Landroid/view/animation/Interpolator;

.field private mContext:Landroid/content/Context;

.field private mDivHeight:I

.field private mFlingTimestamp:J

.field private mFootersCount:I

.field private mHeadersCount:I

.field private mLastBounceTime:J

.field private mMaxYOverscrollDistance:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private final mOverInterpolator:Landroid/view/animation/Interpolator;

.field private mOverScrollY:I

.field private mRebound:Z

.field private mScrollEdgeY:I

.field private mScrollEdgeYMin:I

.field private mScrollRangeY:I

.field private mScrollstate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 31
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mMaxYOverscrollDistance:I

    .line 34
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOverScrollY:I

    .line 35
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollEdgeY:I

    .line 37
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollEdgeYMin:I

    .line 39
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollRangeY:I

    .line 40
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mBunceInterpolator:Landroid/view/animation/Interpolator;

    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3ef5c28f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOverInterpolator:Landroid/view/animation/Interpolator;

    .line 43
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mHeadersCount:I

    .line 45
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mFootersCount:I

    .line 46
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mDivHeight:I

    .line 50
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mRebound:Z

    .line 56
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->initialize(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mMaxYOverscrollDistance:I

    .line 34
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOverScrollY:I

    .line 35
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollEdgeY:I

    .line 37
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollEdgeYMin:I

    .line 39
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollRangeY:I

    .line 40
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mBunceInterpolator:Landroid/view/animation/Interpolator;

    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3ef5c28f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOverInterpolator:Landroid/view/animation/Interpolator;

    .line 43
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mHeadersCount:I

    .line 45
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mFootersCount:I

    .line 46
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mDivHeight:I

    .line 50
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mRebound:Z

    .line 61
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->initialize(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mMaxYOverscrollDistance:I

    .line 34
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOverScrollY:I

    .line 35
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollEdgeY:I

    .line 37
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollEdgeYMin:I

    .line 39
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollRangeY:I

    .line 40
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mBunceInterpolator:Landroid/view/animation/Interpolator;

    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3ef5c28f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOverInterpolator:Landroid/view/animation/Interpolator;

    .line 43
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mHeadersCount:I

    .line 45
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mFootersCount:I

    .line 46
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mDivHeight:I

    .line 50
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mRebound:Z

    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->initialize(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 70
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mContext:Landroid/content/Context;

    .line 71
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 72
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 74
    .local v0, density:F
    const/high16 v2, 0x4040

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mMaxYOverscrollDistance:I

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mFlingTimestamp:J

    .line 78
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 80
    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->setHeaderDividersEnabled(Z)V

    .line 81
    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->setFooterDividersEnabled(Z)V

    .line 82
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 83
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->setOverScrollMode(I)V

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->initializeValues()V

    .line 86
    return-void
.end method

.method private startBounceScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 112
    .local v1, now:J
    iget-wide v4, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mLastBounceTime:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x10

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    iget-boolean v4, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mRebound:Z

    if-eqz v4, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iput-wide v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mLastBounceTime:J

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->getScrollY()I

    move-result v3

    .line 118
    .local v3, scrollY:I
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollRangeY:I

    .line 119
    .local v0, bottom:I
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mFlingTimestamp:J

    .line 120
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollEdgeYMin:I

    if-ge v3, v4, :cond_2

    .line 121
    const/4 v4, 0x0

    iput v4, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollEdgeY:I

    .line 122
    iput v3, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOverScrollY:I

    .line 123
    iput-boolean v8, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mRebound:Z

    goto :goto_0

    .line 124
    :cond_2
    if-le v3, v0, :cond_0

    .line 125
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollEdgeY:I

    .line 126
    sub-int v4, v3, v0

    iput v4, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOverScrollY:I

    .line 127
    iput-boolean v8, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mRebound:Z

    goto :goto_0
.end method

.method private stopBounceScroll()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mRebound:Z

    .line 104
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 324
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 325
    .local v3, now:J
    iget-wide v6, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mFlingTimestamp:J

    cmp-long v6, v3, v6

    if-lez v6, :cond_0

    .line 326
    iget v6, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollstate:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->stopBounceScroll()V

    .line 330
    :cond_1
    iget-boolean v6, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mRebound:Z

    if-nez v6, :cond_2

    .line 331
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    .line 352
    :goto_0
    return-void

    .line 334
    :cond_2
    iget-wide v6, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mFlingTimestamp:J

    sub-long v0, v3, v6

    .line 336
    .local v0, deltaTime:J
    long-to-float v6, v0

    const/high16 v7, 0x43af

    div-float v5, v6, v7

    .line 338
    .local v5, percent:F
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_4

    .line 339
    iput-boolean v8, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mRebound:Z

    .line 340
    iput v8, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollstate:I

    .line 341
    const/4 v5, 0x0

    .line 347
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mBunceInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 349
    sub-float v6, v9, v5

    iget v7, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOverScrollY:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollEdgeY:I

    add-int v2, v6, v7

    .line 351
    .local v2, deltaY:I
    invoke-virtual {p0, v8, v2}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->scrollTo(II)V

    goto :goto_0

    .line 342
    .end local v2           #deltaY:I
    :cond_4
    cmpl-float v6, v5, v9

    if-lez v6, :cond_3

    .line 343
    iput-boolean v8, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mRebound:Z

    .line 344
    iput v8, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollstate:I

    .line 345
    const/high16 v5, 0x3f80

    goto :goto_1
.end method

.method protected drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 5
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 363
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->getListPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->getVerticalFadingEdgeLength()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 365
    .local v0, clientHeight:I
    if-ltz p3, :cond_0

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 367
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 368
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 370
    .end local v1           #divider:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public getMaxOverScrollY()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mMaxYOverscrollDistance:I

    return v0
.end method

.method public initializeValues()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->getHeaderViewsCount()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mHeadersCount:I

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->getFooterViewsCount()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mFootersCount:I

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->getDividerHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mDivHeight:I

    .line 93
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollstate:I

    .line 94
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mRebound:Z

    .line 95
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mHeadersCount:I

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mDivHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->setSelectionFromTop(II)V

    .line 96
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 159
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 161
    .local v0, action:I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 163
    :pswitch_1
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->stopBounceScroll()V

    .line 164
    const/4 v2, 0x1

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollstate:I

    goto :goto_0

    .line 169
    :pswitch_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollstate:I

    .line 170
    iget-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mRebound:Z

    if-nez v2, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->startBounceScroll()V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->getHeight()I

    move-result v0

    .line 145
    .local v0, height:I
    int-to-float v1, v0

    const v2, 0x3e99999a

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mMaxYOverscrollDistance:I

    .line 146
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eq v0, p0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 154
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 205
    iput p2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollstate:I

    .line 206
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollstate:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 207
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mRebound:Z

    if-nez v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->startBounceScroll()V

    .line 214
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eq v0, p0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 217
    :cond_1
    return-void

    .line 211
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->stopBounceScroll()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 182
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 184
    .local v0, action:I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 199
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 186
    :pswitch_1
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->stopBounceScroll()V

    .line 187
    const/4 v2, 0x1

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollstate:I

    goto :goto_0

    .line 192
    :pswitch_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollstate:I

    .line 193
    iget-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mRebound:Z

    if-nez v2, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->startBounceScroll()V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
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
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 242
    add-int v5, p3, p1

    .line 243
    .local v5, newScrollX:I
    const/16 p7, 0x0

    .line 245
    add-int v6, p4, p2

    .line 246
    .local v6, newScrollY:I
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mMaxYOverscrollDistance:I

    move/from16 p8, v0

    .line 249
    move/from16 v0, p7

    neg-int v4, v0

    .line 250
    .local v4, left:I
    add-int v10, p7, p5

    .line 251
    .local v10, right:I
    move/from16 v0, p8

    neg-int v11, v0

    .line 252
    .local v11, top:I
    add-int v1, p8, p6

    .line 254
    .local v1, bottom:I
    iget v9, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollEdgeYMin:I

    .line 255
    .local v9, realTop:I
    iget v12, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollEdgeYMin:I

    add-int v8, v12, p6

    .line 257
    .local v8, realBottom:I
    move/from16 v0, p6

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollRangeY:I

    .line 259
    const/high16 v7, 0x3f80

    .line 261
    .local v7, overDisPercent:F
    const/4 v2, 0x0

    .line 262
    .local v2, clampedX:Z
    if-le v5, v10, :cond_4

    .line 263
    move v5, v10

    .line 264
    const/4 v2, 0x1

    .line 270
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 271
    .local v3, clampedY:Z
    if-lt v6, v1, :cond_5

    .line 272
    move v6, v1

    .line 273
    const/4 v3, 0x1

    .line 300
    :cond_1
    :goto_1
    const/high16 v12, 0x3f80

    cmpl-float v12, v7, v12

    if-ltz v12, :cond_c

    .line 304
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xd

    if-gt v12, v13, :cond_2

    .line 305
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->smoothScrollBy(II)V

    .line 306
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->invalidate()V

    .line 309
    :cond_2
    iget v12, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mScrollstate:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    .line 310
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->startBounceScroll()V

    .line 316
    :cond_3
    :goto_2
    if-nez v2, :cond_d

    if-nez v3, :cond_d

    const/4 v12, 0x0

    :goto_3
    return v12

    .line 265
    .end local v3           #clampedY:Z
    :cond_4
    if-ge v5, v4, :cond_0

    .line 266
    move v5, v4

    .line 267
    const/4 v2, 0x1

    goto :goto_0

    .line 274
    .restart local v3       #clampedY:Z
    :cond_5
    if-gt v6, v11, :cond_6

    .line 275
    move v6, v11

    .line 276
    const/4 v3, 0x1

    .line 277
    goto :goto_1

    :cond_6
    if-gt v6, v9, :cond_9

    .line 279
    sub-int v12, v9, v6

    int-to-float v12, v12

    move/from16 v0, p8

    int-to-float v13, v0

    const/high16 v14, 0x3f80

    mul-float/2addr v13, v14

    div-float v7, v12, v13

    .line 280
    const/4 v12, 0x0

    cmpg-float v12, v7, v12

    if-gez v12, :cond_8

    .line 281
    const/4 v7, 0x0

    .line 285
    :cond_7
    :goto_4
    iget-object v12, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOverInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v12, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    .line 286
    move/from16 v0, p8

    int-to-float v12, v0

    mul-float/2addr v12, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    mul-int/lit8 v12, v12, -0x1

    add-int v6, v12, v9

    .line 288
    goto :goto_1

    .line 282
    :cond_8
    const/high16 v12, 0x3f80

    cmpl-float v12, v7, v12

    if-lez v12, :cond_7

    .line 283
    const/high16 v7, 0x3f80

    goto :goto_4

    .line 288
    :cond_9
    if-lt v6, v8, :cond_1

    .line 290
    sub-int v12, v6, v8

    int-to-float v12, v12

    move/from16 v0, p8

    int-to-float v13, v0

    const/high16 v14, 0x3f80

    mul-float/2addr v13, v14

    div-float v7, v12, v13

    .line 291
    const/4 v12, 0x0

    cmpg-float v12, v7, v12

    if-gez v12, :cond_b

    .line 292
    const/4 v7, 0x0

    .line 296
    :cond_a
    :goto_5
    iget-object v12, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOverInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v12, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    .line 297
    move/from16 v0, p8

    int-to-float v12, v0

    mul-float/2addr v12, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int v6, v12, v8

    goto :goto_1

    .line 293
    :cond_b
    const/high16 v12, 0x3f80

    cmpl-float v12, v7, v12

    if-lez v12, :cond_a

    .line 294
    const/high16 v7, 0x3f80

    goto :goto_5

    .line 312
    :cond_c
    move/from16 v0, p4

    if-eq v6, v0, :cond_3

    .line 313
    invoke-virtual {p0, v5, v6, v2, v3}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->onOverScrolled(IIZZ)V

    goto :goto_2

    .line 316
    :cond_d
    const/4 v12, 0x1

    goto :goto_3
.end method

.method public removeOnScrollListener()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 138
    return-void
.end method

.method public setMaxOverScrollY(I)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 224
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mMaxYOverscrollDistance:I

    .line 225
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/BounceListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 134
    return-void
.end method
