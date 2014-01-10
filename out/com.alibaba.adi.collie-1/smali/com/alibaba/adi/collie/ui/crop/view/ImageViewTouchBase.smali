.class public abstract Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$Recycler;
    }
.end annotation


# static fields
.field static final SCALE_RATE:F = 1.25f

.field public static final STATE_DOODLE:I = 0x1

.field public static final STATE_HIGHLIGHT:I = 0x0

.field public static final STATE_NONE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ImageViewTouchBase"


# instance fields
.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected final mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field protected mLastXTouchPos:I

.field protected mLastYTouchPos:I

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field private mOnLayoutRunnable:Ljava/lang/Runnable;

.field private mRecycler:Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$Recycler;

.field protected mState:I

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 231
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 54
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mMatrixValues:[F

    .line 57
    new-instance v0, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    .line 59
    iput v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mThisHeight:I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mState:I

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 148
    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 232
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->init()V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 236
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 54
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mMatrixValues:[F

    .line 57
    new-instance v0, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    .line 59
    iput v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mThisHeight:I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mState:I

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 148
    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 237
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->init()V

    .line 238
    return-void
.end method

.method private getProperBaseMatrix(Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;Landroid/graphics/Matrix;)V
    .locals 10
    .parameter "bitmap"
    .parameter "matrix"

    .prologue
    const/high16 v9, 0x4000

    .line 260
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 261
    .local v4, viewWidth:F
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 263
    .local v3, viewHeight:F
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 264
    .local v5, w:F
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 265
    .local v0, h:F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 269
    div-float v7, v4, v5

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 270
    .local v6, widthScale:F
    div-float v7, v3, v0

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 271
    .local v1, heightScale:F
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 273
    .local v2, scale:F
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 274
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 276
    mul-float v7, v5, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v9

    mul-float v8, v0, v2

    sub-float v8, v3, v8

    div-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 277
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 241
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 242
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 132
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 136
    .local v1, old:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-virtual {v2, p1}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-virtual {v2, p2}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->setRotation(I)V

    .line 139
    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mRecycler:Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$Recycler;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mRecycler:Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$Recycler;

    invoke-interface {v2, v1}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$Recycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 142
    :cond_1
    return-void
.end method


# virtual methods
.method public center(ZZ)V
    .locals 12
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 189
    iget-object v8, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-virtual {v8}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_0

    .line 228
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 195
    .local v3, m:Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-virtual {v8}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-virtual {v9}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 197
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 199
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 200
    .local v2, height:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 202
    .local v7, width:F
    const/4 v0, 0x0

    .local v0, deltaX:F
    const/4 v1, 0x0

    .line 204
    .local v1, deltaY:F
    if-eqz p2, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getHeight()I

    move-result v5

    .line 206
    .local v5, viewHeight:I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3

    .line 207
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 215
    .end local v5           #viewHeight:I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getWidth()I

    move-result v6

    .line 217
    .local v6, viewWidth:I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 218
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 226
    .end local v6           #viewWidth:I
    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->postTranslate(FF)V

    .line 227
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 208
    .restart local v5       #viewHeight:I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 209
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    .line 210
    goto :goto_1

    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 219
    .end local v5           #viewHeight:I
    .restart local v6       #viewWidth:I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 220
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    .line 221
    goto :goto_2

    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 222
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 146
    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 284
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 285
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected maxZoom()F
    .locals 5

    .prologue
    .line 295
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 296
    const/high16 v2, 0x3f80

    .line 302
    :goto_0
    return v2

    .line 299
    :cond_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mThisWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 300
    .local v1, fw:F
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mThisHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 301
    .local v0, fh:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x4080

    mul-float v2, v3, v4

    .line 302
    .local v2, max:F
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v1, 0x3f80

    .line 109
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 112
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->zoomTo(F)V

    .line 113
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 93
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 94
    sub-int v1, p4, p2

    iput v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mThisWidth:I

    .line 95
    sub-int v1, p5, p3

    iput v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mThisHeight:I

    .line 96
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 97
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 99
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getProperBaseMatrix(Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 105
    :cond_1
    return-void
.end method

.method protected panBy(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 393
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->postTranslate(FF)V

    .line 394
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 395
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 390
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 126
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 153
    new-instance v0, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;Z)V

    .line 154
    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;Z)V
    .locals 3
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 159
    .local v0, viewWidth:I
    if-gtz v0, :cond_0

    .line 160
    new-instance v1, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$1;-><init>(Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;Z)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 181
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getProperBaseMatrix(Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 170
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getRotation()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 176
    :goto_1
    if-eqz p2, :cond_1

    .line 177
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->maxZoom()F

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_0

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 173
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setRecycler(Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$Recycler;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mRecycler:Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$Recycler;

    .line 87
    return-void
.end method

.method protected zoomIn()V
    .locals 1

    .prologue
    .line 345
    const/high16 v0, 0x3fa0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->zoomIn(F)V

    .line 346
    return-void
.end method

.method protected zoomIn(F)V
    .locals 5
    .parameter "rate"

    .prologue
    const/high16 v4, 0x4000

    .line 353
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getScale()F

    move-result v2

    iget v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 361
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 363
    .local v1, cy:F
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 364
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 1

    .prologue
    .line 349
    const/high16 v0, 0x3fa0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->zoomOut(F)V

    .line 350
    return-void
.end method

.method protected zoomOut(F)V
    .locals 7
    .parameter "rate"

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x4000

    const/high16 v5, 0x3f80

    .line 368
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 386
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 373
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 376
    .local v1, cy:F
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 377
    .local v2, tmp:Landroid/graphics/Matrix;
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 379
    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 380
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 384
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 385
    invoke-virtual {p0, v6, v6}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->center(ZZ)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    div-float v4, v5, p1

    div-float/2addr v5, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method protected zoomTo(F)V
    .locals 4
    .parameter "scale"

    .prologue
    const/high16 v3, 0x4000

    .line 338
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 339
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 341
    .local v1, cy:F
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->zoomTo(FFF)V

    .line 342
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x1

    .line 306
    iget v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 307
    iget p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mMaxZoom:F

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 311
    .local v1, oldScale:F
    div-float v0, p1, v1

    .line 313
    .local v0, deltaScale:F
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 314
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 315
    invoke-virtual {p0, v3, v3}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->center(ZZ)V

    .line 316
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "durationMs"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 320
    .local v6, incrementPerMs:F
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 321
    .local v5, oldScale:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 323
    .local v3, startTime:J
    iget-object v9, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$2;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$2;-><init>(Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method
