.class public final Lcom/google/zxing/pdf417/PDF417Reader;
.super Ljava/lang/Object;
.source "PDF417Reader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/pdf417/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/pdf417/PDF417Reader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/zxing/pdf417/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/pdf417/PDF417Reader;->decoder:Lcom/google/zxing/pdf417/decoder/Decoder;

    .line 40
    return-void
.end method

.method private static extractPureBits(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/common/BitMatrix;
    .locals 15
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    .line 87
    .local v5, matrix:Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    .line 88
    .local v3, height:I
    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v11

    .line 89
    .local v11, width:I
    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 92
    .local v6, minDimension:I
    const/4 v1, 0x0

    .line 93
    .local v1, borderWidth:I
    :goto_0
    if-ge v1, v6, :cond_0

    invoke-virtual {v5, v1, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 96
    :cond_0
    if-ne v1, v6, :cond_2

    .line 97
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 94
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_2
    move v7, v1

    .line 102
    .local v7, moduleEnd:I
    :goto_1
    if-ge v7, v6, :cond_3

    invoke-virtual {v5, v7, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-nez v14, :cond_4

    .line 105
    :cond_3
    if-ne v7, v6, :cond_5

    .line 106
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 103
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 109
    :cond_5
    sub-int v8, v7, v1

    .line 112
    .local v8, moduleSize:I
    add-int/lit8 v9, v11, -0x1

    .line 113
    .local v9, rowEndOfSymbol:I
    :goto_2
    if-ltz v9, :cond_6

    invoke-virtual {v5, v9, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 116
    :cond_6
    if-gez v9, :cond_8

    .line 117
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 114
    :cond_7
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 119
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 122
    sub-int v14, v9, v1

    rem-int/2addr v14, v8

    if-eqz v14, :cond_9

    .line 123
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 125
    :cond_9
    sub-int v14, v9, v1

    div-int v2, v14, v8

    .line 130
    .local v2, dimension:I
    shr-int/lit8 v14, v8, 0x1

    add-int/2addr v1, v14

    .line 132
    add-int/lit8 v14, v2, -0x1

    mul-int/2addr v14, v8

    add-int v10, v1, v14

    .line 133
    .local v10, sampleDimension:I
    if-ge v10, v11, :cond_a

    if-lt v10, v3, :cond_b

    .line 134
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 138
    :cond_b
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v2}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 139
    .local v0, bits:Lcom/google/zxing/common/BitMatrix;
    const/4 v13, 0x0

    .local v13, y:I
    :goto_3
    if-lt v13, v2, :cond_c

    .line 147
    return-object v0

    .line 140
    :cond_c
    mul-int v14, v13, v8

    add-int v4, v1, v14

    .line 141
    .local v4, iOffset:I
    const/4 v12, 0x0

    .local v12, x:I
    :goto_4
    if-lt v12, v2, :cond_d

    .line 139
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 142
    :cond_d
    mul-int v14, v12, v8

    add-int/2addr v14, v1

    invoke-virtual {v5, v14, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 143
    invoke-virtual {v0, v12, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 141
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_4
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/pdf417/PDF417Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 8
    .parameter "image"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 61
    if-eqz p2, :cond_0

    sget-object v4, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p2, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    invoke-static {p1}, Lcom/google/zxing/pdf417/PDF417Reader;->extractPureBits(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 63
    .local v0, bits:Lcom/google/zxing/common/BitMatrix;
    iget-object v4, p0, Lcom/google/zxing/pdf417/PDF417Reader;->decoder:Lcom/google/zxing/pdf417/decoder/Decoder;

    invoke-virtual {v4, v0}, Lcom/google/zxing/pdf417/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 64
    .local v1, decoderResult:Lcom/google/zxing/common/DecoderResult;
    sget-object v3, Lcom/google/zxing/pdf417/PDF417Reader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    .line 70
    .end local v0           #bits:Lcom/google/zxing/common/BitMatrix;
    .local v3, points:[Lcom/google/zxing/ResultPoint;
    :goto_0
    new-instance v4, Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v6

    .line 71
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->PDF417:Lcom/google/zxing/BarcodeFormat;

    .line 70
    invoke-direct {v4, v5, v6, v3, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v4

    .line 66
    .end local v1           #decoderResult:Lcom/google/zxing/common/DecoderResult;
    .end local v3           #points:[Lcom/google/zxing/ResultPoint;
    :cond_0
    new-instance v4, Lcom/google/zxing/pdf417/detector/Detector;

    invoke-direct {v4, p1}, Lcom/google/zxing/pdf417/detector/Detector;-><init>(Lcom/google/zxing/BinaryBitmap;)V

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/detector/Detector;->detect()Lcom/google/zxing/common/DetectorResult;

    move-result-object v2

    .line 67
    .local v2, detectorResult:Lcom/google/zxing/common/DetectorResult;
    iget-object v4, p0, Lcom/google/zxing/pdf417/PDF417Reader;->decoder:Lcom/google/zxing/pdf417/decoder/Decoder;

    invoke-virtual {v2}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/zxing/pdf417/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 68
    .restart local v1       #decoderResult:Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v2}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .restart local v3       #points:[Lcom/google/zxing/ResultPoint;
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method
