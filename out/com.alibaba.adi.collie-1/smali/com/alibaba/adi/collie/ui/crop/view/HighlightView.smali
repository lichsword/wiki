.class public Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;
    }
.end annotation


# static fields
.field public static final GROW_BOTTOM_EDGE:I = 0x10

.field public static final GROW_LEFT_EDGE:I = 0x2

.field public static final GROW_NONE:I = 0x1

.field public static final GROW_RIGHT_EDGE:I = 0x4

.field public static final GROW_TOP_EDGE:I = 0x8

.field public static final MOVE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "HighlightView"


# instance fields
.field mContext:Landroid/view/View;

.field public mCropRect:Landroid/graphics/RectF;

.field public mDrawRect:Landroid/graphics/Rect;

.field private final mFocusPaint:Landroid/graphics/Paint;

.field mHidden:Z

.field private mImageRect:Landroid/graphics/RectF;

.field private mInitialAspectRatio:F

.field public mIsFocused:Z

.field private mMaintainAspectRatio:Z

.field public mMatrix:Landroid/graphics/Matrix;

.field private mMode:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

.field private final mNoFocusPaint:Landroid/graphics/Paint;

.field private final mOutlinePaint:Landroid/graphics/Paint;

.field private mRectangle:Z

.field private mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    sget-object v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;->Grow:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMode:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMaintainAspectRatio:Z

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mRectangle:Z

    .line 333
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    .line 334
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    .line 335
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 29
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mContext:Landroid/view/View;

    .line 30
    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 282
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 283
    .local v0, r:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 284
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 33
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    .line 35
    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mHidden:Z

    if-eqz v13, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 58
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 59
    .local v5, path:Landroid/graphics/Path;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->hasFocus()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 60
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 61
    .local v8, viewDrawingRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v13, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 63
    new-instance v13, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v13, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v14, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v13, v14}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 64
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    sget-object v13, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v13}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->hasFocus()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 69
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMode:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    sget-object v14, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;->Grow:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    if-ne v13, v14, :cond_0

    .line 72
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v13, 0x1

    .line 73
    .local v4, left:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v13, 0x1

    .line 74
    .local v6, right:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v13, 0x4

    .line 75
    .local v7, top:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v13, 0x3

    .line 77
    .local v1, bottom:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    div-int/lit8 v10, v13, 0x2

    .line 78
    .local v10, widthWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    div-int/lit8 v9, v13, 0x2

    .line 79
    .local v9, widthHeight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    div-int/lit8 v2, v13, 0x2

    .line 80
    .local v2, heightHeight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    div-int/lit8 v3, v13, 0x2

    .line 82
    .local v3, heightWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    add-int v11, v13, v14

    .line 83
    .local v11, xMiddle:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    add-int v12, v13, v14

    .line 85
    .local v12, yMiddle:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    sub-int v14, v4, v10

    sub-int v15, v12, v9

    add-int v16, v4, v10

    .line 86
    add-int v17, v12, v9

    .line 85
    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    sub-int v14, v6, v10

    sub-int v15, v12, v9

    add-int v16, v6, v10

    .line 90
    add-int v17, v12, v9

    .line 89
    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    sub-int v14, v11, v3

    sub-int v15, v7, v2

    add-int v16, v11, v3

    .line 94
    add-int v17, v7, v2

    .line 93
    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    sub-int v14, v11, v3

    sub-int v15, v1, v2

    add-int v16, v11, v3

    .line 98
    add-int v17, v1, v2

    .line 97
    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 66
    .end local v1           #bottom:I
    .end local v2           #heightHeight:I
    .end local v3           #heightWidth:I
    .end local v4           #left:I
    .end local v6           #right:I
    .end local v7           #top:I
    .end local v9           #widthHeight:I
    .end local v10           #widthWidth:I
    .end local v11           #xMiddle:I
    .end local v12           #yMiddle:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    goto/16 :goto_1
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 277
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHit(FF)I
    .locals 15
    .parameter "x"
    .parameter "y"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v9

    .line 115
    .local v9, r:Landroid/graphics/Rect;
    const/high16 v8, 0x41a0

    .line 116
    .local v8, hysteresis:F
    const/4 v11, 0x1

    .line 118
    .local v11, retval:I
    iget-boolean v13, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mRectangle:Z

    if-eqz v13, :cond_6

    .line 119
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v13, v13

    sub-float v2, p1, v13

    .line 120
    .local v2, distX:F
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    sub-float v3, p2, v13

    .line 121
    .local v3, distY:F
    mul-float v13, v2, v2

    mul-float v14, v3, v3

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-int v4, v13

    .line 122
    .local v4, distanceFromCenter:I
    iget-object v13, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v10, v13, 0x2

    .line 123
    .local v10, radius:I
    iget-object v13, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v7, v13, 0x2

    .line 124
    .local v7, hradius:I
    sub-int v1, v4, v10

    .line 125
    .local v1, delta:I
    sub-int v5, v4, v7

    .line 126
    .local v5, hdelta:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x41a0

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_2

    .line 127
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_0

    .line 128
    const/4 v13, 0x0

    cmpg-float v13, v2, v13

    if-gez v13, :cond_1

    .line 129
    const/4 v11, 0x2

    .line 172
    .end local v1           #delta:I
    .end local v2           #distX:F
    .end local v3           #distY:F
    .end local v4           #distanceFromCenter:I
    .end local v5           #hdelta:I
    .end local v7           #hradius:I
    .end local v10           #radius:I
    :cond_0
    :goto_0
    return v11

    .line 131
    .restart local v1       #delta:I
    .restart local v2       #distX:F
    .restart local v3       #distY:F
    .restart local v4       #distanceFromCenter:I
    .restart local v5       #hdelta:I
    .restart local v7       #hradius:I
    .restart local v10       #radius:I
    :cond_1
    const/4 v11, 0x4

    .line 134
    goto :goto_0

    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x41a0

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_4

    .line 135
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    .line 136
    const/4 v13, 0x0

    cmpg-float v13, v3, v13

    if-gez v13, :cond_3

    .line 137
    const/16 v11, 0x8

    .line 138
    goto :goto_0

    .line 139
    :cond_3
    const/16 v11, 0x10

    .line 142
    goto :goto_0

    :cond_4
    if-ge v4, v10, :cond_5

    .line 143
    const/16 v11, 0x20

    .line 144
    goto :goto_0

    .line 145
    :cond_5
    const/4 v11, 0x1

    .line 147
    goto :goto_0

    .line 150
    .end local v1           #delta:I
    .end local v2           #distX:F
    .end local v3           #distY:F
    .end local v4           #distanceFromCenter:I
    .end local v5           #hdelta:I
    .end local v7           #hradius:I
    .end local v10           #radius:I
    :cond_6
    iget v13, v9, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    const/high16 v14, 0x41a0

    sub-float/2addr v13, v14

    cmpl-float v13, p2, v13

    if-ltz v13, :cond_b

    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    const/high16 v14, 0x41a0

    add-float/2addr v13, v14

    cmpg-float v13, p2, v13

    if-gez v13, :cond_b

    const/4 v12, 0x1

    .line 151
    .local v12, verticalCheck:Z
    :goto_1
    iget v13, v9, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    const/high16 v14, 0x41a0

    sub-float/2addr v13, v14

    cmpl-float v13, p1, v13

    if-ltz v13, :cond_c

    iget v13, v9, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    const/high16 v14, 0x41a0

    add-float/2addr v13, v14

    cmpg-float v13, p1, v13

    if-gez v13, :cond_c

    const/4 v6, 0x1

    .line 154
    .local v6, horizCheck:Z
    :goto_2
    iget v13, v9, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float v13, v13, p1

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x41a0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_7

    if-eqz v12, :cond_7

    .line 155
    or-int/lit8 v11, v11, 0x2

    .line 157
    :cond_7
    iget v13, v9, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float v13, v13, p1

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x41a0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_8

    if-eqz v12, :cond_8

    .line 158
    or-int/lit8 v11, v11, 0x4

    .line 160
    :cond_8
    iget v13, v9, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    sub-float v13, v13, p2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x41a0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_9

    if-eqz v6, :cond_9

    .line 161
    or-int/lit8 v11, v11, 0x8

    .line 163
    :cond_9
    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float v13, v13, p2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x41a0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_a

    if-eqz v6, :cond_a

    .line 164
    or-int/lit8 v11, v11, 0x10

    .line 168
    :cond_a
    const/4 v13, 0x1

    if-ne v11, v13, :cond_0

    move/from16 v0, p1

    float-to-int v13, v0

    move/from16 v0, p2

    float-to-int v14, v0

    invoke-virtual {v9, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 169
    const/16 v11, 0x20

    goto/16 :goto_0

    .line 150
    .end local v6           #horizCheck:Z
    .end local v12           #verticalCheck:Z
    :cond_b
    const/4 v12, 0x0

    goto :goto_1

    .line 151
    .restart local v12       #verticalCheck:Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_2
.end method

.method growBy(FF)V
    .locals 8
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/high16 v1, 0x41c8

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 219
    iget-boolean v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_0

    .line 220
    cmpl-float v4, p1, v6

    if-eqz v4, :cond_8

    .line 221
    iget v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    .line 230
    :cond_0
    :goto_0
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 231
    .local v2, r:Landroid/graphics/RectF;
    cmpl-float v4, p1, v6

    if-lez v4, :cond_1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v5, v7, p1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 232
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v7

    .line 233
    .local v0, adjustment:F
    move p1, v0

    .line 234
    iget-boolean v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_1

    .line 235
    iget v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    .line 238
    .end local v0           #adjustment:F
    :cond_1
    cmpl-float v4, p2, v6

    if-lez v4, :cond_2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v7, p2

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 239
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v7

    .line 240
    .restart local v0       #adjustment:F
    move p2, v0

    .line 241
    iget-boolean v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_2

    .line 242
    iget v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    .line 246
    .end local v0           #adjustment:F
    :cond_2
    neg-float v4, p1

    neg-float v5, p2

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 249
    const/high16 v3, 0x41c8

    .line 250
    .local v3, widthCap:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_3

    .line 251
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 253
    :cond_3
    iget-boolean v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mInitialAspectRatio:F

    div-float/2addr v1, v4

    .line 254
    .local v1, heightCap:F
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_5

    .line 255
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 259
    :cond_5
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    .line 260
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 264
    :cond_6
    :goto_1
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a

    .line 265
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 270
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 271
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 272
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 273
    return-void

    .line 222
    .end local v1           #heightCap:F
    .end local v2           #r:Landroid/graphics/RectF;
    .end local v3           #widthCap:F
    :cond_8
    cmpl-float v4, p2, v6

    if-eqz v4, :cond_0

    .line 223
    iget v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    goto/16 :goto_0

    .line 261
    .restart local v1       #heightCap:F
    .restart local v2       #r:Landroid/graphics/RectF;
    .restart local v3       #widthCap:F
    :cond_9
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 262
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    .line 266
    :cond_a
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    .line 267
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2
.end method

.method public handleMotion(IFF)V
    .locals 7
    .parameter "edge"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 178
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    .line 179
    .local v0, r:Landroid/graphics/Rect;
    if-ne p1, v4, :cond_0

    .line 198
    :goto_0
    return-void

    .line 181
    :cond_0
    const/16 v5, 0x20

    if-ne p1, v5, :cond_1

    .line 183
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, p3

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->moveBy(FF)V

    goto :goto_0

    .line 185
    :cond_1
    and-int/lit8 v5, p1, 0x6

    if-nez v5, :cond_2

    .line 186
    const/4 p2, 0x0

    .line 189
    :cond_2
    and-int/lit8 v5, p1, 0x18

    if-nez v5, :cond_3

    .line 190
    const/4 p3, 0x0

    .line 194
    :cond_3
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v1, p2, v5

    .line 195
    .local v1, xDelta:F
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, p3, v5

    .line 196
    .local v2, yDelta:F
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_4

    move v5, v3

    :goto_1
    int-to-float v5, v5

    mul-float/2addr v5, v1

    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_5

    :goto_2
    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p0, v5, v3}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->growBy(FF)V

    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mIsFocused:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 289
    return-void
