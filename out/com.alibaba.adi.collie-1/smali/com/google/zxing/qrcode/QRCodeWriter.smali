.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# static fields
.field private static final QUIET_ZONE_SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;II)Lcom/google/zxing/common/ByteMatrix;
    .locals 26
    .parameter "code"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrix()Lcom/google/zxing/common/ByteMatrix;

    move-result-object v4

    .line 78
    .local v4, input:Lcom/google/zxing/common/ByteMatrix;
    invoke-virtual {v4}, Lcom/google/zxing/common/ByteMatrix;->getWidth()I

    move-result v7

    .line 79
    .local v7, inputWidth:I
    invoke-virtual {v4}, Lcom/google/zxing/common/ByteMatrix;->getHeight()I

    move-result v6

    .line 80
    .local v6, inputHeight:I
    add-int/lit8 v16, v7, 0x8

    .line 81
    .local v16, qrWidth:I
    add-int/lit8 v15, v6, 0x8

    .line 82
    .local v15, qrHeight:I
    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 83
    .local v14, outputWidth:I
    move/from16 v0, p2

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 85
    .local v13, outputHeight:I
    div-int v23, v14, v16

    div-int v24, v13, v15

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 90
    .local v9, multiple:I
    mul-int v23, v7, v9

    sub-int v23, v14, v23

    div-int/lit8 v8, v23, 0x2

    .line 91
    .local v8, leftPadding:I
    mul-int v23, v6, v9

    sub-int v23, v13, v23

    div-int/lit8 v18, v23, 0x2

    .line 93
    .local v18, topPadding:I
    new-instance v11, Lcom/google/zxing/common/ByteMatrix;

    invoke-direct {v11, v14, v13}, Lcom/google/zxing/common/ByteMatrix;-><init>(II)V

    .line 94
    .local v11, output:Lcom/google/zxing/common/ByteMatrix;
    invoke-virtual {v11}, Lcom/google/zxing/common/ByteMatrix;->getArray()[[B

    move-result-object v12

    .line 98
    .local v12, outputArray:[[B
    new-array v0, v14, [B

    move-object/from16 v17, v0

    .line 101
    .local v17, row:[B
    const/16 v21, 0x0

    .local v21, y:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 106
    invoke-virtual {v4}, Lcom/google/zxing/common/ByteMatrix;->getArray()[[B

    move-result-object v5

    .line 107
    .local v5, inputArray:[[B
    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    if-lt v0, v6, :cond_1

    .line 137
    mul-int v23, v6, v9

    add-int v10, v18, v23

    .line 138
    .local v10, offset:I
    move/from16 v21, v10

    :goto_2
    move/from16 v0, v21

    if-lt v0, v13, :cond_8

    .line 142
    return-object v11

    .line 102
    .end local v5           #inputArray:[[B
    .end local v10           #offset:I
    :cond_0
    aget-object v23, v12, v21

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Lcom/google/zxing/qrcode/QRCodeWriter;->setRowColor([BB)V

    .line 101
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 109
    .restart local v5       #inputArray:[[B
    :cond_1
    const/16 v20, 0x0

    .local v20, x:I
    :goto_3
    move/from16 v0, v20

    if-lt v0, v8, :cond_2

    .line 114
    move v10, v8

    .line 115
    .restart local v10       #offset:I
    const/16 v20, 0x0

    :goto_4
    move/from16 v0, v20

    if-lt v0, v7, :cond_3

    .line 124
    mul-int v23, v7, v9

    add-int v10, v8, v23

    .line 125
    move/from16 v20, v10

    :goto_5
    move/from16 v0, v20

    if-lt v0, v14, :cond_6

    .line 130
    mul-int v23, v21, v9

    add-int v10, v18, v23

    .line 131
    const/16 v22, 0x0

    .local v22, z:I
    :goto_6
    move/from16 v0, v22

    if-lt v0, v9, :cond_7

    .line 107
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 110
    .end local v10           #offset:I
    .end local v22           #z:I
    :cond_2
    const/16 v23, -0x1

    aput-byte v23, v17, v20

    .line 109
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 116
    .restart local v10       #offset:I
    :cond_3
    aget-object v23, v5, v21

    aget-byte v23, v23, v20

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/16 v19, 0x0

    .line 117
    .local v19, value:B
    :goto_7
    const/16 v22, 0x0

    .restart local v22       #z:I
    :goto_8
    move/from16 v0, v22

    if-lt v0, v9, :cond_5

    .line 120
    add-int/2addr v10, v9

    .line 115
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 116
    .end local v19           #value:B
    .end local v22           #z:I
    :cond_4
    const/16 v19, -0x1

    goto :goto_7

    .line 118
    .restart local v19       #value:B
    .restart local v22       #z:I
    :cond_5
    add-int v23, v10, v22

    aput-byte v19, v17, v23

    .line 117
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 126
    .end local v19           #value:B
    .end local v22           #z:I
    :cond_6
    const/16 v23, -0x1

    aput-byte v23, v17, v20

    .line 125
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 132
    .restart local v22       #z:I
    :cond_7
    const/16 v23, 0x0

    add-int v24, v10, v22

    aget-object v24, v12, v24

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 139
    .end local v20           #x:I
    .end local v22           #z:I
    :cond_8
    aget-object v23, v12, v21

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Lcom/google/zxing/qrcode/QRCodeWriter;->setRowColor([BB)V

    .line 138
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2
.end method

.method private static setRowColor([BB)V
    .locals 2
    .parameter "row"
    .parameter "value"

    .prologue
    .line 146
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 149
    return-void

    .line 147
    :cond_0
    aput-byte p1, p0, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    .line 42
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/ByteMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/ByteMatrix;
    .locals 6
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
    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 49
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Found empty contents"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 52
    :cond_1
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v3, :cond_2

    .line 53
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can only encode QR_CODE, but got "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :cond_2
    if-ltz p3, :cond_3

    if-gez p4, :cond_4

    .line 57
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Requested dimensions are too small: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 58
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_4
    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 62
    .local v1, errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    if-eqz p5, :cond_5

    .line 63
    sget-object v3, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {p5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 64
    .local v2, requestedECLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    if-eqz v2, :cond_5

    .line 65
    move-object v1, v2

    .line 69
    .end local v2           #requestedECLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    :cond_5
    new-instance v0, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    .line 70
    .local v0, code:Lcom/google/zxing/qrcode/encoder/QRCode;
    invoke-static {p1, v1, p5, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Hashtable;Lcom/google/zxing/qrcode/encoder/QRCode;)V

    .line 71
    invoke-static {v0, p3, p4}, Lcom/google/zxing/qrcode/QRCodeWriter;->renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;II)Lcom/google/zxing/common/ByteMatrix;

    move-result-object v3

    return-object v3
.end method
