.class Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$22;
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
    .line 536
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
    const-wide/high16 v4, 0x3ff0

    const/high16 v3, 0x3f80

    const/high16 v2, 0x4000

    .line 541
    div-float v0, p4, v2

    div-float/2addr p1, v0

    cmpg-float v0, p1, v3

    if-gez v0, :cond_0

    neg-float v0, p3

    div-float/2addr v0, v2

    float-to-double v0, v0

    mul-float v2, p1, p1

    sub-float v2, v3, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    float-to-double v2, p2

    add-double/2addr v0, v2

    .line 542
    :goto_0
    return-wide v0

    :cond_0
    div-float v0, p3, v2

    float-to-double v0, v0

    sub-float/2addr p1, v2

    mul-float v2, p1, p1

    sub-float v2, v3, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    float-to-double v2, p2

    add-double/2addr v0, v2

    goto :goto_0
.end method
