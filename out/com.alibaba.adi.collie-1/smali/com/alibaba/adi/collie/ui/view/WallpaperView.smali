.class public Lcom/alibaba/adi/collie/ui/view/WallpaperView;
.super Landroid/view/View;
.source "WallpaperView.java"


# static fields
.field public static final BLUR_AREA_POSITION_BOTTOM:I = 0x2

.field public static final BLUR_AREA_POSITION_TOP:I = 0x1

.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_NORMAL:I = 0x0

.field public static final DIRECTION_RIGHT:I = -0x1

.field public static final HOSTID_HOME:I = 0x1

.field public static final HOSTID_OTHER:I = 0x2

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mAlphaPaintBlur:Landroid/graphics/Paint;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapMarginBottom:I

.field private mBitmapMarginLeft:I

.field private mBitmapMarginRight:I

.field private mBitmapMarginTop:I

.field private mBlurAreaHeight:I

.field public mBlurAreaPosition:I

.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mBlurBitmapAlpha:F

.field private mFgBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mHostId:I

.field private mViewDiffX:I

.field private mViewDiffY:I

.field private mWidth:I

.field private rectBlurDst:Landroid/graphics/Rect;

.field private rectBlurSrc:Landroid/graphics/Rect;

.field private rectDst:Landroid/graphics/Rect;

