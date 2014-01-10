.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final AL:I = 0x1c

.field private static final ALPHA:I = 0x0

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final EXP900:[Ljava/lang/String; = null

.field private static final LL:I = 0x1b

.field private static final LOWER:I = 0x1

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED:I = 0x2

.field private static final MIXED_CHARS:[C = null

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT:I = 0x3

.field private static final PUNCT_CHARS:[C = null

.field private static final PUNCT_SHIFT:I = 0x4

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 57
    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 64
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "000000000000000000000000000000000000000000001"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 65
    const-string v2, "000000000000000000000000000000000000000000900"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 66
    const-string v2, "000000000000000000000000000000000000000810000"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 67
    const-string v2, "000000000000000000000000000000000000729000000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 68
    const-string v2, "000000000000000000000000000000000656100000000"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 69
    const-string v2, "000000000000000000000000000000590490000000000"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 70
    const-string v2, "000000000000000000000000000531441000000000000"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 71
    const-string v2, "000000000000000000000000478296900000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 72
    const-string v2, "000000000000000000000430467210000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 73
    const-string v2, "000000000000000000387420489000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 74
    const-string v2, "000000000000000348678440100000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 75
    const-string v2, "000000000000313810596090000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 76
    const-string v2, "000000000282429536481000000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 77
    const-string v2, "000000254186582832900000000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 78
    const-string v2, "000228767924549610000000000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 79
    const-string v2, "205891132094649000000000000000000000000000000"

    aput-object v2, v0, v1

    .line 63
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/lang/String;

    .line 79
    return-void

    .line 53
    nop

    :array_0
    .array-data 0x2
        0x3bt 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x40t 0x0t
        0x5bt 0x0t
        0x5ct 0x0t
        0x7dt 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x7et 0x0t
        0x21t 0x0t
        0xdt 0x0t
        0x9t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0xat 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x24t 0x0t
        0x2ft 0x0t
        0x22t 0x0t
        0x7ct 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x3ft 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x27t 0x0t
    .end array-data

    .line 57
    nop

    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x26t 0x0t
        0xdt 0x0t
        0x9t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x23t 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x24t 0x0t
        0x2ft 0x0t
        0x2bt 0x0t
        0x25t 0x0t
        0x2at 0x0t
        0x3dt 0x0t
        0x5et 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 11
    .parameter "value1"
    .parameter "value2"

    .prologue
    const/4 v8, 0x5

    const/4 v10, 0x0

    .line 580
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 581
    .local v6, temp1:Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 582
    .local v7, temp2:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 583
    .local v4, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v1, v8, :cond_0

    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, carry:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v1, v8, -0x3

    :goto_1
    const/4 v8, -0x1

    if-gt v1, v8, :cond_1

    .line 610
    return-object v4

    .line 585
    .end local v0           #carry:I
    :cond_0
    const/16 v8, 0x30

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    .restart local v0       #carry:I
    :cond_1
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 591
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 592
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 593
    add-int/lit8 v8, v1, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 595
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 596
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 597
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 598
    add-int/lit8 v8, v1, 0x2

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 600
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 601
    .local v2, intValue1:I
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 603
    .local v3, intValue2:I
    add-int v8, v2, v3

    add-int/2addr v8, v0

    rem-int/lit16 v5, v8, 0x3e8

    .line 604
    .local v5, sumval:I
    add-int v8, v2, v3

    add-int/2addr v8, v0

    div-int/lit16 v0, v8, 0x3e8

    .line 606
    add-int/lit8 v8, v1, 0x2

    rem-int/lit8 v9, v5, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 607
    add-int/lit8 v8, v1, 0x1

    div-int/lit8 v9, v5, 0xa

    rem-int/lit8 v9, v9, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 608
    div-int/lit8 v8, v5, 0x64

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {v4, v1, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 588
    add-int/lit8 v1, v1, -0x3

    goto :goto_1
.end method

.method private static byteCompaction(I[IILjava/lang/StringBuffer;)I
    .locals 14
    .parameter "mode"
    .parameter "codewords"
    .parameter "codeIndex"
    .parameter "result"

    .prologue
    .line 336
    const/16 v11, 0x385

    if-ne p0, v11, :cond_8

    .line 339
    const/4 v4, 0x0

    .line 340
    .local v4, count:I
    const-wide/16 v9, 0x0

    .line 341
    .local v9, value:J
    const/4 v11, 0x6

    new-array v5, v11, [C

    .line 342
    .local v5, decodedData:[C
    const/4 v11, 0x6

    new-array v1, v11, [I

    .line 343
    .local v1, byteCompactedCodewords:[I
    const/4 v6, 0x0

    .line 344
    .local v6, end:Z
    :cond_0
    :goto_0
    const/4 v11, 0x0

    aget v11, p1, v11

    move/from16 v0, p2

    if-ge v0, v11, :cond_1

    if-eqz v6, :cond_3

    .line 378
    :cond_1
    div-int/lit8 v11, v4, 0x5

    mul-int/lit8 v7, v11, 0x5

    .local v7, i:I
    :goto_1
    if-lt v7, v4, :cond_7

    .line 419
    .end local v1           #byteCompactedCodewords:[I
    .end local v4           #count:I
    .end local v5           #decodedData:[C
    .end local v6           #end:Z
    .end local v7           #i:I
    .end local v9           #value:J
    :cond_2
    return p2

    .line 345
    .restart local v1       #byteCompactedCodewords:[I
    .restart local v4       #count:I
    .restart local v5       #decodedData:[C
    .restart local v6       #end:Z
    .restart local v9       #value:J
    :cond_3
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, codeIndex:I
    aget v2, p1, p2

    .line 346
    .local v2, code:I
    const/16 v11, 0x384

    if-ge v2, v11, :cond_4

    .line 347
    aput v2, v1, v4

    .line 348
    add-int/lit8 v4, v4, 0x1

    .line 350
    const-wide/16 v11, 0x384

    mul-long/2addr v9, v11

    .line 351
    int-to-long v11, v2

    add-long/2addr v9, v11

    move/from16 p2, v3

    .line 364
    .end local v3           #codeIndex:I
    .restart local p2
    :goto_2
    rem-int/lit8 v11, v4, 0x5

    if-nez v11, :cond_0

    if-lez v4, :cond_0

    .line 367
    const/4 v8, 0x0

    .local v8, j:I
    :goto_3
    const/4 v11, 0x6

    if-lt v8, v11, :cond_6

    .line 371
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 372
    const/4 v4, 0x0

    goto :goto_0

    .line 353
    .end local v8           #j:I
    .end local p2
    .restart local v3       #codeIndex:I
    :cond_4
    const/16 v11, 0x384

    if-eq v2, v11, :cond_5

    .line 354
    const/16 v11, 0x385

    if-eq v2, v11, :cond_5

    .line 355
    const/16 v11, 0x386

    if-eq v2, v11, :cond_5

    .line 356
    const/16 v11, 0x39c

    if-eq v2, v11, :cond_5

    .line 357
    const/16 v11, 0x3a0

    if-eq v2, v11, :cond_5

    .line 358
    const/16 v11, 0x39b

    if-eq v2, v11, :cond_5

    .line 361
    :cond_5
    add-int/lit8 p2, v3, -0x1

    .line 362
    .end local v3           #codeIndex:I
    .restart local p2
    const/4 v6, 0x1

    goto :goto_2

    .line 368
    .restart local v8       #j:I
    :cond_6
    rsub-int/lit8 v11, v8, 0x5

    const-wide/16 v12, 0x100

    rem-long v12, v9, v12

    long-to-int v12, v12

    int-to-char v12, v12

    aput-char v12, v5, v11

    .line 369
    const/16 v11, 0x8

    shr-long/2addr v9, v11

    .line 367
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 379
    .end local v2           #code:I
    .end local v8           #j:I
    .restart local v7       #i:I
    :cond_7
    aget v11, v1, v7

    int-to-char v11, v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 378
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 382
    .end local v1           #byteCompactedCodewords:[I
    .end local v4           #count:I
    .end local v5           #decodedData:[C
    .end local v6           #end:Z
    .end local v7           #i:I
    .end local v9           #value:J
    :cond_8
    const/16 v11, 0x39c

    if-ne p0, v11, :cond_2

    .line 385
    const/4 v4, 0x0

    .line 386
    .restart local v4       #count:I
    const-wide/16 v9, 0x0

    .line 387
    .restart local v9       #value:J
    const/4 v6, 0x0

    .line 388
    .restart local v6       #end:Z
    :cond_9
    :goto_4
    const/4 v11, 0x0

    aget v11, p1, v11

    move/from16 v0, p2

    if-ge v0, v11, :cond_2

    if-nez v6, :cond_2

    .line 389
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .restart local v3       #codeIndex:I
    aget v2, p1, p2

    .line 390
    .restart local v2       #code:I
    const/16 v11, 0x384

    if-ge v2, v11, :cond_a

    .line 391
    add-int/lit8 v4, v4, 0x1

    .line 393
    const-wide/16 v11, 0x384

    mul-long/2addr v9, v11

    .line 394
    int-to-long v11, v2

    add-long/2addr v9, v11

    move/from16 p2, v3

    .line 407
    .end local v3           #codeIndex:I
    .restart local p2
    :goto_5
    rem-int/lit8 v11, v4, 0x5

    if-nez v11, :cond_9

    if-lez v4, :cond_9

    .line 410
    const/4 v11, 0x6

    new-array v5, v11, [C

    .line 411
    .restart local v5       #decodedData:[C
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_6
    const/4 v11, 0x6

    if-lt v8, v11, :cond_c

    .line 415
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 396
    .end local v5           #decodedData:[C
    .end local v8           #j:I
    .end local p2
    .restart local v3       #codeIndex:I
    :cond_a
    const/16 v11, 0x384

    if-eq v2, v11, :cond_b

    .line 397
    const/16 v11, 0x385

    if-eq v2, v11, :cond_b

    .line 398
    const/16 v11, 0x386

    if-eq v2, v11, :cond_b

    .line 399
    const/16 v11, 0x39c

    if-eq v2, v11, :cond_b

    .line 400
    const/16 v11, 0x3a0

    if-eq v2, v11, :cond_b

    .line 401
    const/16 v11, 0x39b

    if-eq v2, v11, :cond_b

    .line 404
    :cond_b
    add-int/lit8 p2, v3, -0x1

    .line 405
    .end local v3           #codeIndex:I
    .restart local p2
    const/4 v6, 0x1

    goto :goto_5

    .line 412
    .restart local v5       #decodedData:[C
    .restart local v8       #j:I
    :cond_c
    rsub-int/lit8 v11, v8, 0x5

    const-wide/16 v12, 0x100

    rem-long v12, v9, v12

    long-to-int v12, v12

    int-to-char v12, v12

    aput-char v12, v5, v11

    .line 413
    const/16 v11, 0x8

    shr-long/2addr v9, v11

    .line 411
    add-int/lit8 v8, v8, 0x1

    goto :goto_6
.end method

.method static decode([I)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .parameter "codewords"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 85
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 87
    .local v3, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 88
    .local v1, codeIndex:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #codeIndex:I
    .local v2, codeIndex:I
    aget v0, p0, v1

    .local v0, code:I
    move v1, v2

    .line 89
    .end local v2           #codeIndex:I
    .restart local v1       #codeIndex:I
    :goto_0
    const/4 v4, 0x0

    aget v4, p0, v4

    if-lt v1, v4, :cond_0

    .line 126
    new-instance v4, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5, v6, v6}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/Vector;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    return-object v4

    .line 90
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 115
    add-int/lit8 v1, v1, -0x1

    .line 116
    invoke-static {p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuffer;)I

    move-result v1

    .line 120
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 121
    add-int/lit8 v2, v1, 0x1

    .end local v1           #codeIndex:I
    .restart local v2       #codeIndex:I
    aget v0, p0, v1

    move v1, v2

    .line 122
    .end local v2           #codeIndex:I
    .restart local v1       #codeIndex:I
    goto :goto_0

    .line 92
    :sswitch_0
    invoke-static {p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuffer;)I

    move-result v1

    .line 93
    goto :goto_1

    .line 96
    :sswitch_1
    invoke-static {v0, p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuffer;)I

    move-result v1

    .line 97
    goto :goto_1

    .line 100
    :sswitch_2
    invoke-static {p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuffer;)I

    move-result v1

    .line 101
    goto :goto_1

    .line 104
    :sswitch_3
    invoke-static {v0, p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuffer;)I

    move-result v1

    .line 105
    goto :goto_1

    .line 108
    :sswitch_4
    invoke-static {v0, p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuffer;)I

    move-result v1

    .line 109
    goto :goto_1

    .line 123
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_2
        0x391 -> :sswitch_3
        0x39c -> :sswitch_4
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .parameter "codewords"
    .parameter "count"

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, accum:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, p1, :cond_1

    .line 524
    const/4 v2, 0x0

    .line 527
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lt v1, v4, :cond_3

    .line 534
    :goto_2
    if-nez v2, :cond_0

    .line 536
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 538
    :cond_0
    return-object v2

    .line 516
    .end local v2           #result:Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/lang/String;

    sub-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aget v5, p0, v1

    invoke-static {v4, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->multiply(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 517
    .local v3, value:Ljava/lang/StringBuffer;
    if-nez v0, :cond_2

    .line 519
    move-object v0, v3

    .line 515
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_3

    .line 528
    .end local v3           #value:Ljava/lang/StringBuffer;
    .restart local v2       #result:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_4

    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 531
    goto :goto_2

    .line 527
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuffer;)V
    .locals 11
    .parameter "textCompactionData"
    .parameter "byteCompactionData"
    .parameter "length"
    .parameter "result"

    .prologue
    const/16 v10, 0x19

    const/16 v9, 0x391

    const/16 v8, 0x1c

    const/16 v7, 0x1a

    const/16 v6, 0x1d

    .line 218
    const/4 v3, 0x0

    .line 219
    .local v3, subMode:I
    const/4 v2, 0x0

    .line 220
    .local v2, priorToShiftMode:I
    const/4 v1, 0x0

    .line 221
    .local v1, i:I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 322
    return-void

    .line 222
    :cond_0
    aget v4, p0, v1

    .line 223
    .local v4, subModeCh:I
    const/4 v0, 0x0

    .line 224
    .local v0, ch:C
    packed-switch v3, :pswitch_data_0

    .line 316
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 320
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :pswitch_0
    if-ge v4, v7, :cond_3

    .line 229
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    .line 230
    goto :goto_1

    .line 231
    :cond_3
    if-ne v4, v7, :cond_4

    .line 232
    const/16 v0, 0x20

    .line 233
    goto :goto_1

    :cond_4
    const/16 v5, 0x1b

    if-ne v4, v5, :cond_5

    .line 234
    const/4 v3, 0x1

    .line 235
    goto :goto_1

    :cond_5
    if-ne v4, v8, :cond_6

    .line 236
    const/4 v3, 0x2

    .line 237
    goto :goto_1

    :cond_6
    if-ne v4, v6, :cond_7

    .line 239
    move v2, v3

    .line 240
    const/4 v3, 0x4

    .line 241
    goto :goto_1

    :cond_7
    if-ne v4, v9, :cond_1

    .line 242
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 249
    :pswitch_1
    if-ge v4, v7, :cond_8

    .line 250
    add-int/lit8 v5, v4, 0x61

    int-to-char v0, v5

    .line 251
    goto :goto_1

    .line 252
    :cond_8
    if-ne v4, v7, :cond_9

    .line 253
    const/16 v0, 0x20

    .line 254
    goto :goto_1

    :cond_9
    if-ne v4, v8, :cond_a

    .line 255
    const/4 v3, 0x0

    .line 256
    goto :goto_1

    :cond_a
    if-ne v4, v8, :cond_b

    .line 257
    const/4 v3, 0x2

    .line 258
    goto :goto_1

    :cond_b
    if-ne v4, v6, :cond_c

    .line 260
    move v2, v3

    .line 261
    const/4 v3, 0x4

    .line 262
    goto :goto_1

    :cond_c
    if-ne v4, v9, :cond_1

    .line 263
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 270
    :pswitch_2
    if-ge v4, v10, :cond_d

    .line 271
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v0, v5, v4

    .line 272
    goto :goto_1

    .line 273
    :cond_d
    if-ne v4, v10, :cond_e

    .line 274
    const/4 v3, 0x3

    .line 275
    goto :goto_1

    :cond_e
    if-ne v4, v7, :cond_f

    .line 276
    const/16 v0, 0x20

    .line 277
    goto :goto_1

    :cond_f
    const/16 v5, 0x1b

    if-eq v4, v5, :cond_1

    .line 279
    if-ne v4, v8, :cond_10

    .line 280
    const/4 v3, 0x0

    .line 281
    goto :goto_1

    :cond_10
    if-ne v4, v6, :cond_11

    .line 283
    move v2, v3

    .line 284
    const/4 v3, 0x4

    .line 285
    goto :goto_1

    :cond_11
    if-ne v4, v9, :cond_1

    .line 286
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 293
    :pswitch_3
    if-ge v4, v6, :cond_12

    .line 294
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    .line 295
    goto :goto_1

    .line 296
    :cond_12
    if-ne v4, v6, :cond_13

    .line 297
    const/4 v3, 0x0

    .line 298
    goto :goto_1

    :cond_13
    if-ne v4, v9, :cond_1

    .line 299
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 306
    :pswitch_4
    move v3, v2

    .line 307
    if-ge v4, v6, :cond_14

    .line 308
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    .line 309
    goto/16 :goto_1

    .line 310
    :cond_14
    if-ne v4, v6, :cond_1

    .line 311
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static multiply(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 10
    .parameter "value1"
    .parameter "value2"

    .prologue
    const/16 v9, 0x30

    .line 549
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 550
    .local v4, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 554
    div-int/lit8 v0, p1, 0x64

    .line 555
    .local v0, hundreds:I
    div-int/lit8 v6, p1, 0xa

    rem-int/lit8 v5, v6, 0xa

    .line 556
    .local v5, tens:I
    rem-int/lit8 v3, p1, 0xa

    .line 558
    .local v3, ones:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 562
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v5, :cond_2

    .line 566
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v0, :cond_3

    .line 569
    return-object v4

    .line 552
    .end local v0           #hundreds:I
    .end local v2           #j:I
    .end local v3           #ones:I
    .end local v5           #tens:I
    :cond_0
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 559
    .restart local v0       #hundreds:I
    .restart local v2       #j:I
    .restart local v3       #ones:I
    .restart local v5       #tens:I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 563
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 562
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 567
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "00"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private static numericCompaction([IILjava/lang/StringBuffer;)I
    .locals 8
    .parameter "codewords"
    .parameter "codeIndex"
    .parameter "result"

    .prologue
    const/16 v7, 0x384

    .line 431
    const/4 v2, 0x0

    .line 432
    .local v2, count:I
    const/4 v3, 0x0

    .line 434
    .local v3, end:Z
    const/16 v6, 0xf

    new-array v4, v6, [I

    .line 436
    .local v4, numericCodewords:[I
    :cond_0
    :goto_0
    array-length v6, p0

    if-ge p1, v6, :cond_1

    if-eqz v3, :cond_2

    .line 463
    :cond_1
    return p1

    .line 437
    :cond_2
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, codeIndex:I
    aget v0, p0, p1

    .line 438
    .local v0, code:I
    if-ge v0, v7, :cond_4

    .line 439
    aput v0, v4, v2

    .line 440
    add-int/lit8 v2, v2, 0x1

    move p1, v1

    .line 452
    .end local v1           #codeIndex:I
    .restart local p1
    :goto_1
    rem-int/lit8 v6, v2, 0xf

    if-eqz v6, :cond_3

    .line 453
    const/16 v6, 0x386

    if-ne v0, v6, :cond_0

    .line 458
    :cond_3
    invoke-static {v4, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, s:Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    const/4 v2, 0x0

    goto :goto_0

    .line 442
    .end local v5           #s:Ljava/lang/String;
    .end local p1
    .restart local v1       #codeIndex:I
    :cond_4
    if-eq v0, v7, :cond_5

    .line 443
    const/16 v6, 0x385

    if-eq v0, v6, :cond_5

    .line 444
    const/16 v6, 0x39c

    if-eq v0, v6, :cond_5

    .line 445
    const/16 v6, 0x3a0

    if-eq v0, v6, :cond_5

    .line 446
    const/16 v6, 0x39b

    if-eq v0, v6, :cond_5

    .line 449
    :cond_5
    add-int/lit8 p1, v1, -0x1

    .line 450
    .end local v1           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static textCompaction([IILjava/lang/StringBuffer;)I
    .locals 9
    .parameter "codewords"
    .parameter "codeIndex"
    .parameter "result"

    .prologue
    const/4 v8, 0x0

    .line 141
    aget v6, p0, v8

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [I

    .line 143
    .local v5, textCompactionData:[I
    aget v6, p0, v8

    shl-int/lit8 v6, v6, 0x1

    new-array v0, v6, [I

    .line 145
    .local v0, byteCompactionData:[I
    const/4 v4, 0x0

    .line 146
    .local v4, index:I
    const/4 v3, 0x0

    .line 147
    .local v3, end:Z
    :goto_0
    aget v6, p0, v8

    if-ge p1, v6, :cond_0

    if-eqz v3, :cond_1

    .line 190
    :cond_0
    invoke-static {v5, v0, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuffer;)V

    .line 191
    return p1

    .line 148
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .local v2, codeIndex:I
    aget v1, p0, p1

    .line 149
    .local v1, code:I
    const/16 v6, 0x384

    if-ge v1, v6, :cond_2

    .line 150
    div-int/lit8 v6, v1, 0x1e

    aput v6, v5, v4

    .line 151
    add-int/lit8 v6, v4, 0x1

    rem-int/lit8 v7, v1, 0x1e

    aput v7, v5, v6

    .line 152
    add-int/lit8 v4, v4, 0x2

    move p1, v2

    .line 153
    .end local v2           #codeIndex:I
    .restart local p1
    goto :goto_0

    .line 154
    .end local p1
    .restart local v2       #codeIndex:I
    :cond_2
    sparse-switch v1, :sswitch_data_0

    move p1, v2

    .end local v2           #codeIndex:I
    .restart local p1
    goto :goto_0

    .line 156
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_0
    add-int/lit8 p1, v2, -0x1

    .line 157
    .end local v2           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    .line 158
    goto :goto_0

    .line 161
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_1
    add-int/lit8 p1, v2, -0x1

    .line 162
    .end local v2           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    .line 163
    goto :goto_0

    .line 166
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_2
    add-int/lit8 p1, v2, -0x1

    .line 167
    .end local v2           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    .line 168
    goto :goto_0

    .line 177
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_3
    const/16 v6, 0x391

    aput v6, v5, v4

    .line 178
    aput v1, v0, v4

    .line 179
    add-int/lit8 v4, v4, 0x1

    move p1, v2

    .line 180
    .end local v2           #codeIndex:I
    .restart local p1
    goto :goto_0

    .line 183
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_4
    add-int/lit8 p1, v2, -0x1

    .line 184
    .end local v2           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    goto :goto_0

    .line 154
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_2
        0x391 -> :sswitch_3
        0x39c -> :sswitch_4
    .end sparse-switch
.end method
