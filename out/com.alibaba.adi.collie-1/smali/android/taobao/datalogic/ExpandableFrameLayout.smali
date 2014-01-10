.class public Landroid/taobao/datalogic/ExpandableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ExpandableFrameLayout.java"


# instance fields
.field private isActionDown:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mSellectRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/datalogic/ExpandableFrameLayout;->isActionDown:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/datalogic/ExpandableFrameLayout;->isActionDown:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/datalogic/ExpandableFrameLayout;->isActionDown:Z

    .line 31
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/taobao/datalogic/ExpandableFrameLayout;->updateSellectRect(Landroid/graphics/Canvas;)V

    .line 49
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 51
    return-void
.end method

.method public setActionDown(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/taobao/datalogic/ExpandableFrameLayout;->isActionDown:Z

    .line 56
    return-void
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/taobao/datalogic/ExpandableFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Landroid/taobao/datalogic/ExpandableFrameLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    return-void
.end method

.method public setSellectedRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 41
    iput-object p1, p0, Landroid/taobao/datalogic/ExpandableFrameLayout;->mSellectRect:Landroid/graphics/Rect;

    .line 42
    invoke-virtual {p0}, Landroid/taobao/datalogic/ExpandableFrameLayout;->invalidate()V

    .line 43
    return-void
.end method

.method public updateSellectRect(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/taobao/datalogic/ExpandableFrameLayout;->isActionDown:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Landroid/taobao/datalogic/ExpandableFrameLayout;->mSellectRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/taobao/datalogic/ExpandableFrameLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 64
    :cond_0
    return-void
.end method
