.class public Lcom/alibaba/adi/collie/util/YuebaoCache;
.super Ljava/lang/Object;
.source "YuebaoCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureChartView(Lcom/alibaba/adi/collie/ui/view/ChartView;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "chartView"

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/ChartView;->getWidth()I

    move-result v2

    .line 14
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/ChartView;->getHeight()I

    move-result v3

    .line 15
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 13
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 16
    .local v1, cachedBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 17
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/ChartView;->draw(Landroid/graphics/Canvas;)V

    .line 18
    return-object v1
.end method
