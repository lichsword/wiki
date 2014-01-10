.class public final Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;
.super Ljava/lang/Object;
.source "KakaLibPosterScanningResActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayMetricsModel"
.end annotation


# instance fields
.field public screenDensity:F

.field public screenDpi:I

.field public screenHeightPx:I

.field public screenWidthPx:I

.field final synthetic this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;


# direct methods
.method public constructor <init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iget-object v1, p1, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 95
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;->screenWidthPx:I

    .line 96
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;->screenHeightPx:I

    .line 97
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;->screenDpi:I

    .line 98
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;->screenDensity:F

    .line 99
    return-void
.end method


# virtual methods
.method public dp2Px(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 102
    int-to-float v0, p1

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;->screenDensity:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0
.end method

.method public px2Dp(I)I
    .locals 2
    .parameter "px"

    .prologue
    .line 106
    int-to-float v0, p1

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$DisplayMetricsModel;->screenDensity:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0
.end method
