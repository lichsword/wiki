.class Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$5;
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
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public obtainValue(FFFF)D
    .locals 2
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 378
    div-float/2addr p1, p4

    mul-float v0, p3, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    float-to-double v0, v0

    return-wide v0
.end method
