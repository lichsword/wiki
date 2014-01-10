.class public Lcom/alibaba/fastjson/util/UTF8Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "UTF8Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;
    }
.end annotation


# static fields
.field private static final charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/UTF8Decoder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 35
    sget-object v0, Lcom/alibaba/fastjson/util/UTF8Decoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 36
    return-void
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 19
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 117
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    .line 118
    .local v16, srcArray:[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int v3, v2, v5

    .line 119
    .local v3, srcPosition:I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    add-int v4, v2, v5

    .line 121
    .local v4, srcLength:I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v12

    .line 122
    .local v12, destArray:[C
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    add-int v6, v2, v5

    .line 123
    .local v6, destPosition:I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    add-int v13, v2, v5

    .line 124
    .local v13, destLength:I
    sub-int v2, v4, v3

    sub-int v5, v13, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v14, v6, v2

    .local v14, destLengthASCII:I
    move v15, v6

    .end local v6           #destPosition:I
    .local v15, destPosition:I
    move/from16 v17, v3

    .line 127
    .end local v3           #srcPosition:I
    .local v17, srcPosition:I
    :goto_0
    if-ge v15, v14, :cond_10

    aget-byte v2, v16, v17

    if-ltz v2, :cond_10

    .line 128
    add-int/lit8 v6, v15, 0x1

    .end local v15           #destPosition:I
    .restart local v6       #destPosition:I
    add-int/lit8 v3, v17, 0x1

    .end local v17           #srcPosition:I
    .restart local v3       #srcPosition:I
    aget-byte v2, v16, v17

    int-to-char v2, v2

    aput-char v2, v12, v15

    move v15, v6

    .end local v6           #destPosition:I
    .restart local v15       #destPosition:I
    move/from16 v17, v3

    .end local v3           #srcPosition:I
    .restart local v17       #srcPosition:I
    goto :goto_0

    .line 138
    .end local v15           #destPosition:I
    .end local v17           #srcPosition:I
    .restart local v3       #srcPosition:I
    .restart local v6       #destPosition:I
    .local v8, b1:I
    :cond_0
    add-int/lit8 v15, v6, 0x1

    .end local v6           #destPosition:I
    .restart local v15       #destPosition:I
    int-to-char v2, v8

    aput-char v2, v12, v6

    .line 139
    add-int/lit8 v3, v3, 0x1

    move v6, v15

    .line 131
    .end local v8           #b1:I
    .end local v15           #destPosition:I
    .restart local v6       #destPosition:I
    :goto_1
    if-ge v3, v4, :cond_f

    .line 132
    aget-byte v8, v16, v3

    .line 133
    .restart local v8       #b1:I
    if-ltz v8, :cond_1

    .line 135
    if-lt v6, v13, :cond_0

    .line 136
    const/4 v7, 0x1

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 182
    .end local v8           #b1:I
    :goto_2
    return-object v2

    .line 140
    .restart local v8       #b1:I
    :cond_1
    shr-int/lit8 v2, v8, 0x5

    const/4 v5, -0x2

    if-ne v2, v5, :cond_5

    .line 142
    sub-int v2, v4, v3

    const/4 v5, 0x2

    if-lt v2, v5, :cond_2

    if-lt v6, v13, :cond_3

    .line 143
    :cond_2
    const/4 v7, 0x2

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_2

    .line 145
    :cond_3
    add-int/lit8 v2, v3, 0x1

    aget-byte v9, v16, v2

    .line 146
    .local v9, b2:I
    invoke-static {v8, v9}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed2(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    const/4 v2, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v3, v1, v6, v2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_2

    .line 149
    :cond_4
    add-int/lit8 v15, v6, 0x1

    .end local v6           #destPosition:I
    .restart local v15       #destPosition:I
    shl-int/lit8 v2, v8, 0x6

    xor-int/2addr v2, v9

    xor-int/lit16 v2, v2, 0xf80

    int-to-char v2, v2

    aput-char v2, v12, v6

    .line 150
    add-int/lit8 v3, v3, 0x2

    move v6, v15

    .line 151
    .end local v15           #destPosition:I
    .restart local v6       #destPosition:I
    goto :goto_1

    .end local v9           #b2:I
    :cond_5
    shr-int/lit8 v2, v8, 0x4

    const/4 v5, -0x2

    if-ne v2, v5, :cond_9

    .line 153
    sub-int v2, v4, v3

    const/4 v5, 0x3

    if-lt v2, v5, :cond_6

    if-lt v6, v13, :cond_7

    .line 154
    :cond_6
    const/4 v7, 0x3

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_2

    .line 156
    :cond_7
    add-int/lit8 v2, v3, 0x1

    aget-byte v9, v16, v2

    .line 157
    .restart local v9       #b2:I
    add-int/lit8 v2, v3, 0x2

    aget-byte v10, v16, v2

    .line 158
    .local v10, b3:I
    invoke-static {v8, v9, v10}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed3(III)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 159
    const/4 v2, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v3, v1, v6, v2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_2

    .line 161
    :cond_8
    add-int/lit8 v15, v6, 0x1

    .end local v6           #destPosition:I
    .restart local v15       #destPosition:I
    shl-int/lit8 v2, v8, 0xc

    shl-int/lit8 v5, v9, 0x6

    xor-int/2addr v2, v5

    xor-int/2addr v2, v10

    xor-int/lit16 v2, v2, 0x1f80

    int-to-char v2, v2

    aput-char v2, v12, v6

    .line 162
    add-int/lit8 v3, v3, 0x3

    move v6, v15

    .line 163
    .end local v15           #destPosition:I
    .restart local v6       #destPosition:I
    goto/16 :goto_1

    .end local v9           #b2:I
    .end local v10           #b3:I
    :cond_9
    shr-int/lit8 v2, v8, 0x3

    const/4 v5, -0x2

    if-ne v2, v5, :cond_e

    .line 165
    sub-int v2, v4, v3

    const/4 v5, 0x4

    if-lt v2, v5, :cond_a

    sub-int v2, v13, v6

    const/4 v5, 0x2

    if-ge v2, v5, :cond_b

    .line 166
    :cond_a
    const/4 v7, 0x4

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto/16 :goto_2

    .line 168
    :cond_b
    add-int/lit8 v2, v3, 0x1

    aget-byte v9, v16, v2

    .line 169
    .restart local v9       #b2:I
    add-int/lit8 v2, v3, 0x2

    aget-byte v10, v16, v2

    .line 170
    .restart local v10       #b3:I
    add-int/lit8 v2, v3, 0x3

    aget-byte v11, v16, v2

    .line 171
    .local v11, b4:I
    and-int/lit8 v2, v8, 0x7

    shl-int/lit8 v2, v2, 0x12

    and-int/lit8 v5, v9, 0x3f

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v2, v5

    and-int/lit8 v5, v10, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v2, v5

    and-int/lit8 v5, v11, 0x3f

    or-int v18, v2, v5

    .line 172
    .local v18, uc:I
    invoke-static {v9, v10, v11}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed4(III)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;->neededFor(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 173
    :cond_c
    const/4 v2, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v3, v1, v6, v2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto/16 :goto_2

    .line 175
    :cond_d
    add-int/lit8 v15, v6, 0x1

    .end local v6           #destPosition:I
    .restart local v15       #destPosition:I
    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;->high(I)C

    move-result v2

    aput-char v2, v12, v6

    .line 176
    add-int/lit8 v6, v15, 0x1

    .end local v15           #destPosition:I
    .restart local v6       #destPosition:I
    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;->low(I)C

    move-result v2

    aput-char v2, v12, v15

    .line 177
    add-int/lit8 v3, v3, 0x4

    .line 178
    goto/16 :goto_1

    .line 179
    .end local v9           #b2:I
    .end local v10           #b3:I
    .end local v11           #b4:I
    .end local v18           #uc:I
    :cond_e
    const/4 v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v3, v1, v6, v2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto/16 :goto_2

    .line 182
    .end local v8           #b1:I
    :cond_f
    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto/16 :goto_2

    .end local v3           #srcPosition:I
    .end local v6           #destPosition:I
    .restart local v15       #destPosition:I
    .restart local v17       #srcPosition:I
    :cond_10
    move v6, v15

    .end local v15           #destPosition:I
    .restart local v6       #destPosition:I
    move/from16 v3, v17

    .end local v17           #srcPosition:I
    .restart local v3       #srcPosition:I
    goto/16 :goto_1
.end method

.method private static final isMalformed2(II)Z
    .locals 2
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 44
    and-int/lit8 v0, p0, 0x1e

    if-eqz v0, :cond_0

    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMalformed3(III)Z
    .locals 2
    .parameter "b1"
    .parameter "b2"
    .parameter "b3"

    .prologue
    const/16 v1, 0x80

    .line 50
    const/16 v0, -0x20

    if-ne p0, v0, :cond_0

    and-int/lit16 v0, p1, 0xe0

    if-eq v0, v1, :cond_1

    :cond_0
    and-int/lit16 v0, p1, 0xc0

    if-ne v0, v1, :cond_1

    and-int/lit16 v0, p2, 0xc0

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isMalformed4(III)Z
    .locals 2
    .parameter "b2"
    .parameter "b3"
    .parameter "b4"

    .prologue
    const/16 v1, 0x80

    .line 59
    and-int/lit16 v0, p0, 0xc0

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xc0

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p2, 0xc0

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNotContinuation(I)Z
    .locals 2
    .parameter "b"

    .prologue
    .line 39
    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 2
    .parameter "src"
    .parameter "n"

    .prologue
    .line 63
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 64
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 66
    :goto_1
    return-object v1

    .line 63
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_1
.end method

.method private static malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
    .locals 2
    .parameter "src"
    .parameter "sp"
    .parameter "dst"
    .parameter "dp"
    .parameter "nb"

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    invoke-static {p0, p4}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 106
    .local v0, cr:Ljava/nio/charset/CoderResult;
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson/util/UTF8Decoder;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 107
    return-object v0
.end method

.method public static malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 7
    .parameter "src"
    .parameter "nb"

    .prologue
    const/16 v6, 0x80

    const/4 v5, 0x5

    const/4 v2, 0x2

    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 70
    packed-switch p1, :pswitch_data_0

    .line 99
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 72
    :pswitch_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 73
    .local v0, b1:I
    shr-int/lit8 v2, v0, 0x2

    if-ne v2, v4, :cond_1

    .line 75
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    sget-object v2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 97
    .end local v0           #b1:I
    :goto_0
    return-object v2

    .line 76
    .restart local v0       #b1:I
    :cond_0
    invoke-static {p0, v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_0

    .line 78
    :cond_1
    shr-int/lit8 v2, v0, 0x1

    if-ne v2, v4, :cond_3

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v5, :cond_2

    .line 81
    sget-object v2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_0

    .line 83
    :cond_2
    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_0

    .line 85
    :cond_3
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_0

    .line 87
    .end local v0           #b1:I
    :pswitch_1
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_0

    .line 89
    :pswitch_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 90
    .restart local v0       #b1:I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 91
    .local v1, b2:I
    const/16 v4, -0x20

    if-ne v0, v4, :cond_4

    and-int/lit16 v4, v1, 0xe0

    if-eq v4, v6, :cond_5

    :cond_4
    invoke-static {v1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_0

    .line 93
    .end local v0           #b1:I
    .end local v1           #b2:I
    :pswitch_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 94
    .restart local v0       #b1:I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v1, v4, 0xff

    .line 95
    .restart local v1       #b2:I
    const/16 v4, 0xf4

    if-gt v0, v4, :cond_9

    const/16 v4, 0xf0

    if-ne v0, v4, :cond_7

    const/16 v4, 0x90

    if-lt v1, v4, :cond_9

    const/16 v4, 0xbf

    if-gt v1, v4, :cond_9

    :cond_7
    const/16 v4, 0xf4

    if-ne v0, v4, :cond_8

    and-int/lit16 v4, v1, 0xf0

    if-ne v4, v6, :cond_9

    :cond_8
    invoke-static {v1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_0

    .line 96
    :cond_a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_0

    .line 97
    :cond_b
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto/16 :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static final updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V
    .locals 0
    .parameter "src"
    .parameter "sp"
    .parameter "dst"
    .parameter "dp"

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 193
    invoke-virtual {p2, p3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 194
    return-void
.end method

.method private static xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
    .locals 1
    .parameter "src"
    .parameter "sp"
    .parameter "sl"
    .parameter "dst"
    .parameter "dp"
    .parameter "nb"

    .prologue
    .line 111
    invoke-static {p0, p1, p3, p4}, Lcom/alibaba/fastjson/util/UTF8Decoder;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 112
    if-eqz p5, :cond_0

    sub-int v0, p2, p1

    if-ge v0, p5, :cond_1

    :cond_0
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_0
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method
