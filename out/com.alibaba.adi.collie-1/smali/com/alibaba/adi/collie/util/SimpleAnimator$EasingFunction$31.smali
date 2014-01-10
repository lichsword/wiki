.class Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$31;
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
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public obtainValue(FFFF)D
    .locals 5
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v2, 0x3fe0

    const/high16 v1, 0x4000

    .line 702
    div-float v0, p4, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 703
    sget-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInBounce:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    mul-float/2addr v1, p1

    invoke-interface {v0, v1, v4, p3, p4}, Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;->obtainValue(FFFF)D

    move-result-wide v0

    mul-double/2addr v0, v2

    float-to-double v2, p2

    add-double/2addr v0, v2

    .line 705
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeOutBounce:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    mul-float/2addr v1, p1

    sub-float/2addr v1, p4

    invoke-interface {v0, v1, v4, p3, p4}, Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;->obtainValue(FFFF)D

    move-result-wide v0

    mul-double/2addr v0, v2

    const/high16 v2, 0x3f00

    mul-float/2addr v2, p3

    float-to-double v2, v2

    add-double/2addr v0, v2

    float-to-double v2, p2

    add-double/2addr v0, v2

    goto :goto_0
.end method
