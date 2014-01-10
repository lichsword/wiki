.class public Lcom/etao/kakalib/business/decodeflow/KakaLibQRAndBarCodeDecodeFlow;
.super Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
.source "KakaLibQRAndBarCodeDecodeFlow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "flowName"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/etao/kakalib/KakaLibScanController;)V
    .locals 0
    .parameter "flowName"
    .parameter "scanController"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;-><init>(Ljava/lang/String;Lcom/etao/kakalib/KakaLibScanController;)V

    .line 25
    return-void
.end method


# virtual methods
.method public decode(Lcom/etao/kakalib/business/KakaLibImageWrapper;)Lcom/etao/kaka/decode/DecodeResult;
    .locals 4
    .parameter "imageWrapper"

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/etao/kakalib/business/KakaLibImageWrapper;->getYuvImageFromByteDatas()Landroid/graphics/YuvImage;

    move-result-object v1

    .line 32
    .local v1, yuvImage:Landroid/graphics/YuvImage;
    invoke-virtual {v1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/etao/kakalib/business/decodeflow/KakaLibQRAndBarCodeDecodeFlow;->getDefaultRectForPicture(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 34
    .local v0, rect:Landroid/graphics/Rect;
    const/16 v2, 0x27f

    .line 33
    invoke-static {v1, v0, v2}, Lcom/etao/kaka/decode/KakaDecode;->yuvcodeDecode(Landroid/graphics/YuvImage;Landroid/graphics/Rect;I)Lcom/etao/kaka/decode/DecodeResult;

    move-result-object v2

    .line 36
    .end local v0           #rect:Landroid/graphics/Rect;
    .end local v1           #yuvImage:Landroid/graphics/YuvImage;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic decode(Lcom/etao/kakalib/business/KakaLibImageWrapper;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibQRAndBarCodeDecodeFlow;->decode(Lcom/etao/kakalib/business/KakaLibImageWrapper;)Lcom/etao/kaka/decode/DecodeResult;

    move-result-object v0

    return-object v0
.end method
