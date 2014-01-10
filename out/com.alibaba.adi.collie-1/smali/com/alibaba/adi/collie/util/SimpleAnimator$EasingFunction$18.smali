.class Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$18;
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
    .line 497
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
    .line 502
    cmpl-float v0, p1, p4

    if-nez v0, :cond_0

    add-float v0, p2, p3

    float-to-double v0, v0

    :goto_0
    return-wide v0

    :cond_0
    float-to-double v0, p3

    const-wide/high16 v2, 0x4000

    const/high16 v4, -0x3ee0

    mul-float/2addr v4, p1

    div-float/2addr v4, p4

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    neg-double v2, v2

    const-wide/high16 v4, 0x3ff0

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    float-to-double v2, p2

    add-double/2addr v0, v2

    goto :goto_0
.end method
