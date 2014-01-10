.class Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$30;
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
    .line 680
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
    const/high16 v4, 0x40f2

    .line 685
    div-float/2addr p1, p4

    const v0, 0x3eba2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 686
    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    float-to-double v0, v0

    .line 692
    :goto_0
    return-wide v0

    .line 687
    :cond_0
    const v0, 0x3f3a2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 688
    const v0, 0x3f0ba2e9

    sub-float/2addr p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f40

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    float-to-double v0, v0

    goto :goto_0

    .line 689
    :cond_1
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 690
    const v0, 0x3f51745d

    sub-float/2addr p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f70

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    float-to-double v0, v0

    goto :goto_0

    .line 692
    :cond_2
    const v0, 0x3f745d17

    sub-float/2addr p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f7c

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    float-to-double v0, v0

    goto :goto_0
.end method
