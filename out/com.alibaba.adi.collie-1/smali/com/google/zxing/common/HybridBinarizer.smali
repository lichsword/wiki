.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;
.source "HybridBinarizer.java"


# static fields
.field private static final MINIMUM_DIMENSION:I = 0x28


# instance fields
.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 50
    return-void
.end method

.method private binarizeEntireImage()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x28

    .line 65
    iget-object v5, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-nez v5, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/google/zxing/common/HybridBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v7

    .line 67
    .local v7, source:Lcom/google/zxing/LuminanceSource;
    invoke-virtual {v7}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v5

    if-lt v5, v8, :cond_1

    invoke-virtual {v7}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v5

    if-lt v5, v8, :cond_1

    .line 68
    invoke-virtual {v7}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v0

    .line 69
    .local v0, luminances:[B
    invoke-virtual {v7}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v3

    .line 70
    .local v3, width:I
    invoke-virtual {v7}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v6

    .line 71
    .local v6, height:I
    shr-int/lit8 v1, v3, 0x3

    .line 72
    .local v1, subWidth:I
    shr-int/lit8 v2, v6, 0x3

    .line 73
    .local v2, subHeight:I
    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/HybridBinarizer;->calculateBlackPoints([BIII)[[I

    move-result-object v4

    .line 75
    .local v4, blackPoints:[[I
    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v5, v3, v6}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    iput-object v5, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 76
    iget-object v5, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/common/HybridBinarizer;->calculateThresholdForBlock([BIII[[ILcom/google/zxing/common/BitMatrix;)V

    .line 82
    .end local v0           #luminances:[B
    .end local v1           #subWidth:I
    .end local v2           #subHeight:I
    .end local v3           #width:I
    .end local v4           #blackPoints:[[I
    .end local v6           #height:I
    .end local v7           #source:Lcom/google/zxing/LuminanceSource;
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v7       #source:Lcom/google/zxing/LuminanceSource;
    :cond_1
    invoke-super {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    iput-object v5, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    goto :goto_0
.end method

.method private static calculateBlackPoints([BIII)[[I
    .locals 13
    .parameter "luminances"
    .parameter "subWidth"
    .parameter "subHeight"
    .parameter "stride"

    .prologue
    .line 128
    filled-new-array {p2, p1}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 129
    .local v1, blackPoints:[[I
    const/4 v9, 0x0

    .local v9, y:I
    :goto_0
    if-lt v9, p2, :cond_0

    .line 155
    return-object v1

    .line 130
    :cond_0
    const/4 v7, 0x0

    .local v7, x:I
    :goto_1
    if-lt v7, p1, :cond_1

    .line 129
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const/4 v6, 0x0

    .line 132
    .local v6, sum:I
    const/16 v3, 0xff

    .line 133
    .local v3, min:I
    const/4 v2, 0x0

    .line 134
    .local v2, max:I
    const/4 v10, 0x0

    .local v10, yy:I
    :goto_2
    const/16 v11, 0x8

    if-lt v10, v11, :cond_2

    .line 151
    sub-int v11, v2, v3

    const/16 v12, 0x18

    if-le v11, v12, :cond_6

    shr-int/lit8 v0, v6, 0x6

    .line 152
    .local v0, average:I
    :goto_3
    aget-object v11, v1, v9

    aput v0, v11, v7

    .line 130
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 135
    .end local v0           #average:I
    :cond_2
    shl-int/lit8 v11, v9, 0x3

    add-int/2addr v11, v10

    mul-int v11, v11, p3

    shl-int/lit8 v12, v7, 0x3

    add-int v4, v11, v12

    .line 136
    .local v4, offset:I
    const/4 v8, 0x0

    .local v8, xx:I
    :goto_4
    const/16 v11, 0x8

    if-lt v8, v11, :cond_3

    .line 134
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 137
    :cond_3
    add-int v11, v4, v8

    aget-byte v11, p0, v11

    and-int/lit16 v5, v11, 0xff

    .line 138
    .local v5, pixel:I
    add-int/2addr v6, v5

    .line 139
    if-ge v5, v3, :cond_4

    .line 140
    move v3, v5

    .line 142
    :cond_4
    if-le v5, v2, :cond_5

    .line 143
    move v2, v5

    .line 136
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 151
    .end local v4           #offset:I
    .end local v5           #pixel:I
    .end local v8           #xx:I
    :cond_6
    shr-int/lit8 v0, v3, 0x1

    goto :goto_3
.end method

.method private static calculateThresholdForBlock([BIII[[ILcom/google/zxing/common/BitMatrix;)V
    .locals 13
    .parameter "luminances"
    .parameter "subWidth"
    .parameter "subHeight"
    .parameter "stride"
    .parameter "blackPoints"
    .parameter "matrix"

    .prologue
    .line 90
    const/4 v11, 0x0

    .local v11, y:I
    :goto_0
    if-lt v11, p2, :cond_0

    .line 109
    return-void

    .line 91
    :cond_0
    const/4 v10, 0x0

    .local v10, x:I
    :goto_1
    if-lt v10, p1, :cond_1

    .line 90
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x1

    if-le v10, v0, :cond_2

    move v7, v10

    .line 93
    .local v7, left:I
    :goto_2
    add-int/lit8 v0, p1, -0x2

    if-ge v7, v0, :cond_3

    .line 94
    :goto_3
    const/4 v0, 0x1

    if-le v11, v0, :cond_4

    move v9, v11

    .line 95
    .local v9, top:I
    :goto_4
    add-int/lit8 v0, p2, -0x2

    if-ge v9, v0, :cond_5

    .line 96
    :goto_5
    const/4 v8, 0x0

    .line 97
    .local v8, sum:I
    const/4 v12, -0x2

    .local v12, z:I
    :goto_6
    const/4 v0, 0x2

    if-le v12, v0, :cond_6

    .line 105
    div-int/lit8 v3, v8, 0x19

    .line 106
    .local v3, average:I
    shl-int/lit8 v1, v10, 0x3

    shl-int/lit8 v2, v11, 0x3

    move-object v0, p0

    move/from16 v4, p3

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/common/HybridBinarizer;->threshold8x8Block([BIIIILcom/google/zxing/common/BitMatrix;)V

    .line 91
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 92
    .end local v3           #average:I
    .end local v7           #left:I
    .end local v8           #sum:I
    .end local v9           #top:I
    .end local v12           #z:I
    :cond_2
    const/4 v7, 0x2

    goto :goto_2

    .line 93
    .restart local v7       #left:I
    :cond_3
    add-int/lit8 v7, p1, -0x3

    goto :goto_3

    .line 94
    :cond_4
    const/4 v9, 0x2

    goto :goto_4

    .line 95
    .restart local v9       #top:I
    :cond_5
    add-int/lit8 v9, p2, -0x3

    goto :goto_5

    .line 98
    .restart local v8       #sum:I
    .restart local v12       #z:I
    :cond_6
    add-int v0, v9, v12

    aget-object v6, p4, v0

    .line 99
    .local v6, blackRow:[I
    add-int/lit8 v0, v7, -0x2

    aget v0, v6, v0

    add-int/2addr v8, v0

    .line 100
    add-int/lit8 v0, v7, -0x1

    aget v0, v6, v0

    add-int/2addr v8, v0

    .line 101
    aget v0, v6, v7

    add-int/2addr v8, v0

    .line 102
    add-int/lit8 v0, v7, 0x1

    aget v0, v6, v0

    add-int/2addr v8, v0

    .line 103
    add-int/lit8 v0, v7, 0x2

    aget v0, v6, v0

    add-int/2addr v8, v0

    .line 97
    add-int/lit8 v12, v12, 0x1

    goto :goto_6
.end method

.method private static threshold8x8Block([BIIIILcom/google/zxing/common/BitMatrix;)V
    .locals 7
    .parameter "luminances"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "threshold"
    .parameter "stride"
    .parameter "matrix"

    .prologue
    const/16 v6, 0x8

    .line 114
    const/4 v3, 0x0

    .local v3, y:I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 123
    return-void

    .line 115
    :cond_0
    add-int v4, p2, v3

    mul-int/2addr v4, p4

    add-int v0, v4, p1

    .line 116
    .local v0, offset:I
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-lt v2, v6, :cond_1

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    :cond_1
    add-int v4, v0, v2

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 118
    .local v1, pixel:I
    if-ge v1, p3, :cond_2

    .line 119
    add-int v4, p1, v2

    add-int v5, p2, v3

    invoke-virtual {p5, v4, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 116
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .locals 1
    .parameter "source"

    .prologue
    .line 58
    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/zxing/common/HybridBinarizer;->binarizeEntireImage()V

    .line 54
    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method
