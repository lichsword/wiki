.class Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/crop/view/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFaces:[Landroid/media/FaceDetector$Face;

.field mImageMatrix:Landroid/graphics/Matrix;

.field mNumFaces:I

.field mScale:F

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mScale:F

    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;Landroid/media/FaceDetector$Face;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->handleFace(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->makeDefault()V

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;)Lcom/alibaba/adi/collie/ui/crop/view/CropImage;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    return-object v0
.end method

.method private handleFace(Landroid/media/FaceDetector$Face;)V
    .locals 13
    .parameter "f"

    .prologue
    .line 151
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    .line 153
    .local v7, midPoint:Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mScale:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-int/lit8 v10, v1, 0x2

    .line 154
    .local v10, r:I
    invoke-virtual {p1, v7}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 155
    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->x:F

    .line 156
    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->y:F

    .line 158
    iget v1, v7, Landroid/graphics/PointF;->x:F

    float-to-int v8, v1

    .line 159
    .local v8, midX:I
    iget v1, v7, Landroid/graphics/PointF;->y:F

    float-to-int v9, v1

    .line 161
    .local v9, midY:I
    new-instance v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;-><init>(Landroid/view/View;)V

    .line 163
    .local v0, hv:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 164
    .local v11, width:I
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 166
    .local v6, height:I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 168
    .local v2, imageRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v8

    int-to-float v4, v9

    int-to-float v5, v8

    int-to-float v12, v9

    invoke-direct {v3, v1, v4, v5, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 169
    .local v3, faceRect:Landroid/graphics/RectF;
    neg-int v1, v10

    int-to-float v1, v1

    neg-int v4, v10

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 170
    iget v1, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 171
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 174
    :cond_0
    iget v1, v3, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 175
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 178
    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 179
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 182
    :cond_2
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 183
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 188
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->add(Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;)V

    .line 189
    return-void
.end method

.method private makeDefault()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 193
    new-instance v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;-><init>(Landroid/view/View;)V

    .line 195
    .local v0, hv:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 196
    .local v9, width:I
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 198
    .local v8, height:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 202
    .local v2, imageRect:Landroid/graphics/Rect;
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v7, v1, 0x5

    .line 203
    .local v7, cropWidth:I
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->screenHeight:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$2(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)I

    move-result v1

    mul-int/2addr v1, v7

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->screenWidth:I
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$3(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    .line 204
    .local v6, cropHeight:I
    if-le v6, v8, :cond_0

    .line 205
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v6, v1, 0x5

    .line 206
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->screenWidth:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$3(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)I

    move-result v1

    mul-int/2addr v1, v6

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->screenHeight:I
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$2(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    .line 209
    :cond_0
    sub-int v1, v9, v7

    div-int/lit8 v10, v1, 0x2

    .line 210
    .local v10, x:I
    sub-int v1, v8, v6

    div-int/lit8 v11, v1, 0x2

    .line 212
    .local v11, y:I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v10

    int-to-float v4, v11

    add-int v12, v10, v7

    int-to-float v12, v12

    add-int v13, v11, v6

    int-to-float v13, v13

    invoke-direct {v3, v1, v4, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 213
    .local v3, cropRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 214
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->add(Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;)V

    .line 215
    return-void
.end method

.method private prepareBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 220
    const/4 v7, 0x0

    .line 231
    :goto_0
    return-object v7

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_1

    .line 225
    const/high16 v0, 0x4380

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mScale:F

    .line 228
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 229
    .local v5, matrix:Landroid/graphics/Matrix;
    iget v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mScale:F

    iget v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mScale:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 231
    .local v7, faceBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 235
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    .line 236
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->prepareBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 238
    .local v1, faceBitmap:Landroid/graphics/Bitmap;
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mScale:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mScale:F

    .line 239
    if-eqz v1, :cond_0

    .line 240
    new-instance v0, Landroid/media/FaceDetector;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    invoke-direct {v0, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 241
    .local v0, detector:Landroid/media/FaceDetector;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v0, v1, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->mNumFaces:I

    .line 244
    .end local v0           #detector:Landroid/media/FaceDetector;
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 245
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$4(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1$1;-><init>(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void
.end method
