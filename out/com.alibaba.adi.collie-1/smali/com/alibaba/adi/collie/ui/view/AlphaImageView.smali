.class public Lcom/alibaba/adi/collie/ui/view/AlphaImageView;
.super Landroid/widget/ImageView;
.source "AlphaImageView.java"


# static fields
.field public static final ALPHA_MAX:F = 1.0f

.field public static final ALPHA_MIN:F


# instance fields
.field private alpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/AlphaImageView;->alpha:F

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/AlphaImageView;->alpha:F

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/AlphaImageView;->alpha:F

    .line 25
    return-void
.end method


# virtual methods
.method public getAlphaValue(F)F
    .locals 0
    .parameter "alpha"

    .prologue
    .line 42
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/high16 v0, 0x437f

    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/AlphaImageView;->alpha:F

    mul-float/2addr v0, v2

    float-to-int v5, v0

    .line 49
    const/4 v6, 0x4

    move-object v0, p1

    move v2, v1

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 51
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    return-void
.end method

.method public setAlphaValue(F)V
    .locals 2
    .parameter "alpha"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/AlphaImageView;->alpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 32
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/AlphaImageView;->alpha:F

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/view/AlphaImageView;->setAlpha(F)V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/AlphaImageView;->postInvalidate()V

    goto :goto_0
.end method
