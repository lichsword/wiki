.class Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/util/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GaussianSlideWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow$FloatRGB;
    }
.end annotation


# instance fields
.field matrix:[F

.field size:I

.field slideWindow:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow$FloatRGB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 11
    .parameter "radius"

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->size:I

    .line 433
    mul-int/lit8 v7, p1, 0x2

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->size:I

    .line 435
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->slideWindow:Ljava/util/LinkedList;

    .line 438
    iget v7, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->size:I

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->matrix:[F

    .line 439
    div-int/lit8 v7, p1, 0x3

    int-to-float v3, v7

    .line 440
    .local v3, sigma:F
    const/high16 v7, 0x4000

    mul-float/2addr v7, v3

    mul-float v4, v7, v3

    .line 441
    .local v4, sigma22:F
    const-wide v7, 0x401921fb54442d18L

    float-to-double v9, v3

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v5, v7

    .line 442
    .local v5, sqrtSigmaPi2:F
    const/4 v6, 0x0

    .line 443
    .local v6, total:F
    const/4 v2, 0x0

    .line 444
    .local v2, index:I
    neg-int v1, p1

    .local v1, i:I
    :goto_0
    if-le v1, p1, :cond_0

    .line 450
    const/4 v1, 0x0

    :goto_1
    iget v7, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->size:I

    if-lt v1, v7, :cond_1

    .line 452
    return-void

    .line 445
    :cond_0
    mul-int v7, v1, v1

    int-to-float v0, v7

    .line 446
    .local v0, distance:F
    iget-object v7, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->matrix:[F

    neg-float v8, v0

    div-float/2addr v8, v4

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float/2addr v8, v5

    aput v8, v7, v2

    .line 447
    iget-object v7, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->matrix:[F

    aget v7, v7, v2

    add-float/2addr v6, v7

    .line 448
    add-int/lit8 v2, v2, 0x1

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v0           #distance:F
    :cond_1
    iget-object v7, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->matrix:[F

    aget v8, v7, v1

    div-float/2addr v8, v6

    aput v8, v7, v1

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(I)V
    .locals 5
    .parameter "color"

    .prologue
    .line 459
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v2, v3

    .line 460
    .local v2, r:F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v1, v3

    .line 461
    .local v1, g:F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v0, v3

    .line 462
    .local v0, b:F
    iget-object v3, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->slideWindow:Ljava/util/LinkedList;

    new-instance v4, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow$FloatRGB;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow$FloatRGB;-><init>(Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;FFF)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 463
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->slideWindow:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 467
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->slideWindow:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 456
    return-void
.end method

.method public toColor()I
    .locals 10

    .prologue
    .line 470
    const/4 v5, 0x0

    .line 471
    .local v5, r:F
    const/4 v1, 0x0

    .line 472
    .local v1, g:F
    const/4 v0, 0x0

    .line 473
    .local v0, b:F
    const/4 v2, 0x0

    .line 475
    .local v2, i:I
    iget-object v6, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->slideWindow:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 476
    .local v3, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 483
    const/16 v6, 0xff

    float-to-int v7, v5

    and-int/lit16 v7, v7, 0xff

    float-to-int v8, v1

    and-int/lit16 v8, v8, 0xff

    float-to-int v9, v0

    and-int/lit16 v9, v9, 0xff

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6

    .line 477
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow$FloatRGB;

    .line 478
    .local v4, p:Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow$FloatRGB;
    iget v6, v4, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow$FloatRGB;->r:F

    iget-object v7, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->matrix:[F

    aget v7, v7, v2

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 479
    iget v6, v4, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow$FloatRGB;->g:F

    iget-object v7, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->matrix:[F

    aget v7, v7, v2

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    .line 480
    iget v6, v4, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow$FloatRGB;->b:F

    iget-object v7, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->matrix:[F

    aget v7, v7, v2

    mul-float/2addr v6, v7

    add-float/2addr v0, v6

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
