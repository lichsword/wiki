.class public Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;
.super Lcom/etao/kakalib/business/decodeflow/KakaLibQRAndBarCodeDecodeFlow;
.source "KakaLibQRCodeFromAlbumDecodeFlow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/etao/kakalib/business/decodeflow/KakaLibQRAndBarCodeDecodeFlow;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "flowName"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibQRAndBarCodeDecodeFlow;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/etao/kakalib/KakaLibScanController;)V
    .locals 0
    .parameter "flowName"
    .parameter "scanController"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/etao/kakalib/business/decodeflow/KakaLibQRAndBarCodeDecodeFlow;-><init>(Ljava/lang/String;Lcom/etao/kakalib/KakaLibScanController;)V

    .line 21
    return-void
.end method


# virtual methods
.method public decode(Lcom/etao/kakalib/business/KakaLibImageWrapper;)Lcom/etao/kaka/decode/DecodeResult;
    .locals 2
    .parameter "imageWrapper"

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/etao/kakalib/business/KakaLibImageWrapper;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/etao/kakalib/business/KakaLibImageWrapper;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/etao/kaka/decode/KakaDecode;->codeDecodePictureWithQr(Ljava/lang/String;)Lcom/etao/kaka/decode/DecodeResult;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/etao/kakalib/business/KakaLibImageWrapper;->getBitmapData()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/etao/kakalib/business/KakaLibImageWrapper;->getBitmapData()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/etao/kaka/decode/KakaDecode;->codeDecodePictureWithQr(Landroid/graphics/Bitmap;)Lcom/etao/kaka/decode/DecodeResult;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "KakaLibDecodeFlow"

    const-string v1, "\u76f8\u518c\u53d6\u56fe\u754c\u9762\u6a21\u5f0f\uff0c\u4f20\u5165\u7684 \u56fe\u7247\u8def\u5f84\u6216\u8005bitmap\u5747\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    goto :goto_0
.end method
