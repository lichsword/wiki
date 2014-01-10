.class Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/util/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyPixel"
.end annotation


# instance fields
.field mB:I

.field mG:I

.field mR:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mR:I

    .line 331
    iput v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mG:I

    .line 332
    iput v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mB:I

    .line 329
    return-void
.end method


# virtual methods
.method public minus(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 347
    iget v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mR:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mR:I

    .line 348
    iget v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mG:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mG:I

    .line 349
    iget v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mB:I

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mB:I

    .line 350
    return-void
.end method

.method public plus(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 341
    iget v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mR:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mR:I

    .line 342
    iget v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mG:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mG:I

    .line 343
    iget v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mB:I

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mB:I

    .line 344
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 335
    iput v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mR:I

    .line 336
    iput v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mG:I

    .line 337
    iput v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mB:I

    .line 338
    return-void
.end method

.method public toDivInt(I)I
    .locals 4
    .parameter "x"

    .prologue
    .line 353
    const/16 v0, 0xff

    iget v1, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mR:I

    div-int/2addr v1, p1

    iget v2, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mG:I

    div-int/2addr v2, p1

    iget v3, p0, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->mB:I

    div-int/2addr v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method
