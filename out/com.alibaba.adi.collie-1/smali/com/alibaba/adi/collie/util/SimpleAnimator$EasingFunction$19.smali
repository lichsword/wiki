.class Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$19;
.super Ljava/lang/Object;
.source "SimpleAnimator.java"

# interfaces
.implements Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public obtainValue(FFFF)D
    .locals 6
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    const/high16 v1, 0x4000

    const/high16 v3, 0x3f80

    const-wide/high16 v4, 0x4000

    .line 511
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    float-to-double v0, p2

    .line 514
    :goto_0
    return-wide v0

    .line 512
    :cond_0
    cmpl-float v0, p1, p4

    if-nez v0, :cond_1

    add-float v0, p2, p3

    float-to-double v0, v0

    goto :goto_0

    .line 513
    :cond_1
    div-float v0, p4, v1

    div-float/2addr p1, v0

    cmpg-float v0, p1, v3

    if-gez v0, :cond_2

    div-float v0, p3, v1

    float-to-double v0, v0

    const/high16 v2, 0x4120

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    float-to-double v2, p2

    add-double/2addr v0, v2

    goto :goto_0

    .line 514
    :cond_2
    div-float v0, p3, v1

    float-to-double v0, v0

    const/high16 v2, -0x3ee0

    sub-float/2addr p1, v3

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    neg-double v2, v2

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    float-to-double v2, p2

    add-double/2addr v0, v2

    goto :goto_0
.end method