.field private rectSrc:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->TAG:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmapAlpha:F

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaintBlur:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 59
    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 61
    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mFgBitmap:Landroid/graphics/Bitmap;

    .line 67
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapHeight:I

    .line 111
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mWidth:I

    .line 112
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHeight:I

    .line 113
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaHeight:I

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHostId:I

    .line 127
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaPosition:I

    .line 150
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffX:I

    .line 151
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffY:I

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectBlurSrc:Landroid/graphics/Rect;

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectBlurDst:Landroid/graphics/Rect;

    .line 23
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmapAlpha:F

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaintBlur:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 59
    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 61
    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mFgBitmap:Landroid/graphics/Bitmap;

    .line 67
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapHeight:I

    .line 111
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mWidth:I

    .line 112
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHeight:I

    .line 113
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaHeight:I

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHostId:I

    .line 127
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaPosition:I

    .line 150
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffX:I

    .line 151
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffY:I

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectBlurSrc:Landroid/graphics/Rect;

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectBlurDst:Landroid/graphics/Rect;

    .line 28
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmapAlpha:F

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaintBlur:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 59
    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 61
    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mFgBitmap:Landroid/graphics/Bitmap;

    .line 67
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapHeight:I

    .line 111
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mWidth:I

    .line 112
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHeight:I

    .line 113
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaHeight:I

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHostId:I

    .line 127
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaPosition:I

    .line 150
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffX:I

    .line 151
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffY:I

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectBlurSrc:Landroid/graphics/Rect;

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectBlurDst:Landroid/graphics/Rect;

    .line 33
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->init()V

    .line 34
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/16 v6, 0xe1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x3d4ccccd

    .line 42
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaintBlur:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaintBlur:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    .line 48
    .local v0, screenSize:[I
    aget v1, v0, v4

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapMarginLeft:I

    .line 49
    aget v1, v0, v4

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapMarginRight:I

    .line 50
    aget v1, v0, v5

    int-to-float v1, v1

    const v2, 0x3d23d70a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapMarginTop:I

    .line 51
    aget v1, v0, v5

    int-to-float v1, v1

    const v2, 0x3ca3d70a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapMarginBottom:I

    .line 52
    const-string v1, "msg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ruibo: edge top = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapMarginTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bottom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapMarginBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 53
    const-string v3, ", left = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapMarginLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", right = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapMarginRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x1

    const/high16 v7, 0x437f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 177
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mFgBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 181
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mFgBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 183
    :cond_2
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mWidth:I

    if-nez v4, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mWidth:I

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHeight:I

    .line 188
    :cond_3
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffX:I

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapMarginLeft:I

    add-int v1, v4, v5

    .line 189
    .local v1, left:I
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mWidth:I

    add-int v2, v4, v1

    .line 190
    .local v2, right:I
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapHeight:I

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffY:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapMarginBottom:I

    sub-int v0, v4, v5

    .line 191
    .local v0, bottom:I
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHeight:I

    sub-int v3, v0, v4

    .line 193
    .local v3, top:I
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaHeight:I

    if-lez v4, :cond_6

    .line 195
    const/4 v4, 0x2

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaPosition:I

    if-ne v4, v5, :cond_5

    .line 196
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mWidth:I

    iget v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHeight:I

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 197
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 199
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectBlurDst:Landroid/graphics/Rect;

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHeight:I

    iget v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaHeight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mWidth:I

    iget v7, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHeight:I

    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 200
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectBlurSrc:Landroid/graphics/Rect;

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaHeight:I

    sub-int v5, v0, v5

    invoke-virtual {v4, v1, v5, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 202
    const-string v4, "msg"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ruibo: draw rect "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHostId:I

    if-ne v10, v4, :cond_4

    .line 205
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mFgBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 210
    :goto_1
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 211
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectBlurSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectBlurDst:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaintBlur:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 207
    :cond_4
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 212
    :cond_5
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaPosition:I

    if-ne v10, v4, :cond_0

    .line 213
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mWidth:I

    iget v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHeight:I

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 214
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 216
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectBlurDst:Landroid/graphics/Rect;

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mWidth:I

    iget v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaHeight:I

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 217
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectBlurSrc:Landroid/graphics/Rect;

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaHeight:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v1, v3, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 219
    const-string v4, "msg"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ruibo: draw rect "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mFgBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 221
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 222
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectBlurSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectBlurDst:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaintBlur:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 224
    :cond_6
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmapAlpha:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7

    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmapAlpha:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_7

    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffX:I

    if-eqz v4, :cond_7

    .line 226
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mWidth:I

    iget v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHeight:I

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 227
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 229
    const-string v4, "msg"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ruibo: draw rect "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mFgBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 231
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaintBlur:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 232
    :cond_7
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmapAlpha:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_8

    .line 233
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mWidth:I

    iget v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHeight:I

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 234
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 235
    const-string v4, "msg"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ruibo: draw rect "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mFgBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 237
    :cond_8
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmapAlpha:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    .line 239
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    iget v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mWidth:I

    iget v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHeight:I

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 240
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 242
    const-string v4, "msg"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ruibo: draw rect "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->rectDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 161
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mWidth:I

    .line 162
    iput p2, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHeight:I

    .line 163
    return-void
.end method

.method public setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"
    .parameter "blurBitmap"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmap:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    if-nez p2, :cond_2

    .line 74
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->TAG:Ljava/lang/String;

    const-string v1, "blurBitmap is null!"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    move-object p2, p1

    .line 78
    :cond_2
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmap:Landroid/graphics/Bitmap;

    .line 79
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mFgBitmap:Landroid/graphics/Bitmap;

    .line 80
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 81
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapHeight:I

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->invalidate()V

    goto :goto_0
.end method

.method public setBlurAreaHeightAndAlpha(IIF)V
    .locals 3
    .parameter "blurHeight"
    .parameter "alpha"
    .parameter "percentShowHeight"

    .prologue
    .line 134
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaHeight:I

    .line 135
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaintBlur:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaint:Landroid/graphics/Paint;

    add-int/lit8 v1, p2, -0x5a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 138
    const/4 v0, 0x1

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaPosition:I

    if-ne v0, v1, :cond_0

    .line 140
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapMarginBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffY:I

    .line 146
    :goto_0
    const-string v0, "msg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set alpha = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", blurHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mViewDiffY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "percentShowHeight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->invalidate()V

    .line 148
    return-void

    .line 143
    :cond_0
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapMarginTop:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffY:I

    goto :goto_0
.end method

.method public setBlurAreaPosition(I)V
    .locals 0
    .parameter "blurAreaPosition"

    .prologue
    .line 130
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurAreaPosition:I

    .line 131
    return-void
.end method

.method public setBlurBitmapAlpha(II)V
    .locals 3
    .parameter "alpha"
    .parameter "direction"

    .prologue
    .line 91
    int-to-float v0, p1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmapAlpha:F

    .line 92
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mAlphaPaintBlur:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 94
    packed-switch p2, :pswitch_data_0

    .line 106
    :goto_0
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffX:I

    if-nez v0, :cond_0

    move v0, p2

    :goto_1
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffX:I

    .line 107
    const-string v0, "msg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ruibo: set alpha "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mViewDiffX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->invalidate()V

    .line 109
    return-void

    .line 96
    :pswitch_0
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapMarginLeft:I

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffX:I

    goto :goto_0

    .line 99
    :pswitch_1
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmapMarginRight:I

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffX:I

    goto :goto_0

    .line 102
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffX:I

    goto :goto_0

    .line 106
    :cond_0
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mViewDiffX:I

    mul-int/2addr v0, p2

    goto :goto_1

    .line 94
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setFgBitmapBlur(Z)V
    .locals 1
    .parameter "isBlur"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBlurBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mFgBitmap:Landroid/graphics/Bitmap;

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->invalidate()V

    .line 173
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mFgBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setHostId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 122
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->mHostId:I

    .line 123
    return-void
.end method
