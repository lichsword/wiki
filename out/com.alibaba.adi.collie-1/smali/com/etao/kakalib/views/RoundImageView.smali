.class public Lcom/etao/kakalib/views/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x0

    const/4 v5, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/etao/kakalib/views/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 39
    .local v10, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 40
    .local v9, bitmapDrawdrawable:Landroid/graphics/drawable/BitmapDrawable;
    instance-of v0, v10, Landroid/taobao/imagebinder/DrawableProxy;

    if-eqz v0, :cond_0

    .line 41
    check-cast v10, Landroid/taobao/imagebinder/DrawableProxy;

    .end local v10           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroid/taobao/imagebinder/DrawableProxy;->getRealDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .restart local v10       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v9, v10

    .line 43
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 45
    if-nez v9, :cond_2

    .line 71
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/etao/kakalib/views/RoundImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/etao/kakalib/views/RoundImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 54
    .local v11, fullSizeBitmap:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/etao/kakalib/views/RoundImageView;->getMeasuredWidth()I

    move-result v3

    .line 57
    .local v3, scaledWidth:I
    invoke-virtual {p0}, Lcom/etao/kakalib/views/RoundImageView;->getMeasuredHeight()I

    move-result v4

    .line 60
    .local v4, scaledHeight:I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v3, v0, :cond_3

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v4, v0, :cond_3

    .line 61
    move-object v1, v11

    .line 66
    .local v1, mScaledBitmap:Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {p0}, Lcom/etao/kakalib/views/RoundImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x9

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/etao/kakalib/util/ImageTool;->toRoundCorner(Landroid/content/Context;Landroid/graphics/Bitmap;IIIZZZZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 69
    .local v12, roundBitmap:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    invoke-virtual {p1, v12, v13, v13, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 64
    .end local v1           #mScaledBitmap:Landroid/graphics/Bitmap;
    .end local v12           #roundBitmap:Landroid/graphics/Bitmap;
    :cond_3
    const/4 v0, 0x1

    .line 63
    invoke-static {v11, v3, v4, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1       #mScaledBitmap:Landroid/graphics/Bitmap;
    goto :goto_1
.end method
