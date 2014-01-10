.class public Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;,
        Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;,
        Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;,
        Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field static final STATUS_BAR_HEIGHT:I = 0x19


# instance fields
.field private mAnimatingPeriodStart:J

.field private final mArrowMatrix:Landroid/graphics/Matrix;

.field private mAspect:I

.field private mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

.field private mBitmapArrowRedUp:Landroid/graphics/Bitmap;

.field private mBitmapBtnDefault:Landroid/graphics/Bitmap;

.field private mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDiameterFactor:F

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mOnPatternListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private final mStrokeAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/high16 v9, -0x4080

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 249
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-boolean v5, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mDrawingProfilingStarted:Z

    .line 68
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 69
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 82
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0x9

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 90
    filled-new-array {v8, v8}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDrawLookup:[[Z

    .line 97
    iput v9, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressX:F

    .line 98
    iput v9, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressY:F

    .line 102
    sget-object v4, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Correct:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    .line 103
    iput-boolean v7, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInputEnabled:Z

    .line 104
    iput-boolean v5, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInStealthMode:Z

    .line 105
    iput-boolean v7, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mEnableHapticFeedback:Z

    .line 106
    iput-boolean v5, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternInProgress:Z

    .line 108
    const v4, 0x3dcccccd

    iput v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mDiameterFactor:F

    .line 109
    const/16 v4, 0x80

    iput v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mStrokeAlpha:I

    .line 110
    const v4, 0x3f19999a

    iput v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mHitFactor:F

    .line 124
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 125
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 131
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 132
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 251
    sget-object v4, Lcom/alibaba/adi/collie/R$styleable;->LockPatternView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 253
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, aspect:Ljava/lang/String;
    const-string v4, "square"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    iput v5, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mAspect:I

    .line 269
    :goto_0
    invoke-virtual {p0, v7}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->setClickable(Z)V

    .line 271
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 272
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 273
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v6, 0x80

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 275
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 276
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 277
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 280
    const v4, 0x7f020024

    invoke-direct {p0, v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 281
    const v4, 0x7f020025

    invoke-direct {p0, v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 282
    const v4, 0x7f020107

    invoke-direct {p0, v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 283
    const v4, 0x7f020108

    invoke-direct {p0, v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 284
    const v4, 0x7f020109

    invoke-direct {p0, v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 286
    const v4, 0x7f020105

    invoke-direct {p0, v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 287
    const v4, 0x7f020106

    invoke-direct {p0, v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    .line 290
    const/4 v4, 0x5

    new-array v3, v4, [Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v4, v3, v10

    .line 291
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v4, v3, v8

    const/4 v4, 0x4

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v6, v3, v4

    .line 293
    .local v3, bitmaps:[Landroid/graphics/Bitmap;
    array-length v6, v3

    move v4, v5

    :goto_1
    if-lt v4, v6, :cond_3

    .line 298
    return-void

    .line 257
    .end local v3           #bitmaps:[Landroid/graphics/Bitmap;
    :cond_0
    const-string v4, "lock_width"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    iput v7, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 259
    :cond_1
    const-string v4, "lock_height"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 260
    iput v10, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 263
    :cond_2
    iput v5, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 293
    .restart local v3       #bitmaps:[Landroid/graphics/Bitmap;
    :cond_3
    aget-object v2, v3, v4

    .line 294
    .local v2, bitmap:Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapWidth:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapWidth:I

    .line 295
    iget v5, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapHeight:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapHeight:I

    .line 293
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private addCellToPattern(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;)V
    .locals 3
    .parameter "newCell"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 576
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->notifyCellAdded()V

    .line 578
    return-void
.end method

.method private checkForNewHit(FF)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 583
    invoke-direct {p0, p2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getRowHit(F)I

    move-result v1

    .line 584
    .local v1, rowHit:I
    if-gez v1, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-object v2

    .line 587
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getColumnHit(F)I

    move-result v0

    .line 588
    .local v0, columnHit:I
    if-ltz v0, :cond_0

    .line 592
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    .line 595
    invoke-static {v1, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->of(II)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    move-result-object v2

    goto :goto_0
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 435
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 440
    return-void

    .line 436
    :cond_0
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-lt v1, v4, :cond_1

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private detectAndAddHit(FF)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 536
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->checkForNewHit(FF)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    move-result-object v0

    .line 537
    .local v0, cell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    if-eqz v0, :cond_7

    .line 540
    const/4 v4, 0x0

    .line 541
    .local v4, fillInGapCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 542
    .local v7, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 543
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    .line 544
    .local v6, lastCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    iget v8, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    iget v11, v6, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    sub-int v2, v8, v11

    .line 545
    .local v2, dRow:I
    iget v8, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    iget v11, v6, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    sub-int v1, v8, v11

    .line 547
    .local v1, dColumn:I
    iget v5, v6, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    .line 548
    .local v5, fillInRow:I
    iget v3, v6, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    .line 550
    .local v3, fillInColumn:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 551
    iget v11, v6, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    if-lez v2, :cond_5

    move v8, v9

    :goto_0
    add-int v5, v11, v8

    .line 554
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_1

    .line 555
    iget v8, v6, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    if-lez v1, :cond_6

    :goto_1
    add-int v3, v8, v9

    .line 558
    :cond_1
    invoke-static {v5, v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->of(II)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    move-result-object v4

    .line 561
    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    :cond_2
    if-eqz v4, :cond_3

    .line 562
    iget-object v8, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDrawLookup:[[Z

    iget v9, v4, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    aget-object v8, v8, v9

    iget v9, v4, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    aget-boolean v8, v8, v9

    if-nez v8, :cond_3

    .line 563
    invoke-direct {p0, v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->addCellToPattern(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;)V

    .line 565
    :cond_3
    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->addCellToPattern(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;)V

    .line 566
    iget-boolean v8, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mEnableHapticFeedback:Z

    if-eqz v8, :cond_4

    .line 567
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->performHapticFeedback(I)Z

    .line 571
    .end local v0           #cell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .end local v4           #fillInGapCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    :cond_4
    :goto_2
    return-object v0

    .restart local v0       #cell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .restart local v1       #dColumn:I
    .restart local v2       #dRow:I
    .restart local v3       #fillInColumn:I
    .restart local v4       #fillInGapCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .restart local v5       #fillInRow:I
    .restart local v6       #lastCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .restart local v7       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    :cond_5
    move v8, v10

    .line 551
    goto :goto_0

    :cond_6
    move v9, v10

    .line 555
    goto :goto_1

    .line 571
    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v4           #fillInGapCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private drawArrow(Landroid/graphics/Canvas;FFLcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;)V
    .locals 26
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    move-object/from16 v20, v0

    sget-object v21, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Wrong:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/4 v10, 0x1

    .line 1030
    .local v10, green:Z
    :goto_0
    move-object/from16 v0, p5

    iget v9, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    .line 1031
    .local v9, endRow:I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    move/from16 v16, v0

    .line 1032
    .local v16, startRow:I
    move-object/from16 v0, p5

    iget v8, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    .line 1033
    .local v8, endColumn:I
    move-object/from16 v0, p4

    iget v15, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    .line 1036
    .local v15, startColumn:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareWidth:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v11, v20, 0x2

    .line 1037
    .local v11, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareHeight:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapHeight:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v12, v20, 0x2

    .line 1044
    .local v12, offsetY:I
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 1045
    .local v5, arrow:Landroid/graphics/Bitmap;
    :goto_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapWidth:I

    .line 1046
    .local v7, cellWidth:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapHeight:I

    .line 1050
    .local v6, cellHeight:I
    sub-int v20, v9, v16

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-int v22, v8, v15

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    .line 1049
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    .line 1051
    .local v19, theta:F
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x42b4

    add-float v4, v20, v21

    .line 1054
    .local v4, angle:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareWidth:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f80

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 1055
    .local v17, sx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareHeight:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f80

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 1056
    .local v18, sy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    int-to-float v0, v11

    move/from16 v21, v0

    add-float v21, v21, p2

    int-to-float v0, v12

    move/from16 v22, v0

    add-float v22, v22, p3

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    int-to-float v0, v7

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    int-to-float v0, v6

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 1065
    sub-int v20, v9, v16

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareHeight:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x4000

    div-float v14, v20, v21

    .line 1066
    .local v14, pathMiddleY:F
    sub-int v20, v8, v15

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareWidth:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x4000

    div-float v13, v20, v21

    .line 1067
    .local v13, pathMiddleX:F
    float-to-double v0, v14

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    float-to-double v0, v13

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v3, v0

    .line 1068
    .local v3, Path:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    sub-int v21, v7, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    sub-int v22, v6, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    sub-float v22, v22, v3

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1072
    return-void

    .line 1028
    .end local v3           #Path:F
    .end local v4           #angle:F
    .end local v5           #arrow:Landroid/graphics/Bitmap;
    .end local v6           #cellHeight:I
    .end local v7           #cellWidth:I
    .end local v8           #endColumn:I
    .end local v9           #endRow:I
    .end local v10           #green:Z
    .end local v11           #offsetX:I
    .end local v12           #offsetY:I
    .end local v13           #pathMiddleX:F
    .end local v14           #pathMiddleY:F
    .end local v15           #startColumn:I
    .end local v16           #startRow:I
    .end local v17           #sx:F
    .end local v18           #sy:F
    .end local v19           #theta:F
    :cond_0
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1044
    .restart local v8       #endColumn:I
    .restart local v9       #endRow:I
    .restart local v10       #green:Z
    .restart local v11       #offsetX:I
    .restart local v12       #offsetY:I
    .restart local v15       #startColumn:I
    .restart local v16       #startRow:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 13
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "partOfPattern"

    .prologue
    .line 1084
    if-eqz p4, :cond_0

    iget-boolean v10, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInStealthMode:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    sget-object v11, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Wrong:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    if-eq v10, v11, :cond_1

    .line 1086
    :cond_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 1087
    .local v4, outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 1105
    .local v1, innerCircle:Landroid/graphics/Bitmap;
    :goto_0
    iget v9, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapWidth:I

    .line 1106
    .local v9, width:I
    iget v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapHeight:I

    .line 1108
    .local v0, height:I
    iget v6, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareWidth:F

    .line 1109
    .local v6, squareWidth:F
    iget v5, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareHeight:F

    .line 1111
    .local v5, squareHeight:F
    int-to-float v10, v9

    sub-float v10, v6, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    float-to-int v2, v10

    .line 1112
    .local v2, offsetX:I
    int-to-float v10, v0

    sub-float v10, v5, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    float-to-int v3, v10

    .line 1115
    .local v3, offsetY:I
    iget v10, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareWidth:F

    iget v11, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1116
    .local v7, sx:F
    iget v10, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareHeight:F

    iget v11, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1118
    .local v8, sy:F
    iget-object v10, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v11, p2, v2

    int-to-float v11, v11

    add-int v12, p3, v3

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1119
    iget-object v10, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v11, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget v12, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapHeight:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1120
    iget-object v10, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1121
    iget-object v10, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v11, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapWidth:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget v12, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapHeight:I

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1125
    iget-object v10, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1126
    return-void

    .line 1088
    .end local v0           #height:I
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v2           #offsetX:I
    .end local v3           #offsetY:I
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    .end local v5           #squareHeight:F
    .end local v6           #squareWidth:F
    .end local v7           #sx:F
    .end local v8           #sy:F
    .end local v9           #width:I
    :cond_1
    iget-boolean v10, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternInProgress:Z

    if-eqz v10, :cond_2

    .line 1090
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 1091
    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 1092
    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v10, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    sget-object v11, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Wrong:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    if-ne v10, v11, :cond_3

    .line 1094
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 1095
    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 1096
    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v10, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    sget-object v11, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Correct:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    if-eq v10, v11, :cond_4

    .line 1097
    iget-object v10, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    sget-object v11, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Animate:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    if-ne v10, v11, :cond_5

    .line 1099
    :cond_4
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 1100
    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 1101
    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 1102
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_5
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "unknown display mode "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resId"

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .parameter "column"

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .parameter "row"

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .locals 8
    .parameter "x"

    .prologue
    .line 625
    iget v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareWidth:F

    .line 626
    .local v4, squareWidth:F
    iget v5, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    .line 628
    .local v1, hitSize:F
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 629
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    .line 636
    const/4 v2, -0x1

    .end local v2           #i:I
    :cond_0
    return v2

    .line 631
    .restart local v2       #i:I
    :cond_1
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .line 632
    .local v0, hitLeft:F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_2

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-lez v5, :cond_0

    .line 629
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getRowHit(F)I
    .locals 8
    .parameter "y"

    .prologue
    .line 605
    iget v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareHeight:F

    .line 606
    .local v4, squareHeight:F
    iget v5, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    .line 608
    .local v0, hitSize:F
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 609
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    .line 616
    const/4 v2, -0x1

    .end local v2           #i:I
    :cond_0
    return v2

    .line 611
    .restart local v2       #i:I
    :cond_1
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .line 612
    .local v1, hitTop:F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_2

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-lez v5, :cond_0

    .line 609
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/high16 v8, 0x4000

    .line 841
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->resetPattern()V

    .line 842
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 843
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 844
    .local v6, y:F
    invoke-direct {p0, v5, v6}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->detectAndAddHit(FF)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    move-result-object v1

    .line 845
    .local v1, hitCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    if-eqz v1, :cond_1

    .line 846
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternInProgress:Z

    .line 847
    sget-object v7, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Correct:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    iput-object v7, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    .line 848
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->notifyPatternStarted()V

    .line 853
    :goto_0
    if-eqz v1, :cond_0

    .line 854
    iget v7, v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    invoke-direct {p0, v7}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 855
    .local v2, startX:F
    iget v7, v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    invoke-direct {p0, v7}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    .line 857
    .local v3, startY:F
    iget v7, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareWidth:F

    div-float v4, v7, v8

    .line 858
    .local v4, widthOffset:F
    iget v7, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareHeight:F

    div-float v0, v7, v8

    .line 860
    .local v0, heightOffset:F
    sub-float v7, v2, v4

    float-to-int v7, v7

    sub-float v8, v3, v0

    float-to-int v8, v8

    .line 861
    add-float v9, v2, v4

    float-to-int v9, v9

    add-float v10, v3, v0

    float-to-int v10, v10

    .line 860
    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->invalidate(IIII)V

    .line 863
    .end local v0           #heightOffset:F
    .end local v2           #startX:F
    .end local v3           #startY:F
    .end local v4           #widthOffset:F
    :cond_0
    iput v5, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressX:F

    .line 864
    iput v6, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressY:F

    .line 871
    return-void

    .line 850
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternInProgress:Z

    .line 851
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->notifyPatternCleared()V

    goto :goto_0
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 31
    .parameter "event"

    .prologue
    .line 695
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 696
    .local v8, historySize:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    add-int/lit8 v27, v8, 0x1

    move/from16 v0, v27

    if-lt v10, v0, :cond_0

    .line 817
    return-void

    .line 697
    :cond_0
    if-ge v10, v8, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v25

    .line 698
    .local v25, x:F
    :goto_1
    if-ge v10, v8, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v26

    .line 699
    .local v26, y:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 700
    .local v18, patternSizePreHitDetect:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->detectAndAddHit(FF)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    move-result-object v9

    .line 701
    .local v9, hitCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 702
    .local v17, patternSize:I
    if-eqz v9, :cond_1

    const/16 v27, 0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 703
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternInProgress:Z

    .line 704
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->notifyPatternStarted()V

    .line 707
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressX:F

    move/from16 v27, v0

    sub-float v27, v25, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 708
    .local v5, dx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressY:F

    move/from16 v27, v0

    sub-float v27, v26, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 709
    .local v6, dy:F
    add-float v27, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareWidth:F

    move/from16 v28, v0

    const v29, 0x3c23d70a

    mul-float v28, v28, v29

    cmpl-float v27, v27, v28

    if-lez v27, :cond_3

    .line 710
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressX:F

    .line 711
    .local v14, oldX:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressY:F

    .line 713
    .local v15, oldY:F
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressX:F

    .line 714
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressY:F

    .line 716
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternInProgress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    if-lez v17, :cond_d

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 718
    .local v16, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mDiameterFactor:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    const v28, 0x3f4ccccd

    mul-float v19, v27, v28

    .line 720
    .local v19, radius:F
    add-int/lit8 v27, v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    .line 722
    .local v12, lastCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    iget v0, v12, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 723
    .local v21, startX:F
    iget v0, v12, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 730
    .local v22, startY:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 732
    .local v11, invalidateRect:Landroid/graphics/Rect;
    cmpg-float v27, v21, v25

    if-gez v27, :cond_6

    .line 733
    move/from16 v13, v21

    .line 734
    .local v13, left:F
    move/from16 v20, v25

    .line 740
    .local v20, right:F
    :goto_3
    cmpg-float v27, v22, v26

    if-gez v27, :cond_7

    .line 741
    move/from16 v23, v22

    .line 742
    .local v23, top:F
    move/from16 v4, v26

    .line 749
    .local v4, bottom:F
    :goto_4
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    .line 750
    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    .line 749
    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 752
    cmpg-float v27, v21, v14

    if-gez v27, :cond_8

    .line 753
    move/from16 v13, v21

    .line 754
    move/from16 v20, v14

    .line 760
    :goto_5
    cmpg-float v27, v22, v15

    if-gez v27, :cond_9

    .line 761
    move/from16 v23, v22

    .line 762
    move v4, v15

    .line 769
    :goto_6
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    .line 770
    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    .line 769
    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 773
    if-eqz v9, :cond_2

    .line 774
    iget v0, v9, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 775
    iget v0, v9, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 777
    const/16 v27, 0x2

    move/from16 v0, v17

    move/from16 v1, v27

    if-lt v0, v1, :cond_c

    .line 779
    add-int/lit8 v27, v17, -0x1

    sub-int v28, v17, v18

    sub-int v27, v27, v28

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #hitCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    check-cast v9, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    .line 780
    .restart local v9       #hitCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    iget v0, v9, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 781
    iget v0, v9, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 783
    cmpg-float v27, v21, v14

    if-gez v27, :cond_a

    .line 784
    move/from16 v13, v21

    .line 785
    move/from16 v20, v14

    .line 791
    :goto_7
    cmpg-float v27, v22, v15

    if-gez v27, :cond_b

    .line 792
    move/from16 v23, v22

    .line 793
    move v4, v15

    .line 803
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v24, v27, v28

    .line 804
    .local v24, widthOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareHeight:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v7, v27, v28

    .line 806
    .local v7, heightOffset:F
    sub-float v27, v13, v24

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    .line 807
    sub-float v28, v23, v7

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v24

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    .line 808
    add-float v30, v4, v7

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    .line 806
    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 811
    .end local v7           #heightOffset:F
    .end local v24           #widthOffset:F
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 696
    .end local v4           #bottom:F
    .end local v11           #invalidateRect:Landroid/graphics/Rect;
    .end local v12           #lastCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .end local v13           #left:F
    .end local v14           #oldX:F
    .end local v15           #oldY:F
    .end local v16           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    .end local v19           #radius:F
    .end local v20           #right:F
    .end local v21           #startX:F
    .end local v22           #startY:F
    .end local v23           #top:F
    :cond_3
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 697
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v9           #hitCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .end local v17           #patternSize:I
    .end local v18           #patternSizePreHitDetect:I
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    goto/16 :goto_1

    .line 698
    .restart local v25       #x:F
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    goto/16 :goto_2

    .line 736
    .restart local v5       #dx:F
    .restart local v6       #dy:F
    .restart local v9       #hitCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .restart local v11       #invalidateRect:Landroid/graphics/Rect;
    .restart local v12       #lastCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .restart local v14       #oldX:F
    .restart local v15       #oldY:F
    .restart local v16       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    .restart local v17       #patternSize:I
    .restart local v18       #patternSizePreHitDetect:I
    .restart local v19       #radius:F
    .restart local v21       #startX:F
    .restart local v22       #startY:F
    .restart local v26       #y:F
    :cond_6
    move/from16 v13, v25

    .line 737
    .restart local v13       #left:F
    move/from16 v20, v21

    .restart local v20       #right:F
    goto/16 :goto_3

    .line 744
    :cond_7
    move/from16 v23, v26

    .line 745
    .restart local v23       #top:F
    move/from16 v4, v22

    .restart local v4       #bottom:F
    goto/16 :goto_4

    .line 756
    :cond_8
    move v13, v14

    .line 757
    move/from16 v20, v21

    goto/16 :goto_5

    .line 764
    :cond_9
    move/from16 v23, v15

    .line 765
    move/from16 v4, v22

    goto/16 :goto_6

    .line 787
    :cond_a
    move v13, v14

    .line 788
    move/from16 v20, v21

    goto :goto_7

    .line 795
    :cond_b
    move/from16 v23, v15

    .line 796
    move/from16 v4, v22

    .line 798
    goto :goto_8

    .line 799
    :cond_c
    move/from16 v20, v21

    move/from16 v13, v21

    .line 800
    move/from16 v4, v22

    move/from16 v23, v22

    goto :goto_8

    .line 813
    .end local v4           #bottom:F
    .end local v11           #invalidateRect:Landroid/graphics/Rect;
    .end local v12           #lastCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .end local v13           #left:F
    .end local v16           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    .end local v19           #radius:F
    .end local v20           #right:F
    .end local v21           #startX:F
    .end local v22           #startY:F
    .end local v23           #top:F
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->invalidate()V

    goto :goto_9
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternInProgress:Z

    .line 829
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->notifyPatternDetected()V

    .line 830
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->invalidate()V

    .line 838
    :cond_0
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mOnPatternListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mOnPatternListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 390
    :cond_0
    const v0, 0x7f0a0190

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->sendAccessEvent(I)V

    .line 391
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mOnPatternListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mOnPatternListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 411
    :cond_0
    const v0, 0x7f0a018f

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->sendAccessEvent(I)V

    .line 412
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mOnPatternListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mOnPatternListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 404
    :cond_0
    const v0, 0x7f0a0191

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->sendAccessEvent(I)V

    .line 405
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mOnPatternListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mOnPatternListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 397
    :cond_0
    const v0, 0x7f0a018e

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->sendAccessEvent(I)V

    .line 398
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 426
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->clearPatternDrawLookup()V

    .line 427
    sget-object v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Correct:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    .line 428
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->invalidate()V

    .line 429
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 477
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 488
    move v0, v1

    .line 490
    :goto_0
    return v0

    .line 479
    :sswitch_0
    move v0, p2

    .line 481
    goto :goto_0

    .line 483
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 485
    goto :goto_0

    .line 477
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 821
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->sendAccessibilityEvent(I)V

    .line 822
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 823
    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->resetPattern()V

    .line 419
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInputEnabled:Z

    .line 448
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInputEnabled:Z

    .line 455
    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapHeight:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 37
    .parameter "canvas"

    .prologue
    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    .line 884
    .local v28, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 885
    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDrawLookup:[[Z

    .line 887
    .local v15, drawLookup:[[Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    sget-object v4, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Animate:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    if-ne v3, v4, :cond_1

    .line 892
    add-int/lit8 v3, v12, 0x1

    mul-int/lit16 v0, v3, 0x2bc

    move/from16 v25, v0

    .line 893
    .local v25, oneCycle:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 894
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mAnimatingPeriodStart:J

    move-wide/from16 v34, v0

    .line 893
    sub-long v3, v3, v34

    long-to-int v3, v3

    rem-int v31, v3, v25

    .line 895
    .local v31, spotInCycle:I
    move/from16 v0, v31

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v23, v0

    .line 897
    .local v23, numCircles:I
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->clearPatternDrawLookup()V

    .line 898
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v23

    if-lt v0, v1, :cond_7

    .line 905
    if-lez v23, :cond_8

    move/from16 v0, v23

    if-ge v0, v12, :cond_8

    const/16 v21, 0x1

    .line 908
    .local v21, needToUpdateInProgressPoint:Z
    :goto_1
    if-eqz v21, :cond_0

    .line 910
    move/from16 v0, v31

    rem-int/lit16 v3, v0, 0x2bc

    int-to-float v3, v3

    .line 911
    const/high16 v4, 0x442f

    .line 910
    div-float v29, v3, v4

    .line 913
    .local v29, percentageOfNextCircle:F
    add-int/lit8 v3, v23, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    .line 914
    .local v13, currentCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    iget v3, v13, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 915
    .local v10, centerX:F
    iget v3, v13, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterYForRow(I)F

    move-result v11

    .line 917
    .local v11, centerY:F
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    .line 919
    .local v22, nextCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    move-object/from16 v0, v22

    iget v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterXForColumn(I)F

    move-result v3

    sub-float/2addr v3, v10

    .line 918
    mul-float v17, v29, v3

    .line 921
    .local v17, dx:F
    move-object/from16 v0, v22

    iget v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    sub-float/2addr v3, v11

    .line 920
    mul-float v18, v29, v3

    .line 922
    .local v18, dy:F
    add-float v3, v10, v17

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressX:F

    .line 923
    add-float v3, v11, v18

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressY:F

    .line 926
    .end local v10           #centerX:F
    .end local v11           #centerY:F
    .end local v13           #currentCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .end local v17           #dx:F
    .end local v18           #dy:F
    .end local v22           #nextCell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .end local v29           #percentageOfNextCircle:F
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->invalidate()V

    .line 929
    .end local v19           #i:I
    .end local v21           #needToUpdateInProgressPoint:Z
    .end local v23           #numCircles:I
    .end local v25           #oneCycle:I
    .end local v31           #spotInCycle:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareWidth:F

    move/from16 v33, v0

    .line 930
    .local v33, squareWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareHeight:F

    move/from16 v32, v0

    .line 932
    .local v32, squareHeight:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mDiameterFactor:F

    mul-float v3, v3, v33

    const/high16 v4, 0x3f00

    mul-float v30, v3, v4

    .line 933
    .local v30, radius:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 935
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 936
    .local v14, currentPath:Landroid/graphics/Path;
    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getPaddingTop()I

    move-result v27

    .line 940
    .local v27, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getPaddingLeft()I

    move-result v26

    .line 942
    .local v26, paddingLeft:I
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_2
    const/4 v3, 0x3

    move/from16 v0, v19

    if-lt v0, v3, :cond_9

    .line 955
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInStealthMode:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    sget-object v4, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Wrong:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    if-eq v3, v4, :cond_b

    const/16 v16, 0x0

    .line 959
    .local v16, drawPath:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_c

    const/16 v24, 0x1

    .line 960
    .local v24, oldFlag:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 961
    if-eqz v16, :cond_2

    .line 962
    const/16 v19, 0x0

    :goto_5
    add-int/lit8 v3, v12, -0x1

    move/from16 v0, v19

    if-lt v0, v3, :cond_d

    .line 980
    :cond_2
    if-eqz v16, :cond_6

    .line 981
    const/4 v9, 0x0

    .line 982
    .local v9, anyCircles:Z
    const/16 v19, 0x0

    :goto_6
    move/from16 v0, v19

    if-lt v0, v12, :cond_e

    .line 1003
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternInProgress:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    sget-object v4, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Animate:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    if-ne v3, v4, :cond_5

    .line 1004
    :cond_4
    if-eqz v9, :cond_5

    .line 1005
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressY:F

    invoke-virtual {v14, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1009
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    sget-object v4, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Wrong:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    if-eq v3, v4, :cond_10

    .line 1010
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v4, 0x3f

    const/16 v34, 0xff

    const/16 v35, 0x66

    const/16 v36, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1018
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1024
    .end local v9           #anyCircles:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1025
    return-void

    .line 899
    .end local v14           #currentPath:Landroid/graphics/Path;
    .end local v16           #drawPath:Z
    .end local v24           #oldFlag:Z
    .end local v26           #paddingLeft:I
    .end local v27           #paddingTop:I
    .end local v30           #radius:F
    .end local v32           #squareHeight:F
    .end local v33           #squareWidth:F
    .restart local v23       #numCircles:I
    .restart local v25       #oneCycle:I
    .restart local v31       #spotInCycle:I
    :cond_7
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    .line 900
    .local v7, cell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    invoke-virtual {v7}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v3, v15, v3

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->getColumn()I

    move-result v4

    const/16 v34, 0x1

    aput-boolean v34, v3, v4

    .line 898
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 905
    .end local v7           #cell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 943
    .end local v23           #numCircles:I
    .end local v25           #oneCycle:I
    .end local v31           #spotInCycle:I
    .restart local v14       #currentPath:Landroid/graphics/Path;
    .restart local v26       #paddingLeft:I
    .restart local v27       #paddingTop:I
    .restart local v30       #radius:F
    .restart local v32       #squareHeight:F
    .restart local v33       #squareWidth:F
    :cond_9
    move/from16 v0, v27

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float v4, v4, v32

    add-float v6, v3, v4

    .line 945
    .local v6, topY:F
    const/16 v20, 0x0

    .local v20, j:I
    :goto_8
    const/4 v3, 0x3

    move/from16 v0, v20

    if-lt v0, v3, :cond_a

    .line 942
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 946
    :cond_a
    move/from16 v0, v26

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    mul-float v4, v4, v33

    add-float v5, v3, v4

    .line 947
    .local v5, leftX:F
    float-to-int v3, v5

    float-to-int v4, v6

    aget-object v34, v15, v19

    aget-boolean v34, v34, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    .line 945
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 955
    .end local v5           #leftX:F
    .end local v6           #topY:F
    .end local v20           #j:I
    :cond_b
    const/16 v16, 0x1

    goto/16 :goto_3

    .line 959
    .restart local v16       #drawPath:Z
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 963
    .restart local v24       #oldFlag:Z
    :cond_d
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    .line 964
    .restart local v7       #cell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    .line 969
    .local v8, next:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    iget v3, v8, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    aget-object v3, v15, v3

    iget v4, v8, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    .line 973
    move/from16 v0, v26

    int-to-float v3, v0

    iget v4, v7, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    int-to-float v4, v4

    mul-float v4, v4, v33

    add-float v5, v3, v4

    .line 974
    .restart local v5       #leftX:F
    move/from16 v0, v27

    int-to-float v3, v0

    iget v4, v7, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    int-to-float v4, v4

    mul-float v4, v4, v32

    add-float v6, v3, v4

    .restart local v6       #topY:F
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 976
    invoke-direct/range {v3 .. v8}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->drawArrow(Landroid/graphics/Canvas;FFLcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;)V

    .line 962
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    .line 983
    .end local v5           #leftX:F
    .end local v6           #topY:F
    .end local v7           #cell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .end local v8           #next:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .restart local v9       #anyCircles:Z
    :cond_e
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    .line 988
    .restart local v7       #cell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    iget v3, v7, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    aget-object v3, v15, v3

    iget v4, v7, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    .line 991
    const/4 v9, 0x1

    .line 993
    iget v3, v7, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 994
    .restart local v10       #centerX:F
    iget v3, v7, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterYForRow(I)F

    move-result v11

    .line 995
    .restart local v11       #centerY:F
    if-nez v19, :cond_f

    .line 996
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 982
    :goto_9
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_6

    .line 998
    :cond_f
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_9

    .line 1015
    .end local v7           #cell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    .end local v10           #centerX:F
    .end local v11           #centerY:F
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v4, 0x96

    const/16 v34, 0xff

    const/16 v35, 0x64

    const/16 v36, 0x64

    move/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_7
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 644
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 655
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 656
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 658
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 646
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 649
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 652
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 508
    .local v1, minimumWidth:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 509
    .local v0, minimumHeight:I
    invoke-direct {p0, p1, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->resolveMeasured(II)I

    move-result v3

    .line 510
    .local v3, viewWidth:I
    invoke-direct {p0, p2, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->resolveMeasured(II)I

    move-result v2

    .line 512
    .local v2, viewHeight:I
    iget v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_0

    .line 525
    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->setMeasuredDimension(II)V

    .line 526
    return-void

    .line 515
    :pswitch_0
    move v2, v3

    .line 516
    goto :goto_0

    .line 518
    :pswitch_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 519
    goto :goto_0

    .line 521
    :pswitch_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1139
    move-object v0, p1

    check-cast v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;

    .line 1140
    .local v0, ss:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1142
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Correct:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    .line 1143
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1141
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->setPattern(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1144
    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->values()[Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    .line 1145
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInputEnabled:Z

    .line 1146
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInStealthMode:Z

    .line 1147
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mEnableHapticFeedback:Z

    .line 1148
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 1130
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1131
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;

    .line 1132
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1133
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    .line 1134
    iget-boolean v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mEnableHapticFeedback:Z

    .line 1131
    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v5, 0x4040

    .line 458
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    .line 459
    .local v2, width:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getPaddingTop()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 462
    .local v0, height:I
    int-to-float v3, v2

    div-float/2addr v3, v5

    iput v3, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareWidth:F

    .line 463
    int-to-float v3, v0

    div-float/2addr v3, v5

    iput v3, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareHeight:F

    .line 466
    int-to-float v3, v0

    div-float/2addr v3, v5

    int-to-float v4, v0

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 467
    .local v1, squqreMinLen:F
    iput v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareWidth:F

    .line 468
    iput v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mSquareHeight:F

    .line 471
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 663
    iget-boolean v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInputEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 689
    :goto_0
    return v0

    .line 667
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 689
    goto :goto_0

    .line 669
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 672
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 675
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 678
    :pswitch_3
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->resetPattern()V

    .line 679
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternInProgress:Z

    .line 680
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->notifyPatternCleared()V

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;)V
    .locals 3
    .parameter "displayMode"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDisplayMode:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    .line 372
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Animate:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    if-ne p1, v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 374
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 377
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mAnimatingPeriodStart:J

    .line 378
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    .line 379
    .local v0, first:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressX:F

    .line 380
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInProgressY:F

    .line 381
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->clearPatternDrawLookup()V

    .line 383
    .end local v0           #first:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->invalidate()V

    .line 384
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .parameter "inStealthMode"

    .prologue
    .line 325
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mInStealthMode:Z

    .line 326
    return-void
.end method

.method public setOnPatternListener(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;)V
    .locals 0
    .parameter "onPatternListener"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mOnPatternListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;

    .line 345
    return-void
.end method

.method public setPattern(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .parameter "displayMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p2, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 355
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 356
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->clearPatternDrawLookup()V

    .line 357
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->setDisplayMode(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;)V

    .line 362
    return-void

    .line 357
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    .line 358
    .local v0, cell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .parameter "tactileFeedbackEnabled"

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->mEnableHapticFeedback:Z

    .line 336
    return-void
.end method
