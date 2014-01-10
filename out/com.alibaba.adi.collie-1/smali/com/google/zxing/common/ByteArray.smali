.class public final Lcom/google/zxing/common/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# static fields
.field private static final INITIAL_SIZE:I = 0x20


# instance fields
.field private bytes:[B

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/common/ByteArray;->size:I

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    .line 38
    iput p1, p0, Lcom/google/zxing/common/ByteArray;->size:I

    .line 39
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "byteArray"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    .line 43
    iget-object v0, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    array-length v0, v0

    iput v0, p0, Lcom/google/zxing/common/ByteArray;->size:I

    .line 44
    return-void
.end method


# virtual methods
.method public appendByte(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 68
    iget v1, p0, Lcom/google/zxing/common/ByteArray;->size:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/zxing/common/ByteArray;->size:I

    iget-object v2, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 69
    :cond_0
    const/16 v1, 0x20

    iget v2, p0, Lcom/google/zxing/common/ByteArray;->size:I

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 70
    .local v0, newSize:I
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/ByteArray;->reserve(I)V

    .line 72
    .end local v0           #newSize:I
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    iget v2, p0, Lcom/google/zxing/common/ByteArray;->size:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 73
    iget v1, p0, Lcom/google/zxing/common/ByteArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/common/ByteArray;->size:I

    .line 74
    return-void
.end method

.method public at(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/zxing/common/ByteArray;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reserve(I)V
    .locals 4
    .parameter "capacity"

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v1, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    array-length v1, v1

    if-ge v1, p1, :cond_2

    .line 78
    :cond_0
    new-array v0, p1, [B

    .line 79
    .local v0, newArray:[B
    iget-object v1, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    iget-object v2, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    :cond_1
    iput-object v0, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    .line 84
    .end local v0           #newArray:[B
    :cond_2
    return-void
.end method

.method public set(II)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    .line 57
    return-void
.end method

.method public set([BII)V
    .locals 3
    .parameter "source"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 88
    new-array v1, p3, [B

    iput-object v1, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    .line 89
    iput p3, p0, Lcom/google/zxing/common/ByteArray;->size:I

    .line 90
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 93
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/common/ByteArray;->bytes:[B

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/zxing/common/ByteArray;->size:I

    return v0
.end method
