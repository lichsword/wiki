.class public Lcom/etao/kakalib/business/decodeflow/KakaLibDecodeFlowBuilder;
.super Ljava/lang/Object;
.source "KakaLibDecodeFlowBuilder.java"


# static fields
.field public static final FLOW_NAME_PREVIEW_DECODE_BARCODE_ONLY:Ljava/lang/String; = "FLOW_NAME_PREVIEW_DECODE_BARCODE_ONLY"

.field public static final FLOW_NAME_PREVIEW_DECODE_EXPRESS_ONLY:Ljava/lang/String; = "FLOW_NAME_PREVIEW_DECODE_EXPRESS_ONLY"

.field public static final FLOW_NAME_PREVIEW_DECODE_LOGO:Ljava/lang/String; = "FLOW_NAME_ABOUT_PREVIEW_DECODE_LOGO"

.field public static final FLOW_NAME_PREVIEW_DECODE_QR_AND_BARCODE:Ljava/lang/String; = "FLOW_NAME_PREVIEW_DECODE_QR_AND_BARCODE"

.field public static final FLOW_NAME_PREVIEW_DECODE_QR_ONLY:Ljava/lang/String; = "FLOW_NAME_PREVIEW_DECODE_QR_ONLY"

.field public static final FLOW_NAME_QR_CODE_FROM_ALBUM:Ljava/lang/String; = "FLOW_NAME_ABOUT_QR_CODE_FROM_ALBUM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildBarCodeDecodeFlow(Lcom/etao/kakalib/KakaLibScanController;Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
    .locals 2
    .parameter "scanController"
    .parameter "processer"

    .prologue
    .line 41
    new-instance v0, Lcom/etao/kakalib/business/decodeflow/KakaLibDecodeBarcodeOnlyFlow;

    .line 42
    const-string v1, "FLOW_NAME_PREVIEW_DECODE_BARCODE_ONLY"

    .line 41
    invoke-direct {v0, v1, p0}, Lcom/etao/kakalib/business/decodeflow/KakaLibDecodeBarcodeOnlyFlow;-><init>(Ljava/lang/String;Lcom/etao/kakalib/KakaLibScanController;)V

    .line 43
    .local v0, decodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
    invoke-virtual {v0, p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->setDecodeResultProcesser(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)V

    .line 44
    return-object v0
.end method

.method public static buildDecodeExpressOnlyFlow(Lcom/etao/kakalib/KakaLibScanController;Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
    .locals 2
    .parameter "scanController"
    .parameter "processer"

    .prologue
    .line 33
    new-instance v0, Lcom/etao/kakalib/business/decodeflow/KakaLibDecodeExpressOnlyFlow;

    .line 34
    const-string v1, "FLOW_NAME_PREVIEW_DECODE_EXPRESS_ONLY"

    .line 33
    invoke-direct {v0, v1, p0}, Lcom/etao/kakalib/business/decodeflow/KakaLibDecodeExpressOnlyFlow;-><init>(Ljava/lang/String;Lcom/etao/kakalib/KakaLibScanController;)V

    .line 35
    .local v0, decodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
    invoke-virtual {v0, p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->setDecodeResultProcesser(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)V

    .line 36
    return-object v0
.end method

.method public static buildDecodeQRAndBarCodeFlow(Lcom/etao/kakalib/KakaLibScanController;Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
    .locals 2
    .parameter "scanController"
    .parameter "processer"

    .prologue
    .line 17
    new-instance v0, Lcom/etao/kakalib/business/decodeflow/KakaLibQRAndBarCodeDecodeFlow;

    .line 18
    const-string v1, "FLOW_NAME_PREVIEW_DECODE_QR_AND_BARCODE"

    .line 17
    invoke-direct {v0, v1, p0}, Lcom/etao/kakalib/business/decodeflow/KakaLibQRAndBarCodeDecodeFlow;-><init>(Ljava/lang/String;Lcom/etao/kakalib/KakaLibScanController;)V

    .line 19
    .local v0, decodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
    invoke-virtual {v0, p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->setDecodeResultProcesser(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)V

    .line 20
    return-object v0
.end method

.method public static buildDecodeQROnlyFlow(Lcom/etao/kakalib/KakaLibScanController;Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
    .locals 2
    .parameter "scanController"
    .parameter "processer"

    .prologue
    .line 25
    new-instance v0, Lcom/etao/kakalib/business/decodeflow/KakaLibDecodeQROnlyFlow;

    .line 26
    const-string v1, "FLOW_NAME_PREVIEW_DECODE_QR_ONLY"

    .line 25
    invoke-direct {v0, v1, p0}, Lcom/etao/kakalib/business/decodeflow/KakaLibDecodeQROnlyFlow;-><init>(Ljava/lang/String;Lcom/etao/kakalib/KakaLibScanController;)V

    .line 27
    .local v0, decodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
    invoke-virtual {v0, p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->setDecodeResultProcesser(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)V

    .line 28
    return-object v0
.end method

.method public static buildQRCodeFromAlbumDecodeFlow(Lcom/etao/kakalib/KakaLibScanController;Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;
    .locals 2
    .parameter "scanController"
    .parameter "processer"

    .prologue
    .line 49
    new-instance v0, Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;

    .line 50
    const-string v1, "FLOW_NAME_ABOUT_QR_CODE_FROM_ALBUM"

    .line 49
    invoke-direct {v0, v1, p0}, Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;-><init>(Ljava/lang/String;Lcom/etao/kakalib/KakaLibScanController;)V

    .line 51
    .local v0, decodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;
    invoke-virtual {v0, p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;->setDecodeResultProcesser(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)V

    .line 52
    return-object v0
.end method
