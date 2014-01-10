.class public final Lcom/alibaba/fastjson/parser/CharTypes;
.super Ljava/lang/Object;
.source "CharTypes.java"


# static fields
.field public static final ASCII_CHARS:[C

.field public static final digits:[C

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field public static final replaceChars:[C

.field public static final specicalFlags_doubleQuotes:[Z

.field public static final specicalFlags_singleQuotes:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0xa

    const/16 v5, 0x8

    const/16 v4, 0x5c

    const/4 v3, 0x1

    .line 22
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    .line 28
    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    .line 30
    const/4 v0, 0x0

    .local v0, c:C
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 31
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 32
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    aput-boolean v3, v1, v0

    .line 30
    :cond_0
    :goto_1
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    .line 33
    :cond_1
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 34
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    aput-boolean v3, v1, v0

    goto :goto_1

    .line 35
    :cond_2
    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    .line 36
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    aput-boolean v3, v1, v0

    goto :goto_1

    .line 41
    :cond_3
    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    .line 44
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 45
    const/16 v1, 0x41

    if-lt v0, v1, :cond_5

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_5

    .line 46
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    aput-boolean v3, v1, v0

    .line 44
    :cond_4
    :goto_3
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_2

    .line 47
    :cond_5
    const/16 v1, 0x61

    if-lt v0, v1, :cond_6

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_6

    .line 48
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    aput-boolean v3, v1, v0

    goto :goto_3

    .line 49
    :cond_6
    const/16 v1, 0x5f

    if-ne v0, v1, :cond_7

    .line 50
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    aput-boolean v3, v1, v0

    goto :goto_3

    .line 51
    :cond_7
    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x39

    if-gt v0, v1, :cond_4

    .line 52
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    aput-boolean v3, v1, v0

    goto :goto_3

    .line 57
    :cond_8
    const/16 v1, 0x80

    new-array v1, v1, [Z

    sput-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    .line 58
    const/16 v1, 0x80

    new-array v1, v1, [Z

    sput-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    .line 64
    const/16 v1, 0x80

    new-array v1, v1, [C

    sput-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    .line 66
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aput-boolean v3, v1, v5

    .line 67
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aput-boolean v3, v1, v6

    .line 68
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    const/16 v2, 0xc

    aput-boolean v3, v1, v2

    .line 69
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    .line 70
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    const/16 v2, 0x22

    aput-boolean v3, v1, v2

    .line 71
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aput-boolean v3, v1, v4

    .line 72
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aput-boolean v3, v1, v7

    .line 74
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    aput-boolean v3, v1, v5

    .line 75
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    aput-boolean v3, v1, v6

    .line 76
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    const/16 v2, 0xc

    aput-boolean v3, v1, v2

    .line 77
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    .line 78
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    const/16 v2, 0x27

    aput-boolean v3, v1, v2

    .line 79
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    aput-boolean v3, v1, v4

    .line 80
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    aput-boolean v3, v1, v7

    .line 82
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v2, 0x62

    aput-char v2, v1, v5

    .line 83
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v2, 0x6e

    aput-char v2, v1, v6

    .line 84
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v2, 0xc

    const/16 v3, 0x66

    aput-char v3, v1, v2

    .line 85
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v2, 0xd

    const/16 v3, 0x72

    aput-char v3, v1, v2

    .line 86
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v2, 0x22

    const/16 v3, 0x22

    aput-char v3, v1, v2

    .line 87
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v2, 0x27

    const/16 v3, 0x27

    aput-char v3, v1, v2

    .line 88
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aput-char v4, v1, v4

    .line 89
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v2, 0x9

    const/16 v3, 0x74

    aput-char v3, v1, v2

    .line 90
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    aput-char v3, v1, v2

    .line 91
    sget-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v2, 0x76

    aput-char v2, v1, v7

    .line 94
    const/16 v1, 0x60

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/alibaba/fastjson/parser/CharTypes;->ASCII_CHARS:[C

    return-void

    .line 22
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
    .end array-data

    .line 94
    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x30t 0x0t
        0x32t 0x0t
        0x30t 0x0t
        0x33t 0x0t
        0x30t 0x0t
        0x34t 0x0t
        0x30t 0x0t
        0x35t 0x0t
        0x30t 0x0t
        0x36t 0x0t
        0x30t 0x0t
        0x37t 0x0t
        0x30t 0x0t
        0x38t 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x41t 0x0t
        0x30t 0x0t
        0x42t 0x0t
        0x30t 0x0t
        0x43t 0x0t
        0x30t 0x0t
        0x44t 0x0t
        0x30t 0x0t
        0x45t 0x0t
        0x30t 0x0t
        0x46t 0x0t
        0x31t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x31t 0x0t
        0x33t 0x0t
        0x31t 0x0t
        0x34t 0x0t
        0x31t 0x0t
        0x35t 0x0t
        0x31t 0x0t
        0x36t 0x0t
        0x31t 0x0t
        0x37t 0x0t
        0x31t 0x0t
        0x38t 0x0t
        0x31t 0x0t
        0x39t 0x0t
        0x31t 0x0t
        0x41t 0x0t
        0x31t 0x0t
        0x42t 0x0t
        0x31t 0x0t
        0x43t 0x0t
        0x31t 0x0t
        0x44t 0x0t
        0x31t 0x0t
        0x45t 0x0t
        0x31t 0x0t
        0x46t 0x0t
        0x32t 0x0t
        0x30t 0x0t
        0x32t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x32t 0x0t
        0x34t 0x0t
        0x32t 0x0t
        0x35t 0x0t
        0x32t 0x0t
        0x36t 0x0t
        0x32t 0x0t
        0x37t 0x0t
        0x32t 0x0t
        0x38t 0x0t
        0x32t 0x0t
        0x39t 0x0t
        0x32t 0x0t
        0x41t 0x0t
        0x32t 0x0t
        0x42t 0x0t
        0x32t 0x0t
        0x43t 0x0t
        0x32t 0x0t
        0x44t 0x0t
        0x32t 0x0t
        0x45t 0x0t
        0x32t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isEmoji(C)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v0, 0x1

    .line 110
    const v1, 0xe001

    if-lt p0, v1, :cond_1

    const v1, 0xe05a

    if-gt p0, v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    const v1, 0xe101

    if-lt p0, v1, :cond_2

    const v1, 0xe15a

    if-le p0, v1, :cond_0

    .line 118
    :cond_2
    const v1, 0xe201

    if-lt p0, v1, :cond_3

    const v1, 0xe253

    if-le p0, v1, :cond_0

    .line 122
    :cond_3
    const v1, 0xe401

    if-lt p0, v1, :cond_4

    const v1, 0xe44c

    if-le p0, v1, :cond_0

    .line 126
    :cond_4
    const v1, 0xe501

    if-lt p0, v1, :cond_5

    const v1, 0xe537

    if-le p0, v1, :cond_0

    .line 130
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpecial_doubleQuotes(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 61
    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
