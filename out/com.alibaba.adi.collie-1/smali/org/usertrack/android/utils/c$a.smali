.class public Lorg/usertrack/android/utils/c$a;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/usertrack/android/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private buffer:[B

.field private position:I

.field private qT:Z

.field private qU:I

.field private qV:Z

.field private qW:[B

.field private qX:Z

.field private qY:I

.field private qZ:[B

.field private qc:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 4
    .parameter "out"
    .parameter "options"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2095
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2096
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/usertrack/android/utils/c$a;->qV:Z

    .line 2097
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/usertrack/android/utils/c$a;->qT:Z

    .line 2098
    iget-boolean v0, p0, Lorg/usertrack/android/utils/c$a;->qT:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lorg/usertrack/android/utils/c$a;->qU:I

    .line 2099
    iget v0, p0, Lorg/usertrack/android/utils/c$a;->qU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/usertrack/android/utils/c$a;->buffer:[B

    .line 2100
    iput v2, p0, Lorg/usertrack/android/utils/c$a;->position:I

    .line 2101
    iput v2, p0, Lorg/usertrack/android/utils/c$a;->qc:I

    .line 2102
    iput-boolean v2, p0, Lorg/usertrack/android/utils/c$a;->qX:Z

    .line 2103
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/usertrack/android/utils/c$a;->qW:[B

    .line 2104
    iput p2, p0, Lorg/usertrack/android/utils/c$a;->qY:I

    .line 2105
    invoke-static {p2}, Lorg/usertrack/android/utils/c;->af(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/usertrack/android/utils/c$a;->qZ:[B

    .line 2106
    return-void

    :cond_0
    move v0, v2

    .line 2096
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2097
    goto :goto_1

    :cond_2
    move v0, v3

    .line 2098
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2218
    invoke-virtual {p0}, Lorg/usertrack/android/utils/c$a;->eC()V

    .line 2222
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2224
    iput-object v0, p0, Lorg/usertrack/android/utils/c$a;->buffer:[B

    .line 2225
    iput-object v0, p0, Lorg/usertrack/android/utils/c$a;->out:Ljava/io/OutputStream;

    .line 2226
    return-void
.end method

.method public eC()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2197
    iget v0, p0, Lorg/usertrack/android/utils/c$a;->position:I

    if-lez v0, :cond_0

    .line 2198
    iget-boolean v0, p0, Lorg/usertrack/android/utils/c$a;->qT:Z

    if-eqz v0, :cond_1

    .line 2199
    iget-object v0, p0, Lorg/usertrack/android/utils/c$a;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/usertrack/android/utils/c$a;->qW:[B

    iget-object v2, p0, Lorg/usertrack/android/utils/c$a;->buffer:[B

    iget v3, p0, Lorg/usertrack/android/utils/c$a;->position:I

    iget v4, p0, Lorg/usertrack/android/utils/c$a;->qY:I

    invoke-static {v1, v2, v3, v4}, Lorg/usertrack/android/utils/c;->b([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2200
    const/4 v0, 0x0

    iput v0, p0, Lorg/usertrack/android/utils/c$a;->position:I

    .line 2208
    :cond_0
    return-void

    .line 2203
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 2204
    const-string v1, "Base64 input not properly padded."

    .line 2203
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 7
    .parameter "theByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x5

    const/4 v6, 0x0

    .line 2121
    iget-boolean v1, p0, Lorg/usertrack/android/utils/c$a;->qX:Z

    if-eqz v1, :cond_1

    .line 2122
    iget-object v1, p0, Lorg/usertrack/android/utils/c$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2160
    :cond_0
    :goto_0
    return-void

    .line 2127
    :cond_1
    iget-boolean v1, p0, Lorg/usertrack/android/utils/c$a;->qT:Z

    if-eqz v1, :cond_3

    .line 2128
    iget-object v1, p0, Lorg/usertrack/android/utils/c$a;->buffer:[B

    iget v2, p0, Lorg/usertrack/android/utils/c$a;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/usertrack/android/utils/c$a;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 2129
    iget v1, p0, Lorg/usertrack/android/utils/c$a;->position:I

    iget v2, p0, Lorg/usertrack/android/utils/c$a;->qU:I

    if-lt v1, v2, :cond_0

    .line 2131
    iget-object v1, p0, Lorg/usertrack/android/utils/c$a;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/usertrack/android/utils/c$a;->qW:[B

    iget-object v3, p0, Lorg/usertrack/android/utils/c$a;->buffer:[B

    iget v4, p0, Lorg/usertrack/android/utils/c$a;->qU:I

    iget v5, p0, Lorg/usertrack/android/utils/c$a;->qY:I

    invoke-static {v2, v3, v4, v5}, Lorg/usertrack/android/utils/c;->b([B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 2133
    iget v1, p0, Lorg/usertrack/android/utils/c$a;->qc:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/usertrack/android/utils/c$a;->qc:I

    .line 2134
    iget-boolean v1, p0, Lorg/usertrack/android/utils/c$a;->qV:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/usertrack/android/utils/c$a;->qc:I

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_2

    .line 2135
    iget-object v1, p0, Lorg/usertrack/android/utils/c$a;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 2136
    iput v6, p0, Lorg/usertrack/android/utils/c$a;->qc:I

    .line 2139
    :cond_2
    iput v6, p0, Lorg/usertrack/android/utils/c$a;->position:I

    goto :goto_0

    .line 2146
    :cond_3
    iget-object v1, p0, Lorg/usertrack/android/utils/c$a;->qZ:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-le v1, v3, :cond_4

    .line 2147
    iget-object v1, p0, Lorg/usertrack/android/utils/c$a;->buffer:[B

    iget v2, p0, Lorg/usertrack/android/utils/c$a;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/usertrack/android/utils/c$a;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 2148
    iget v1, p0, Lorg/usertrack/android/utils/c$a;->position:I

    iget v2, p0, Lorg/usertrack/android/utils/c$a;->qU:I

    if-lt v1, v2, :cond_0

    .line 2150
    iget-object v1, p0, Lorg/usertrack/android/utils/c$a;->buffer:[B

    iget-object v2, p0, Lorg/usertrack/android/utils/c$a;->qW:[B

    iget v3, p0, Lorg/usertrack/android/utils/c$a;->qY:I

    invoke-static {v1, v6, v2, v6, v3}, Lorg/usertrack/android/utils/c;->b([BI[BII)I

    move-result v0

    .line 2151
    .local v0, len:I
    iget-object v1, p0, Lorg/usertrack/android/utils/c$a;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/usertrack/android/utils/c$a;->qW:[B

    invoke-virtual {v1, v2, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 2152
    iput v6, p0, Lorg/usertrack/android/utils/c$a;->position:I

    goto :goto_0

    .line 2155
    .end local v0           #len:I
    :cond_4
    iget-object v1, p0, Lorg/usertrack/android/utils/c$a;->qZ:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-eq v1, v3, :cond_0

    .line 2156
    new-instance v1, Ljava/io/IOException;

    .line 2157
    const-string v2, "Invalid character in Base64 data."

    .line 2156
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([BII)V
    .locals 2
    .parameter "theBytes"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2178
    iget-boolean v1, p0, Lorg/usertrack/android/utils/c$a;->qX:Z

    if-eqz v1, :cond_1

    .line 2179
    iget-object v1, p0, Lorg/usertrack/android/utils/c$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2187
    :cond_0
    return-void

    .line 2183
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 2184
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/usertrack/android/utils/c$a;->write(I)V

    .line 2183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
