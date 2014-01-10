.class public Lcom/alibaba/adi/collie/ui/view/PullDownListView;
.super Lcom/alibaba/adi/collie/ui/view/BounceListView;
.source "PullDownListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/alibaba/adi/collie/util/SimpleAnimator$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/view/PullDownListView$OnRefreshListener;
    }
.end annotation


# static fields
.field public static final DONE:I = 0x3

.field private static final LOADING:I = 0x4

.field private static final PULL_To_REFRESH:I = 0x1

.field private static final RATIO:I = 0x1

.field private static final REFRESHING:I = 0x2

.field private static final RELEASE_To_REFRESH:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final DAMP_FACTOR:F

.field private final DAMP_INIT:F

.field private final STR_REFRESH_TIP:Ljava/lang/String;

.field private animation:Landroid/view/animation/RotateAnimation;

.field private arrowImageView:Landroid/widget/ImageView;

.field private currentDamp:F

.field public firstItemIndex:I

.field private headContentHeight:I

.field private headContentWidth:I

.field private headLogoView:Landroid/view/ViewGroup;

.field private headRefreshBounds:I

.field private headRefreshHeight:I

.field private headView:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private isBack:Z

.field private isRecored:Z

.field private isRefreshable:Z

.field private lastRefreshTimeKey:Ljava/lang/String;

.field private lastUpdatedTextView:Landroid/widget/TextView;

.field private loadingAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private loadingImageView:Landroid/widget/ImageView;

.field private mPullAnimation:Lcom/alibaba/adi/collie/util/SimpleAnimator;

.field private mPullDistanceMax:I

.field private pullToRefreshHint:Ljava/lang/String;

.field private refreshListener:Lcom/alibaba/adi/collie/ui/view/PullDownListView$OnRefreshListener;

.field private refreshingHint:Ljava/lang/String;

.field private releaseToRefreshHint:Ljava/lang/String;

.field private reverseAnimation:Landroid/view/animation/RotateAnimation;

.field private startX:I

.field private startY:I

.field private state:I

