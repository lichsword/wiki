.class public final Landroid/taobao/chardet/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ASSUME_SHIFT_JIS:Z = false

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String; = null

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/chardet/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 36
    const-string v0, "SJIS"

    sget-object v1, Landroid/taobao/chardet/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EUC_JP"

    sget-object v1, Landroid/taobao/chardet/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/taobao/chardet/StringUtils;->ASSUME_SHIFT_JIS:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([B)Ljava/lang/String;
    .locals 17
    .parameter "bytes"

    .prologue
    .line 52
    move-object/from16 v0, p0

    array-length v15, v0

    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    const/4 v15, 0x0

    aget-byte v15, p0, v15

    const/16 v16, -0x11

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    const/4 v15, 0x1

    aget-byte v15, p0, v15

    const/16 v16, -0x45

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    const/4 v15, 0x2

    aget-byte v15, p0, v15

    const/16 v16, -0x41

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 56
    const-string v15, "UTF8"

    .line 183
    :goto_0
    return-object v15

    .line 65
    :cond_0
    move-object/from16 v0, p0

    array-length v6, v0

    .line 66
    .local v6, length:I
    const/4 v1, 0x1

    .line 67
    .local v1, canBeISO88591:Z
    const/4 v2, 0x1

    .line 68
    .local v2, canBeShiftJIS:Z
    const/4 v3, 0x1

    .line 69
    .local v3, canBeUTF8:Z
    const/4 v12, 0x0

    .line 70
    .local v12, utf8BytesLeft:I
    const/4 v7, 0x0

    .line 71
    .local v7, maybeDoubleByteCount:I
    const/4 v8, 0x0

    .line 72
    .local v8, maybeSingleByteKatakanaCount:I
    const/4 v10, 0x0

    .line 73
    .local v10, sawLatin1Supplement:Z
    const/4 v11, 0x0

    .line 74
    .local v11, sawUTF8Start:Z
    const/4 v5, 0x0

    .line 76
    .local v5, lastWasPossibleDoubleByteStart:Z
    const/4 v4, 0x0

    .line 77
    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_15

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_15

    .line 80
    :cond_1
    aget-byte v15, p0, v4

    and-int/lit16 v13, v15, 0xff

    .line 83
    .local v13, value:I
    const/16 v15, 0x80

    if-lt v13, v15, :cond_e

    const/16 v15, 0xbf

    if-gt v13, v15, :cond_e

    .line 84
    if-lez v12, :cond_2

    .line 85
    add-int/lit8 v12, v12, -0x1

    .line 103
    :cond_2
    const/16 v15, 0xc2

    if-eq v13, v15, :cond_3

    const/16 v15, 0xc3

    if-ne v13, v15, :cond_6

    :cond_3
    add-int/lit8 v15, v6, -0x1

    if-ge v4, v15, :cond_6

    .line 107
    add-int/lit8 v15, v4, 0x1

    aget-byte v15, p0, v15

    and-int/lit16 v9, v15, 0xff

    .line 108
    .local v9, nextValue:I
    const/16 v15, 0xbf

    if-gt v9, v15, :cond_6

    const/16 v15, 0xc2

    if-ne v13, v15, :cond_4

    const/16 v15, 0xa0

    if-ge v9, v15, :cond_5

    :cond_4
    const/16 v15, 0xc3

    if-ne v13, v15, :cond_6

    const/16 v15, 0x80

    if-lt v9, v15, :cond_6

    .line 110
    :cond_5
    const/4 v10, 0x1

    .line 113
    .end local v9           #nextValue:I
    :cond_6
    const/16 v15, 0x7f

    if-lt v13, v15, :cond_7

    const/16 v15, 0x9f

    if-gt v13, v15, :cond_7

    .line 114
    const/4 v1, 0x0

    .line 119
    :cond_7
    const/16 v15, 0xa1

    if-lt v13, v15, :cond_8

    const/16 v15, 0xdf

    if-gt v13, v15, :cond_8

    .line 121
    if-nez v5, :cond_8

    .line 122
    add-int/lit8 v8, v8, 0x1

    .line 125
    :cond_8
    if-nez v5, :cond_b

    const/16 v15, 0xf0

    if-lt v13, v15, :cond_9

    const/16 v15, 0xff

    if-le v13, v15, :cond_a

    :cond_9
    const/16 v15, 0x80

    if-eq v13, v15, :cond_a

    const/16 v15, 0xa0

    if-ne v13, v15, :cond_b

    .line 127
    :cond_a
    const/4 v2, 0x0

    .line 129
    :cond_b
    const/16 v15, 0x81

    if-lt v13, v15, :cond_c

    const/16 v15, 0x9f

    if-le v13, v15, :cond_d

    :cond_c
    const/16 v15, 0xe0

    if-lt v13, v15, :cond_14

    const/16 v15, 0xef

    if-gt v13, v15, :cond_14

    .line 132
    :cond_d
    if-eqz v5, :cond_10

    .line 137
    const/4 v5, 0x0

    .line 78
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 88
    :cond_e
    if-lez v12, :cond_f

    .line 89
    const/4 v3, 0x0

    .line 91
    :cond_f
    const/16 v15, 0xc0

    if-lt v13, v15, :cond_2

    const/16 v15, 0xfd

    if-gt v13, v15, :cond_2

    .line 92
    const/4 v11, 0x1

    .line 93
    move v14, v13

    .line 94
    .local v14, valueCopy:I
    :goto_3
    and-int/lit8 v15, v14, 0x40

    if-eqz v15, :cond_2

    .line 95
    add-int/lit8 v12, v12, 0x1

    .line 96
    shl-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 141
    .end local v14           #valueCopy:I
    :cond_10
    const/4 v5, 0x1

    .line 142
    move-object/from16 v0, p0

    array-length v15, v0

    add-int/lit8 v15, v15, -0x1

    if-lt v4, v15, :cond_11

    .line 143
    const/4 v2, 0x0

    goto :goto_2

    .line 145
    :cond_11
    add-int/lit8 v15, v4, 0x1

    aget-byte v15, p0, v15

    and-int/lit16 v9, v15, 0xff

    .line 146
    .restart local v9       #nextValue:I
    const/16 v15, 0x40

    if-lt v9, v15, :cond_12

    const/16 v15, 0xfc

    if-le v9, v15, :cond_13

    .line 147
    :cond_12
    const/4 v2, 0x0

    goto :goto_2

    .line 149
    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 156
    .end local v9           #nextValue:I
    :cond_14
    const/4 v5, 0x0

    goto :goto_2

    .line 159
    .end local v13           #value:I
    :cond_15
    if-lez v12, :cond_16

    .line 160
    const/4 v3, 0x0

    .line 164
    :cond_16
    if-eqz v2, :cond_17

    sget-boolean v15, Landroid/taobao/chardet/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-eqz v15, :cond_17

    .line 165
    const-string v15, "SJIS"

    goto/16 :goto_0

    .line 167
    :cond_17
    if-eqz v3, :cond_18

    if-eqz v11, :cond_18

    .line 168
    const-string v15, "UTF8"

    goto/16 :goto_0

    .line 175
    :cond_18
    if-eqz v2, :cond_1a

    const/4 v15, 0x3

    if-ge v7, v15, :cond_19

    mul-int/lit8 v15, v8, 0x14

    if-le v15, v6, :cond_1a

    .line 176
    :cond_19
    const-string v15, "SJIS"

    goto/16 :goto_0

    .line 179
    :cond_1a
    if-nez v10, :cond_1b

    if-eqz v1, :cond_1b

    .line 180
    const-string v15, "ISO8859_1"

    goto/16 :goto_0

    .line 183
    :cond_1b
    sget-object v15, Landroid/taobao/chardet/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 192
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
