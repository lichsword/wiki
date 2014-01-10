.class public Lcom/alibaba/adi/collie/ui/view/DashedLine;
.super Landroid/view/View;
.source "DashedLine.java"


# instance fields
.field color:I

.field effects:Landroid/graphics/PathEffect;

.field orientation:I

.field paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->paint:Landroid/graphics/Paint;

    .line 19
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->path:Landroid/graphics/Path;

    .line 20
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->effects:Landroid/graphics/PathEffect;

    .line 35
    iput v4, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->orientation:I

    .line 26
    sget-object v1, Lcom/alibaba/adi/collie/R$styleable;->DashedLine:[I

    .line 25
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 27
    .local v0, typedArray:Landroid/content/res/TypedArray;
    const v1, 0x7f090001

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->color:I

    .line 29
    return-void

    .line 20
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->orientation:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->effects:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 63
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 64
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/DashedLine;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/DashedLine;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 32
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->color:I

    .line 33
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/DashedLine;->orientation:I

    .line 39
    return-void
.end method
