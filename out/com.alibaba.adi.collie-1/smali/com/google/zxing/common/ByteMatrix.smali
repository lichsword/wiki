.class public final Lcom/google/zxing/common/ByteMatrix;
.super Ljava/lang/Object;
.source "ByteMatrix.java"


# instance fields
.field private final bytes:[[B

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    filled-new-array {p2, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/zxing/common/ByteMatrix;->bytes:[[B

    .line 36
    iput p1, p0, Lcom/google/zxing/common/ByteMatrix;->width:I

    .line 37
    iput p2, p0, Lcom/google/zxing/common/ByteMatrix;->height:I

    .line 38
    return-void
.end method


# virtual methods
.method public clear(B)V
    .locals 3
    .parameter "value"

    .prologue
    .line 65
    const/4 v1, 0x0

    .local v1, y:I
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/ByteMatrix;->height:I

    if-lt v1, v2, :cond_0

    .line 70
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    .local v0, x:I
    :goto_1
    iget v2, p0, Lcom/google/zxing/common/ByteMatrix;->width:I

    if-lt v0, v2, :cond_1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/google/zxing/common/ByteMatrix;->bytes:[[B

    aget-object v2, v2, v1

    aput-byte p1, v2, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public get(II)B
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/zxing/common/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    aget-byte v0, v0, p1

    return v0
.end method

.method public getArray()[[B
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/zxing/common/ByteMatrix;->bytes:[[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/zxing/common/ByteMatrix;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/zxing/common/ByteMatrix;->width:I

    return v0
.end method

.method public set(IIB)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "value"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/zxing/common/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    aput-byte p3, v0, p1

    .line 58
    return-void
.end method

.method public set(III)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "value"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/zxing/common/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    int-to-byte v1, p3

    aput-byte v1, v0, p1

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/google/zxing/common/ByteMatrix;->width:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/google/zxing/common/ByteMatrix;->height:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 74
    .local v0, result:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, y:I
    :goto_0
    iget v3, p0, Lcom/google/zxing/common/ByteMatrix;->height:I

    if-lt v2, v3, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 75
    :cond_0
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    iget v3, p0, Lcom/google/zxing/common/ByteMatrix;->width:I

    if-lt v1, v3, :cond_1

    .line 88
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_1
    iget-object v3, p0, Lcom/google/zxing/common/ByteMatrix;->bytes:[[B

    aget-object v3, v3, v2

    aget-byte v3, v3, v1

    packed-switch v3, :pswitch_data_0

    .line 84
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    :pswitch_0
    const-string v3, " 0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 81
    :pswitch_1
    const-string v3, " 1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method