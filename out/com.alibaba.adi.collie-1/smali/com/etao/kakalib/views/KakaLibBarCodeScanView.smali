.class public Lcom/etao/kakalib/views/KakaLibBarCodeScanView;
.super Landroid/widget/FrameLayout;
.source "KakaLibBarCodeScanView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KakaLibBarCodeScanView"


# instance fields
.field private mScanBar:Landroid/widget/ImageView;

.field private scanAnimationBegin:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-string v2, "KakaLibBarCodeScanView"

    const-string v3, "KakaLibBarCodeScanView init"

    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 30
    .local v0, flater:Landroid/view/LayoutInflater;
    const-string v2, "kakalib_barscanview"

    const v3, 0x7f030002

    .line 29
    invoke-static {p1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 32
    .local v1, view:Landroid/view/View;
    const-string v2, "bar_scan_net"

    const v3, 0x7f0a0004

    .line 31
    invoke-static {p1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->mScanBar:Landroid/widget/ImageView;

    .line 33
    return-void
.end method


# virtual methods
.method public endScanAnimation()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "KakaLibBarCodeScanView"

    const-string v1, "endScanAnimation"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->mScanBar:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->mScanBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 59
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 36
    const-string v0, "KakaLibBarCodeScanView"

    const-string v1, "onLayout"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 38
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->startScanAnimation()V

    .line 39
    return-void
.end method

.method public startScanAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    const-string v0, "KakaLibBarCodeScanView"

    const-string v1, "startScanAnimation"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->scanAnimationBegin:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 45
    invoke-virtual {p0}, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 44
    iput-object v0, p0, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->scanAnimationBegin:Landroid/view/animation/Animation;

    .line 46
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->scanAnimationBegin:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 47
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->scanAnimationBegin:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 48
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->scanAnimationBegin:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 49
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->scanAnimationBegin:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 50
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->mScanBar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->scanAnimationBegin:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 52
    :cond_0
    return-void
.end method
