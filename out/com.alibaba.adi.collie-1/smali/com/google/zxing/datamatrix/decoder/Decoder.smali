.class public final Lcom/google/zxing/datamatrix/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GF256;->DATA_MATRIX_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 39
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
    .line 115
    array-length v2, p1

    .line 117
    .local v2, numCodewords:I
    new-array v0, v2, [I

    .line 118
    .local v0, codewordsInts:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 121
    array-length v5, p1

    sub-int v3, v5, p2

    .line 123
    .local v3, numECCodewords:I
    :try_start_0
    iget-object v5, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-virtual {v5, v0, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    const/4 v1, 0x0

    :goto_1
    if-lt v1, p2, :cond_1

    .line 132
    return-void

    .line 119
    .end local v3           #numECCodewords:I
    :cond_0
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .restart local v3       #numECCodewords:I
    :catch_0
    move-exception v4

    .line 125
    .local v4, rse:Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v5

    throw v5

    .line 130
    .end local v4           #rse:Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    :cond_1
    aget v5, v0, v1

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 14
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v7, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;

    invoke-direct {v7, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 76
    .local v7, parser:Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    invoke-virtual {v7, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v12

    .line 79
    .local v12, version:Lcom/google/zxing/datamatrix/decoder/Version;
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v1

    .line 81
    .local v1, codewords:[B
    invoke-static {v1, v12}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-result-object v3

    .line 84
    .local v3, dataBlocks:[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    const/4 v11, 0x0

    .line 85
    .local v11, totalBytes:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v13, v3

    if-lt v4, v13, :cond_0

    .line 88
    new-array v8, v11, [B

    .line 89
    .local v8, resultBytes:[B
    const/4 v9, 0x0

    .line 92
    .local v9, resultOffset:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    array-length v13, v3

    if-lt v5, v13, :cond_1

    .line 103
    invoke-static {v8}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decode([B)Lcom/google/zxing/common/DecoderResult;

    move-result-object v13

    return-object v13

    .line 86
    .end local v5           #j:I
    .end local v8           #resultBytes:[B
    .end local v9           #resultOffset:I
    :cond_0
    aget-object v13, v3, v4

    invoke-virtual {v13}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v13

    add-int/2addr v11, v13

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    .restart local v5       #j:I
    .restart local v8       #resultBytes:[B
    .restart local v9       #resultOffset:I
    :cond_1
    aget-object v2, v3, v5

    .line 94
    .local v2, dataBlock:Lcom/google/zxing/datamatrix/decoder/DataBlock;
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getCodewords()[B

    move-result-object v0

    .line 95
    .local v0, codewordBytes:[B
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v6

    .line 96
    .local v6, numDataCodewords:I
    invoke-direct {p0, v0, v6}, Lcom/google/zxing/datamatrix/decoder/Decoder;->correctErrors([BI)V

    .line 97
    const/4 v4, 0x0

    move v10, v9

    .end local v9           #resultOffset:I
    .local v10, resultOffset:I
    :goto_2
    if-lt v4, v6, :cond_2

    .line 92
    add-int/lit8 v5, v5, 0x1

    move v9, v10

    .end local v10           #resultOffset:I
    .restart local v9       #resultOffset:I
    goto :goto_1

    .line 98
    .end local v9           #resultOffset:I
    .restart local v10       #resultOffset:I
    :cond_2
    add-int/lit8 v9, v10, 0x1

    .end local v10           #resultOffset:I
    .restart local v9       #resultOffset:I
    aget-byte v13, v0, v4

    aput-byte v13, v8, v10

    .line 97
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    .end local v9           #resultOffset:I
    .restart local v10       #resultOffset:I
    goto :goto_2
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 51
    array-length v1, p1

    .line 52
    .local v1, dimension:I
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 53
    .local v0, bits:Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v4

    return-object v4

    .line 54
    :cond_0
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-lt v3, v1, :cond_1

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    aget-object v4, p1, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_2

    .line 56
    invoke-virtual {v0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 54
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
