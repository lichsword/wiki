.class Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$28;
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
    .line 656
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
    const v5, 0x3fc33333

    const/high16 v3, 0x3f80

    const/high16 v4, 0x4000

    .line 661
    const v0, 0x3fd9cd60

    .line 663
    .local v0, s:F
    div-float v1, p4, v4

    div-float/2addr p1, v1

    cmpg-float v1, p1, v3

    if-gez v1, :cond_0

    .line 664
    div-float v1, p3, v4

    mul-float v2, p1, p1

    mul-float/2addr v0, v5

    add-float/2addr v3, v0

    mul-float/2addr v3, p1

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    float-to-double v1, v1

    .line 667
    :goto_0
    return-wide v1

    :cond_0
    div-float v1, p3, v4

    sub-float/2addr p1, v4

    mul-float v2, p1, p1

    mul-float/2addr v0, v5

    add-float/2addr v3, v0

    mul-float/2addr v3, p1

    add-float/2addr v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    float-to-double v1, v1

    goto :goto_0
.end method