.end method

.method moveBy(FF)V
    .locals 7
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/16 v6, -0xa

    const/4 v5, 0x0

    .line 202
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 204
    .local v0, invalRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 207
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 209
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 211
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 212
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 213
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 214
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 215
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .parameter "f"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mIsFocused:Z

    .line 47
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mHidden:Z

    .line 51
    return-void
.end method

.method public setMode(Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMode:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    .line 107
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMode:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    .line 108
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 110
    :cond_0
    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .locals 4
    .parameter "m"
    .parameter "imageRect"
    .parameter "cropRect"
    .parameter "rectangle"
    .parameter "maintainAspectRatio"

    .prologue
    const/16 v3, 0x7d

    const/16 v2, 0x32

    .line 292
    if-eqz p4, :cond_0

    .line 293
    const/4 p5, 0x1

    .line 295
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    .line 297
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    .line 298
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mImageRect:Landroid/graphics/RectF;

    .line 299
    iput-boolean p5, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMaintainAspectRatio:Z

    .line 300
    iput-boolean p4, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mRectangle:Z

    .line 302
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mInitialAspectRatio:F

    .line 303
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 305
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 306
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 307
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 308
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 309
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 311
    sget-object v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;->Grow:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->mMode:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    .line 312
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->init()V

    .line 313
    return-void
.end method
