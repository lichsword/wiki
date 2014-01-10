.class public abstract Lorg/usertrack/a/a/a/a/b;
.super Ljava/lang/Object;
.source "BaseNCodec.java"


# instance fields
.field protected buffer:[B

.field protected eof:Z

.field protected final pZ:B

.field protected pos:I

.field private final qa:I

.field private final qb:I

.field protected final qc:I

.field private final qd:I

.field private qe:I

.field protected qf:I

.field protected qg:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 1
    .parameter "unencodedBlockSize"
    .parameter "encodedBlockSize"
    .parameter "lineLength"
    .parameter "chunkSeparatorLength"

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0x3d

    iput-byte v0, p0, Lorg/usertrack/a/a/a/a/b;->pZ:B

    .line 154
    iput p1, p0, Lorg/usertrack/a/a/a/a/b;->qa:I

    .line 155
    iput p2, p0, Lorg/usertrack/a/a/a/a/b;->qb:I

    .line 156
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    div-int v0, p3, p2

    .line 157
    mul-int/2addr v0, p2

    .line 156
    :goto_0
    iput v0, p0, Lorg/usertrack/a/a/a/a/b;->qc:I

    .line 159
    iput p4, p0, Lorg/usertrack/a/a/a/a/b;->qd:I

    .line 160
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ej()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v1, p0, Lorg/usertrack/a/a/a/a/b;->buffer:[B

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lorg/usertrack/a/a/a/a/b;->ei()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/usertrack/a/a/a/a/b;->buffer:[B

    .line 193
    iput v3, p0, Lorg/usertrack/a/a/a/a/b;->pos:I

    .line 194
    iput v3, p0, Lorg/usertrack/a/a/a/a/b;->qe:I

    .line 200
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lorg/usertrack/a/a/a/a/b;->buffer:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 197
    .local v0, b:[B
    iget-object v1, p0, Lorg/usertrack/a/a/a/a/b;->buffer:[B

    iget-object v2, p0, Lorg/usertrack/a/a/a/a/b;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iput-object v0, p0, Lorg/usertrack/a/a/a/a/b;->buffer:[B

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/usertrack/a/a/a/a/b;->buffer:[B

    .line 270
    iput v1, p0, Lorg/usertrack/a/a/a/a/b;->pos:I

    .line 271
    iput v1, p0, Lorg/usertrack/a/a/a/a/b;->qe:I

    .line 272
    iput v1, p0, Lorg/usertrack/a/a/a/a/b;->qf:I

    .line 273
    iput v1, p0, Lorg/usertrack/a/a/a/a/b;->qg:I

    .line 274
    iput-boolean v1, p0, Lorg/usertrack/a/a/a/a/b;->eof:Z

    .line 275
    return-void
.end method


# virtual methods
.method protected Z(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 209
    iget-object v0, p0, Lorg/usertrack/a/a/a/a/b;->buffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/usertrack/a/a/a/a/b;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lorg/usertrack/a/a/a/a/b;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 210
    :cond_0
    invoke-direct {p0}, Lorg/usertrack/a/a/a/a/b;->ej()V

    .line 212
    :cond_1
    return-void
.end method

.method abstract a([BII)V
.end method

.method protected abstract a(B)Z
.end method

.method public as(Ljava/lang/String;)[B
    .locals 1
    .parameter "pArray"

    .prologue
    .line 341
    invoke-static {p1}, Lorg/usertrack/a/a/a/a/c;->at(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/usertrack/a/a/a/a/b;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method available()I
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/usertrack/a/a/a/a/b;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/usertrack/a/a/a/a/b;->pos:I

    iget v1, p0, Lorg/usertrack/a/a/a/a/b;->qe:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract b([BII)V
.end method

.method c([BII)I
    .locals 3
    .parameter "b"
    .parameter "bPos"
    .parameter "bAvail"

    .prologue
    .line 232
    iget-object v1, p0, Lorg/usertrack/a/a/a/a/b;->buffer:[B

    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {p0}, Lorg/usertrack/a/a/a/a/b;->available()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 234
    .local v0, len:I
    iget-object v1, p0, Lorg/usertrack/a/a/a/a/b;->buffer:[B

    iget v2, p0, Lorg/usertrack/a/a/a/a/b;->qe:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget v1, p0, Lorg/usertrack/a/a/a/a/b;->qe:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/usertrack/a/a/a/a/b;->qe:I

    .line 236
    iget v1, p0, Lorg/usertrack/a/a/a/a/b;->qe:I

    iget v2, p0, Lorg/usertrack/a/a/a/a/b;->pos:I

    if-lt v1, v2, :cond_0

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/usertrack/a/a/a/a/b;->buffer:[B

    .line 242
    .end local v0           #len:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lorg/usertrack/a/a/a/a/b;->eof:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public decode([B)[B
    .locals 3
    .parameter "pArray"

    .prologue
    const/4 v2, 0x0

    .line 352
    invoke-direct {p0}, Lorg/usertrack/a/a/a/a/b;->reset()V

    .line 353
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, p1

    .line 360
    :goto_0
    return-object v0

    .line 356
    :cond_1
    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1}, Lorg/usertrack/a/a/a/a/b;->b([BII)V

    .line 357
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v2, v1}, Lorg/usertrack/a/a/a/a/b;->b([BII)V

    .line 358
    iget v1, p0, Lorg/usertrack/a/a/a/a/b;->pos:I

    new-array v0, v1, [B

    .line 359
    .local v0, result:[B
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lorg/usertrack/a/a/a/a/b;->c([BII)I

    goto :goto_0
.end method

.method protected ei()I
    .locals 1

    .prologue
    .line 186
    const/16 v0, 0x2000

    return v0
.end method

.method public l([B)[B
    .locals 4
    .parameter "pArray"

    .prologue
    const/4 v3, 0x0

    .line 388
    invoke-direct {p0}, Lorg/usertrack/a/a/a/a/b;->reset()V

    .line 389
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, p1

    .line 396
    :goto_0
    return-object v0

    .line 392
    :cond_1
    array-length v1, p1

    invoke-virtual {p0, p1, v3, v1}, Lorg/usertrack/a/a/a/a/b;->a([BII)V

    .line 393
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v3, v1}, Lorg/usertrack/a/a/a/a/b;->a([BII)V

    .line 394
    iget v1, p0, Lorg/usertrack/a/a/a/a/b;->pos:I

    iget v2, p0, Lorg/usertrack/a/a/a/a/b;->qe:I

    sub-int/2addr v1, v2

    new-array v0, v1, [B

    .line 395
    .local v0, buf:[B
    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Lorg/usertrack/a/a/a/a/b;->c([BII)I

    goto :goto_0
.end method

.method protected m([B)Z
    .locals 5
    .parameter "arrayOctet"

    .prologue
    const/4 v1, 0x0

    .line 500
    if-nez p1, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v1

    .line 503
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v0, p1, v2

    .line 504
    .local v0, element:B
    const/16 v4, 0x3d

    if-eq v4, v0, :cond_2

    invoke-virtual {p0, v0}, Lorg/usertrack/a/a/a/a/b;->a(B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 505
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 503
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public n([B)J
    .locals 6
    .parameter "pArray"

    .prologue
    .line 523
    array-length v2, p1

    iget v3, p0, Lorg/usertrack/a/a/a/a/b;->qa:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/usertrack/a/a/a/a/b;->qa:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    .line 524
    iget v4, p0, Lorg/usertrack/a/a/a/a/b;->qb:I

    int-to-long v4, v4

    .line 523
    mul-long v0, v2, v4

    .line 525
    .local v0, len:J
    iget v2, p0, Lorg/usertrack/a/a/a/a/b;->qc:I

    if-lez v2, :cond_0

    .line 527
    iget v2, p0, Lorg/usertrack/a/a/a/a/b;->qc:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lorg/usertrack/a/a/a/a/b;->qc:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lorg/usertrack/a/a/a/a/b;->qd:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 529
    :cond_0
    return-wide v0
.end method
