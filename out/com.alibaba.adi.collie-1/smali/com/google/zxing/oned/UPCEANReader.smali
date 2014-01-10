.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "UPCEANReader.java"


# static fields
.field static final L_AND_G_PATTERNS:[[I = null

.field static final L_PATTERNS:[[I = null

.field private static final MAX_AVG_VARIANCE:I = 0x6b

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xb3

.field static final MIDDLE_PATTERN:[I

.field static final START_END_PATTERN:[I


# instance fields
.field private final decodeRowStringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0x14

    const/16 v10, 0xa

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x4

    .line 50
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 55
    new-array v4, v9, [I

    fill-array-data v4, :array_1

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    .line 60
    new-array v4, v10, [[I

    const/4 v5, 0x0

    .line 61
    new-array v6, v7, [I

    fill-array-data v6, :array_2

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 62
    new-array v6, v7, [I

    fill-array-data v6, :array_3

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 63
    new-array v6, v7, [I

    fill-array-data v6, :array_4

    aput-object v6, v4, v5

    .line 64
    new-array v5, v7, [I

    fill-array-data v5, :array_5

    aput-object v5, v4, v8

    .line 65
    new-array v5, v7, [I

    fill-array-data v5, :array_6

    aput-object v5, v4, v7

    .line 66
    new-array v5, v7, [I

    fill-array-data v5, :array_7

    aput-object v5, v4, v9

    const/4 v5, 0x6

    .line 67
    new-array v6, v7, [I

    fill-array-data v6, :array_8

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 68
    new-array v6, v7, [I

    fill-array-data v6, :array_9

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 69
    new-array v6, v7, [I

    fill-array-data v6, :array_a

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 70
    new-array v6, v7, [I

    fill-array-data v6, :array_b

    aput-object v6, v4, v5

    .line 60
    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    .line 79
    new-array v4, v11, [[I

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v10, :cond_0

    .line 83
    const/16 v0, 0xa

    :goto_1
    if-lt v0, v11, :cond_1

    .line 91
    return-void

    .line 81
    :cond_0
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v5, v5, v0

    aput-object v5, v4, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    add-int/lit8 v5, v0, -0xa

    aget-object v3, v4, v5

    .line 85
    .local v3, widths:[I
    array-length v4, v3

    new-array v2, v4, [I

    .line 86
    .local v2, reversedWidths:[I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v4, v3

    if-lt v1, v4, :cond_2

    .line 89
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aput-object v2, v4, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_2
    array-length v4, v3

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget v4, v3, v4

    aput v4, v2, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 50
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 55
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 61
    :array_2
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 62
    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 63
    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 64
    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 65
    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 66
    :array_7
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 67
    :array_8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 68
    :array_9
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 69
    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 70
    :array_b
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuffer;

    .line 97
    return-void
.end method

.method private static checkStandardUPCEANChecksum(Ljava/lang/String;)Z
    .locals 7
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x9

    const/4 v4, 0x0

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 200
    .local v2, length:I
    if-nez v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v4

    .line 204
    :cond_1
    const/4 v3, 0x0

    .line 205
    .local v3, sum:I
    add-int/lit8 v1, v2, -0x2

    .local v1, i:I
    :goto_1
    if-gez v1, :cond_2

    .line 212
    mul-int/lit8 v3, v3, 0x3

    .line 213
    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-gez v1, :cond_5

    .line 220
    rem-int/lit8 v5, v3, 0xa

    if-nez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v0, v5, -0x30

    .line 207
    .local v0, digit:I
    if-ltz v0, :cond_3

    if-le v0, v6, :cond_4

    .line 208
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 210
    :cond_4
    add-int/2addr v3, v0

    .line 205
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 214
    .end local v0           #digit:I
    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v0, v5, -0x30

    .line 215
    .restart local v0       #digit:I
    if-ltz v0, :cond_6

    if-le v0, v6, :cond_7

    .line 216
    :cond_6
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .line 218
    :cond_7
    add-int/2addr v3, v0

    .line 213
    add-int/lit8 v1, v1, -0x2

    goto :goto_2
.end method

.method static decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I
    .locals 7
    .parameter "row"
    .parameter "counters"
    .parameter "rowOffset"
    .parameter "patterns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/UPCEANReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 294
    const/16 v1, 0x6b

    .line 295
    .local v1, bestVariance:I
    const/4 v0, -0x1

    .line 296
    .local v0, bestMatch:I
    array-length v3, p3

    .line 297
    .local v3, max:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 305
    if-ltz v0, :cond_2

    .line 306
    return v0

    .line 298
    :cond_0
    aget-object v4, p3, v2

    .line 299
    .local v4, pattern:[I
    const/16 v6, 0xb3

    invoke-static {p1, v4, v6}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[II)I

    move-result v5

    .line 300
    .local v5, variance:I
    if-ge v5, v1, :cond_1

    .line 301
    move v1, v5

    .line 302
    move v0, v2

    .line 297
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v4           #pattern:[I
    .end local v5           #variance:I
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I
    .locals 11
    .parameter "row"
    .parameter "rowOffset"
    .parameter "whiteFirst"
    .parameter "pattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 239
    array-length v3, p3

    .line 240
    .local v3, patternLength:I
    new-array v1, v3, [I

    .line 241
    .local v1, counters:[I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    .line 242
    .local v6, width:I
    const/4 v2, 0x0

    .line 243
    .local v2, isWhite:Z
    :goto_0
    if-lt p1, v6, :cond_1

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 252
    .local v0, counterPosition:I
    move v4, p1

    .line 253
    .local v4, patternStart:I
    move v7, p1

    .local v7, x:I
    :goto_1
    if-lt v7, v6, :cond_3

    .line 276
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 244
    .end local v0           #counterPosition:I
    .end local v4           #patternStart:I
    .end local v7           #x:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v2, 0x0

    .line 245
    :goto_2
    if-eq p2, v2, :cond_0

    .line 248
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 244
    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    .line 254
    .restart local v0       #counterPosition:I
    .restart local v4       #patternStart:I
    .restart local v7       #x:I
    :cond_3
    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    .line 255
    .local v5, pixel:Z
    xor-int v9, v5, v2

    if-eqz v9, :cond_4

    .line 256
    aget v9, v1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v0

    .line 253
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 258
    :cond_4
    add-int/lit8 v9, v3, -0x1

    if-ne v0, v9, :cond_7

    .line 259
    const/16 v9, 0xb3

    invoke-static {v1, p3, v9}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[II)I

    move-result v9

    const/16 v10, 0x6b

    if-ge v9, v10, :cond_5

    .line 260
    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v4, v9, v10

    const/4 v10, 0x1

    aput v7, v9, v10

    return-object v9

    .line 262
    :cond_5
    const/4 v9, 0x0

    aget v9, v1, v9

    const/4 v10, 0x1

    aget v10, v1, v10

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 263
    const/4 v8, 0x2

    .local v8, y:I
    :goto_4
    if-lt v8, v3, :cond_6

    .line 266
    add-int/lit8 v9, v3, -0x2

    const/4 v10, 0x0

    aput v10, v1, v9

    .line 267
    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x0

    aput v10, v1, v9

    .line 268
    add-int/lit8 v0, v0, -0x1

    .line 272
    .end local v8           #y:I
    :goto_5
    const/4 v9, 0x1

    aput v9, v1, v0

    .line 273
    if-eqz v2, :cond_8

    const/4 v2, 0x0

    :goto_6
    goto :goto_3

    .line 264
    .restart local v8       #y:I
    :cond_6
    add-int/lit8 v9, v8, -0x2

    aget v10, v1, v8

    aput v10, v1, v9

    .line 263
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 270
    .end local v8           #y:I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 273
    :cond_8
    const/4 v2, 0x1

    goto :goto_6
.end method

.method static findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 7
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, foundStart:Z
    const/4 v4, 0x0

    .line 102
    .local v4, startRange:[I
    const/4 v1, 0x0

    .line 103
    .local v1, nextStart:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 115
    return-object v4

    .line 104
    :cond_1
    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {p0, v1, v6, v5}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v4

    .line 105
    aget v3, v4, v6

    .line 106
    .local v3, start:I
    const/4 v5, 0x1

    aget v1, v4, v5

    .line 110
    sub-int v5, v1, v3

    sub-int v2, v3, v5

    .line 111
    .local v2, quietStart:I
    if-ltz v2, :cond_0

    .line 112
    invoke-virtual {p0, v2, v3, v6}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method checkChecksum(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 2
    .parameter "row"
    .parameter "endStart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v0, 0x0

    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected abstract decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 1
    .parameter "rowNumber"
    .parameter "row"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 18
    .parameter "rowNumber"
    .parameter "row"
    .parameter "startGuardRange"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 131
    if-nez p4, :cond_4

    const/4 v9, 0x0

    .line 134
    .local v9, resultPointCallback:Lcom/google/zxing/ResultPointCallback;
    :goto_0
    if-eqz v9, :cond_0

    .line 135
    new-instance v12, Lcom/google/zxing/ResultPoint;

    .line 136
    const/4 v13, 0x0

    aget v13, p3, v13

    const/4 v14, 0x1

    aget v14, p3, v14

    add-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    move/from16 v0, p1

    int-to-float v14, v0

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 135
    invoke-interface {v9, v12}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 140
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuffer;

    .line 141
    .local v8, result:Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v8}, Lcom/google/zxing/oned/UPCEANReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuffer;)I

    move-result v5

    .line 144
    .local v5, endStart:I
    if-eqz v9, :cond_1

    .line 145
    new-instance v12, Lcom/google/zxing/ResultPoint;

    .line 146
    int-to-float v13, v5

    move/from16 v0, p1

    int-to-float v14, v0

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 145
    invoke-interface {v9, v12}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 150
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lcom/google/zxing/oned/UPCEANReader;->decodeEnd(Lcom/google/zxing/common/BitArray;I)[I

    move-result-object v4

    .line 152
    .local v4, endRange:[I
    if-eqz v9, :cond_2

    .line 153
    new-instance v12, Lcom/google/zxing/ResultPoint;

    .line 154
    const/4 v13, 0x0

    aget v13, v4, v13

    const/4 v14, 0x1

    aget v14, v4, v14

    add-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    move/from16 v0, p1

    int-to-float v14, v0

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 153
    invoke-interface {v9, v12}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 161
    :cond_2
    const/4 v12, 0x1

    aget v3, v4, v12

    .line 162
    .local v3, end:I
    const/4 v12, 0x0

    aget v12, v4, v12

    sub-int v12, v3, v12

    add-int v7, v3, v12

    .line 163
    .local v7, quietEnd:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v12

    if-ge v7, v12, :cond_3

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7, v12}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v12

    if-nez v12, :cond_5

    .line 164
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 132
    .end local v3           #end:I
    .end local v4           #endRange:[I
    .end local v5           #endStart:I
    .end local v7           #quietEnd:I
    .end local v8           #result:Ljava/lang/StringBuffer;
    .end local v9           #resultPointCallback:Lcom/google/zxing/ResultPointCallback;
    :cond_4
    sget-object v12, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/ResultPointCallback;

    move-object v9, v12

    goto/16 :goto_0

    .line 167
    .restart local v3       #end:I
    .restart local v4       #endRange:[I
    .restart local v5       #endStart:I
    .restart local v7       #quietEnd:I
    .restart local v8       #result:Ljava/lang/StringBuffer;
    .restart local v9       #resultPointCallback:Lcom/google/zxing/ResultPointCallback;
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 168
    .local v10, resultString:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 169
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v12

    throw v12

    .line 172
    :cond_6
    const/4 v12, 0x1

    aget v12, p3, v12

    const/4 v13, 0x0

    aget v13, p3, v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float v6, v12, v13

    .line 173
    .local v6, left:F
    const/4 v12, 0x1

    aget v12, v4, v12

    const/4 v13, 0x0

    aget v13, v4, v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float v11, v12, v13

    .line 174
    .local v11, right:F
    new-instance v12, Lcom/google/zxing/Result;

    .line 175
    const/4 v13, 0x0

    .line 176
    const/4 v14, 0x2

    new-array v14, v14, [Lcom/google/zxing/ResultPoint;

    const/4 v15, 0x0

    .line 177
    new-instance v16, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 178
    new-instance v16, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v11, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v16, v14, v15

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/UPCEANReader;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v15

    .line 174
    invoke-direct {v12, v10, v13, v14, v15}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v12
.end method

.method abstract getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
.end method
