.class public Lcom/alibaba/adi/collie/ui/view/ChartView;
.super Landroid/view/View;
.source "ChartView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ChartView"


# instance fields
.field private axisH:I

.field private axisW:I

.field private final bottomH:I

.field private curveStrokeWidth:F

.field private data:[D

.field private dataSize:I

.field private days:[Ljava/util/Date;

.field private final effects:Landroid/graphics/PathEffect;

.field private final leftW:I

.field private volatile mCachedBitmap:Landroid/graphics/Bitmap;

.field private mIsDataValid:Z

.field private max:D

.field private min:D

.field private offsetDown:I

.field private offsetUp:I

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private portionW:F

.field private radius:I

.field private final title:Ljava/lang/String;

.field private triangle:I

.field private viewH:I

.field private viewW:I

.field private widthTriangle:I

.field private xYStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    .line 27
    const/16 v0, 0x50

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->bottomH:I

    .line 28
    const/16 v0, 0x1e

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->leftW:I

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->paint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->path:Landroid/graphics/Path;

    .line 34
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/high16 v2, 0x4000

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->effects:Landroid/graphics/PathEffect;

    .line 38
    const-string v0, "\u4e07\u4efd\u6536\u76ca(\u5143)"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->title:Ljava/lang/String;

    .line 48
    return-void

    .line 34
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    .line 27
    const/16 v0, 0x50

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->bottomH:I

    .line 28
    const/16 v0, 0x1e

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->leftW:I

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->paint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->path:Landroid/graphics/Path;

    .line 34
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/high16 v2, 0x4000

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->effects:Landroid/graphics/PathEffect;

    .line 38
    const-string v0, "\u4e07\u4efd\u6536\u76ca(\u5143)"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->title:Ljava/lang/String;

    .line 52
    return-void

    .line 34
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method private drawAxis(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 19
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 157
    const-string v2, "\u4e07\u4efd\u6536\u76ca(\u5143)"

    const/high16 v5, 0x4220

    const/high16 v6, 0x41f0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 159
    const/high16 v3, 0x41f0

    .line 160
    .local v3, yStartX:F
    const/high16 v4, 0x41f0

    .line 161
    .local v4, yStartY:F
    const/high16 v5, 0x41f0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->axisH:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 163
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->axisW:I

    int-to-float v8, v2

    .line 164
    .local v8, xEndX:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->axisH:I

    int-to-float v9, v2

    .line 165
    .local v9, xEndY:F
    const/high16 v6, 0x41f0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->axisH:I

    int-to-float v7, v2

    move-object/from16 v5, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 167
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->triangle:I

    int-to-float v2, v2

    add-float v13, v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->widthTriangle:I

    int-to-float v2, v2

    sub-float v14, v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->triangle:I

    int-to-float v2, v2

    add-float v15, v3, v2

    .line 168
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->widthTriangle:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v17, v3, v2

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v16, v4

    move/from16 v18, v4

    .line 167
    invoke-direct/range {v10 .. v18}, Lcom/alibaba/adi/collie/ui/view/ChartView;->drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFFF)V

    .line 170
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->widthTriangle:I

    int-to-float v2, v2

    add-float v13, v8, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->triangle:I

    int-to-float v2, v2

    add-float v14, v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->widthTriangle:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v16, v9, v2

    .line 171
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->triangle:I

    int-to-float v2, v2

    add-float v18, v9, v2

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move v15, v8

    move/from16 v17, v8

    .line 170
    invoke-direct/range {v10 .. v18}, Lcom/alibaba/adi/collie/ui/view/ChartView;->drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFFF)V

    .line 173
    return-void
.end method

.method private drawChart(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 23
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 176
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->mIsDataValid:Z

    if-nez v2, :cond_0

    .line 177
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 178
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const v7, 0x7f0a00e2

    invoke-virtual {v2, v7}, Lcom/alibaba/adi/collie/CoreApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->viewW:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->viewH:I

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v7, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 284
    :goto_0
    return-void

    .line 183
    :cond_0
    const/4 v3, 0x0

    .line 184
    .local v3, lastX:F
    const/4 v4, 0x0

    .line 187
    .local v4, lastY:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    new-array v8, v2, [F

    .line 188
    .local v8, cachedPointX:[F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    new-array v9, v2, [F

    .line 189
    .local v9, cachedPointY:[F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->curveStrokeWidth:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    if-lt v11, v2, :cond_1

    .line 259
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 260
    const/high16 v2, 0x4150

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/adi/collie/ui/view/ChartView;->setDips(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 261
    const/16 v2, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 262
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 263
    .local v10, calendar:Ljava/util/Calendar;
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    if-lt v11, v2, :cond_e

    .line 272
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 273
    const/16 v2, 0xff

    const/16 v7, 0xff

    const/16 v15, 0xff

    invoke-static {v2, v7, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->effects:Landroid/graphics/PathEffect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 275
    const/high16 v2, 0x3f80

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 277
    const/4 v11, 0x1

    :goto_3
    array-length v2, v8

    if-lt v11, v2, :cond_10

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->reset()V

    goto :goto_0

    .line 191
    .end local v10           #calendar:Ljava/util/Calendar;
    :cond_1
    mul-int/lit8 v2, v11, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->portionW:F

    mul-float/2addr v2, v7

    const/high16 v7, 0x41f0

    add-float v5, v2, v7

    .line 193
    .local v5, x:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->axisH:I

    int-to-double v15, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    aget-wide v17, v2, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->min:D

    move-wide/from16 v19, v0

    sub-double v17, v17, v19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->axisH:I

    int-to-double v0, v2

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3fe0

    mul-double v19, v19, v21

    mul-double v17, v17, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->max:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->min:D

    move-wide/from16 v21, v0

    sub-double v19, v19, v21

    div-double v17, v17, v19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->axisH:I

    int-to-double v0, v2

    move-wide/from16 v19, v0

    const-wide v21, 0x3fc999999999999aL

    mul-double v19, v19, v21

    add-double v17, v17, v19

    sub-double v15, v15, v17

    double-to-float v6, v15

    .line 194
    .local v6, y:F
    const/16 v2, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 195
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->radius:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v6, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 196
    const/4 v2, 0x1

    if-lt v11, v2, :cond_2

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    .line 197
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    :cond_2
    move v3, v5

    .line 200
    move v4, v6

    .line 202
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    add-int/lit8 v2, v2, -0x1

    if-ne v11, v2, :cond_3

    .line 203
    const/16 v2, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 204
    const/high16 v2, 0x4180

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/adi/collie/ui/view/ChartView;->setDips(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 209
    :goto_4
    const/high16 v2, 0x4100

    add-float v13, v5, v2

    .line 210
    .local v13, textX:F
    const/4 v14, 0x0

    .line 211
    .local v14, textY:F
    if-nez v11, :cond_6

    .line 212
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 213
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    const/4 v7, 0x1

    if-le v2, v7, :cond_5

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    add-int/lit8 v7, v11, 0x1

    aget-wide v15, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    aget-wide v17, v2, v11

    cmpl-double v2, v15, v17

    if-lez v2, :cond_4

    .line 215
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetDown:I

    int-to-float v2, v2

    add-float v14, v6, v2

    .line 221
    :goto_5
    const-string v2, "%.4f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v11

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v7, v15

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v13, v14, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    :goto_6
    aput v5, v8, v11

    .line 255
    aput v6, v9, v11

    .line 190
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 206
    .end local v13           #textX:F
    .end local v14           #textY:F
    :cond_3
    const/16 v2, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 207
    const/high16 v2, 0x4130

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/adi/collie/ui/view/ChartView;->setDips(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_4

    .line 217
    .restart local v13       #textX:F
    .restart local v14       #textY:F
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetUp:I

    int-to-float v2, v2

    sub-float v14, v6, v2

    .line 219
    goto :goto_5

    .line 220
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetUp:I

    int-to-float v2, v2

    sub-float v14, v6, v2

    goto :goto_5

    .line 222
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    add-int/lit8 v2, v2, -0x1

    if-ne v11, v2, :cond_9

    .line 223
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    const/4 v7, 0x1

    if-le v2, v7, :cond_8

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    add-int/lit8 v7, v11, -0x1

    aget-wide v15, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    aget-wide v17, v2, v11

    cmpl-double v2, v15, v17

    if-lez v2, :cond_7

    .line 225
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetDown:I

    int-to-float v2, v2

    add-float v14, v6, v2

    .line 231
    :goto_7
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 232
    const-string v2, "%.4f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v11

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v7, v15

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v13, v14, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 227
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetUp:I

    int-to-float v2, v2

    sub-float v14, v6, v2

    .line 229
    goto :goto_7

    .line 230
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetUp:I

    int-to-float v2, v2

    sub-float v14, v6, v2

    goto :goto_7

    .line 235
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    add-int/lit8 v7, v11, 0x1

    aget-wide v15, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    aget-wide v17, v2, v11

    cmpl-double v2, v15, v17

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    add-int/lit8 v7, v11, -0x1

    aget-wide v15, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    aget-wide v17, v2, v11

    cmpl-double v2, v15, v17

    if-lez v2, :cond_a

    .line 236
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetDown:I

    int-to-float v2, v2

    add-float v14, v6, v2

    .line 237
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 251
    :goto_8
    const-string v2, "%.4f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v11

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v7, v15

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v13, v14, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 238
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    add-int/lit8 v7, v11, 0x1

    aget-wide v15, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    aget-wide v17, v2, v11

    cmpg-double v2, v15, v17

    if-gez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    add-int/lit8 v7, v11, -0x1

    aget-wide v15, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    aget-wide v17, v2, v11

    cmpl-double v2, v15, v17

    if-lez v2, :cond_b

    .line 239
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetUp:I

    int-to-float v2, v2

    sub-float v14, v6, v2

    .line 240
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_8

    .line 241
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    add-int/lit8 v7, v11, 0x1

    aget-wide v15, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    aget-wide v17, v2, v11

    cmpg-double v2, v15, v17

    if-gez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    add-int/lit8 v7, v11, -0x1

    aget-wide v15, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    aget-wide v17, v2, v11

    cmpg-double v2, v15, v17

    if-gez v2, :cond_c

    .line 242
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetUp:I

    int-to-float v2, v2

    sub-float v14, v6, v2

    .line 243
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_8

    .line 244
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    add-int/lit8 v7, v11, 0x1

    aget-wide v15, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    aget-wide v17, v2, v11

    cmpl-double v2, v15, v17

    if-lez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    add-int/lit8 v7, v11, -0x1

    aget-wide v15, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    aget-wide v17, v2, v11

    cmpg-double v2, v15, v17

    if-gez v2, :cond_d

    .line 245
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetDown:I

    int-to-float v2, v2

    add-float v14, v6, v2

    .line 246
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_8

    .line 248
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetUp:I

    int-to-float v2, v2

    sub-float v14, v6, v2

    .line 249
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_8

    .line 264
    .end local v5           #x:F
    .end local v6           #y:F
    .end local v13           #textX:F
    .end local v14           #textY:F
    .restart local v10       #calendar:Ljava/util/Calendar;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->days:[Ljava/util/Date;

    aget-object v2, v2, v11

    if-eqz v2, :cond_f

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->days:[Ljava/util/Date;

    aget-object v2, v2, v11

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u65e5"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 267
    .local v12, strDay:Ljava/lang/String;
    aget v2, v8, v11

    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->axisH:I

    add-int/lit8 v7, v7, 0x28

    int-to-float v7, v7

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v2, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 263
    .end local v12           #strDay:Ljava/lang/String;
    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 278
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->path:Landroid/graphics/Path;

    aget v7, v8, v11

    aget v15, v9, v11

    invoke-virtual {v2, v7, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->path:Landroid/graphics/Path;

    aget v7, v8, v11

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->axisH:I

    int-to-float v15, v15

    invoke-virtual {v2, v7, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 280
    const/16 v2, 0x1e

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/ui/view/ChartView;->path:Landroid/graphics/Path;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 277
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3
.end method

.method private drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFFF)V
    .locals 1
    .parameter "canvas"
    .parameter "paint"
    .parameter "startX"
    .parameter "startY"
    .parameter "secondX"
    .parameter "secondY"
    .parameter "thirdX"
    .parameter "thirdY"

    .prologue
    .line 147
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 148
    .local v0, path:Landroid/graphics/Path;
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 149
    invoke-virtual {v0, p5, p6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 150
    invoke-virtual {v0, p7, p8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 152
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 153
    return-void
.end method

.method private resetPaint()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 129
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->paint:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4140

    invoke-direct {p0, v1}, Lcom/alibaba/adi/collie/ui/view/ChartView;->setDips(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->xYStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    return-void
.end method

.method private setDips(F)I
    .locals 3
    .parameter "dips"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/ChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 290
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public getViewH()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->viewH:I

    return v0
.end method

.method public getViewW()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->viewW:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/ChartView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->viewW:I

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/ChartView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->viewH:I

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/ChartView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->axisW:I

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/ChartView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x50

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->axisH:I

    .line 114
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    if-eqz v0, :cond_0

    .line 115
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->axisW:I

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->portionW:F

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/ChartView;->resetPaint()V

    .line 118
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 119
    const-string v0, "ChartView"

    const-string v1, "NO bitmap cache to draw"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/adi/collie/ui/view/ChartView;->drawAxis(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/adi/collie/ui/view/ChartView;->drawChart(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v0, "ChartView"

    const-string v1, "HAS bitmap cache to draw"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->mCachedBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setBitmapCache(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "cachedBitmap"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 57
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/YuebaoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, yuebaoDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/YuebaoData;>;"
    const/16 v10, 0x1b

    const/high16 v9, 0x4040

    const/16 v8, 0xc

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 60
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 61
    :cond_0
    iput-boolean v6, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->mIsDataValid:Z

    .line 77
    :goto_0
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    aget v2, v2, v6

    const/16 v3, 0x2d0

    if-ge v2, v3, :cond_5

    .line 78
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->xYStrokeWidth:F

    .line 79
    iput v9, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->curveStrokeWidth:F

    .line 80
    const/4 v2, 0x5

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->radius:I

    .line 81
    const/4 v2, 0x6

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->widthTriangle:I

    .line 82
    iput v7, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->triangle:I

    .line 83
    iput v8, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetUp:I

    .line 84
    iput v10, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetDown:I

    .line 102
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/ChartView;->invalidate()V

    .line 104
    return-void

    .line 63
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    .line 64
    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    new-array v2, v2, [D

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    .line 65
    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    new-array v2, v2, [Ljava/util/Date;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->days:[Ljava/util/Date;

    .line 66
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/model/service/YuebaoData;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/service/YuebaoData;->getWfsy()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->max:D

    .line 67
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/model/service/YuebaoData;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/service/YuebaoData;->getWfsy()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->min:D

    .line 68
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->dataSize:I

    if-lt v0, v2, :cond_2

    .line 75
    iput-boolean v7, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->mIsDataValid:Z

    goto :goto_0

    .line 69
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/model/service/YuebaoData;

    .line 70
    .local v1, yuebaoData:Lcom/alibaba/adi/collie/model/service/YuebaoData;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/service/YuebaoData;->getWfsy()D

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 71
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->days:[Ljava/util/Date;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/service/YuebaoData;->getDateObj()Ljava/util/Date;

    move-result-object v3

    aput-object v3, v2, v0

    .line 72
    iget-wide v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->max:D

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    aget-wide v4, v4, v0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->max:D

    :goto_3
    iput-wide v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->max:D

    .line 73
    iget-wide v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->min:D

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    aget-wide v4, v4, v0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_4

    iget-wide v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->min:D

    :goto_4
    iput-wide v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->min:D

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    aget-wide v2, v2, v0

    goto :goto_3

    .line 73
    :cond_4
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->data:[D

    aget-wide v2, v2, v0

    goto :goto_4

    .line 85
    .end local v0           #i:I
    .end local v1           #yuebaoData:Lcom/alibaba/adi/collie/model/service/YuebaoData;
    :cond_5
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    aget v2, v2, v6

    const/16 v3, 0x438

    if-ge v2, v3, :cond_6

    .line 86
    const/high16 v2, 0x4000

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->xYStrokeWidth:F

    .line 87
    const/high16 v2, 0x4080

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->curveStrokeWidth:F

    .line 88
    const/4 v2, 0x7

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->radius:I

    .line 89
    iput v8, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->widthTriangle:I

    .line 90
    iput v7, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->triangle:I

    .line 91
    iput v8, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetUp:I

    .line 92
    iput v10, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetDown:I

    goto/16 :goto_1

    .line 94
    :cond_6
    iput v9, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->xYStrokeWidth:F

    .line 95
    const/high16 v2, 0x40a0

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->curveStrokeWidth:F

    .line 96
    const/16 v2, 0x9

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->radius:I

    .line 97
    const/16 v2, 0x10

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->widthTriangle:I

    .line 98
    const/4 v2, 0x2

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->triangle:I

    .line 99
    const/16 v2, 0x12

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetUp:I

    .line 100
    const/16 v2, 0x28

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/ChartView;->offsetDown:I

    goto/16 :goto_1
.end method
