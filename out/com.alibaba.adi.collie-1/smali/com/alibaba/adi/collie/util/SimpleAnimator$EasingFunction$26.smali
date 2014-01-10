.class Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$26;
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
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public obtainValue(FFFF)D
    .locals 3
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 639
    const v0, 0x3fd9cd60

    .line 641
    .local v0, s:F
    div-float/2addr p1, p4

    mul-float v1, p3, p1

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f80

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    float-to-double v1, v1

    return-wide v1
.end method
