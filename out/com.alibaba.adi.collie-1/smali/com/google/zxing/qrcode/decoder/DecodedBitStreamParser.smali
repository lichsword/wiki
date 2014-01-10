.class final Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C = null

#the value of this static final field might be set in the static constructor
.field private static final ASSUME_SHIFT_JIS:Z = false

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const/16 v1, 0x2d

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    .line 55
    const-string v1, "file.encoding"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, platformDefault:Ljava/lang/String;
    const-string v1, "SJIS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EUC_JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ASSUME_SHIFT_JIS:Z

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 42
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
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x20t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x3at 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;
    .locals 12
    .parameter "bytes"
    .parameter "version"
    .parameter "ecLevel"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 64
    new-instance v0, Lcom/google/zxing/common/BitSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 65
    .local v0, bits:Lcom/google/zxing/common/BitSource;
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v5, 0x32

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 66
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 67
    .local v3, currentCharacterSetECI:Lcom/google/zxing/common/CharacterSetECI;
    const/4 v6, 0x0

    .line 68
    .local v6, fc1InEffect:Z
    new-instance v4, Ljava/util/Vector;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    .line 72
    .local v4, byteSegments:Ljava/util/Vector;
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-ge v5, v10, :cond_4

    .line 74
    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 82
    .local v8, mode:Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_0
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 83
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 85
    :cond_1
    const/4 v6, 0x1

    .line 113
    :cond_2
    :goto_1
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    new-instance v5, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v4, 0x0

    .end local v4           #byteSegments:Ljava/util/Vector;
    :cond_3
    invoke-direct {v5, p0, v10, v4, p2}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/Vector;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    return-object v5

    .line 77
    .end local v8           #mode:Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v4       #byteSegments:Ljava/util/Vector;
    :cond_4
    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {v0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .restart local v8       #mode:Lcom/google/zxing/qrcode/decoder/Mode;
    goto :goto_0

    .line 78
    .end local v8           #mode:Lcom/google/zxing/qrcode/decoder/Mode;
    :catch_0
    move-exception v7

    .line 79
    .local v7, iae:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 86
    .end local v7           #iae:Ljava/lang/IllegalArgumentException;
    .restart local v8       #mode:Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_5
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 89
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    goto :goto_1

    .line 90
    :cond_6
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 92
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/google/zxing/common/BitSource;)I

    move-result v9

    .line 93
    .local v9, value:I
    invoke-static {v9}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    .line 94
    if-nez v3, :cond_2

    .line 95
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 99
    .end local v9           #value:I
    :cond_7
    invoke-virtual {v8, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 100
    .local v2, count:I
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 101
    invoke-static {v0, v1, v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;I)V

    goto :goto_1

    .line 102
    :cond_8
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 103
    invoke-static {v0, v1, v2, v6}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;IZ)V

    goto :goto_1

    .line 104
    :cond_9
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v5, p3

    .line 105
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Vector;Ljava/util/Hashtable;)V

    goto :goto_1

    .line 106
    :cond_a
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 107
    invoke-static {v0, v1, v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;I)V

    goto/16 :goto_1

    .line 109
    :cond_b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5
.end method

.method private static decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;IZ)V
    .locals 7
    .parameter "bits"
    .parameter "result"
    .parameter "count"
    .parameter "fc1InEffect"

    .prologue
    const/16 v6, 0x25

    const/4 v5, 0x1

    .line 186
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 187
    .local v2, start:I
    :goto_0
    if-gt p2, v5, :cond_2

    .line 193
    if-ne p2, v5, :cond_0

    .line 195
    sget-object v3, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    :cond_0
    if-eqz p3, :cond_1

    .line 200
    move v0, v2

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 212
    .end local v0           #i:I
    :cond_1
    return-void

    .line 188
    :cond_2
    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 189
    .local v1, nextTwoCharsBits:I
    sget-object v3, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    div-int/lit8 v4, v1, 0x2d

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 190
    sget-object v3, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    rem-int/lit8 v4, v1, 0x2d

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 191
    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    .line 201
    .end local v1           #nextTwoCharsBits:I
    .restart local v0       #i:I
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_4

    .line 202
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_5

    .line 204
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 200
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    :cond_5
    const/16 v3, 0x1d

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_2
.end method

