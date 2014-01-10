.class public Lcom/alibaba/adi/collie/ui/view/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private debugDraw:Z

.field private horizontalSpacing:I

.field private orientation:I

.field private verticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 17
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->horizontalSpacing:I

    .line 18
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->verticalSpacing:I

    .line 19
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->orientation:I

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->debugDraw:Z

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->horizontalSpacing:I

    .line 18
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->verticalSpacing:I

    .line 19
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->orientation:I

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->debugDraw:Z

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->horizontalSpacing:I

    .line 18
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->verticalSpacing:I

    .line 19
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->orientation:I

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->debugDraw:Z

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private createPaint(I)Landroid/graphics/Paint;
    .locals 2
    .parameter "color"

    .prologue
    .line 275
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 276
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 277
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 279
    return-object v0
.end method

.method private drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 15
    .parameter "canvas"
    .parameter "child"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->debugDraw:Z

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const/16 v0, -0x100

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v5

    .line 228
    .local v5, childPaint:Landroid/graphics/Paint;
    const v0, -0xff0100

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v12

    .line 229
    .local v12, layoutPaint:Landroid/graphics/Paint;
    const/high16 v0, -0x1

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v14

    .line 231
    .local v14, newLinePaint:Landroid/graphics/Paint;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;

    .line 233
    .local v13, lp:Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;
    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$2(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v0

    if-lez v0, :cond_4

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    .line 235
    .local v1, x:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v2, v0, v3

    .line 236
    .local v2, y:F
    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$2(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    move-object/from16 v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 237
    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$2(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x4080

    sub-float v7, v0, v3

    const/high16 v0, 0x4080

    sub-float v8, v2, v0

    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$2(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 238
    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$2(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x4080

    sub-float v7, v0, v3

    const/high16 v0, 0x4080

    add-float v8, v2, v0

    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$2(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 247
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_2
    :goto_1
    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$1(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v0

    if-lez v0, :cond_5

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v1, v0, v3

    .line 249
    .restart local v1       #x:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    .line 250
    .restart local v2       #y:F
    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$1(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v4, v2, v0

    move-object/from16 v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 251
    const/high16 v0, 0x4080

    sub-float v7, v1, v0

    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$1(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x4080

    sub-float v8, v0, v3

    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$1(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 252
    const/high16 v0, 0x4080

    add-float v7, v1, v0

    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$1(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x4080

    sub-float v8, v0, v3

    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$1(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 261
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_3
    :goto_2
    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->newLine:Z
    invoke-static {v13}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$0(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->orientation:I

    if-nez v0, :cond_6

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    .line 264
    .restart local v1       #x:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v2, v0, v3

    .line 265
    .restart local v2       #y:F
    const/high16 v0, 0x40c0

    sub-float v8, v2, v0

    const/high16 v0, 0x40c0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v7, v1

    move v9, v1

    move-object v11, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 239
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_4
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->horizontalSpacing:I

    if-lez v0, :cond_2

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    .line 241
    .restart local v1       #x:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v2, v0, v3

    .line 242
    .restart local v2       #y:F
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v7, v1

    move v8, v2

    move v10, v2

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 243
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x4080

    sub-float v7, v0, v3

    const/high16 v0, 0x4080

    sub-float v8, v2, v0

    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 244
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x4080

    sub-float v7, v0, v3

    const/high16 v0, 0x4080

    add-float v8, v2, v0

    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 253
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_5
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->verticalSpacing:I

    if-lez v0, :cond_3

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v1, v0, v3

    .line 255
    .restart local v1       #x:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    .line 256
    .restart local v2       #y:F
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v7, v1

    move v8, v2

    move v9, v1

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 257
    const/high16 v0, 0x4080

    sub-float v7, v1, v0

    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x4080

    sub-float v8, v0, v3

    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 258
    const/high16 v0, 0x4080

    add-float v7, v1, v0

    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x4080

    sub-float v8, v0, v3

    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 267
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v1, v0, v3

    .line 268
    .restart local v1       #x:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    .line 269
    .restart local v2       #y:F
    const/high16 v0, 0x40c0

    sub-float v7, v1, v0

    const/high16 v0, 0x40c0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v8, v2

    move v10, v2

    move-object v11, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private getHorizontalSpacing(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I
    .locals 2
    .parameter "lp"

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->horizontalSpacingSpecified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$2(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v0

    .line 170
    .local v0, hSpacing:I
    :goto_0
    return v0

    .line 168
    .end local v0           #hSpacing:I
    :cond_0
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->horizontalSpacing:I

    .restart local v0       #hSpacing:I
    goto :goto_0
.end method

.method private getVerticalSpacing(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I
    .locals 2
    .parameter "lp"

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->verticalSpacingSpecified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$1(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v0

    .line 160
    .local v0, vSpacing:I
    :goto_0
    return v0

    .line 158
    .end local v0           #vSpacing:I
    :cond_0
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->verticalSpacing:I

    .restart local v0       #vSpacing:I
    goto :goto_0
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 211
    sget-object v1, Lcom/alibaba/adi/collie/R$styleable;->FlowLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 213
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->horizontalSpacing:I

    .line 214
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->verticalSpacing:I

    .line 215
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->orientation:I

    .line 216
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->debugDraw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    return-void

    .line 217
    :catchall_0
    move-exception v1

    .line 218
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    throw v1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 192
    instance-of v0, p1, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 186
    .local v0, more:Z
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 187
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->generateDefaultLayoutParams()Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 197
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;
    .locals 2
    .parameter "attributeSet"

    .prologue
    .line 202
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 207
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getChildCount()I

    move-result v1

    .line 176
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 181
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;

    .line 179
    .local v3, lp:Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;
    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->x:I
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$3(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v4

    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->y:I
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$4(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v5

    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->x:I
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$3(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->y:I
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$4(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 33
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 42
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingLeft()I

    move-result v32

    sub-int v27, v31, v32

    .line 43
    .local v27, sizeWidth:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingLeft()I

    move-result v32

    sub-int v26, v31, v32

    .line 45
    .local v26, sizeHeight:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 46
    .local v20, modeWidth:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 51
    .local v19, modeHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->orientation:I

    move/from16 v31, v0

    if-nez v31, :cond_0

    .line 52
    move/from16 v25, v27

    .line 53
    .local v25, size:I
    move/from16 v18, v20

    .line 59
    .local v18, mode:I
    :goto_0
    const/16 v16, 0x0

    .line 60
    .local v16, lineThicknessWithSpacing:I
    const/4 v15, 0x0

    .line 61
    .local v15, lineThickness:I
    const/4 v14, 0x0

    .line 64
    .local v14, lineLengthWithSpacing:I
    const/16 v24, 0x0

    .line 66
    .local v24, prevLinePosition:I
    const/4 v8, 0x0

    .line 67
    .local v8, controlMaxLength:I
    const/4 v9, 0x0

    .line 69
    .local v9, controlMaxThickness:I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getChildCount()I

    move-result v10

    .line 70
    .local v10, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-lt v12, v10, :cond_1

    .line 138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->orientation:I

    move/from16 v31, v0

    if-nez v31, :cond_a

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingLeft()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingRight()I

    move-result v32

    add-int v31, v31, v32

    add-int v8, v8, v31

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingBottom()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingTop()I

    move-result v32

    add-int v31, v31, v32

    add-int v9, v9, v31

    .line 146
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->orientation:I

    move/from16 v31, v0

    if-nez v31, :cond_b

    .line 147
    move/from16 v0, p1

    invoke-static {v8, v0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->resolveSize(II)I

    move-result v31

    move/from16 v0, p2

    invoke-static {v9, v0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->resolveSize(II)I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->setMeasuredDimension(II)V

    .line 151
    :goto_3
    return-void

    .line 55
    .end local v8           #controlMaxLength:I
    .end local v9           #controlMaxThickness:I
    .end local v10           #count:I
    .end local v12           #i:I
    .end local v14           #lineLengthWithSpacing:I
    .end local v15           #lineThickness:I
    .end local v16           #lineThicknessWithSpacing:I
    .end local v18           #mode:I
    .end local v24           #prevLinePosition:I
    .end local v25           #size:I
    :cond_0
    move/from16 v25, v26

    .line 56
    .restart local v25       #size:I
    move/from16 v18, v19

    .restart local v18       #mode:I
    goto :goto_0

    .line 71
    .restart local v8       #controlMaxLength:I
    .restart local v9       #controlMaxThickness:I
    .restart local v10       #count:I
    .restart local v12       #i:I
    .restart local v14       #lineLengthWithSpacing:I
    .restart local v15       #lineThickness:I
    .restart local v16       #lineThicknessWithSpacing:I
    .restart local v24       #prevLinePosition:I
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 72
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 70
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 77
    :cond_2
    const/high16 v31, 0x4000

    move/from16 v0, v20

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    const/high16 v31, -0x8000

    :goto_5
    move/from16 v0, v27

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v32

    .line 78
    const/high16 v31, 0x4000

    move/from16 v0, v19

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    const/high16 v31, -0x8000

    :goto_6
    move/from16 v0, v26

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .line 76
    move/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 81
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;

    .line 83
    .local v17, lp:Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getHorizontalSpacing(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v11

    .line 84
    .local v11, hSpacing:I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getVerticalSpacing(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I

    move-result v30

    .line 86
    .local v30, vSpacing:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 87
    .local v7, childWidth:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 94
    .local v4, childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->orientation:I

    move/from16 v31, v0

    if-nez v31, :cond_7

    .line 95
    move v5, v7

    .line 96
    .local v5, childLength:I
    move v6, v4

    .line 97
    .local v6, childThickness:I
    move/from16 v28, v11

    .line 98
    .local v28, spacingLength:I
    move/from16 v29, v30

    .line 106
    .local v29, spacingThickness:I
    :goto_7
    add-int v13, v14, v5

    .line 107
    .local v13, lineLength:I
    add-int v14, v13, v28

    .line 109
    #getter for: Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->newLine:Z
    invoke-static/range {v17 .. v17}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->access$0(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)Z

    move-result v31

    if-nez v31, :cond_8

    if-eqz v18, :cond_3

    move/from16 v0, v25

    if-gt v13, v0, :cond_8

    :cond_3
    const/16 v21, 0x0

    .line 110
    .local v21, newLine:Z
    :goto_8
    if-eqz v21, :cond_4

    .line 111
    add-int v24, v24, v16

    .line 113
    move v15, v6

    .line 114
    move v13, v5

    .line 115
    add-int v16, v6, v29

    .line 116
    add-int v14, v13, v28

    .line 119
    :cond_4
    add-int v31, v6, v29

    move/from16 v0, v16

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 120
    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 124
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->orientation:I

    move/from16 v31, v0

    if-nez v31, :cond_9

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingLeft()I

    move-result v31

    add-int v31, v31, v13

    sub-int v22, v31, v5

    .line 126
    .local v22, posX:I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingTop()I

    move-result v31

    add-int v23, v31, v24

    .line 131
    .local v23, posY:I
    :goto_9
    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->setPosition(II)V

    .line 133
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 134
    add-int v9, v24, v15

    goto/16 :goto_4

    .end local v4           #childHeight:I
    .end local v5           #childLength:I
    .end local v6           #childThickness:I
    .end local v7           #childWidth:I
    .end local v11           #hSpacing:I
    .end local v13           #lineLength:I
    .end local v17           #lp:Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;
    .end local v21           #newLine:Z
    .end local v22           #posX:I
    .end local v23           #posY:I
    .end local v28           #spacingLength:I
    .end local v29           #spacingThickness:I
    .end local v30           #vSpacing:I
    :cond_5
    move/from16 v31, v20

    .line 77
    goto/16 :goto_5

    :cond_6
    move/from16 v31, v19

    .line 78
    goto/16 :goto_6

    .line 100
    .restart local v4       #childHeight:I
    .restart local v7       #childWidth:I
    .restart local v11       #hSpacing:I
    .restart local v17       #lp:Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;
    .restart local v30       #vSpacing:I
    :cond_7
    move v5, v4

    .line 101
    .restart local v5       #childLength:I
    move v6, v7

    .line 102
    .restart local v6       #childThickness:I
    move/from16 v28, v30

    .line 103
    .restart local v28       #spacingLength:I
    move/from16 v29, v11

    .restart local v29       #spacingThickness:I
    goto :goto_7

    .line 109
    .restart local v13       #lineLength:I
    :cond_8
    const/16 v21, 0x1

    goto :goto_8

    .line 128
    .restart local v21       #newLine:Z
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingLeft()I

    move-result v31

    add-int v22, v31, v24

    .line 129
    .restart local v22       #posX:I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingTop()I

    move-result v31

    add-int v31, v31, v13

    sub-int v23, v31, v4

    .restart local v23       #posY:I
    goto :goto_9

    .line 142
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childHeight:I
    .end local v5           #childLength:I
    .end local v6           #childThickness:I
    .end local v7           #childWidth:I
    .end local v11           #hSpacing:I
    .end local v13           #lineLength:I
    .end local v17           #lp:Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;
    .end local v21           #newLine:Z
    .end local v22           #posX:I
    .end local v23           #posY:I
    .end local v28           #spacingLength:I
    .end local v29           #spacingThickness:I
    .end local v30           #vSpacing:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingBottom()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingTop()I

    move-result v32

    add-int v31, v31, v32

    add-int v8, v8, v31

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingLeft()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->getPaddingRight()I

    move-result v32

    add-int v31, v31, v32

    add-int v9, v9, v31

    goto/16 :goto_2

    .line 149
    :cond_b
    move/from16 v0, p1

    invoke-static {v9, v0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->resolveSize(II)I

    move-result v31

    move/from16 v0, p2

    invoke-static {v8, v0}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->resolveSize(II)I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->setMeasuredDimension(II)V

    goto/16 :goto_3
.end method
