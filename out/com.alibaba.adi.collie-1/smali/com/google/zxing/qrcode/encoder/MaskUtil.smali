.class public final Lcom/google/zxing/qrcode/encoder/MaskUtil;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static applyMaskPenaltyRule1(Lcom/google/zxing/common/ByteMatrix;)I
    .locals 2
    .parameter "matrix"

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/common/ByteMatrix;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/common/ByteMatrix;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static applyMaskPenaltyRule1Internal(Lcom/google/zxing/common/ByteMatrix;Z)I
    .locals 11
    .parameter "matrix"
    .parameter "isHorizontal"

    .prologue
    const/4 v10, 0x5

    .line 181
    const/4 v7, 0x0

    .line 182
    .local v7, penalty:I
    const/4 v6, 0x0

    .line 183
    .local v6, numSameBitCells:I
    const/4 v8, -0x1

    .line 192
    .local v8, prevBit:I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getHeight()I

    move-result v3

    .line 193
    .local v3, iLimit:I
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getWidth()I

    move-result v5

    .line 194
    .local v5, jLimit:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 195
    .local v0, array:[[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-lt v2, v3, :cond_2

    .line 216
    return v7

    .line 192
    .end local v0           #array:[[B
    .end local v2           #i:I
    .end local v3           #iLimit:I
    .end local v5           #jLimit:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getWidth()I

    move-result v3

    goto :goto_0

    .line 193
    .restart local v3       #iLimit:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getHeight()I

    move-result v5

    goto :goto_1

    .line 196
    .restart local v0       #array:[[B
    .restart local v2       #i:I
    .restart local v5       #jLimit:I
    :cond_2
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    if-lt v4, v5, :cond_3

    .line 214
    const/4 v6, 0x0

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 197
    :cond_3
    if-eqz p1, :cond_5

    aget-object v9, v0, v2

    aget-byte v1, v9, v4

    .line 198
    .local v1, bit:I
    :goto_4
    if-ne v1, v8, :cond_7

    .line 199
    add-int/lit8 v6, v6, 0x1

    .line 202
    if-ne v6, v10, :cond_6

    .line 203
    add-int/lit8 v7, v7, 0x3

    .line 196
    :cond_4
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 197
    .end local v1           #bit:I
    :cond_5
    aget-object v9, v0, v4

    aget-byte v1, v9, v2

    goto :goto_4

    .line 204
    .restart local v1       #bit:I
    :cond_6
    if-le v6, v10, :cond_4

    .line 207
    add-int/lit8 v7, v7, 0x1

    .line 209
    goto :goto_5

    .line 210
    :cond_7
    const/4 v6, 0x1

    .line 211
    move v8, v1

    goto :goto_5
.end method

.method public static applyMaskPenaltyRule2(Lcom/google/zxing/common/ByteMatrix;)I
    .locals 9
    .parameter "matrix"

    .prologue
    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, penalty:I
    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 42
    .local v0, array:[[B
    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getWidth()I

    move-result v4

    .line 43
    .local v4, width:I
    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getHeight()I

    move-result v1

    .line 44
    .local v1, height:I
    const/4 v6, 0x0

    .local v6, y:I
    :goto_0
    add-int/lit8 v7, v1, -0x1

    if-lt v6, v7, :cond_0

    .line 52
    return v2

    .line 45
    :cond_0
    const/4 v5, 0x0

    .local v5, x:I
    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-lt v5, v7, :cond_1

    .line 44
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 46
    :cond_1
    aget-object v7, v0, v6

    aget-byte v3, v7, v5

    .line 47
    .local v3, value:I
    aget-object v7, v0, v6

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    if-ne v3, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v3, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    aget-object v7, v0, v7

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    if-ne v3, v7, :cond_2

    .line 48
    add-int/lit8 v2, v2, 0x3

    .line 45
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static applyMaskPenaltyRule3(Lcom/google/zxing/common/ByteMatrix;)I
    .locals 9
    .parameter "matrix"

    .prologue
    const/4 v8, 0x1

    .line 59
    const/4 v2, 0x0

    .line 60
    .local v2, penalty:I
    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 61
    .local v0, array:[[B
    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getWidth()I

    move-result v3

    .line 62
    .local v3, width:I
    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getHeight()I

    move-result v1

    .line 63
    .local v1, height:I
    const/4 v5, 0x0

    .local v5, y:I
    :goto_0
    if-lt v5, v1, :cond_0

    .line 108
    return v2

    .line 64
    :cond_0
    const/4 v4, 0x0

    .local v4, x:I
    :goto_1
    if-lt v4, v3, :cond_1

    .line 63
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 66
    :cond_1
    add-int/lit8 v6, v4, 0x6

    if-ge v6, v3, :cond_4

    .line 67
    aget-object v6, v0, v5

    aget-byte v6, v6, v4

    if-ne v6, v8, :cond_4

    .line 68
    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x1

    aget-byte v6, v6, v7

    if-nez v6, :cond_4

    .line 69
    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x2

    aget-byte v6, v6, v7

    if-ne v6, v8, :cond_4

    .line 70
    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x3

    aget-byte v6, v6, v7

    if-ne v6, v8, :cond_4

    .line 71
    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x4

    aget-byte v6, v6, v7

    if-ne v6, v8, :cond_4

    .line 72
    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x5

    aget-byte v6, v6, v7

    if-nez v6, :cond_4

    .line 73
    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x6

    aget-byte v6, v6, v7

    if-ne v6, v8, :cond_4

    .line 74
    add-int/lit8 v6, v4, 0xa

    if-ge v6, v3, :cond_2

    .line 75
    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x7

    aget-byte v6, v6, v7

    if-nez v6, :cond_2

    .line 76
    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x8

    aget-byte v6, v6, v7

    if-nez v6, :cond_2

    .line 77
    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x9

    aget-byte v6, v6, v7

    if-nez v6, :cond_2

    .line 78
    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0xa

    aget-byte v6, v6, v7

    if-eqz v6, :cond_3

    .line 79
    :cond_2
    add-int/lit8 v6, v4, -0x4

    if-ltz v6, :cond_4

    .line 80
    aget-object v6, v0, v5

    add-int/lit8 v7, v4, -0x1

    aget-byte v6, v6, v7

    if-nez v6, :cond_4

    .line 81
    aget-object v6, v0, v5

    add-int/lit8 v7, v4, -0x2

    aget-byte v6, v6, v7

    if-nez v6, :cond_4

    .line 82
    aget-object v6, v0, v5

    add-int/lit8 v7, v4, -0x3

    aget-byte v6, v6, v7

    if-nez v6, :cond_4

    .line 83
    aget-object v6, v0, v5

    add-int/lit8 v7, v4, -0x4

    aget-byte v6, v6, v7

    if-nez v6, :cond_4

    .line 84
    :cond_3
    add-int/lit8 v2, v2, 0x28

    .line 86
    :cond_4
    add-int/lit8 v6, v5, 0x6

    if-ge v6, v1, :cond_7

    .line 87
    aget-object v6, v0, v5

    aget-byte v6, v6, v4

    if-ne v6, v8, :cond_7

    .line 88
    add-int/lit8 v6, v5, 0x1

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_7

    .line 89
    add-int/lit8 v6, v5, 0x2

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-ne v6, v8, :cond_7

    .line 90
    add-int/lit8 v6, v5, 0x3

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-ne v6, v8, :cond_7

    .line 91
    add-int/lit8 v6, v5, 0x4

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-ne v6, v8, :cond_7

    .line 92
    add-int/lit8 v6, v5, 0x5

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_7

    .line 93
    add-int/lit8 v6, v5, 0x6

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-ne v6, v8, :cond_7

    .line 94
    add-int/lit8 v6, v5, 0xa

    if-ge v6, v1, :cond_5

    .line 95
    add-int/lit8 v6, v5, 0x7

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_5

    .line 96
    add-int/lit8 v6, v5, 0x8

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_5

    .line 97
    add-int/lit8 v6, v5, 0x9

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_5

    .line 98
    add-int/lit8 v6, v5, 0xa

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-eqz v6, :cond_6

    .line 99
    :cond_5
    add-int/lit8 v6, v5, -0x4

    if-ltz v6, :cond_7

    .line 100
    add-int/lit8 v6, v5, -0x1

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_7

    .line 101
    add-int/lit8 v6, v5, -0x2

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_7

    .line 102
    add-int/lit8 v6, v5, -0x3

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_7

    .line 103
    add-int/lit8 v6, v5, -0x4

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_7

    .line 104
    :cond_6
    add-int/lit8 v2, v2, 0x28

    .line 64
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method public static applyMaskPenaltyRule4(Lcom/google/zxing/common/ByteMatrix;)I
    .locals 13
    .parameter "matrix"

    .prologue
    .line 121
    const/4 v4, 0x0

    .line 122
    .local v4, numDarkCells:I
    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 123
    .local v0, array:[[B
    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getWidth()I

    move-result v6

    .line 124
    .local v6, width:I
    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getHeight()I

    move-result v3

    .line 125
    .local v3, height:I
    const/4 v8, 0x0

    .local v8, y:I
    :goto_0
    if-lt v8, v3, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/zxing/common/ByteMatrix;->getWidth()I

    move-result v10

    mul-int v5, v9, v10

    .line 133
    .local v5, numTotalCells:I
    int-to-double v9, v4

    int-to-double v11, v5

    div-double v1, v9, v11

    .line 134
    .local v1, darkRatio:D
    const-wide/high16 v9, 0x4059

    mul-double/2addr v9, v1

    const-wide/high16 v11, 0x4049

    sub-double/2addr v9, v11

    double-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    div-int/lit8 v9, v9, 0x5

    mul-int/lit8 v9, v9, 0xa

    return v9

    .line 126
    .end local v1           #darkRatio:D
    .end local v5           #numTotalCells:I
    :cond_0
    const/4 v7, 0x0

    .local v7, x:I
    :goto_1
    if-lt v7, v6, :cond_1

    .line 125
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 127
    :cond_1
    aget-object v9, v0, v8

    aget-byte v9, v9, v7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 128
    add-int/lit8 v4, v4, 0x1

    .line 126
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public static getDataMaskBit(III)Z
    .locals 5
    .parameter "maskPattern"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 140
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid mask pattern"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 173
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid mask pattern: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :pswitch_0
    add-int v2, p2, p1

    and-int/lit8 v0, v2, 0x1

    .line 175
    .local v0, intermediate:I
    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 149
    .end local v0           #intermediate:I
    :pswitch_1
    and-int/lit8 v0, p2, 0x1

    .line 150
    .restart local v0       #intermediate:I
    goto :goto_0

    .line 152
    .end local v0           #intermediate:I
    :pswitch_2
    rem-int/lit8 v0, p1, 0x3

    .line 153
    .restart local v0       #intermediate:I
    goto :goto_0

    .line 155
    .end local v0           #intermediate:I
    :pswitch_3
    add-int v2, p2, p1

    rem-int/lit8 v0, v2, 0x3

    .line 156
    .restart local v0       #intermediate:I
    goto :goto_0

    .line 158
    .end local v0           #intermediate:I
    :pswitch_4
    ushr-int/lit8 v2, p2, 0x1

    div-int/lit8 v3, p1, 0x3

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    .line 159
    .restart local v0       #intermediate:I
    goto :goto_0

    .line 161
    .end local v0           #intermediate:I
    :pswitch_5
    mul-int v1, p2, p1

    .line 162
    .local v1, temp:I
    and-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v1, 0x3

    add-int v0, v2, v3

    .line 163
    .restart local v0       #intermediate:I
    goto :goto_0

    .line 165
    .end local v0           #intermediate:I
    .end local v1           #temp:I
    :pswitch_6
    mul-int v1, p2, p1

    .line 166
    .restart local v1       #temp:I
    and-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    .line 167
    .restart local v0       #intermediate:I
    goto :goto_0

    .line 169
    .end local v0           #intermediate:I
    .end local v1           #temp:I
    :pswitch_7
    mul-int v1, p2, p1

    .line 170
    .restart local v1       #temp:I
    rem-int/lit8 v2, v1, 0x3

    add-int v3, p2, p1

    and-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    .line 171
    .restart local v0       #intermediate:I
    goto :goto_0

    .line 175
    .end local v1           #temp:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
