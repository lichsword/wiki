.class public Lcom/alibaba/fastjson/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field static final DigitOnes:[C

.field static final DigitTens:[C

.field static final digits:[C

.field static final sizeTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 166
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    .line 169
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    .line 175
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    .line 181
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    return-void

    .line 166
    nop

    :array_0
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
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data

    .line 169
    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
    .end array-data

    .line 175
    :array_2
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
    .end array-data

    .line 181
    :array_3
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xe7t 0x3t 0x0t 0x0t
        0xft 0x27t 0x0t 0x0t
        0x9ft 0x86t 0x1t 0x0t
        0x3ft 0x42t 0xft 0x0t
        0x7ft 0x96t 0x98t 0x0t
        0xfft 0xe0t 0xf5t 0x5t
        0xfft 0xc9t 0x9at 0x3bt
        0xfft 0xfft 0xfft 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .parameter "x"

    .prologue
    .line 33
    if-eqz p0, :cond_0

    .line 35
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 4
    .parameter "charsetDecoder"
    .parameter "byteBuf"
    .parameter "charByte"

    .prologue
    .line 191
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 193
    .local v0, cr:Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 197
    :cond_0
    invoke-virtual {p0, p2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_1
    return-void

    .line 202
    .end local v0           #cr:Ljava/nio/charset/CoderResult;
    :catch_0
    move-exception v1

    .line 205
    .local v1, x:Ljava/nio/charset/CharacterCodingException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getChars(BI[C)V
    .locals 7
    .parameter "b"
    .parameter "index"
    .parameter "buf"

    .prologue
    .line 139
    move v1, p0

    .line 141
    .local v1, i:I
    move v0, p1

    .line 142
    .local v0, charPos:I
    const/4 v4, 0x0

    .line 144
    .local v4, sign:C
    if-gez v1, :cond_0

    .line 145
    const/16 v4, 0x2d

    .line 146
    neg-int v1, v1

    .line 152
    :cond_0
    const v5, 0xcccd

    mul-int/2addr v5, v1

    ushr-int/lit8 v2, v5, 0x13

    .line 153
    .local v2, q:I
    shl-int/lit8 v5, v2, 0x3

    shl-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v6

    sub-int v3, v1, v5

    .line 154
    .local v3, r:I
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v5, v5, v3

    aput-char v5, p2, v0

    .line 155
    move v1, v2

    .line 156
    if-nez v1, :cond_0

    .line 158
    if-eqz v4, :cond_1

    .line 159
    add-int/lit8 v0, v0, -0x1

    aput-char v4, p2, v0

    .line 161
    :cond_1
    return-void
.end method

.method public static getChars(II[C)V
    .locals 6
    .parameter "i"
    .parameter "index"
    .parameter "buf"

    .prologue
    .line 106
    move v0, p1

    .line 107
    .local v0, charPos:I
    const/4 v3, 0x0

    .line 109
    .local v3, sign:C
    if-gez p0, :cond_0

    .line 110
    const/16 v3, 0x2d

    .line 111
    neg-int p0, p0

    .line 115
    :cond_0
    :goto_0
    const/high16 v4, 0x1

    if-lt p0, v4, :cond_1

    .line 116
    div-int/lit8 v1, p0, 0x64

    .line 118
    .local v1, q:I
    shl-int/lit8 v4, v1, 0x6

    shl-int/lit8 v5, v1, 0x5

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    sub-int v2, p0, v4

    .line 119
    .local v2, r:I
    move p0, v1

    .line 120
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    .line 121
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    goto :goto_0

    .line 127
    .end local v1           #q:I
    .end local v2           #r:I
    :cond_1
    const v4, 0xcccd

    mul-int/2addr v4, p0

    ushr-int/lit8 v1, v4, 0x13

    .line 128
    .restart local v1       #q:I
    shl-int/lit8 v4, v1, 0x3

    shl-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    sub-int v2, p0, v4

    .line 129
    .restart local v2       #r:I
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    .line 130
    move p0, v1

    .line 131
    if-nez p0, :cond_1

    .line 133
    if-eqz v3, :cond_2

    .line 134
    add-int/lit8 v0, v0, -0x1

    aput-char v3, p2, v0

    .line 136
    :cond_2
    return-void
.end method

.method public static getChars(JI[C)V
    .locals 11
    .parameter "i"
    .parameter "index"
    .parameter "buf"

    .prologue
    .line 55
    move v0, p2

    .line 56
    .local v0, charPos:I
    const/4 v6, 0x0

    .line 58
    .local v6, sign:C
    const-wide/16 v7, 0x0

    cmp-long v7, p0, v7

    if-gez v7, :cond_0

    .line 59
    const/16 v6, 0x2d

    .line 60
    neg-long p0, p0

    .line 64
    :cond_0
    :goto_0
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, p0, v7

    if-lez v7, :cond_1

    .line 65
    const-wide/16 v7, 0x64

    div-long v2, p0, v7

    .line 67
    .local v2, q:J
    const/4 v7, 0x6

    shl-long v7, v2, v7

    const/4 v9, 0x5

    shl-long v9, v2, v9

    add-long/2addr v7, v9

    const/4 v9, 0x2

    shl-long v9, v2, v9

    add-long/2addr v7, v9

    sub-long v7, p0, v7

    long-to-int v5, v7

    .line 68
    .local v5, r:I
    move-wide p0, v2

    .line 69
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 70
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_0

    .line 75
    .end local v2           #q:J
    .end local v5           #r:I
    :cond_1
    long-to-int v1, p0

    .line 76
    .local v1, i2:I
    :goto_1
    const/high16 v7, 0x1

    if-lt v1, v7, :cond_2

    .line 77
    div-int/lit8 v4, v1, 0x64

    .line 79
    .local v4, q2:I
    shl-int/lit8 v7, v4, 0x6

    shl-int/lit8 v8, v4, 0x5

    add-int/2addr v7, v8

    shl-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    .line 80
    .restart local v5       #r:I
    move v1, v4

    .line 81
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 82
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_1

    .line 88
    .end local v4           #q2:I
    .end local v5           #r:I
    :cond_2
    const v7, 0xcccd

    mul-int/2addr v7, v1

    ushr-int/lit8 v4, v7, 0x13

    .line 89
    .restart local v4       #q2:I
    shl-int/lit8 v7, v4, 0x3

    shl-int/lit8 v8, v4, 0x1

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    .line 90
    .restart local v5       #r:I
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 91
    move v1, v4

    .line 92
    if-nez v1, :cond_2

    .line 94
    if-eqz v6, :cond_3

    .line 95
    add-int/lit8 v0, v0, -0x1

    aput-char v6, p3, v0

    .line 97
    :cond_3
    return-void
.end method

.method static stringSize(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    return v1

    .line 185
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringSize(J)I
    .locals 6
    .parameter "x"

    .prologue
    const/16 v3, 0x13

    .line 44
    const-wide/16 v1, 0xa

    .line 45
    .local v1, p:J
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 46
    cmp-long v4, p0, v1

    if-gez v4, :cond_0

    .line 49
    .end local v0           #i:I
    :goto_1
    return v0

    .line 47
    .restart local v0       #i:I
    :cond_0
    const-wide/16 v4, 0xa

    mul-long/2addr v1, v4

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 49
    goto :goto_1
.end method
