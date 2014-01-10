.class Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$4;
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
    .line 361
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
    const/high16 v2, 0x3f80

    const/high16 v1, 0x4000

    .line 366
    div-float v0, p4, v1

    div-float/2addr p1, v0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    .line 367
    div-float v0, p3, v1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    float-to-double v0, v0

    .line 369
    :goto_0
    return-wide v0

    :cond_0
    neg-float v0, p3

    div-float/2addr v0, v1

    sub-float/2addr p1, v2

    sub-float v1, p1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    float-to-double v0, v0

    goto :goto_0
.end method
