.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"


# instance fields
.field public final bits:[I

.field public final height:I

.field public final rowSize:I

.field public final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "dimension"

    .prologue
    .line 44
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 45
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-lt p1, v1, :cond_0

    if-ge p2, v1, :cond_1

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Both dimensions must be greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_1
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 52
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 53
    shr-int/lit8 v0, p1, 0x5

    .line 54
    .local v0, rowSize:I
    and-int/lit8 v1, p1, 0x1f

    if-eqz v1, :cond_2

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 57
    :cond_2
    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 58
    mul-int v1, v0, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 59
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 99
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v1, v2

    .line 100
    .local v1, max:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 103
    return-void

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public flip(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 91
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 92
    .local v0, offset:I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 93
    return-void
.end method

.method public get(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 69
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 70
    .local v0, offset:I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    ushr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDimension()I
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-eq v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t call getDimension() on a non-square matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    return v0
.end method

.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 5
    .parameter "y"
    .parameter "row"

    .prologue
    .line 142
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v2, v3, :cond_1

    .line 143
    :cond_0
    new-instance p2, Lcom/google/zxing/common/BitArray;

    .end local p2
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {p2, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 145
    .restart local p2
    :cond_1
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, p1, v2

    .line 146
    .local v0, offset:I
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-lt v1, v2, :cond_2

    .line 149
    return-object p2

    .line 147
    :cond_2
    shl-int/lit8 v2, v1, 0x5

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/google/zxing/common/BitArray;->setBulk(II)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public set(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 80
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 81
    .local v0, offset:I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 82
    return-void
.end method

.method public setRegion(IIII)V
    .locals 10
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x1

    .line 114
    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    .line 115
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Left and top must be nonnegative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 117
    :cond_1
    if-lt p4, v9, :cond_2

    if-ge p3, v9, :cond_3

    .line 118
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Height and width must be at least 1"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    :cond_3
    add-int v2, p1, p3

    .line 121
    .local v2, right:I
    add-int v0, p2, p4

    .line 122
    .local v0, bottom:I
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt v0, v5, :cond_4

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-le v2, v5, :cond_5

    .line 123
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The region must fit inside the matrix"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 125
    :cond_5
    move v4, p2

    .local v4, y:I
    :goto_0
    if-lt v4, v0, :cond_6

    .line 131
    return-void

    .line 126
    :cond_6
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v1, v4, v5

    .line 127
    .local v1, offset:I
    move v3, p1

    .local v3, x:I
    :goto_1
    if-lt v3, v2, :cond_7

    .line 125
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    :cond_7
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    shr-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v1

    aget v7, v5, v6

    and-int/lit8 v8, v3, 0x1f

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 181
    .local v0, result:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, y:I
    :goto_0
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-lt v2, v3, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 182
    :cond_0
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-lt v1, v3, :cond_1

    .line 185
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "X "

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :cond_2
    const-string v3, "  "

    goto :goto_2
.end method
