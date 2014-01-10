.class final Lcom/google/zxing/qrcode/encoder/BlockPair;
.super Ljava/lang/Object;
.source "BlockPair.java"


# instance fields
.field private final dataBytes:Lcom/google/zxing/common/ByteArray;

.field private final errorCorrectionBytes:Lcom/google/zxing/common/ByteArray;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/ByteArray;Lcom/google/zxing/common/ByteArray;)V
    .locals 0
    .parameter "data"
    .parameter "errorCorrection"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/BlockPair;->dataBytes:Lcom/google/zxing/common/ByteArray;

    .line 28
    iput-object p2, p0, Lcom/google/zxing/qrcode/encoder/BlockPair;->errorCorrectionBytes:Lcom/google/zxing/common/ByteArray;

    .line 29
    return-void
.end method


# virtual methods
.method public getDataBytes()Lcom/google/zxing/common/ByteArray;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/BlockPair;->dataBytes:Lcom/google/zxing/common/ByteArray;

    return-object v0
.end method

.method public getErrorCorrectionBytes()Lcom/google/zxing/common/ByteArray;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/BlockPair;->errorCorrectionBytes:Lcom/google/zxing/common/ByteArray;

    return-object v0
.end method
