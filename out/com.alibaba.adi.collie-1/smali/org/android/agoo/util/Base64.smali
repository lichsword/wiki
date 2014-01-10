.class public Lorg/android/agoo/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field public static final DECODE:I = 0x0

.field public static final DONT_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x7f

    const/16 v1, 0x40

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/android/agoo/util/Base64;->_STANDARD_ALPHABET:[B

    .line 60
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/android/agoo/util/Base64;->_STANDARD_DECODABET:[B

    .line 112
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/android/agoo/util/Base64;->_URL_SAFE_ALPHABET:[B

    .line 129
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/android/agoo/util/Base64;->_URL_SAFE_DECODABET:[B

    .line 183
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/android/agoo/util/Base64;->_ORDERED_ALPHABET:[B

    .line 202
    new-array v0, v2, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/android/agoo/util/Base64;->_ORDERED_DECODABET:[B

    return-void

    .line 42
    nop

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 60
    :array_1
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data

    .line 112
    :array_2
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 129
    :array_3
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data

    .line 183
    :array_4
    .array-data 0x1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data

    .line 202
    :array_5
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0xf7t
        0xf7t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x25t
        0xf7t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/android/agoo/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 4
    .parameter "s"
    .parameter "options"

    .prologue
    .line 432
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    const/4 v2, 0x0

    .line 441
    :goto_0
    return-object v2

    .line 437
    :cond_0
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 441
    .local v0, bytes:[B
    :goto_1
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3, p1}, Lorg/android/agoo/util/Base64;->decode([BIII)[B

    move-result-object v2

    goto :goto_0

    .line 438
    .end local v0           #bytes:[B
    :catch_0
    move-exception v1

    .line 439
    .local v1, uee:Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0       #bytes:[B
    goto :goto_1
.end method

.method public static decode([BIII)[B
    .locals 14
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"

    .prologue
    .line 393
    invoke-static/range {p3 .. p3}, Lorg/android/agoo/util/Base64;->getDecodabet(I)[B

    move-result-object v1

    .line 394
    .local v1, DECODABET:[B
    mul-int/lit8 v12, p2, 0x3

    div-int/lit8 v6, v12, 0x4

    .line 395
    .local v6, len34:I
    new-array v8, v6, [B

    .line 396
    .local v8, outBuff:[B
    const/4 v9, 0x0

    .line 397
    .local v9, outBuffPosn:I
    const/4 v12, 0x4

    new-array v2, v12, [B

    .line 398
    .local v2, b4:[B
    const/4 v3, 0x0

    .line 399
    .local v3, b4Posn:I
    const/4 v5, 0x0

    .line 400
    .local v5, i:I
    const/4 v10, 0x0

    .line 401
    .local v10, sbiCrop:B
    const/4 v11, 0x0

    .line 402
    .local v11, sbiDecode:B
    move v5, p1

    move v4, v3

    .end local v3           #b4Posn:I
    .local v4, b4Posn:I
    :goto_0
    add-int v12, p1, p2

    if-ge v5, v12, :cond_3

    .line 403
    aget-byte v12, p0, v5

    and-int/lit8 v12, v12, 0x7f

    int-to-byte v10, v12

    .line 404
    aget-byte v11, v1, v10

    .line 405
    const/4 v12, -0x5

    if-lt v11, v12, :cond_0

    .line 406
    const/4 v12, -0x1

    if-lt v11, v12, :cond_1

    .line 407
    add-int/lit8 v3, v4, 0x1

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    aput-byte v10, v2, v4

    .line 408
    const/4 v12, 0x3

    if-le v3, v12, :cond_2

    .line 409
    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-static {v2, v12, v8, v9, v0}, Lorg/android/agoo/util/Base64;->decode4to3([BI[BII)I

    move-result v12

    add-int/2addr v9, v12

    .line 410
    const/4 v3, 0x0

    .line 411
    const/16 v12, 0x3d

    if-ne v10, v12, :cond_2

    .line 422
    :goto_1
    new-array v7, v9, [B

    .line 423
    .local v7, out:[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v8, v12, v7, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    .end local v7           #out:[B
    :goto_2
    return-object v7

    .line 418
    .end local v3           #b4Posn:I
    .restart local v4       #b4Posn:I
    :cond_0
    const/4 v7, 0x0

    move v3, v4

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    goto :goto_2

    .end local v3           #b4Posn:I
    .restart local v4       #b4Posn:I
    :cond_1
    move v3, v4

    .line 402
    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3           #b4Posn:I
    .restart local v4       #b4Posn:I
    goto :goto_0

    :cond_3
    move v3, v4

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    goto :goto_1
.end method

.method private static decode4to3([BI[BII)I
    .locals 5
    .parameter "source"
    .parameter "srcOffset"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "options"

    .prologue
    const/16 v4, 0x3d

    .line 361
    invoke-static {p4}, Lorg/android/agoo/util/Base64;->getDecodabet(I)[B

    move-result-object v0

    .line 362
    .local v0, DECODABET:[B
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_0

    .line 363
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int v2, v3, v4

    .line 365
    .local v2, outBuff:I
    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 366
    const/4 v3, 0x1

    .line 387
    .end local v2           #outBuff:I
    :goto_0
    return v3

    .line 367
    :cond_0
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_1

    .line 368
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    or-int v2, v3, v4

    .line 372
    .restart local v2       #outBuff:I
    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 373
    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 374
    const/4 v3, 0x2

    goto :goto_0

    .line 377
    .end local v2           #outBuff:I
    :cond_1
    :try_start_0
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 382
    .restart local v2       #outBuff:I
    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 383
    add-int/lit8 v3, p3, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 384
    add-int/lit8 v3, p3, 0x2

    int-to-byte v4, v2

    aput-byte v4, p2, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    const/4 v3, 0x3

    goto :goto_0

    .line 386
    .end local v2           #outBuff:I
    :catch_0
    move-exception v1

    .line 387
    .local v1, e:Ljava/lang/Throwable;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private static encode3to4([BII[BII)[B
    .locals 6
    .parameter "source"
    .parameter "srcOffset"
    .parameter "numSigBytes"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "options"

    .prologue
    const/16 v5, 0x3d

    const/4 v2, 0x0

    .line 276
    invoke-static {p5}, Lorg/android/agoo/util/Base64;->getAlphabet(I)[B

    move-result-object v0

    .line 277
    .local v0, ALPHABET:[B
    if-lez p2, :cond_1

    aget-byte v3, p0, p1

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x8

    move v4, v3

    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_2

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    :goto_1
    or-int/2addr v3, v4

    const/4 v4, 0x2

    if-le p2, v4, :cond_0

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    :cond_0
    or-int v1, v3, v2

    .line 281
    .local v1, inBuff:I
    packed-switch p2, :pswitch_data_0

    .line 305
    :goto_2
    return-object p3

    .end local v1           #inBuff:I
    :cond_1
    move v4, v2

    .line 277
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 284
    .restart local v1       #inBuff:I
    :pswitch_0
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 285
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 286
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 287
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    goto :goto_2

    .line 291
    :pswitch_1
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 292
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 293
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 294
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 298
    :pswitch_2
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 299
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 300
    add-int/lit8 v2, p4, 0x2

    aput-byte v5, p3, v2

    .line 301
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 311
    if-nez p0, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lorg/android/agoo/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "options"

    .prologue
    .line 318
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/android/agoo/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 1
    .parameter "source"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/android/agoo/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 13
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"

    .prologue
    .line 327
    and-int/lit8 v8, p3, 0x8

    .line 329
    .local v8, dontBreakLines:I
    if-nez v8, :cond_1

    const/4 v6, 0x1

    .line 330
    .local v6, breakLines:Z
    :goto_0
    mul-int/lit8 v0, p2, 0x4

    div-int/lit8 v10, v0, 0x3

    .line 331
    .local v10, len43:I
    rem-int/lit8 v0, p2, 0x3

    if-lez v0, :cond_2

    const/4 v0, 0x4

    :goto_1
    add-int v1, v10, v0

    if-eqz v6, :cond_3

    div-int/lit8 v0, v10, 0x4c

    :goto_2
    add-int/2addr v0, v1

    new-array v3, v0, [B

    .line 334
    .local v3, outBuff:[B
    const/4 v7, 0x0

    .line 335
    .local v7, d:I
    const/4 v4, 0x0

    .line 336
    .local v4, e:I
    add-int/lit8 v9, p2, -0x2

    .line 337
    .local v9, len2:I
    const/4 v11, 0x0

    .line 338
    .local v11, lineLength:I
    :goto_3
    if-ge v7, v9, :cond_4

    .line 339
    add-int v1, v7, p1

    const/4 v2, 0x3

    move-object v0, p0

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lorg/android/agoo/util/Base64;->encode3to4([BII[BII)[B

    .line 340
    add-int/lit8 v11, v11, 0x4

    .line 341
    if-eqz v6, :cond_0

    const/16 v0, 0x4c

    if-ne v11, v0, :cond_0

    .line 342
    add-int/lit8 v0, v4, 0x4

    const/16 v1, 0xa

    aput-byte v1, v3, v0

    .line 343
    add-int/lit8 v4, v4, 0x1

    .line 344
    const/4 v11, 0x0

    .line 338
    :cond_0
    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v4, v4, 0x4

    goto :goto_3

    .line 329
    .end local v3           #outBuff:[B
    .end local v4           #e:I
    .end local v6           #breakLines:Z
    .end local v7           #d:I
    .end local v9           #len2:I
    .end local v10           #len43:I
    .end local v11           #lineLength:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 331
    .restart local v6       #breakLines:Z
    .restart local v10       #len43:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 347
    .restart local v3       #outBuff:[B
    .restart local v4       #e:I
    .restart local v7       #d:I
    .restart local v9       #len2:I
    .restart local v11       #lineLength:I
    :cond_4
    if-ge v7, p2, :cond_5

    .line 348
    add-int v1, v7, p1

    sub-int v2, p2, v7

    move-object v0, p0

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lorg/android/agoo/util/Base64;->encode3to4([BII[BII)[B

    .line 349
    add-int/lit8 v4, v4, 0x4

    .line 352
    :cond_5
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF-8"

    invoke-direct {v0, v3, v1, v4, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_4
    return-object v0

    .line 353
    :catch_0
    move-exception v12

    .line 354
    .local v12, uue:Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1, v4}, Ljava/lang/String;-><init>([BII)V

    goto :goto_4
.end method

.method private static final getAlphabet(I)[B
    .locals 2
    .parameter "options"

    .prologue
    .line 253
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 254
    sget-object v0, Lorg/android/agoo/util/Base64;->_URL_SAFE_ALPHABET:[B

    .line 258
    :goto_0
    return-object v0

    .line 255
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 256
    sget-object v0, Lorg/android/agoo/util/Base64;->_ORDERED_ALPHABET:[B

    goto :goto_0

    .line 258
    :cond_1
    sget-object v0, Lorg/android/agoo/util/Base64;->_STANDARD_ALPHABET:[B

    goto :goto_0
.end method

.method private static final getDecodabet(I)[B
    .locals 2
    .parameter "options"

    .prologue
    .line 264
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 265
    sget-object v0, Lorg/android/agoo/util/Base64;->_URL_SAFE_DECODABET:[B

    .line 269
    :goto_0
    return-object v0

    .line 266
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 267
    sget-object v0, Lorg/android/agoo/util/Base64;->_ORDERED_DECODABET:[B

    goto :goto_0

    .line 269
    :cond_1
    sget-object v0, Lorg/android/agoo/util/Base64;->_STANDARD_DECODABET:[B

    goto :goto_0
.end method
