.class Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$29;
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
    .line 671
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
    .line 676
    float-to-double v0, p3

    sget-object v2, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeOutBounce:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    sub-float v3, p4, p1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p3, p4}, Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;->obtainValue(FFFF)D

    move-result-wide v2

    sub-double/2addr v0, v2

    float-to-double v2, p2

    add-double/2addr v0, v2

    return-wide v0
.end method
