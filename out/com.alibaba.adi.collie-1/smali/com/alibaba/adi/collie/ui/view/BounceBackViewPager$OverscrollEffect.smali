.class Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;
.super Ljava/lang/Object;
.source "BounceBackViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverscrollEffect"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mOverscroll:F

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;-><init>(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->startAnimation(F)V

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->onRelease()V

    return-void
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;)Z
    .locals 1
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->isOverscrolling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;)F
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    return v0
.end method

.method private isOverscrolling()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 112
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    #getter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollPosition:I
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$4(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)I

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    #getter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollPosition:I
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$4(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)I

    move-result v4

    if-ne v3, v4, :cond_3

    move v0, v1

    .line 116
    .local v0, isLast:Z
    :goto_1
    if-eqz v0, :cond_2

    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    :cond_2
    move v1, v2

    .line 119
    goto :goto_0

    .end local v0           #isLast:Z
    :cond_3
    move v0, v2

    .line 115
    goto :goto_1
.end method

.method private onRelease()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    const-string v1, "OverscrollEffect.onRelease()"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    #getter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->isSupportObjectAnimator:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$2(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect$1;-><init>(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->startAnimation(F)V

    goto :goto_0
.end method

.method private startAnimation(F)V
    .locals 5
    .parameter "target"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 103
    const-string v1, "pull"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    .line 104
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 105
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 106
    .local v0, scale:F
    sget-object v1, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OverscrollEffect.startAnimation(): scale="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    #getter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mOverscrollAnimationDuration:I
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$3(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 108
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 109
    return-void
.end method


# virtual methods
.method public setPull(F)V
    .locals 3
    .parameter "deltaDistance"

    .prologue
    .line 59
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OverscrollEffect.setPull() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    .line 61
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    #getter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mLastPosition:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$0(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)I

    move-result v1

    #calls: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->invalidateVisibleChilds(I)V
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$1(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;I)V

    .line 62
    return-void
.end method
