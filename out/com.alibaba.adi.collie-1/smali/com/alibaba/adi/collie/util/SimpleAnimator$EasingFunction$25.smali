.class Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$25;
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
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public obtainValue(FFFF)D
    .locals 12
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 605
    const-wide v2, 0x3ffb39ac00000000L

    .line 606
    .local v2, s:D
    const/4 v1, 0x0

    .line 607
    .local v1, p:F
    move v0, p3

    .line 609
    .local v0, a:F
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-nez v4, :cond_0

    .line 610
    float-to-double v4, p2

    .line 630
    :goto_0
    return-wide v4

    .line 612
    :cond_0
    const/high16 v4, 0x4000

    div-float v4, p4, v4

    div-float/2addr p1, v4

    const/high16 v4, 0x4000

    cmpl-float v4, p1, v4

    if-nez v4, :cond_1

    .line 613
    add-float v4, p2, p3

    float-to-double v4, v4

    goto :goto_0

    .line 615
    :cond_1
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-nez v4, :cond_2

    .line 616
    const v4, 0x3ee66667

    mul-float v1, p4, v4

    .line 619
    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    .line 620
    move v0, p3

    .line 621
    const/high16 v4, 0x4080

    div-float v4, v1, v4

    float-to-double v2, v4

    .line 626
    :goto_1
    const/high16 v4, 0x3f80

    cmpg-float v4, p1, v4

    if-gez v4, :cond_4

    .line 627
    const-wide/high16 v4, -0x4020

    float-to-double v6, v0

    const-wide/high16 v8, 0x4000

    const/high16 v10, 0x4120

    const/high16 v11, 0x3f80

    sub-float/2addr p1, v11

    mul-float/2addr v10, p1

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    mul-float v8, p1, p4

    float-to-double v8, v8

    sub-double/2addr v8, v2

    const-wide v10, 0x401921fb54442d18L

    mul-double/2addr v8, v10

    float-to-double v10, v1

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    mul-double/2addr v4, v6

    float-to-double v6, p2

    add-double/2addr v4, v6

    goto :goto_0

    .line 623
    :cond_3
    float-to-double v4, v1

    const-wide v6, 0x401921fb54442d18L

    div-double/2addr v4, v6

    div-float v6, p3, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    mul-double v2, v4, v6

    goto :goto_1

    .line 630
    :cond_4
    float-to-double v4, v0

    const-wide/high16 v6, 0x4000

    const/high16 v8, -0x3ee0

    const/high16 v9, 0x3f80

    sub-float/2addr p1, v9

    mul-float/2addr v8, p1

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    mul-float v6, p1, p4

    float-to-double v6, v6

    sub-double/2addr v6, v2

    const-wide v8, 0x401921fb54442d18L

    mul-double/2addr v6, v8

    float-to-double v8, v1

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0

    mul-double/2addr v4, v6

    float-to-double v6, p3

    add-double/2addr v4, v6

    float-to-double v6, p2

    add-double/2addr v4, v6

    goto/16 :goto_0
.end method
