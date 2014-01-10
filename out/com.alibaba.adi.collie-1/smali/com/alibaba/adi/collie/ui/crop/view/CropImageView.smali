.class public Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;
.super Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;
.source "CropImageView.java"


# instance fields
.field private mCropImage:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

.field public mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mMotionHighlightView:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    .line 37
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->disableHardwareAcceleration(Landroid/view/View;)V

    .line 38
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;)V
    .locals 13
    .parameter "hv"

    .prologue
    .line 217
    iget-object v1, p1, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 219
    .local v1, drawRect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 220
    .local v5, width:F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 222
    .local v2, height:F
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 223
    .local v4, thisWidth:F
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 225
    .local v3, thisHeight:F
    div-float v9, v4, v5

    const v10, 0x3f19999a

    mul-float v6, v9, v10

    .line 226
    .local v6, z1:F
    div-float v9, v3, v2

    const v10, 0x3f19999a

    mul-float v7, v9, v10

    .line 228
    .local v7, z2:F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 229
    .local v8, zoom:F
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 230
    const/high16 v9, 0x3f80

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 232
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    .line 233
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 234
    .local v0, coordinates:[F
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 235
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x4396

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->zoomTo(FFFF)V

    .line 238
    .end local v0           #coordinates:[F
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->ensureVisible(Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;)V

    .line 239
    return-void
.end method

.method private ensureVisible(Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;)V
    .locals 10
    .parameter "hv"

    .prologue
    const/4 v9, 0x0

    .line 198
    iget-object v6, p1, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 200
    .local v6, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->getLeft()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 201
    .local v1, panDeltaX1:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->getRight()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 203
    .local v2, panDeltaX2:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->getTop()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 204
    .local v4, panDeltaY1:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->getBottom()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 206
    .local v5, panDeltaY2:I
    if-eqz v1, :cond_2

    move v0, v1

    .line 207
    .local v0, panDeltaX:I
    :goto_0
    if-eqz v4, :cond_3

    move v3, v4

    .line 209
    .local v3, panDeltaY:I
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 210
    :cond_0
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->panBy(FF)V

    .line 212
    :cond_1
    return-void

    .end local v0           #panDeltaX:I
    .end local v3           #panDeltaY:I
    :cond_2
    move v0, v2

    .line 206
    goto :goto_0

    .restart local v0       #panDeltaX:I
    :cond_3
    move v3, v5

    .line 207
    goto :goto_1
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 80
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 86
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 97
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->invalidate()V

    .line 98
    return-void

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    .line 82
    .local v1, hv:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->setFocus(Z)V

    .line 83
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->invalidate()V

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v1           #hv:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    .line 88
    .restart local v1       #hv:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->getHit(FF)I

    move-result v0

    .line 89
    .local v0, edge:I
    if-eq v0, v5, :cond_3

    .line 90
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    invoke-virtual {v1, v5}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->setFocus(Z)V

    .line 92
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->invalidate()V

    goto :goto_2

    .line 86
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;)V
    .locals 1
    .parameter "hv"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->invalidate()V

    .line 252
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 244
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 247
    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    invoke-virtual {v1, p1}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 23
    invoke-super/range {p0 .. p5}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 24
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 33
    :cond_1
    return-void

    .line 25
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    .line 26
    .local v0, hv:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 27
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->invalidate()V

    .line 28
    iget-boolean v2, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_0

    .line 29
    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->centerBasedOnHighlightView(Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 102
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mCropImage:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    .line 103
    .local v0, cropImage:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;
    iget-boolean v5, v0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mSaving:Z

    if-eqz v5, :cond_0

    move v5, v6

    .line 193
    :goto_0
    return v5

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 178
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :goto_2
    move v5, v7

    .line 193
    goto :goto_0

    .line 109
    :pswitch_0
    iget-boolean v5, v0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_2

    .line 110
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 112
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 118
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    .line 119
    .local v2, hv:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->getHit(FF)I

    move-result v1

    .line 120
    .local v1, edge:I
    if-eq v1, v7, :cond_4

    .line 121
    iput v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mMotionEdge:I

    .line 122
    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mMotionHighlightView:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mLastX:F

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mLastY:F

    .line 126
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mMotionHighlightView:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    const/16 v5, 0x20

    if-ne v1, v5, :cond_3

    sget-object v5, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;->Move:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    :goto_4
    invoke-virtual {v6, v5}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->setMode(Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;)V

    goto :goto_1

    .line 127
    :cond_3
    sget-object v5, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;->None:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    goto :goto_4

    .line 112
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 135
    .end local v1           #edge:I
    .end local v2           #hv:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
    .end local v3           #i:I
    :pswitch_1
    iget-boolean v5, v0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_a

    .line 136
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_6

    .line 156
    .end local v3           #i:I
    :cond_5
    :goto_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mMotionHighlightView:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    goto :goto_1

    .line 137
    .restart local v3       #i:I
    :cond_6
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    .line 138
    .restart local v2       #hv:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 139
    iput-object v2, v0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mCrop:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    .line 140
    const/4 v4, 0x0

    .local v4, j:I
    :goto_7
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_7

    .line 147
    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->centerBasedOnHighlightView(Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;)V

    .line 148
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mCropImage:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    iput-boolean v6, v5, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mWaitingToPick:Z

    move v5, v7

    .line 149
    goto/16 :goto_0

    .line 141
    :cond_7
    if-ne v4, v3, :cond_8

    .line 140
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 145
    :cond_8
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    invoke-virtual {v5, v7}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->setHidden(Z)V

    goto :goto_8

    .line 136
    .end local v4           #j:I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 152
    .end local v2           #hv:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
    .end local v3           #i:I
    :cond_a
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mMotionHighlightView:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    if-eqz v5, :cond_5

    .line 153
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mMotionHighlightView:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    invoke-direct {p0, v5}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->centerBasedOnHighlightView(Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;)V

    .line 154
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mMotionHighlightView:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    sget-object v6, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;->Grow:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    invoke-virtual {v5, v6}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->setMode(Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;)V

    goto :goto_6

    .line 159
    :pswitch_2
    iget-boolean v5, v0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_b

    .line 160
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 161
    :cond_b
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mMotionHighlightView:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    if-eqz v5, :cond_1

    .line 162
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mMotionHighlightView:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    iget v6, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mLastX:F

    sub-float/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mLastY:F

    sub-float/2addr v9, v10

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->handleMotion(IFF)V

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mLastX:F

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mLastY:F

    .line 172
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mMotionHighlightView:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    invoke-direct {p0, v5}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->ensureVisible(Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;)V

    goto/16 :goto_1

    .line 180
    :pswitch_3
    invoke-virtual {p0, v7, v7}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 188
    :pswitch_4
    invoke-virtual {p0, v7, v7}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 178
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->postTranslate(FF)V

    .line 70
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 75
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    .line 72
    .local v0, hv:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 73
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->invalidate()V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setCropImage(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)V
    .locals 0
    .parameter "cropImage"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mCropImage:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    .line 257
    return-void
.end method

.method protected zoomIn()V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->zoomIn()V

    .line 52
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    return-void

    .line 52
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    .line 53
    .local v0, hv:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 54
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->invalidate()V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->zoomOut()V

    .line 61
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    return-void

    .line 61
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    .line 62
    .local v0, hv:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 63
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->invalidate()V

    goto :goto_0
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->zoomTo(FFF)V

    .line 43
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    return-void

    .line 43
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    .line 44
    .local v0, hv:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 45
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->invalidate()V

    goto :goto_0
.end method
