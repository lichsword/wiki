.class final Lcom/google/zxing/qrcode/decoder/FormatInformation;
.super Ljava/lang/Object;
.source "FormatInformation.java"


# static fields
.field private static final BITS_SET_IN_HALF_BYTE:[I = null

.field private static final FORMAT_INFO_DECODE_LOOKUP:[[I = null

.field private static final FORMAT_INFO_MASK_QR:I = 0x5412


# instance fields
.field private final dataMask:B

.field private final errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 34
    const/16 v0, 0x20

    new-array v0, v0, [[I

    .line 35
    new-array v1, v3, [I

    const/16 v2, 0x5412

    aput v2, v1, v7

    aput-object v1, v0, v7

    .line 36
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    .line 37
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    .line 38
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    .line 39
    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    const/4 v1, 0x5

    .line 40
    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 41
    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 42
    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 43
    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 44
    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 45
    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 46
    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 47
    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 48
    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 49
    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 50
    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 51
    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 52
    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 53
    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 54
    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 55
    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 56
    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 57
    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 58
    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 59
    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 60
    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 61
    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 62
    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 63
    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 64
    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 65
    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 66
    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    .line 34
    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    .line 73
    const/16 v0, 0x10

    new-array v0, v0, [I

    aput v4, v0, v4

    aput v4, v0, v3

    aput v3, v0, v5

    aput v4, v0, v6

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v5, v0, v1

    const/16 v1, 0x8

    aput v4, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v5, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v5, v0, v1

    const/16 v1, 0xe

    aput v5, v0, v1

    const/16 v1, 0xf

    aput v6, v0, v1

    .line 72
    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    .line 73
    return-void

    .line 36
    nop

    :array_0
    .array-data 0x4
        0x25t 0x51t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 37
    :array_1
    .array-data 0x4
        0x7ct 0x5et 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 38
    :array_2
    .array-data 0x4
        0x4bt 0x5bt 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 39
    :array_3
    .array-data 0x4
        0xf9t 0x45t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 40
    :array_4
    .array-data 0x4
        0xcet 0x40t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 41
    :array_5
    .array-data 0x4
        0x97t 0x4ft 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 42
    :array_6
    .array-data 0x4
        0xa0t 0x4at 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 43
    :array_7
    .array-data 0x4
        0xc4t 0x77t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 44
    :array_8
    .array-data 0x4
        0xf3t 0x72t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    .line 45
    :array_9
    .array-data 0x4
        0xaat 0x7dt 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_a
    .array-data 0x4
        0x9dt 0x78t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 47
    :array_b
    .array-data 0x4
        0x2ft 0x66t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 48
    :array_c
    .array-data 0x4
        0x18t 0x63t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 49
    :array_d
    .array-data 0x4
        0x41t 0x6ct 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 50
    :array_e
    .array-data 0x4
        0x76t 0x69t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 51
    :array_f
    .array-data 0x4
        0x89t 0x16t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 52
    :array_10
    .array-data 0x4
        0xbet 0x13t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_11
    .array-data 0x4
        0xe7t 0x1ct 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    .line 54
    :array_12
    .array-data 0x4
        0xd0t 0x19t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    .line 55
    :array_13
    .array-data 0x4
        0x62t 0x7t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 56
    :array_14
    .array-data 0x4
        0x55t 0x2t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 57
    :array_15
    .array-data 0x4
        0xct 0xdt 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    .line 58
    :array_16
    .array-data 0x4
        0x3bt 0x8t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
    .end array-data

    .line 59
    :array_17
    .array-data 0x4
        0x5ft 0x35t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    .line 60
    :array_18
    .array-data 0x4
        0x68t 0x30t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    .line 61
    :array_19
    .array-data 0x4
        0x31t 0x3ft 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data

    .line 62
    :array_1a
    .array-data 0x4
        0x6t 0x3at 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
    .end array-data

    .line 63
    :array_1b
    .array-data 0x4
        0xb4t 0x24t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    .line 64
    :array_1c
    .array-data 0x4
        0x83t 0x21t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
    .end array-data

    .line 65
    :array_1d
    .array-data 0x4
        0xdat 0x2et 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    .line 66
    :array_1e
    .array-data 0x4
        0xedt 0x2bt 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter "formatInfo"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    shr-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->forBits(I)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 82
    and-int/lit8 v0, p1, 0x7

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    .line 83
    return-void
.end method

.method static decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 3
    .parameter "maskedFormatInfo1"
    .parameter "maskedFormatInfo2"

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    .line 107
    .local v0, formatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
    if-eqz v0, :cond_0

    .line 113
    .end local v0           #formatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
    :goto_0
    return-object v0

    .restart local v0       #formatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
    :cond_0
    xor-int/lit16 v1, p0, 0x5412

    .line 114
    xor-int/lit16 v2, p1, 0x5412

    .line 113
    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    goto :goto_0
.end method

.method private static doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 8
    .parameter "maskedFormatInfo1"
    .parameter "maskedFormatInfo2"

    .prologue
    const/4 v7, 0x1

    .line 119
    const v0, 0x7fffffff

    .line 120
    .local v0, bestDifference:I
    const/4 v1, 0x0

    .line 121
    .local v1, bestFormatInfo:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    sget-object v6, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    array-length v6, v6

    if-lt v4, v6, :cond_0

    .line 144
    const/4 v6, 0x3

    if-gt v0, v6, :cond_5

    .line 145
    new-instance v6, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    invoke-direct {v6, v1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    .line 147
    :goto_1
    return-object v6

    .line 122
    :cond_0
    sget-object v6, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    aget-object v3, v6, v4

    .line 123
    .local v3, decodeInfo:[I
    const/4 v6, 0x0

    aget v5, v3, v6

    .line 124
    .local v5, targetInfo:I
    if-eq v5, p0, :cond_1

    if-ne v5, p1, :cond_2

    .line 126
    :cond_1
    new-instance v6, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    aget v7, v3, v7

    invoke-direct {v6, v7}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    goto :goto_1

    .line 128
    :cond_2
    invoke-static {p0, v5}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v2

    .line 129
    .local v2, bitsDifference:I
    if-ge v2, v0, :cond_3

    .line 130
    aget v1, v3, v7

    .line 131
    move v0, v2

    .line 133
    :cond_3
    if-eq p0, p1, :cond_4

    .line 135
    invoke-static {p1, v5}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v2

    .line 136
    if-ge v2, v0, :cond_4

    .line 137
    aget v1, v3, v7

    .line 138
    move v0, v2

    .line 121
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    .end local v2           #bitsDifference:I
    .end local v3           #decodeInfo:[I
    .end local v5           #targetInfo:I
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method static numBitsDiffering(II)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 86
    xor-int/2addr p0, p1

    .line 88
    sget-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    and-int/lit8 v1, p0, 0xf

    aget v0, v0, v1

    .line 89
    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    .line 88
    add-int/2addr v0, v1

    .line 90
    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    .line 88
    add-int/2addr v0, v1

    .line 91
    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    .line 88
    add-int/2addr v0, v1

    .line 92
    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    .line 88
    add-int/2addr v0, v1

    .line 93
    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x14

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    .line 88
    add-int/2addr v0, v1

    .line 94
    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    .line 88
    add-int/2addr v0, v1

    .line 95
    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x1c

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    .line 88
    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 163
    instance-of v2, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-nez v2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 166
    check-cast v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 167
    .local v0, other:Lcom/google/zxing/qrcode/decoder/FormatInformation;
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    iget-object v3, v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-ne v2, v3, :cond_0

    .line 168
    iget-byte v2, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    iget-byte v3, v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    if-ne v2, v3, :cond_0

    .line 167
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getDataMask()B
    .locals 1

    .prologue
    .line 155
    iget-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    return v0
.end method

.method getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget-byte v1, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    or-int/2addr v0, v1

    return v0
.end method
