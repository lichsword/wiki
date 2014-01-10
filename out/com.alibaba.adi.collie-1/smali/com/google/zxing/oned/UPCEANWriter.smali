.class public abstract Lcom/google/zxing/oned/UPCEANWriter;
.super Ljava/lang/Object;
.source "UPCEANWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appendPattern([BI[II)I
    .locals 7
    .parameter "target"
    .parameter "pos"
    .parameter "pattern"
    .parameter "startColor"

    .prologue
    .line 108
    if-eqz p3, :cond_0

    const/4 v4, 0x1

    if-eq p3, v4, :cond_0

    .line 109
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startColor must be either 0 or 1, but got: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    :cond_0
    int-to-byte v0, p3

    .line 114
    .local v0, color:B
    const/4 v3, 0x0

    .line 115
    .local v3, numAdded:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p2

    if-lt v1, v4, :cond_1

    .line 123
    return v3

    .line 116
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    aget v4, p2, v1

    if-lt v2, v4, :cond_2

    .line 121
    xor-int/lit8 v4, v0, 0x1

    int-to-byte v0, v4

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_2
    aput-byte v0, p0, p1

    .line 118
    add-int/lit8 p1, p1, 0x1

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static renderResult([BII)Lcom/google/zxing/common/ByteMatrix;
    .locals 17
    .parameter "code"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 56
    move-object/from16 v0, p0

    array-length v2, v0

    .line 58
    .local v2, inputWidth:I
    sget-object v14, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v14, v14

    shl-int/lit8 v14, v14, 0x1

    add-int v1, v2, v14

    .line 59
    .local v1, fullWidth:I
    move/from16 v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 60
    .local v9, outputWidth:I
    const/4 v14, 0x1

    move/from16 v0, p2

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 62
    .local v8, outputHeight:I
    div-int v4, v9, v1

    .line 63
    .local v4, multiple:I
    mul-int v14, v2, v4

    sub-int v14, v9, v14

    div-int/lit8 v3, v14, 0x2

    .line 65
    .local v3, leftPadding:I
    new-instance v6, Lcom/google/zxing/common/ByteMatrix;

    invoke-direct {v6, v9, v8}, Lcom/google/zxing/common/ByteMatrix;-><init>(II)V

    .line 66
    .local v6, output:Lcom/google/zxing/common/ByteMatrix;
    invoke-virtual {v6}, Lcom/google/zxing/common/ByteMatrix;->getArray()[[B

    move-result-object v7

    .line 68
    .local v7, outputArray:[[B
    new-array v10, v9, [B

    .line 71
    .local v10, row:[B
    const/4 v12, 0x0

    .local v12, x:I
    :goto_0
    if-lt v12, v3, :cond_0

    .line 76
    move v5, v3

    .line 77
    .local v5, offset:I
    const/4 v12, 0x0

    :goto_1
    if-lt v12, v2, :cond_1

    .line 86
    mul-int v14, v2, v4

    add-int v5, v3, v14

    .line 87
    move v12, v5

    :goto_2
    if-lt v12, v9, :cond_4

    .line 92
    const/4 v13, 0x0

    .local v13, z:I
    :goto_3
    if-lt v13, v8, :cond_5

    .line 96
    return-object v6

    .line 72
    .end local v5           #offset:I
    .end local v13           #z:I
    :cond_0
    const/4 v14, -0x1

    aput-byte v14, v10, v12

    .line 71
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 78
    .restart local v5       #offset:I
    :cond_1
    aget-byte v14, p0, v12

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v11, 0x0

    .line 79
    .local v11, value:B
    :goto_4
    const/4 v13, 0x0

    .restart local v13       #z:I
    :goto_5
    if-lt v13, v4, :cond_3

    .line 82
    add-int/2addr v5, v4

    .line 77
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 78
    .end local v11           #value:B
    .end local v13           #z:I
    :cond_2
    const/4 v11, -0x1

    goto :goto_4

    .line 80
    .restart local v11       #value:B
    .restart local v13       #z:I
    :cond_3
    add-int v14, v5, v13

    aput-byte v11, v10, v14

    .line 79
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 88
    .end local v11           #value:B
    .end local v13           #z:I
    :cond_4
    const/4 v14, -0x1

    aput-byte v14, v10, v12

    .line 87
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 93
    .restart local v13       #z:I
    :cond_5
    const/4 v14, 0x0

    aget-object v15, v7, v13

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v10, v14, v15, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    add-int/lit8 v13, v13, 0x1

    goto :goto_3
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/ByteMatrix;
    .locals 6
    .parameter "contents"
    .parameter "format"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/ByteMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/ByteMatrix;
    .locals 4
    .parameter "contents"
    .parameter "format"
    .parameter "width"
    .parameter "height"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 41
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Found empty contents"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_1
    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    .line 46
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Requested dimensions are too small: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;)[B

    move-result-object v0

    .line 51
    .local v0, code:[B
    invoke-static {v0, p3, p4}, Lcom/google/zxing/oned/UPCEANWriter;->renderResult([BII)Lcom/google/zxing/common/ByteMatrix;

    move-result-object v1

    return-object v1
.end method

.method public abstract encode(Ljava/lang/String;)[B
.end method
