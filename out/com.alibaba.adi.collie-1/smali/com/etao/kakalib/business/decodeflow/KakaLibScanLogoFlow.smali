.class public Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;
.super Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
.source "KakaLibScanLogoFlow.java"


# static fields
.field public static final LOGO_BG_NAME:Ljava/lang/String; = "kakalib_logobg"


# instance fields
.field private logoScanView:Landroid/view/View;

.field resolution:Landroid/graphics/Point;

.field private scanBox:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Point;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "screenResolution"
    .parameter "logoScanView"
    .parameter "scanBox"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->logoScanView:Landroid/view/View;

    .line 23
    iput-object p3, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->scanBox:Landroid/graphics/Rect;

    .line 24
    iput-object p1, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->resolution:Landroid/graphics/Point;

    .line 25
    return-void
.end method


# virtual methods
.method public decode(Lcom/etao/kakalib/business/KakaLibImageWrapper;)Lcom/etao/kaka/decode/ScanFeatureResult;
    .locals 4
    .parameter "imageWrapper"

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/etao/kakalib/business/KakaLibImageWrapper;->getYuvImageData()Landroid/graphics/YuvImage;

    move-result-object v3

    .line 70
    .local v3, yuvImage:Landroid/graphics/YuvImage;
    invoke-virtual {p0}, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->getScanRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 71
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v3, v1}, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->decodeLogoYUVImage(Landroid/graphics/YuvImage;Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, feature:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 73
    :cond_0
    const/4 v2, 0x0

    .line 79
    :goto_0
    return-object v2

    .line 75
    :cond_1
    new-instance v2, Lcom/etao/kaka/decode/ScanFeatureResult;

    invoke-direct {v2}, Lcom/etao/kaka/decode/ScanFeatureResult;-><init>()V

    .line 76
    .local v2, result:Lcom/etao/kaka/decode/ScanFeatureResult;
    iput-object v0, v2, Lcom/etao/kaka/decode/ScanFeatureResult;->feature:Ljava/lang/String;

    .line 77
    iput-object p1, v2, Lcom/etao/kaka/decode/ScanFeatureResult;->imageWrapper:Lcom/etao/kakalib/business/KakaLibImageWrapper;

    .line 78
    iput-object v1, v2, Lcom/etao/kaka/decode/ScanFeatureResult;->rect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public bridge synthetic decode(Lcom/etao/kakalib/business/KakaLibImageWrapper;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->decode(Lcom/etao/kakalib/business/KakaLibImageWrapper;)Lcom/etao/kaka/decode/ScanFeatureResult;

    move-result-object v0

    return-object v0
.end method

.method public decodeLogoYUVImage(Landroid/graphics/YuvImage;Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 4
    .parameter "yuvImage"
    .parameter "rect"

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v2

    .line 86
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v3

    .line 85
    invoke-static {v1, v2, v3, p2}, Lcom/etao/kaka/decode/KakaScanEngine;->getLogoFeature([BIILandroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, feature:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    .end local v0           #feature:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getScanRect()Landroid/graphics/Rect;
    .locals 15

    .prologue
    .line 28
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .local v4, scanRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->getScanController()Lcom/etao/kakalib/KakaLibScanController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/etao/kakalib/KakaLibScanController;->getPreviewSize()Landroid/graphics/Point;

    move-result-object v1

    .line 30
    .local v1, previewSize:Landroid/graphics/Point;
    iget-object v5, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->resolution:Landroid/graphics/Point;

    .line 31
    .local v5, screenResolution:Landroid/graphics/Point;
    const/4 v9, 0x2

    new-array v0, v9, [I

    .line 32
    .local v0, locations:[I
    iget-object v9, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->logoScanView:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 33
    iget-object v9, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->logoScanView:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 34
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    aget v10, v0, v10

    const/4 v11, 0x1

    aget v11, v0, v11

    const/4 v12, 0x0

    aget v12, v0, v12

    iget-object v13, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->logoScanView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    .line 35
    const/4 v13, 0x1

    aget v13, v0, v13

    iget-object v14, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->logoScanView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 34
    iput-object v9, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->scanBox:Landroid/graphics/Rect;

    .line 38
    :cond_0
    iget-object v9, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->scanBox:Landroid/graphics/Rect;

    if-eqz v9, :cond_1

    if-eqz v1, :cond_1

    if-nez v5, :cond_3

    .line 39
    :cond_1
    if-nez v1, :cond_2

    .line 40
    const/4 v9, 0x0

    .line 59
    :goto_0
    return-object v9

    .line 42
    :cond_2
    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 43
    .local v7, x1:I
    const/4 v8, 0x0

    .line 44
    .local v8, y1:I
    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    div-int/lit8 v9, v9, 0x8

    mul-int/lit8 v6, v9, 0x8

    .line 46
    .local v6, w1:I
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #scanRect:Landroid/graphics/Rect;
    add-int v9, v7, v6

    add-int v10, v8, v6

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v4       #scanRect:Landroid/graphics/Rect;
    move-object v9, v4

    .line 47
    goto :goto_0

    .line 49
    .end local v6           #w1:I
    .end local v7           #x1:I
    .end local v8           #y1:I
    :cond_3
    iget v9, v5, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v1, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    div-float v2, v9, v10

    .line 50
    .local v2, ratioW:F
    iget v9, v5, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iget v10, v1, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    div-float v3, v9, v10

    .line 51
    .local v3, rotioH:F
    iget v9, v5, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->scanBox:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v9, v2

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 52
    iget-object v9, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->scanBox:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    div-float/2addr v9, v3

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 53
    iget-object v9, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->scanBox:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    div-float/2addr v9, v3

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->right:I

    .line 54
    iget v9, v5, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibScanLogoFlow;->scanBox:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v9, v2

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 55
    iget v9, v4, Landroid/graphics/Rect;->top:I

    if-ltz v9, :cond_4

    iget v9, v4, Landroid/graphics/Rect;->left:I

    if-ltz v9, :cond_4

    iget v9, v4, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Point;->x:I

    if-gt v9, v10, :cond_4

    .line 56
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    if-le v9, v10, :cond_5

    .line 57
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    move-object v9, v4

    .line 59
    goto :goto_0
.end method
