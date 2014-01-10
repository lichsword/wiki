.class public Lcom/etao/kakalib/business/decodeflow/KakaLibDecodeExpressOnlyFlow;
.super Lcom/etao/kakalib/business/decodeflow/KakaLibQRAndBarCodeDecodeFlow;
.source "KakaLibDecodeExpressOnlyFlow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/etao/kakalib/business/decodeflow/KakaLibQRAndBarCodeDecodeFlow;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "flowName"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibQRAndBarCodeDecodeFlow;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/etao/kakalib/KakaLibScanController;)V
    .locals 0
    .parameter "flowName"
    .parameter "scanController"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/etao/kakalib/business/decodeflow/KakaLibQRAndBarCodeDecodeFlow;-><init>(Ljava/lang/String;Lcom/etao/kakalib/KakaLibScanController;)V

    .line 20
    return-void
.end method


# virtual methods
.method public decode(Lcom/etao/kakalib/business/KakaLibImageWrapper;)Lcom/etao/kaka/decode/DecodeResult;
    .locals 3
    .parameter "imageWrapper"

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/etao/kakalib/business/KakaLibImageWrapper;->getYuvImageFromByteDatas()Landroid/graphics/YuvImage;

    move-result-object v0

    .line 30
    .local v0, yuvImage:Landroid/graphics/YuvImage;
    invoke-virtual {v0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/etao/kakalib/business/decodeflow/KakaLibDecodeExpressOnlyFlow;->getDefaultRectForPicture(II)Landroid/graphics/Rect;

    move-result-object v1

    .line 31
    const/16 v2, 0x30

    .line 29
    invoke-static {v0, v1, v2}, Lcom/etao/kaka/decode/KakaDecode;->yuvcodeDecode(Landroid/graphics/YuvImage;Landroid/graphics/Rect;I)Lcom/etao/kaka/decode/DecodeResult;

    move-result-object v1

    return-object v1
.end method