.field private tipsTextview:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/BounceListView;-><init>(Landroid/content/Context;)V

    .line 57
    const v0, 0x3f666666

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->DAMP_FACTOR:F

    .line 62
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->DAMP_INIT:F

    .line 67
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->currentDamp:F

    .line 97
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentHeight:I

    .line 98
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshHeight:I

    .line 99
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshBounds:I

    .line 536
    const-string v0, "\u6700\u8fd1\u66f4\u65b0:"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->STR_REFRESH_TIP:Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->setHintText()V

    .line 120
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->init(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/view/BounceListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const v0, 0x3f666666

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->DAMP_FACTOR:F

    .line 62
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->DAMP_INIT:F

    .line 67
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->currentDamp:F

    .line 97
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentHeight:I

    .line 98
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshHeight:I

    .line 99
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshBounds:I

    .line 536
    const-string v0, "\u6700\u8fd1\u66f4\u65b0:"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->STR_REFRESH_TIP:Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->setHintText()V

    .line 126
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->init(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method private changeHeaderViewByState()V
    .locals 9

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 450
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v8

    .line 452
    .local v8, headPaddingTop:I
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    packed-switch v0, :pswitch_data_0

    .line 507
    :goto_0
    return-void

    .line 454
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 455
    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->setLoadingStatus(I)V

    .line 456
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 460
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 462
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->releaseToRefreshHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u72b6\u6001\uff0c\u677e\u5f00\u5237\u65b0"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->setLoadingStatus(I)V

    .line 468
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 471
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->isBack:Z

    if-eqz v0, :cond_0

    .line 474
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->isBack:Z

    .line 475
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 476
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 478
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->pullToRefreshHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    :goto_1
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u72b6\u6001\uff0c\u4e0b\u62c9\u5237\u65b0"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->pullToRefreshHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 486
    :pswitch_2
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshBounds:I

    if-le v8, v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->mPullAnimation:Lcom/alibaba/adi/collie/util/SimpleAnimator;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->isRunning()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->mPullAnimation:Lcom/alibaba/adi/collie/util/SimpleAnimator;

    int-to-long v1, v8

    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshBounds:I

    int-to-long v3, v3

    .line 488
    const-wide/16 v5, 0x258

    sget-object v7, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeOutExpo:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 487
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->initialize(JJJLcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;)V

    .line 489
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->mPullAnimation:Lcom/alibaba/adi/collie/util/SimpleAnimator;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->start()V

    .line 492
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u72b6\u6001,\u6b63\u5728\u5237\u65b0..."

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 498
    :pswitch_3
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentHeight:I

    mul-int/lit8 v0, v0, -0x1

    if-le v8, v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->mPullAnimation:Lcom/alibaba/adi/collie/util/SimpleAnimator;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->isRunning()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 499
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->mPullAnimation:Lcom/alibaba/adi/collie/util/SimpleAnimator;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    int-to-long v1, v1

    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentHeight:I

    mul-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    .line 500
    const-wide/16 v5, 0x96

    sget-object v7, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeOutQuint:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 499
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->initialize(JJJLcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;)V

    .line 501
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->mPullAnimation:Lcom/alibaba/adi/collie/util/SimpleAnimator;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->start()V

    .line 504
    :cond_2
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u72b6\u6001\uff0cdone"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getNextDamp()F
    .locals 1

    .prologue
    .line 247
    const v0, 0x3f666666

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->currentDamp:F

    .line 248
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->currentDamp:F

    return v0
.end method

.method private getNextDiff(I)I
    .locals 2
    .parameter "offsetY"

    .prologue
    .line 252
    int-to-float v0, p1

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->currentDamp:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->disableOverScrollMode()V

    .line 152
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/util/SimpleAnimator;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->mPullAnimation:Lcom/alibaba/adi/collie/util/SimpleAnimator;

    .line 153
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->mPullAnimation:Lcom/alibaba/adi/collie/util/SimpleAnimator;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->setAnimationListener(Lcom/alibaba/adi/collie/util/SimpleAnimator$AnimationListener;)V

    .line 155
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->inflater:Landroid/view/LayoutInflater;

    .line 157
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    .line 159
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0801e1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    .line 160
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->loadingImageView:Landroid/widget/ImageView;

    .line 164
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->loadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->loadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 166
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0801de

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->tipsTextview:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0801df

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->lastUpdatedTextView:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headLogoView:Landroid/view/ViewGroup;

    .line 170
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->measureView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentHeight:I

    .line 172
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentHeight:I

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshHeight:I

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshBounds:I

    .line 174
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentWidth:I

    .line 176
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentHeight:I

    mul-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 179
    const-string v0, "size"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 182
    invoke-virtual {p0, p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 184
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    .line 185
    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 184
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->animation:Landroid/view/animation/RotateAnimation;

    .line 186
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->animation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->animation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->animation:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 190
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    .line 191
    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 190
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    .line 192
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 194
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 196
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->isRefreshable:Z

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->lastRefreshTimeKey:Ljava/lang/String;

    .line 204
    invoke-direct {p0, p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->measureView(Landroid/view/View;)V

    .line 205
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->getMeasuredHeight()I

    move-result v7

    .line 206
    .local v7, measureHeight:I
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentHeight:I

    if-lt v7, v0, :cond_0

    int-to-float v0, v7

    const v1, 0x3e99999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->mPullDistanceMax:I

    .line 208
    return-void

    .line 207
    :cond_0
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3fe0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x0

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 566
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 567
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 570
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 571
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 573
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 574
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 578
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 579
    return-void

    .line 576
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private setHintText()V
    .locals 1

    .prologue
    .line 139
    const-string v0, "\u4e0b\u62c9\u5237\u65b0"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->pullToRefreshHint:Ljava/lang/String;

    .line 140
    const-string v0, "\u677e\u5f00\u5237\u65b0"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->releaseToRefreshHint:Ljava/lang/String;

    .line 141
    const-string v0, "\u6b63\u5728\u5237\u65b0"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->refreshingHint:Ljava/lang/String;

    .line 142
    return-void
.end method

.method private setLoadingStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    const/16 v1, 0x8

    .line 510
    if-nez p1, :cond_1

    .line 511
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->loadingImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->loadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->loadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    if-ne v1, p1, :cond_0

    .line 516
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->loadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->loadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->loadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public disableOverScrollMode()V
    .locals 2

    .prologue
    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 134
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->setOverScrollMode(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public getLastRefreshTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 595
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 596
    .local v1, format:Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 597
    .local v0, date:Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->lastRefreshTimeKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 598
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->lastRefreshTimeKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    :cond_0
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 601
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 603
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6700\u8fd1\u66f4\u65b0:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLastRefreshTimeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->lastRefreshTimeKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshState()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    return v0
.end method

.method public onAnimationEnd(Lcom/alibaba/adi/collie/util/SimpleAnimator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    .line 618
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAnimationEnd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->getPosition()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    packed-switch v0, :pswitch_data_0

    .line 636
    :goto_0
    return-void

    .line 622
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshBounds:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 624
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->onRefresh()V

    goto :goto_0

    .line 627
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 629
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->setLoadingStatus(I)V

    .line 630
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 631
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 632
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->pullToRefreshHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 620
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationEnterFrame(Lcom/alibaba/adi/collie/util/SimpleAnimator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    .line 640
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->getCurrentValue()J

    move-result-wide v1

    long-to-int v0, v1

    .line 641
    .local v0, value:I
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->isRunning()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 644
    :cond_0
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshHeight:I

    add-int/lit8 v1, v1, 0xa

    if-gt v0, v1, :cond_1

    .line 645
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 647
    invoke-direct {p0, v3}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->setLoadingStatus(I)V

    .line 648
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 649
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->refreshingHint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 653
    :cond_1
    return-void
.end method

.method public onAnimationStart(Lcom/alibaba/adi/collie/util/SimpleAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 613
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAnimationStart: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->getPosition()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method protected onDirectRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 441
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    .line 443
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 444
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->changeHeaderViewByState()V

    .line 446
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->onRefresh()V

    .line 447
    return-void
.end method

.method protected onRefresh()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->refreshListener:Lcom/alibaba/adi/collie/ui/view/PullDownListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->refreshListener:Lcom/alibaba/adi/collie/ui/view/PullDownListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView$OnRefreshListener;->onRefresh()V

    .line 557
    :cond_0
    return-void
.end method

.method public onRefreshComplete()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->setLastRefreshTime()V

    .line 544
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->resetRefreshView()V

    .line 545
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "arg0"
    .parameter "firstVisiableItem"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 257
    iput p2, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->firstItemIndex:I

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 259
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 263
    invoke-super {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 264
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x2

    const/4 v8, 0x3

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 269
    iget-boolean v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->isRefreshable:Z

    if-eqz v4, :cond_0

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 413
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :cond_1
    return v3

    .line 272
    :pswitch_0
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->firstItemIndex:I

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->isRecored:Z

    if-nez v4, :cond_0

    .line 273
    iput-boolean v3, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->isRecored:Z

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->startY:I

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->startX:I

    .line 276
    sget-object v3, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    const-string v4, "\u5728down\u65f6\u5019\u8bb0\u5f55\u5f53\u524d\u4f4d\u7f6e\u2018"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :pswitch_1
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    if-eq v4, v6, :cond_3

    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    if-eq v4, v9, :cond_3

    .line 287
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    if-ne v4, v3, :cond_2

    .line 288
    iput v8, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    .line 289
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->changeHeaderViewByState()V

    .line 291
    sget-object v3, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    const-string v4, "\u7531\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\uff0c\u5230done\u72b6\u6001"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_2
    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    if-nez v3, :cond_3

    .line 294
    iput v6, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    .line 295
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->changeHeaderViewByState()V

    .line 297
    sget-object v3, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    const-string v4, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\uff0c\u5230done\u72b6\u6001"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_3
    iput-boolean v7, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->isRecored:Z

    .line 302
    iput-boolean v7, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->isBack:Z

    goto :goto_0

    .line 307
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 308
    .local v1, tempY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 310
    .local v0, tempX:I
    iget-boolean v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->isRecored:Z

    if-nez v4, :cond_4

    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->firstItemIndex:I

    if-nez v4, :cond_4

    .line 311
    sget-object v4, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    const-string v5, "\u5728move\u65f6\u5019\u8bb0\u5f55\u4e0b\u4f4d\u7f6e"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iput-boolean v3, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->isRecored:Z

    .line 313
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->startY:I

    .line 314
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->startX:I

    .line 318
    :cond_4
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->startY:I

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x24

    if-gt v4, v5, :cond_5

    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->startX:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->startY:I

    sub-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 322
    :cond_5
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    if-eq v4, v6, :cond_0

    iget-boolean v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->isRecored:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    if-eq v4, v9, :cond_0

    .line 326
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    if-nez v4, :cond_6

    .line 328
    invoke-virtual {p0, v7}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->setSelection(I)V

    .line 331
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->startY:I

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshHeight:I

    if-ge v4, v5, :cond_b

    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->startY:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshBounds:I

    if-le v4, v5, :cond_b

    .line 332
    iput v3, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    .line 333
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->changeHeaderViewByState()V

    .line 335
    sget-object v4, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    const-string v5, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230\u4e0b\u62c9\u5237\u65b0\u72b6\u6001"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_6
    :goto_1
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    if-ne v4, v3, :cond_7

    .line 353
    invoke-virtual {p0, v7}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->setSelection(I)V

    .line 356
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->startY:I

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshHeight:I

    if-lt v4, v5, :cond_c

    .line 357
    sget-object v4, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tempY = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", startY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->startY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", headRefreshHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 358
    iget v6, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 357
    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iput v7, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    .line 360
    iput-boolean v3, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->isBack:Z

    .line 361
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->changeHeaderViewByState()V

    .line 363
    sget-object v4, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    const-string v5, "\u7531done\u6216\u8005\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230\u677e\u5f00\u5237\u65b0"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_7
    :goto_2
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    if-ne v4, v8, :cond_8

    .line 376
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->startY:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshBounds:I

    if-le v4, v5, :cond_8

    .line 377
    iput v3, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    .line 378
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->changeHeaderViewByState()V

    .line 383
    :cond_8
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->startY:I

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentHeight:I

    sub-int v2, v4, v5

    .line 385
    .local v2, topOffset:I
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->mPullDistanceMax:I

    if-le v2, v4, :cond_9

    .line 386
    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->mPullDistanceMax:I

    .line 388
    :cond_9
    sget-object v4, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "offset:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    if-ne v4, v3, :cond_a

    .line 391
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7, v2, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 399
    :cond_a
    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    if-nez v3, :cond_0

    .line 400
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7, v2, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 338
    .end local v2           #topOffset:I
    :cond_b
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->startY:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshBounds:I

    if-gt v4, v5, :cond_6

    .line 339
    iput v8, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    .line 340
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->changeHeaderViewByState()V

    .line 342
    sget-object v4, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    const-string v5, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230done\u72b6\u6001"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 366
    :cond_c
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->startY:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshBounds:I

    if-gt v4, v5, :cond_7

    .line 367
    iput v8, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    .line 368
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->changeHeaderViewByState()V

    .line 370
    sget-object v4, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    const-string v5, "\u7531DOne\u6216\u8005\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230done\u72b6\u6001"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 1
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
    .line 424
    if-gez p2, :cond_0

    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->setMaxOverScrollY(I)V

    .line 426
    const/4 p2, 0x0

    .line 427
    const/4 p4, 0x0

    .line 432
    :goto_0
    invoke-super/range {p0 .. p9}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0

    .line 429
    :cond_0
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->mPullDistanceMax:I

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->setMaxOverScrollY(I)V

    goto :goto_0
.end method

.method public resetRefreshView()V
    .locals 2

    .prologue
    .line 548
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->state:I

    .line 549
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->getLastRefreshTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->changeHeaderViewByState()V

    .line 551
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->getLastRefreshTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/view/BounceListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 584
    return-void
.end method

.method public setHeadLogoView(Landroid/view/View;)V
    .locals 4
    .parameter "logo"

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headLogoView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headLogoView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 224
    :cond_0
    if-nez p1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headLogoView:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headLogoView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->measureView(Landroid/view/View;)V

    .line 231
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headLogoView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 232
    .local v0, logoHeight:I
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshHeight:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentHeight:I

    .line 234
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentHeight:I

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 235
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshHeight:I

    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headContentHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headRefreshBounds:I

    .line 239
    return-void

    .line 227
    .end local v0           #logoHeight:I
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headLogoView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->headLogoView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHintText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "pullToRefreshHint"
    .parameter "releaseToRefreshHint"
    .parameter "refreshingHint"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->pullToRefreshHint:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->releaseToRefreshHint:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->refreshingHint:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setLastRefreshTime()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->lastRefreshTimeKey:Ljava/lang/String;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPrefCurrentDate(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public setLastRefreshTimeKey(Ljava/lang/String;)V
    .locals 0
    .parameter "lastRefreshTimeKey"

    .prologue
    .line 591
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->lastRefreshTimeKey:Ljava/lang/String;

    .line 592
    return-void
.end method

.method public setOnRefreshListener(Lcom/alibaba/adi/collie/ui/view/PullDownListView$OnRefreshListener;)V
    .locals 1
    .parameter "refreshListener"

    .prologue
    .line 524
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->refreshListener:Lcom/alibaba/adi/collie/ui/view/PullDownListView$OnRefreshListener;

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->isRefreshable:Z

    .line 526
    return-void
.end method