.method private static decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 6
    .parameter "bits"
    .parameter "result"
    .parameter "count"
    .parameter "currentCharacterSetECI"
    .parameter "byteSegments"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 155
    new-array v2, p2, [B

    .line 156
    .local v2, readBytes:[B
    shl-int/lit8 v4, p2, 0x3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 157
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 159
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, p2, :cond_1

    .line 163
    if-nez p3, :cond_2

    .line 169
    invoke-static {v2, p5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->guessEncoding([BLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, encoding:Ljava/lang/String;
    :goto_1
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    invoke-virtual {p4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 179
    return-void

    .line 160
    .end local v0           #encoding:Ljava/lang/String;
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p3}, Lcom/google/zxing/common/CharacterSetECI;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encoding:Ljava/lang/String;
    goto :goto_1

    .line 175
    :catch_0
    move-exception v3

    .line 176
    .local v3, uce:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4
.end method

.method private static decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;I)V
    .locals 7
    .parameter "bits"
    .parameter "result"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 123
    mul-int/lit8 v5, p2, 0x2

    new-array v1, v5, [B

    .line 124
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 125
    .local v2, offset:I
    :goto_0
    if-gtz p2, :cond_0

    .line 143
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "SJIS"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return-void

    .line 127
    :cond_0
    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 128
    .local v3, twoBytes:I
    div-int/lit16 v5, v3, 0xc0

    shl-int/lit8 v5, v5, 0x8

    rem-int/lit16 v6, v3, 0xc0

    or-int v0, v5, v6

    .line 129
    .local v0, assembledTwoBytes:I
    const/16 v5, 0x1f00

    if-ge v0, v5, :cond_1

    .line 131
    const v5, 0x8140

    add-int/2addr v0, v5

    .line 136
    :goto_1
    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 137
    add-int/lit8 v5, v2, 0x1

    int-to-byte v6, v0

    aput-byte v6, v1, v5

    .line 138
    add-int/lit8 v2, v2, 0x2

    .line 139
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 134
    :cond_1
    const v5, 0xc140

    add-int/2addr v0, v5

    goto :goto_1

    .line 144
    .end local v0           #assembledTwoBytes:I
    .end local v3           #twoBytes:I
    :catch_0
    move-exception v4

    .line 145
    .local v4, uee:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5
.end method

.method private static decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;I)V
    .locals 6
    .parameter "bits"
    .parameter "result"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 218
    :goto_0
    const/4 v3, 0x3

    if-ge p2, v3, :cond_0

    .line 229
    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    .line 231
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 232
    .local v2, twoDigitsBits:I
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    .line 233
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 220
    .end local v2           #twoDigitsBits:I
    :cond_0
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 221
    .local v1, threeDigitsBits:I
    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_1

    .line 222
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 224
    :cond_1
    sget-object v3, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    div-int/lit8 v4, v1, 0x64

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 225
    sget-object v3, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    div-int/lit8 v4, v1, 0xa

    rem-int/lit8 v4, v4, 0xa

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 226
    sget-object v3, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    rem-int/lit8 v4, v1, 0xa

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 227
    add-int/lit8 p2, p2, -0x3

    goto :goto_0

    .line 235
    .end local v1           #threeDigitsBits:I
    .restart local v2       #twoDigitsBits:I
    :cond_2
    sget-object v3, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    div-int/lit8 v4, v2, 0xa

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 236
    sget-object v3, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    rem-int/lit8 v4, v2, 0xa

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 245
    .end local v2           #twoDigitsBits:I
    :cond_3
    :goto_1
    return-void

    .line 237
    :cond_4
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 239
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 240
    .local v0, digitBits:I
    if-lt v0, v5, :cond_5

    .line 241
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 243
    :cond_5
    sget-object v3, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    aget-char v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static guessEncoding([BLjava/util/Hashtable;)Ljava/lang/String;
    .locals 13
    .parameter "bytes"
    .parameter "hints"

    .prologue
    .line 248
    if-eqz p1, :cond_0

    .line 249
    sget-object v11, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 250
    .local v2, characterSet:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 341
    .end local v2           #characterSet:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 254
    :cond_0
    sget-boolean v11, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ASSUME_SHIFT_JIS:Z

    if-eqz v11, :cond_1

    .line 255
    const-string v2, "SJIS"

    goto :goto_0

    .line 258
    :cond_1
    array-length v11, p0

    const/4 v12, 0x3

    if-le v11, v12, :cond_2

    const/4 v11, 0x0

    aget-byte v11, p0, v11

    const/16 v12, -0x11

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    aget-byte v11, p0, v11

    const/16 v12, -0x45

    if-ne v11, v12, :cond_2

    const/4 v11, 0x2

    aget-byte v11, p0, v11

    const/16 v12, -0x41

    if-ne v11, v12, :cond_2

    .line 259
    const-string v2, "UTF8"

    goto :goto_0

    .line 268
    :cond_2
    array-length v5, p0

    .line 269
    .local v5, length:I
    const/4 v0, 0x1

    .line 270
    .local v0, canBeISO88591:Z
    const/4 v1, 0x1

    .line 271
    .local v1, canBeShiftJIS:Z
    const/4 v6, 0x0

    .line 272
    .local v6, maybeDoubleByteCount:I
    const/4 v7, 0x0

    .line 273
    .local v7, maybeSingleByteKatakanaCount:I
    const/4 v9, 0x0

    .line 274
    .local v9, sawLatin1Supplement:Z
    const/4 v4, 0x0

    .line 275
    .local v4, lastWasPossibleDoubleByteStart:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_3

    if-nez v0, :cond_5

    if-nez v1, :cond_5

    .line 333
    :cond_3
    if-eqz v1, :cond_16

    const/4 v11, 0x3

    if-ge v6, v11, :cond_4

    mul-int/lit8 v11, v7, 0x14

    if-le v11, v5, :cond_16

    .line 334
    :cond_4
    const-string v2, "SJIS"

    goto :goto_0

    .line 276
    :cond_5
    aget-byte v11, p0, v3

    and-int/lit16 v10, v11, 0xff

    .line 277
    .local v10, value:I
    const/16 v11, 0xc2

    if-eq v10, v11, :cond_6

    const/16 v11, 0xc3

    if-ne v10, v11, :cond_9

    :cond_6
    add-int/lit8 v11, v5, -0x1

    if-ge v3, v11, :cond_9

    .line 281
    add-int/lit8 v11, v3, 0x1

    aget-byte v11, p0, v11

    and-int/lit16 v8, v11, 0xff

    .line 282
    .local v8, nextValue:I
    const/16 v11, 0xbf

    if-gt v8, v11, :cond_9

    const/16 v11, 0xc2

    if-ne v10, v11, :cond_7

    const/16 v11, 0xa0

    if-ge v8, v11, :cond_8

    :cond_7
    const/16 v11, 0xc3

    if-ne v10, v11, :cond_9

    const/16 v11, 0x80

    if-lt v8, v11, :cond_9

    .line 283
    :cond_8
    const/4 v9, 0x1

    .line 286
    .end local v8           #nextValue:I
    :cond_9
    const/16 v11, 0x7f

    if-lt v10, v11, :cond_a

    const/16 v11, 0x9f

    if-gt v10, v11, :cond_a

    .line 287
    const/4 v0, 0x0

    .line 289
    :cond_a
    const/16 v11, 0xa1

    if-lt v10, v11, :cond_b

    const/16 v11, 0xdf

    if-gt v10, v11, :cond_b

    .line 291
    if-nez v4, :cond_b

    .line 292
    add-int/lit8 v7, v7, 0x1

    .line 295
    :cond_b
    if-nez v4, :cond_e

    const/16 v11, 0xf0

    if-lt v10, v11, :cond_c

    const/16 v11, 0xff

    if-le v10, v11, :cond_d

    :cond_c
    const/16 v11, 0x80

    if-eq v10, v11, :cond_d

    const/16 v11, 0xa0

    if-ne v10, v11, :cond_e

    .line 296
    :cond_d
    const/4 v1, 0x0

    .line 298
    :cond_e
    const/16 v11, 0x81

    if-lt v10, v11, :cond_f

    const/16 v11, 0x9f

    if-le v10, v11, :cond_10

    :cond_f
    const/16 v11, 0xe0

    if-lt v10, v11, :cond_15

    const/16 v11, 0xef

    if-gt v10, v11, :cond_15

    .line 301
    :cond_10
    if-eqz v4, :cond_11

    .line 306
    const/4 v4, 0x0

    .line 275
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 310
    :cond_11
    const/4 v4, 0x1

    .line 311
    array-length v11, p0

    add-int/lit8 v11, v11, -0x1

    if-lt v3, v11, :cond_12

    .line 312
    const/4 v1, 0x0

    .line 313
    goto :goto_2

    .line 314
    :cond_12
    add-int/lit8 v11, v3, 0x1

    aget-byte v11, p0, v11

    and-int/lit16 v8, v11, 0xff

    .line 315
    .restart local v8       #nextValue:I
    const/16 v11, 0x40

    if-lt v8, v11, :cond_13

    const/16 v11, 0xfc

    if-le v8, v11, :cond_14

    .line 316
    :cond_13
    const/4 v1, 0x0

    .line 317
    goto :goto_2

    .line 318
    :cond_14
    add-int/lit8 v6, v6, 0x1

    .line 324
    goto :goto_2

    .line 325
    .end local v8           #nextValue:I
    :cond_15
    const/4 v4, 0x0

    goto :goto_2

    .line 337
    .end local v10           #value:I
    :cond_16
    if-nez v9, :cond_17

    if-eqz v0, :cond_17

    .line 338
    const-string v2, "ISO8859_1"

    goto/16 :goto_0

    .line 341
    :cond_17
    const-string v2, "UTF8"

    goto/16 :goto_0
.end method

.method private static parseECIValue(Lcom/google/zxing/common/BitSource;)I
    .locals 6
    .parameter "bits"

    .prologue
    const/16 v5, 0x8

    .line 345
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 346
    .local v0, firstByte:I
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_0

    .line 348
    and-int/lit8 v3, v0, 0x7f

    .line 356
    :goto_0
    return v3

    .line 349
    :cond_0
    and-int/lit16 v3, v0, 0xc0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1

    .line 351
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 352
    .local v1, secondByte:I
    and-int/lit8 v3, v0, 0x3f

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v1

    goto :goto_0

    .line 353
    .end local v1           #secondByte:I
    :cond_1
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_2

    .line 355
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 356
    .local v2, secondThirdBytes:I
    and-int/lit8 v3, v0, 0x1f

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v2

    goto :goto_0

    .line 358
    .end local v2           #secondThirdBytes:I
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad ECI bits starting with byte "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
