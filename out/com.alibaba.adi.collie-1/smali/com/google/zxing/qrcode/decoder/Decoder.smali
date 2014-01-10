.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GF256;->QR_CODE_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 42
    return-void
.end method

.method private correctErrors([BI)V
    .locals 6
    .parameter "codewordBytes"
    .parameter "numDataCodewords"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 131
    array-length v2, p1

    .line 133
    .local v2, numCodewords:I
    new-array v0, v2, [I

    .line 134
    .local v0, codewordsInts:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 137
    array-length v5, p1

    sub-int v3, v5, p2

    .line 139
    .local v3, numECCodewords:I
    :try_start_0
    iget-object v5, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-virtual {v5, v0, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v1, 0x0

    :goto_1
    if-lt v1, p2, :cond_1

    .line 148
    return-void

    .line 135
    .end local v3           #numECCodewords:I
    :cond_0
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v1

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .restart local v3       #numECCodewords:I
    :catch_0
    move-exception v4

    .line 141
    .local v4, rse:Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v5

    throw v5

    .line 146
    .end local v4           #rse:Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    :cond_1
    aget v5, v0, v1

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;
    .locals 16
    .parameter "bits"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v9, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 91
    .local v9, parser:Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v14

    .line 92
    .local v14, version:Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v5

    .line 95
    .local v5, ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v2

    .line 97
    .local v2, codewords:[B
    invoke-static {v2, v14, v5}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-result-object v4

    .line 100
    .local v4, dataBlocks:[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/4 v13, 0x0

    .line 101
    .local v13, totalBytes:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v15, v4

    if-lt v6, v15, :cond_0

    .line 104
    new-array v10, v13, [B

    .line 105
    .local v10, resultBytes:[B
    const/4 v11, 0x0

    .line 108
    .local v11, resultOffset:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    array-length v15, v4

    if-lt v7, v15, :cond_1

    .line 119
    move-object/from16 v0, p2

    invoke-static {v10, v14, v5, v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v15

    return-object v15

    .line 102
    .end local v7           #j:I
    .end local v10           #resultBytes:[B
    .end local v11           #resultOffset:I
    :cond_0
    aget-object v15, v4, v6

    invoke-virtual {v15}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v15

    add-int/2addr v13, v15

    .line 101
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 109
    .restart local v7       #j:I
    .restart local v10       #resultBytes:[B
    .restart local v11       #resultOffset:I
    :cond_1
    aget-object v3, v4, v7

    .line 110
    .local v3, dataBlock:Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getCodewords()[B

    move-result-object v1

    .line 111
    .local v1, codewordBytes:[B
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v8

    .line 112
    .local v8, numDataCodewords:I
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/google/zxing/qrcode/decoder/Decoder;->correctErrors([BI)V

    .line 113
    const/4 v6, 0x0

    move v12, v11

    .end local v11           #resultOffset:I
    .local v12, resultOffset:I
    :goto_2
    if-lt v6, v8, :cond_2

    .line 108
    add-int/lit8 v7, v7, 0x1

    move v11, v12

    .end local v12           #resultOffset:I
    .restart local v11       #resultOffset:I
    goto :goto_1

    .line 114
    .end local v11           #resultOffset:I
    .restart local v12       #resultOffset:I
    :cond_2
    add-int/lit8 v11, v12, 0x1

    .end local v12           #resultOffset:I
    .restart local v11       #resultOffset:I
    aget-byte v15, v1, v6

    aput-byte v15, v10, v12

    .line 113
    add-int/lit8 v6, v6, 0x1

    move v12, v11

    .end local v11           #resultOffset:I
    .restart local v12       #resultOffset:I
    goto :goto_2
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode([[ZLjava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode([[ZLjava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .parameter "image"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 61
    array-length v1, p1

    .line 62
    .local v1, dimension:I
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 63
    .local v0, bits:Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 70
    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v4

    return-object v4

    .line 64
    :cond_0
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-lt v3, v1, :cond_1

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_1
    aget-object v4, p1, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_2

    .line 66
    invoke-virtual {v0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 64
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
