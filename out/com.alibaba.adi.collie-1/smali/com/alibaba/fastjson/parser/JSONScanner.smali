.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Ljava/lang/Object;
.source "JSONScanner.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/JSONLexer;


# static fields
.field public static final ARRAY:I = 0x2

.field public static final END:I = 0x4

.field public static final EOI:B = 0x1at

.field private static final INT_MULTMIN_RADIX_TEN:I = -0xccccccc

.field private static final INT_N_MULTMAX_RADIX_TEN:I = -0xccccccc

.field private static final MULTMIN_RADIX_TEN:J = -0xcccccccccccccccL

.field public static final NOT_MATCH:I = -0x1

.field public static final NOT_MATCH_NAME:I = -0x2

.field private static final N_MULTMAX_RADIX_TEN:J = -0xcccccccccccccccL

.field public static final OBJECT:I = 0x1

.field public static final UNKOWN:I = 0x0

.field public static final VALUE:I = 0x3

.field private static final digits:[I

.field private static final sbufRefLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field

.field private static final typeFieldName:[C

.field private static whitespaceFlags:[Z


# instance fields
.field public final ISO8601_LEN_0:I

.field public final ISO8601_LEN_1:I

.field public final ISO8601_LEN_2:I

.field private bp:I

.field private final buf:[C

.field private final buflen:I

.field private calendar:Ljava/util/Calendar;

.field private ch:C

.field private eofPos:I

.field private features:I

.field hasSpecial:Z

.field private keywods:Lcom/alibaba/fastjson/parser/Keywords;

.field public matchStat:I

.field private np:I

.field private pos:I

.field public resetCount:I

.field private resetFlag:Z

.field private sbuf:[C

.field private sp:I

.field private token:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 86
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->sbufRefLocal:Ljava/lang/ThreadLocal;

    .line 195
    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->whitespaceFlags:[Z

    .line 197
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->whitespaceFlags:[Z

    const/16 v2, 0x20

    aput-boolean v3, v1, v2

    .line 198
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->whitespaceFlags:[Z

    const/16 v2, 0xa

    aput-boolean v3, v1, v2

    .line 199
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->whitespaceFlags:[Z

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    .line 200
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->whitespaceFlags:[Z

    const/16 v2, 0x9

    aput-boolean v3, v1, v2

    .line 201
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->whitespaceFlags:[Z

    const/16 v2, 0xc

    aput-boolean v3, v1, v2

    .line 202
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->whitespaceFlags:[Z

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    .line 811
    const-string v1, "\"@type\":\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    .line 2018
    const/16 v1, 0x67

    new-array v1, v1, [I

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    .line 2021
    const/16 v0, 0x30

    .local v0, i:I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 2022
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    add-int/lit8 v2, v0, -0x30

    aput v2, v1, v0

    .line 2021
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2025
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x66

    if-gt v0, v1, :cond_1

    .line 2026
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 2025
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2028
    :cond_1
    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x46

    if-gt v0, v1, :cond_2

    .line 2029
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 2028
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2031
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 97
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "input"
    .parameter "features"

    .prologue
    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    .line 102
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1
    .parameter "input"
    .parameter "inputLength"

    .prologue
    .line 105
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    .line 106
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 5
    .parameter "input"
    .parameter "inputLength"
    .parameter "features"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v2, Lcom/alibaba/fastjson/parser/Keywords;->DEFAULT_KEYWORDS:Lcom/alibaba/fastjson/parser/Keywords;

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->keywods:Lcom/alibaba/fastjson/parser/Keywords;

    .line 88
    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    .line 90
    iput-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 92
    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->resetFlag:Z

    .line 94
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->resetCount:I

    .line 891
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2277
    const-string v2, "0000-00-00"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    .line 2278
    const-string v2, "0000-00-00T00:00:00"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    .line 2279
    const-string v2, "0000-00-00T00:00:00.000"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    .line 109
    iput p3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    .line 111
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->sbufRefLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 113
    .local v1, sbufRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[C>;"
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    .line 115
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->sbufRefLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    if-nez v2, :cond_1

    .line 119
    const/16 v2, 0x40

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    .line 122
    :cond_1
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->eofPos:I

    .line 124
    array-length v2, p1

    if-ne p2, v2, :cond_2

    .line 125
    array-length v2, p1

    if-lez v2, :cond_3

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-char v2, p1, v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    add-int/lit8 p2, p2, -0x1

    .line 133
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    .line 134
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buflen:I

    .line 135
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buflen:I

    const/16 v4, 0x1a

    aput-char v4, v2, v3

    .line 136
    const/4 v2, -0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 138
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v2, v2, v3

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 139
    return-void

    .line 128
    :cond_3
    add-int/lit8 v2, p2, 0x1

    new-array v0, v2, [C

    .line 129
    .local v0, newInput:[C
    array-length v2, p1

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    move-object p1, v0

    goto :goto_0
.end method

.method public static final isWhitespace(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 174
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "args"

    .prologue
    .line 181
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 182
    return-void
.end method

.method private final putChar(C)V
    .locals 4
    .parameter "ch"

    .prologue
    const/4 v3, 0x0

    .line 1956
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 1957
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [C

    .line 1958
    .local v0, newsbuf:[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1959
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    .line 1961
    .end local v0           #newsbuf:[C
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    aput-char p1, v1, v2

    .line 1962
    return-void
.end method


# virtual methods
.method public bytesValue()[B
    .locals 3

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/Base64;->decodeFast([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    .line 2489
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbufRefLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2492
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    .line 2493
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1
    .parameter "feature"
    .parameter "state"

    .prologue
    .line 2270
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    .line 2271
    return-void
.end method

.method public decimalValue(Z)Ljava/lang/Number;
    .locals 5
    .parameter "decimal"

    .prologue
    .line 2242
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-char v0, v1, v2

    .line 2243
    .local v0, ch:C
    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    .line 2244
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 2254
    :goto_0
    return-object v1

    .line 2247
    :cond_0
    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    .line 2248
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 2251
    :cond_1
    if-eqz p1, :cond_2

    .line 2252
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_0

    .line 2254
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0
.end method

.method public decimalValue()Ljava/math/BigDecimal;
    .locals 5

    .prologue
    .line 2259
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    aget-char v0, v2, v3

    .line 2261
    .local v0, ch:C
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 2262
    .local v1, sp:I
    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    .line 2263
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 2266
    :cond_1
    new-instance v2, Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-direct {v2, v3, v4, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v2
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 2238
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 2234
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final getBufferPosition()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    return v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getCurrent()C
    .locals 1

    .prologue
    .line 217
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return v0
.end method

.method public final incrementBufferPosition()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 319
    return-void
.end method

.method public intValue()I
    .locals 11

    .prologue
    const v6, -0xccccccc

    .line 2172
    const/4 v8, 0x0

    .line 2173
    .local v8, result:I
    const/4 v7, 0x0

    .line 2174
    .local v7, negative:Z
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .local v2, i:I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int v5, v9, v10

    .line 2179
    .local v5, max:I
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    aget-char v9, v9, v10

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_3

    .line 2180
    const/4 v7, 0x1

    .line 2181
    const/high16 v4, -0x8000

    .line 2182
    .local v4, limit:I
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 2186
    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    if-eqz v7, :cond_0

    .line 2187
    .local v6, multmin:I
    :cond_0
    if-ge v3, v5, :cond_1

    .line 2188
    sget-object v9, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-char v10, v10, v3

    aget v1, v9, v10

    .line 2189
    .local v1, digit:I
    neg-int v8, v1

    move v3, v2

    .line 2191
    .end local v1           #digit:I
    .end local v2           #i:I
    .restart local v3       #i:I
    :cond_1
    :goto_1
    if-ge v3, v5, :cond_9

    .line 2193
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-char v0, v9, v3

    .line 2195
    .local v0, ch:C
    const/16 v9, 0x4c

    if-eq v0, v9, :cond_2

    const/16 v9, 0x53

    if-eq v0, v9, :cond_2

    const/16 v9, 0x42

    if-ne v0, v9, :cond_4

    .line 2211
    .end local v0           #ch:C
    :cond_2
    :goto_2
    if-eqz v7, :cond_8

    .line 2212
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v9, v9, 0x1

    if-le v2, v9, :cond_7

    .line 2218
    .end local v8           #result:I
    :goto_3
    return v8

    .line 2184
    .end local v4           #limit:I
    .end local v6           #multmin:I
    .restart local v8       #result:I
    :cond_3
    const v4, -0x7fffffff

    .restart local v4       #limit:I
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 2199
    .end local v3           #i:I
    .restart local v0       #ch:C
    .restart local v2       #i:I
    .restart local v6       #multmin:I
    :cond_4
    sget-object v9, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v9, v0

    .line 2201
    .restart local v1       #digit:I
    if-ge v8, v6, :cond_5

    .line 2202
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2204
    :cond_5
    mul-int/lit8 v8, v8, 0xa

    .line 2205
    add-int v9, v4, v1

    if-ge v8, v9, :cond_6

    .line 2206
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2208
    :cond_6
    sub-int/2addr v8, v1

    move v3, v2

    .line 2209
    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 2215
    .end local v0           #ch:C
    .end local v1           #digit:I
    .end local v3           #i:I
    .restart local v2       #i:I
    :cond_7
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2218
    :cond_8
    neg-int v8, v8

    goto :goto_3

    .end local v2           #i:I
    .restart local v3       #i:I
    :cond_9
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_2
.end method

.method public integerValue()Ljava/lang/Number;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 2034
    const-wide/16 v9, 0x0

    .line 2035
    .local v9, result:J
    const/4 v8, 0x0

    .line 2036
    .local v8, negative:Z
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .local v1, i:I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int v5, v12, v13

    .line 2041
    .local v5, max:I
    const/16 v11, 0x20

    .line 2043
    .local v11, type:C
    if-lez v5, :cond_0

    .line 2044
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v13, v5, -0x1

    aget-char v12, v12, v13

    sparse-switch v12, :sswitch_data_0

    .line 2062
    :cond_0
    :goto_0
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    aget-char v12, v12, v13

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_2

    .line 2063
    const/4 v8, 0x1

    .line 2064
    const-wide/high16 v3, -0x8000

    .line 2065
    .local v3, limit:J
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 2069
    .end local v1           #i:I
    .local v2, i:I
    :goto_1
    if-eqz v8, :cond_3

    const-wide v6, -0xcccccccccccccccL

    .line 2070
    .local v6, multmin:J
    :goto_2
    if-ge v2, v5, :cond_1

    .line 2071
    sget-object v12, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget-char v13, v13, v2

    aget v0, v12, v13

    .line 2072
    .local v0, digit:I
    neg-int v12, v0

    int-to-long v9, v12

    move v2, v1

    .line 2074
    .end local v0           #digit:I
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_1
    :goto_3
    if-ge v2, v5, :cond_6

    .line 2076
    sget-object v12, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget-char v13, v13, v2

    aget v0, v12, v13

    .line 2077
    .restart local v0       #digit:I
    cmp-long v12, v9, v6

    if-gez v12, :cond_4

    .line 2078
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2117
    .end local v0           #digit:I
    :goto_4
    return-object v12

    .line 2046
    .end local v3           #limit:J
    .end local v6           #multmin:J
    :sswitch_0
    add-int/lit8 v5, v5, -0x1

    .line 2047
    const/16 v11, 0x4c

    .line 2048
    goto :goto_0

    .line 2050
    :sswitch_1
    add-int/lit8 v5, v5, -0x1

    .line 2051
    const/16 v11, 0x53

    .line 2052
    goto :goto_0

    .line 2054
    :sswitch_2
    add-int/lit8 v5, v5, -0x1

    .line 2055
    const/16 v11, 0x42

    .line 2056
    goto :goto_0

    .line 2067
    :cond_2
    const-wide v3, -0x7fffffffffffffffL

    .restart local v3       #limit:J
    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 2069
    :cond_3
    const-wide v6, -0xcccccccccccccccL

    goto :goto_2

    .line 2080
    .end local v2           #i:I
    .restart local v0       #digit:I
    .restart local v1       #i:I
    .restart local v6       #multmin:J
    :cond_4
    const-wide/16 v12, 0xa

    mul-long/2addr v9, v12

    .line 2081
    int-to-long v12, v0

    add-long/2addr v12, v3

    cmp-long v12, v9, v12

    if-gez v12, :cond_5

    .line 2082
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 2084
    :cond_5
    int-to-long v12, v0

    sub-long/2addr v9, v12

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_3

    .line 2087
    .end local v0           #digit:I
    :cond_6
    if-eqz v8, :cond_b

    .line 2088
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v12, v12, 0x1

    if-le v2, v12, :cond_a

    .line 2089
    const-wide/32 v12, -0x80000000

    cmp-long v12, v9, v12

    if-ltz v12, :cond_9

    const/16 v12, 0x4c

    if-eq v11, v12, :cond_9

    .line 2090
    const/16 v12, 0x53

    if-ne v11, v12, :cond_7

    .line 2091
    long-to-int v12, v9

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_4

    .line 2094
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_7
    const/16 v12, 0x42

    if-ne v11, v12, :cond_8

    .line 2095
    long-to-int v12, v9

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_4

    .line 2098
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_8
    long-to-int v12, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_4

    .line 2100
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_9
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_4

    .line 2102
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_a
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2105
    :cond_b
    neg-long v9, v9

    .line 2106
    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v9, v12

    if-gtz v12, :cond_e

    const/16 v12, 0x4c

    if-eq v11, v12, :cond_e

    .line 2107
    const/16 v12, 0x53

    if-ne v11, v12, :cond_c

    .line 2108
    long-to-int v12, v9

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_4

    .line 2111
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_c
    const/16 v12, 0x42

    if-ne v11, v12, :cond_d

    .line 2112
    long-to-int v12, v9

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_4

    .line 2115
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_d
    long-to-int v12, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_4

    .line 2117
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_e
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_4

    .line 2044
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public isBlankInput()Z
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buflen:I

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    const/4 v1, 0x0

    .line 169
    :goto_1
    return v1

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isEOF()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2475
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    sparse-switch v1, :sswitch_data_0

    .line 2483
    :goto_0
    :sswitch_0
    return v0

    .line 2477
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2475
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1
    .parameter "feature"

    .prologue
    .line 2274
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/parser/Feature;->isEnabled(ILcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    return v0
.end method

.method public isRef()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1985
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-eqz v1, :cond_1

    .line 1993
    :cond_0
    :goto_0
    return v0

    .line 1989
    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1993
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x4

    aget-char v1, v1, v2

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isResetFlag()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->resetFlag:Z

    return v0
.end method

.method public longValue()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const-wide v7, -0xcccccccccccccccL

    .line 2122
    const-wide/16 v10, 0x0

    .line 2123
    .local v10, result:J
    const/4 v9, 0x0

    .line 2124
    .local v9, negative:Z
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .local v2, i:I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int v6, v12, v13

    .line 2129
    .local v6, max:I
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    aget-char v12, v12, v13

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_3

    .line 2130
    const/4 v9, 0x1

    .line 2131
    const-wide/high16 v4, -0x8000

    .line 2132
    .local v4, limit:J
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 2136
    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    if-eqz v9, :cond_0

    .line 2137
    .local v7, multmin:J
    :cond_0
    if-ge v3, v6, :cond_1

    .line 2138
    sget-object v12, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-char v13, v13, v3

    aget v1, v12, v13

    .line 2139
    .local v1, digit:I
    neg-int v12, v1

    int-to-long v10, v12

    move v3, v2

    .line 2141
    .end local v1           #digit:I
    .end local v2           #i:I
    .restart local v3       #i:I
    :cond_1
    :goto_1
    if-ge v3, v6, :cond_9

    .line 2143
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-char v0, v12, v3

    .line 2145
    .local v0, ch:C
    const/16 v12, 0x4c

    if-eq v0, v12, :cond_2

    const/16 v12, 0x53

    if-eq v0, v12, :cond_2

    const/16 v12, 0x42

    if-ne v0, v12, :cond_4

    .line 2160
    .end local v0           #ch:C
    :cond_2
    :goto_2
    if-eqz v9, :cond_8

    .line 2161
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v12, v12, 0x1

    if-le v2, v12, :cond_7

    .line 2167
    .end local v10           #result:J
    :goto_3
    return-wide v10

    .line 2134
    .end local v4           #limit:J
    .end local v7           #multmin:J
    .restart local v10       #result:J
    :cond_3
    const-wide v4, -0x7fffffffffffffffL

    .restart local v4       #limit:J
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 2149
    .end local v3           #i:I
    .restart local v0       #ch:C
    .restart local v2       #i:I
    .restart local v7       #multmin:J
    :cond_4
    sget-object v12, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v12, v0

    .line 2150
    .restart local v1       #digit:I
    cmp-long v12, v10, v7

    if-gez v12, :cond_5

    .line 2151
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2153
    :cond_5
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 2154
    int-to-long v12, v1

    add-long/2addr v12, v4

    cmp-long v12, v10, v12

    if-gez v12, :cond_6

    .line 2155
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2157
    :cond_6
    int-to-long v12, v1

    sub-long/2addr v10, v12

    move v3, v2

    .line 2158
    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 2164
    .end local v0           #ch:C
    .end local v1           #digit:I
    .end local v3           #i:I
    .restart local v2       #i:I
    :cond_7
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2167
    :cond_8
    neg-long v10, v10

    goto :goto_3

    .end local v2           #i:I
    .restart local v3       #i:I
    :cond_9
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_2
.end method

.method public matchField([C)Z
    .locals 5
    .parameter "fieldName"

    .prologue
    .line 868
    array-length v0, p1

    .line 869
    .local v0, fieldNameLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 870
    aget-char v2, p1, v1

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    if-eq v2, v3, :cond_0

    .line 871
    const/4 v2, 0x0

    .line 888
    :goto_1
    return v2

    .line 869
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 876
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v2, v2, v3

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 878
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_2

    .line 879
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v2, v2, v3

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 880
    const/16 v2, 0xc

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 888
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 881
    :cond_2
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_3

    .line 882
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v2, v2, v3

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 883
    const/16 v2, 0xe

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    .line 885
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    goto :goto_2
.end method

.method public final nextToken()V
    .locals 4

    .prologue
    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 459
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 462
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    .line 464
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanString()V

    .line 559
    :goto_1
    return-void

    .line 469
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    .line 470
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 471
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_1

    .line 475
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 476
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto :goto_1

    .line 480
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    .line 481
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto :goto_1

    .line 485
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    sparse-switch v0, :sswitch_data_0

    .line 547
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buflen:I

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buflen:I

    if-ne v0, v1, :cond_7

    .line 548
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-ne v0, v2, :cond_6

    .line 549
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :sswitch_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 488
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanStringSingleQuote()V

    goto :goto_1

    .line 498
    :sswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_0

    .line 501
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanTrue()V

    goto :goto_1

    .line 504
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanTreeSet()V

    goto :goto_1

    .line 507
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSet()V

    goto/16 :goto_1

    .line 510
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanFalse()V

    goto/16 :goto_1

    .line 513
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNullOrNew()V

    goto/16 :goto_1

    .line 516
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanIdent()V

    goto/16 :goto_1

    .line 519
    :sswitch_8
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 520
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    .line 523
    :sswitch_9
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 524
    const/16 v0, 0xb

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    .line 527
    :sswitch_a
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 528
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    .line 531
    :sswitch_b
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 532
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    .line 535
    :sswitch_c
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 536
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    .line 539
    :sswitch_d
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 540
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    .line 543
    :sswitch_e
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 544
    const/16 v0, 0x11

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    .line 552
    :cond_6
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 553
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->eofPos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    goto/16 :goto_1

    .line 555
    :cond_7
    const-string v0, "illegal.char"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    .line 485
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_8
        0x29 -> :sswitch_9
        0x3a -> :sswitch_e
        0x44 -> :sswitch_7
        0x53 -> :sswitch_4
        0x54 -> :sswitch_3
        0x5b -> :sswitch_a
        0x5d -> :sswitch_b
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_2
        0x7b -> :sswitch_c
        0x7d -> :sswitch_d
    .end sparse-switch
.end method

.method public nextToken(I)V
    .locals 7
    .parameter "expect"

    .prologue
    const/16 v6, 0x7b

    const/16 v5, 0x5b

    const/16 v4, 0xe

    const/4 v3, 0x0

    const/16 v2, 0xc

    .line 327
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 448
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_0

    .line 329
    :sswitch_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v6, :cond_2

    .line 330
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 331
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 456
    :goto_1
    return-void

    .line 334
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v5, :cond_0

    .line 335
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 336
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_1

    .line 341
    :sswitch_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3

    .line 342
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 343
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_1

    .line 347
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_4

    .line 348
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 349
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_1

    .line 353
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_5

    .line 354
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 355
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_1

    .line 359
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 360
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_1

    .line 365
    :sswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_6

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_6

    .line 366
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 367
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    .line 368
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto :goto_1

    .line 372
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_7

    .line 373
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 374
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    .line 375
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanString()V

    goto/16 :goto_1

    .line 379
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v5, :cond_8

    .line 380
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 381
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    .line 385
    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v6, :cond_0

    .line 386
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 387
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    .line 393
    :sswitch_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_9

    .line 394
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 395
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    .line 396
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanString()V

    goto/16 :goto_1

    .line 400
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_a

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_a

    .line 401
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 402
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    .line 403
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto/16 :goto_1

    .line 407
    :cond_a
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v5, :cond_b

    .line 408
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 409
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    .line 413
    :cond_b
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v6, :cond_0

    .line 414
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 415
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    .line 420
    :sswitch_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v5, :cond_c

    .line 421
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 422
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    .line 426
    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v6, :cond_0

    .line 427
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 428
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    .line 433
    :sswitch_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_d

    .line 434
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 435
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    .line 439
    :cond_d
    :sswitch_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 440
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_1

    .line 453
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    goto/16 :goto_1

    .line 327
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0xc -> :sswitch_0
        0xe -> :sswitch_4
        0xf -> :sswitch_5
        0x10 -> :sswitch_1
        0x14 -> :sswitch_6
    .end sparse-switch
.end method

.method public final nextTokenWithColon()V
    .locals 3

    .prologue
    .line 222
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 224
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 225
    return-void

    .line 228
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_0

    .line 233
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match \':\' - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextTokenWithColon(I)V
    .locals 7
    .parameter "expect"

    .prologue
    const/16 v6, 0x30

    const/16 v5, 0x22

    const/16 v4, 0xe

    const/16 v3, 0xc

    const/4 v2, 0x0

    .line 239
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 253
    :goto_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 254
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v0, v6, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 255
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 256
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    .line 257
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    .line 315
    :goto_2
    return-void

    .line 244
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_0

    .line 249
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match \':\', actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v5, :cond_9

    .line 262
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 263
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    .line 264
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanString()V

    goto :goto_2

    .line 267
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 268
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v5, :cond_4

    .line 269
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 270
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    .line 271
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanString()V

    goto :goto_2

    .line 275
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v0, v6, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_9

    .line 276
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 277
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto :goto_2

    .line 282
    :cond_5
    if-ne p1, v3, :cond_7

    .line 283
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_6

    .line 284
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 285
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 288
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_9

    .line 289
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 290
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_2

    .line 293
    :cond_7
    if-ne p1, v4, :cond_9

    .line 294
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_8

    .line 295
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 296
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_2

    .line 300
    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_9

    .line 301
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 302
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_2

    .line 307
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 308
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_1

    .line 312
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    goto/16 :goto_2
.end method

.method public final numberString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2223
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    aget-char v0, v2, v3

    .line 2225
    .local v0, ch:C
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 2226
    .local v1, sp:I
    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    .line 2227
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 2230
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public final pos()I
    .locals 1

    .prologue
    .line 1969
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    return v0
.end method

.method public reset(ICI)V
    .locals 1
    .parameter "mark"
    .parameter "mark_ch"
    .parameter "token"

    .prologue
    .line 154
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 155
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 156
    iput p3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->resetFlag:Z

    .line 159
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->resetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->resetCount:I

    .line 160
    return-void
.end method

.method public final resetStringPosition()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 323
    return-void
.end method

.method public scanFalse()V
    .locals 3

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 1820
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x61

    if-eq v0, v1, :cond_1

    .line 1823
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1825
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    .line 1826
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1828
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x73

    if-eq v0, v1, :cond_3

    .line 1829
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1831
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    .line 1832
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1835
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1837
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 1839
    :cond_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1843
    return-void

    .line 1841
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanFieldBoolean([C)Z
    .locals 14
    .parameter "fieldName"

    .prologue
    const/16 v13, 0x65

    const/16 v12, 0x2c

    const/16 v11, 0x10

    const/4 v10, -0x1

    const/4 v6, 0x0

    .line 1219
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1221
    array-length v1, p1

    .line 1222
    .local v1, fieldNameLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1223
    aget-char v7, p1, v2

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v9, v2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_0

    .line 1224
    const/4 v7, -0x2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1304
    :goto_1
    return v5

    .line 1222
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1229
    :cond_1
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v3, v7, v1

    .line 1231
    .local v3, index:I
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    aget-char v0, v7, v3

    .line 1234
    .local v0, ch:C
    const/16 v7, 0x74

    if-ne v0, v7, :cond_5

    .line 1235
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aget-char v7, v7, v4

    const/16 v8, 0x72

    if-eq v7, v8, :cond_2

    .line 1236
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1237
    goto :goto_1

    .line 1239
    :cond_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-char v7, v7, v3

    const/16 v8, 0x75

    if-eq v7, v8, :cond_3

    .line 1240
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1241
    goto :goto_1

    .line 1243
    :cond_3
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aget-char v7, v7, v4

    if-eq v7, v13, :cond_4

    .line 1244
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1245
    goto :goto_1

    .line 1248
    :cond_4
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1249
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v7, v8

    .line 1250
    const/4 v5, 0x1

    .line 1277
    .local v5, value:Z
    :goto_2
    if-ne v0, v12, :cond_b

    .line 1278
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v6, v7

    .line 1279
    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1280
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_1

    .line 1251
    .end local v3           #index:I
    .end local v5           #value:Z
    .restart local v4       #index:I
    :cond_5
    const/16 v7, 0x66

    if-ne v0, v7, :cond_a

    .line 1252
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aget-char v7, v7, v4

    const/16 v8, 0x61

    if-eq v7, v8, :cond_6

    .line 1253
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1254
    goto :goto_1

    .line 1256
    :cond_6
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-char v7, v7, v3

    const/16 v8, 0x6c

    if-eq v7, v8, :cond_7

    .line 1257
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1258
    goto :goto_1

    .line 1260
    :cond_7
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aget-char v7, v7, v4

    const/16 v8, 0x73

    if-eq v7, v8, :cond_8

    .line 1261
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1262
    goto/16 :goto_1

    .line 1264
    :cond_8
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-char v7, v7, v3

    if-eq v7, v13, :cond_9

    .line 1265
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1266
    goto/16 :goto_1

    .line 1269
    :cond_9
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1270
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v7, v8

    .line 1271
    const/4 v5, 0x0

    .restart local v5       #value:Z
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_2

    .line 1273
    .end local v3           #index:I
    .end local v5           #value:Z
    .restart local v4       #index:I
    :cond_a
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1274
    goto/16 :goto_1

    .line 1281
    .end local v4           #index:I
    .restart local v3       #index:I
    .restart local v5       #value:Z
    :cond_b
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_10

    .line 1282
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v7, v8

    .line 1283
    if-ne v0, v12, :cond_c

    .line 1284
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1285
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v6, v6, v7

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1298
    :goto_3
    const/4 v6, 0x4

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_1

    .line 1286
    :cond_c
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_d

    .line 1287
    const/16 v6, 0xf

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1288
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v6, v6, v7

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1289
    :cond_d
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_e

    .line 1290
    const/16 v6, 0xd

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1291
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v6, v6, v7

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1292
    :cond_e
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_f

    .line 1293
    const/16 v6, 0x14

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    .line 1295
    :cond_f
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1296
    goto/16 :goto_1

    .line 1300
    :cond_10
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1301
    goto/16 :goto_1
.end method

.method public scanFieldDouble([C)D
    .locals 12
    .parameter "fieldName"

    .prologue
    .line 1465
    const/4 v9, 0x0

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1467
    array-length v1, p1

    .line 1468
    .local v1, fieldNameLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1469
    aget-char v9, p1, v2

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v11, v2

    aget-char v10, v10, v11

    if-eq v9, v10, :cond_0

    .line 1470
    const/4 v9, -0x2

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1471
    const-wide/16 v7, 0x0

    .line 1543
    :goto_1
    return-wide v7

    .line 1468
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1475
    :cond_1
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v3, v9, v1

    .line 1477
    .local v3, index:I
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    aget-char v0, v9, v3

    .line 1480
    .local v0, ch:C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_5

    const/16 v9, 0x39

    if-gt v0, v9, :cond_5

    .line 1481
    add-int/lit8 v5, v4, -0x1

    .local v5, start:I
    move v3, v4

    .line 1483
    .end local v4           #index:I
    .restart local v3       #index:I
    :goto_2
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-char v0, v9, v3

    .line 1484
    const/16 v9, 0x30

    if-lt v0, v9, :cond_2

    const/16 v9, 0x39

    if-gt v0, v9, :cond_2

    move v3, v4

    .line 1485
    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_2

    .line 1491
    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_2
    const/16 v9, 0x2e

    if-ne v0, v9, :cond_4

    .line 1492
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aget-char v0, v9, v4

    .line 1493
    const/16 v9, 0x30

    if-lt v0, v9, :cond_3

    const/16 v9, 0x39

    if-gt v0, v9, :cond_3

    .line 1495
    :goto_3
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-char v0, v9, v3

    .line 1496
    const/16 v9, 0x30

    if-lt v0, v9, :cond_4

    const/16 v9, 0x39

    if-gt v0, v9, :cond_4

    move v3, v4

    .line 1497
    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_3

    .line 1503
    :cond_3
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1504
    const-wide/16 v7, 0x0

    goto :goto_1

    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_4
    move v3, v4

    .line 1508
    .end local v4           #index:I
    .restart local v3       #index:I
    add-int/lit8 v9, v3, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1509
    new-instance v6, Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    sub-int v10, v3, v5

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v6, v9, v5, v10}, Ljava/lang/String;-><init>([CII)V

    .line 1510
    .local v6, text:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 1516
    .local v7, value:D
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_6

    .line 1517
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v9, v10

    .line 1518
    const/4 v9, 0x3

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1519
    const/16 v9, 0x10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_1

    .line 1512
    .end local v3           #index:I
    .end local v5           #start:I
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #value:D
    .restart local v4       #index:I
    :cond_5
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1513
    const-wide/16 v7, 0x0

    goto :goto_1

    .line 1520
    .end local v4           #index:I
    .restart local v3       #index:I
    .restart local v5       #start:I
    .restart local v6       #text:Ljava/lang/String;
    .restart local v7       #value:D
    :cond_6
    const/16 v9, 0x7d

    if-ne v0, v9, :cond_b

    .line 1521
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v9, v10

    .line 1522
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_7

    .line 1523
    const/16 v9, 0x10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1524
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v9, v9, v10

    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1537
    :goto_4
    const/4 v9, 0x4

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_1

    .line 1525
    :cond_7
    const/16 v9, 0x5d

    if-ne v0, v9, :cond_8

    .line 1526
    const/16 v9, 0xf

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1527
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v9, v9, v10

    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 1528
    :cond_8
    const/16 v9, 0x7d

    if-ne v0, v9, :cond_9

    .line 1529
    const/16 v9, 0xd

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1530
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v9, v9, v10

    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 1531
    :cond_9
    const/16 v9, 0x1a

    if-ne v0, v9, :cond_a

    .line 1532
    const/16 v9, 0x14

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_4

    .line 1534
    :cond_a
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1535
    const-wide/16 v7, 0x0

    goto/16 :goto_1

    .line 1539
    :cond_b
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1540
    const-wide/16 v7, 0x0

    goto/16 :goto_1
.end method

.method public scanFieldFloat([C)F
    .locals 11
    .parameter "fieldName"

    .prologue
    .line 1378
    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1380
    array-length v1, p1

    .line 1381
    .local v1, fieldNameLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1382
    aget-char v8, p1, v2

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v10, v2

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_0

    .line 1383
    const/4 v8, -0x2

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1384
    const/4 v7, 0x0

    .line 1457
    :goto_1
    return v7

    .line 1381
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1388
    :cond_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v3, v8, v1

    .line 1390
    .local v3, index:I
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    aget-char v0, v8, v3

    .line 1393
    .local v0, ch:C
    const/16 v8, 0x30

    if-lt v0, v8, :cond_5

    const/16 v8, 0x39

    if-gt v0, v8, :cond_5

    .line 1394
    add-int/lit8 v5, v4, -0x1

    .local v5, start:I
    move v3, v4

    .line 1396
    .end local v4           #index:I
    .restart local v3       #index:I
    :goto_2
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-char v0, v8, v3

    .line 1397
    const/16 v8, 0x30

    if-lt v0, v8, :cond_2

    const/16 v8, 0x39

    if-gt v0, v8, :cond_2

    move v3, v4

    .line 1398
    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_2

    .line 1404
    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_2
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_4

    .line 1405
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aget-char v0, v8, v4

    .line 1406
    const/16 v8, 0x30

    if-lt v0, v8, :cond_3

    const/16 v8, 0x39

    if-gt v0, v8, :cond_3

    .line 1408
    :goto_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-char v0, v8, v3

    .line 1409
    const/16 v8, 0x30

    if-lt v0, v8, :cond_4

    const/16 v8, 0x39

    if-gt v0, v8, :cond_4

    move v3, v4

    .line 1410
    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_3

    .line 1416
    :cond_3
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1417
    const/4 v7, 0x0

    goto :goto_1

    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_4
    move v3, v4

    .line 1421
    .end local v4           #index:I
    .restart local v3       #index:I
    add-int/lit8 v8, v3, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1422
    new-instance v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    sub-int v9, v3, v5

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v6, v8, v5, v9}, Ljava/lang/String;-><init>([CII)V

    .line 1423
    .local v6, text:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 1429
    .local v7, value:F
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_6

    .line 1430
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v8, v9

    .line 1431
    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1432
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_1

    .line 1425
    .end local v3           #index:I
    .end local v5           #start:I
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #value:F
    .restart local v4       #index:I
    :cond_5
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1426
    const/4 v7, 0x0

    goto :goto_1

    .line 1434
    .end local v4           #index:I
    .restart local v3       #index:I
    .restart local v5       #start:I
    .restart local v6       #text:Ljava/lang/String;
    .restart local v7       #value:F
    :cond_6
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_b

    .line 1435
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v8, v9

    .line 1436
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_7

    .line 1437
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1438
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v8, v8, v9

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1451
    :goto_4
    const/4 v8, 0x4

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_1

    .line 1439
    :cond_7
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_8

    .line 1440
    const/16 v8, 0xf

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1441
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v8, v8, v9

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 1442
    :cond_8
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_9

    .line 1443
    const/16 v8, 0xd

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1444
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v8, v8, v9

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 1445
    :cond_9
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_a

    .line 1446
    const/16 v8, 0x14

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_4

    .line 1448
    :cond_a
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1449
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1453
    :cond_b
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1454
    const/4 v7, 0x0

    goto/16 :goto_1
.end method

.method public scanFieldInt([C)I
    .locals 14
    .parameter "fieldName"

    .prologue
    const/16 v13, 0x30

    const/16 v12, 0x2c

    const/16 v11, 0x10

    const/4 v10, -0x1

    const/4 v6, 0x0

    .line 1150
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1152
    array-length v1, p1

    .line 1153
    .local v1, fieldNameLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1154
    aget-char v7, p1, v2

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v9, v2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_1

    .line 1155
    const/4 v7, -0x2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1215
    :cond_0
    :goto_1
    return v5

    .line 1153
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1160
    :cond_2
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v3, v7, v1

    .line 1162
    .local v3, index:I
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    aget-char v0, v7, v3

    .line 1165
    .local v0, ch:C
    if-lt v0, v13, :cond_5

    const/16 v7, 0x39

    if-gt v0, v7, :cond_5

    .line 1166
    sget-object v7, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v7, v0

    .local v5, value:I
    move v3, v4

    .line 1168
    .end local v4           #index:I
    .restart local v3       #index:I
    :goto_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-char v0, v7, v3

    .line 1169
    if-lt v0, v13, :cond_3

    const/16 v7, 0x39

    if-gt v0, v7, :cond_3

    .line 1170
    mul-int/lit8 v7, v5, 0xa

    sget-object v8, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v8, v8, v0

    add-int v5, v7, v8

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_2

    .line 1171
    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_3
    const/16 v7, 0x2e

    if-ne v0, v7, :cond_4

    .line 1172
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1173
    goto :goto_1

    .line 1175
    :cond_4
    add-int/lit8 v7, v4, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1179
    if-gez v5, :cond_6

    .line 1180
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1181
    goto :goto_1

    .line 1184
    .end local v5           #value:I
    :cond_5
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1185
    goto :goto_1

    .line 1188
    .restart local v5       #value:I
    :cond_6
    if-ne v0, v12, :cond_7

    .line 1189
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v6, v7

    .line 1190
    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1191
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_1

    .line 1195
    :cond_7
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_0

    .line 1196
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v7, v8

    .line 1197
    if-ne v0, v12, :cond_8

    .line 1198
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1199
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v6, v6, v7

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1212
    :goto_3
    const/4 v6, 0x4

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    .line 1200
    :cond_8
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_9

    .line 1201
    const/16 v6, 0xf

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1202
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v6, v6, v7

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1203
    :cond_9
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_a

    .line 1204
    const/16 v6, 0xd

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1205
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v6, v6, v7

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1206
    :cond_a
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_b

    .line 1207
    const/16 v6, 0x14

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    .line 1209
    :cond_b
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1210
    goto/16 :goto_1
.end method

.method public scanFieldLong([C)J
    .locals 11
    .parameter "fieldName"

    .prologue
    .line 1308
    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1310
    array-length v1, p1

    .line 1311
    .local v1, fieldNameLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1312
    aget-char v7, p1, v2

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v9, v2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_0

    .line 1313
    const/4 v7, -0x2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1314
    const-wide/16 v5, 0x0

    .line 1374
    :goto_1
    return-wide v5

    .line 1311
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1318
    :cond_1
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v3, v7, v1

    .line 1320
    .local v3, index:I
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    aget-char v0, v7, v3

    .line 1323
    .local v0, ch:C
    const/16 v7, 0x30

    if-lt v0, v7, :cond_4

    const/16 v7, 0x39

    if-gt v0, v7, :cond_4

    .line 1324
    sget-object v7, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v7, v7, v0

    int-to-long v5, v7

    .local v5, value:J
    move v3, v4

    .line 1326
    .end local v4           #index:I
    .restart local v3       #index:I
    :goto_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-char v0, v7, v3

    .line 1327
    const/16 v7, 0x30

    if-lt v0, v7, :cond_2

    const/16 v7, 0x39

    if-gt v0, v7, :cond_2

    .line 1328
    const-wide/16 v7, 0xa

    mul-long/2addr v7, v5

    sget-object v9, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v9, v9, v0

    int-to-long v9, v9

    add-long v5, v7, v9

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_2

    .line 1329
    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_2
    const/16 v7, 0x2e

    if-ne v0, v7, :cond_3

    .line 1330
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1331
    const-wide/16 v5, 0x0

    goto :goto_1

    .line 1333
    :cond_3
    add-int/lit8 v7, v4, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1337
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_5

    .line 1338
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1339
    const-wide/16 v5, 0x0

    goto :goto_1

    .line 1342
    .end local v5           #value:J
    :cond_4
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1343
    const-wide/16 v5, 0x0

    goto :goto_1

    .line 1346
    .restart local v5       #value:J
    :cond_5
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_6

    .line 1347
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v7, v8

    .line 1348
    const/4 v7, 0x3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1349
    const/16 v7, 0x10

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_1

    .line 1351
    :cond_6
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_b

    .line 1352
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v7, v8

    .line 1353
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_7

    .line 1354
    const/16 v7, 0x10

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1355
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v7, v7, v8

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1368
    :goto_3
    const/4 v7, 0x4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_1

    .line 1356
    :cond_7
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_8

    .line 1357
    const/16 v7, 0xf

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1358
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v7, v7, v8

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1359
    :cond_8
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_9

    .line 1360
    const/16 v7, 0xd

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1361
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v7, v7, v8

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1362
    :cond_9
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_a

    .line 1363
    const/16 v7, 0x14

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    .line 1365
    :cond_a
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1366
    const-wide/16 v5, 0x0

    goto/16 :goto_1

    .line 1370
    :cond_b
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1371
    const-wide/16 v5, 0x0

    goto/16 :goto_1
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 14
    .parameter "fieldName"

    .prologue
    const/16 v13, 0x7d

    const/16 v12, 0x2c

    const/16 v11, 0x22

    const/4 v10, -0x1

    .line 894
    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 896
    array-length v1, p1

    .line 897
    .local v1, fieldNameLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 898
    aget-char v7, p1, v2

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v9, v2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_0

    .line 899
    const/4 v7, -0x2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 901
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v6

    .line 960
    :goto_1
    return-object v6

    .line 897
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 905
    :cond_1
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v3, v7, v1

    .line 907
    .local v3, index:I
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    aget-char v0, v7, v3

    .line 908
    .local v0, ch:C
    if-eq v0, v11, :cond_2

    .line 909
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 911
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 915
    :cond_2
    move v5, v4

    .local v5, start:I
    move v3, v4

    .line 917
    .end local v4           #index:I
    .restart local v3       #index:I
    :goto_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-char v0, v7, v3

    .line 918
    if-ne v0, v11, :cond_3

    .line 919
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 920
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v7, v8

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 921
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    sub-int v8, v4, v5

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v6, v7, v5, v8}, Ljava/lang/String;-><init>([CII)V

    .line 932
    .local v6, strVal:Ljava/lang/String;
    if-ne v0, v12, :cond_4

    .line 933
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v7, v7, v8

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 934
    const/4 v7, 0x3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    .line 925
    .end local v6           #strVal:Ljava/lang/String;
    :cond_3
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_a

    .line 926
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 928
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 936
    .restart local v6       #strVal:Ljava/lang/String;
    :cond_4
    if-ne v0, v13, :cond_9

    .line 937
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v7, v8

    .line 938
    if-ne v0, v12, :cond_5

    .line 939
    const/16 v7, 0x10

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 940
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v7, v7, v8

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 953
    :goto_3
    const/4 v7, 0x4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    .line 941
    :cond_5
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_6

    .line 942
    const/16 v7, 0xf

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 943
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v7, v7, v8

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 944
    :cond_6
    if-ne v0, v13, :cond_7

    .line 945
    const/16 v7, 0xd

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 946
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v7, v7, v8

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 947
    :cond_7
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_8

    .line 948
    const/16 v7, 0x14

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    .line 950
    :cond_8
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 951
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 955
    :cond_9
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 957
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .end local v6           #strVal:Ljava/lang/String;
    :cond_a
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_2
.end method

.method public scanFieldStringArray([C)Ljava/util/ArrayList;
    .locals 1
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1040
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 12
    .parameter "fieldName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1045
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1049
    const-class v9, Ljava/util/HashSet;

    invoke-virtual {p2, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1050
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1061
    .local v6, list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    array-length v2, p1

    .line 1062
    .local v2, fieldNameLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1063
    aget-char v9, p1, v3

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v11, v3

    aget-char v10, v10, v11

    if-eq v9, v10, :cond_2

    .line 1064
    const/4 v9, -0x2

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1065
    const/4 v6, 0x0

    .line 1146
    .end local v6           #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_2
    return-object v6

    .line 1051
    .end local v2           #fieldNameLength:I
    .end local v3           #i:I
    :cond_0
    const-class v9, Ljava/util/ArrayList;

    invoke-virtual {p2, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1052
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6       #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_0

    .line 1055
    .end local v6           #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v6       #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_0

    .line 1056
    .end local v6           #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 1057
    .local v1, e:Ljava/lang/Exception;
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1062
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #fieldNameLength:I
    .restart local v3       #i:I
    .restart local v6       #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1069
    :cond_3
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v4, v9, v2

    .line 1071
    .local v4, index:I
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aget-char v0, v9, v4

    .line 1073
    .local v0, ch:C
    const/16 v9, 0x5b

    if-eq v0, v9, :cond_4

    .line 1074
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1075
    const/4 v6, 0x0

    goto :goto_2

    .line 1078
    :cond_4
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    aget-char v0, v9, v5

    .line 1081
    :goto_3
    const/16 v9, 0x22

    if-eq v0, v9, :cond_5

    .line 1082
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1083
    const/4 v6, 0x0

    goto :goto_2

    .line 1087
    :cond_5
    move v7, v4

    .line 1089
    .local v7, start:I
    :goto_4
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    aget-char v0, v9, v4

    .line 1090
    const/16 v9, 0x22

    if-ne v0, v9, :cond_6

    .line 1091
    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    sub-int v10, v5, v7

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v8, v9, v7, v10}, Ljava/lang/String;-><init>([CII)V

    .line 1092
    .local v8, strVal:Ljava/lang/String;
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1093
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    aget-char v0, v9, v5

    .line 1103
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_7

    .line 1104
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    aget-char v0, v9, v4

    move v4, v5

    .line 1105
    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_3

    .line 1097
    .end local v4           #index:I
    .end local v8           #strVal:Ljava/lang/String;
    .restart local v5       #index:I
    :cond_6
    const/16 v9, 0x5c

    if-ne v0, v9, :cond_f

    .line 1098
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1099
    const/4 v6, 0x0

    goto :goto_2

    .line 1108
    .end local v5           #index:I
    .restart local v4       #index:I
    .restart local v8       #strVal:Ljava/lang/String;
    :cond_7
    const/16 v9, 0x5d

    if-ne v0, v9, :cond_8

    .line 1109
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    aget-char v0, v9, v4

    .line 1117
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1118
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_9

    .line 1119
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v9, v9, v10

    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1120
    const/4 v9, 0x3

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_2

    .line 1113
    .end local v5           #index:I
    .restart local v4       #index:I
    :cond_8
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1114
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1122
    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_9
    const/16 v9, 0x7d

    if-ne v0, v9, :cond_e

    .line 1123
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v9, v10

    .line 1124
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_a

    .line 1125
    const/16 v9, 0x10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1126
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v9, v9, v10

    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1140
    :goto_5
    const/4 v9, 0x4

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_2

    .line 1127
    :cond_a
    const/16 v9, 0x5d

    if-ne v0, v9, :cond_b

    .line 1128
    const/16 v9, 0xf

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1129
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v9, v9, v10

    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    .line 1130
    :cond_b
    const/16 v9, 0x7d

    if-ne v0, v9, :cond_c

    .line 1131
    const/16 v9, 0xd

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1132
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v9, v9, v10

    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    .line 1133
    :cond_c
    const/16 v9, 0x1a

    if-ne v0, v9, :cond_d

    .line 1134
    const/16 v9, 0x14

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1135
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    .line 1137
    :cond_d
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1138
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1142
    :cond_e
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1143
    const/4 v6, 0x0

    goto/16 :goto_2

    .end local v8           #strVal:Ljava/lang/String;
    :cond_f
    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto/16 :goto_4
.end method

.method public scanFieldSymbol([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 11
    .parameter "fieldName"
    .parameter "symbolTable"

    .prologue
    .line 971
    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 973
    array-length v1, p1

    .line 974
    .local v1, fieldNameLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 975
    aget-char v8, p1, v3

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v10, v3

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_0

    .line 976
    const/4 v8, -0x2

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 977
    const/4 v7, 0x0

    .line 1036
    :goto_1
    return-object v7

    .line 974
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 981
    :cond_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v4, v8, v1

    .line 983
    .local v4, index:I
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aget-char v0, v8, v4

    .line 984
    .local v0, ch:C
    const/16 v8, 0x22

    if-eq v0, v8, :cond_2

    .line 985
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 986
    const/4 v7, 0x0

    goto :goto_1

    .line 990
    :cond_2
    move v6, v5

    .line 991
    .local v6, start:I
    const/4 v2, 0x0

    .local v2, hash:I
    move v4, v5

    .line 993
    .end local v5           #index:I
    .restart local v4       #index:I
    :goto_2
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    aget-char v0, v8, v4

    .line 994
    const/16 v8, 0x22

    if-ne v0, v8, :cond_3

    .line 995
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 996
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v8, v9

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 997
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    sub-int v9, v5, v6

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p2, v8, v6, v9, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v7

    .line 1009
    .local v7, strVal:Ljava/lang/String;
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_4

    .line 1010
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v8, v8, v9

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1011
    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    .line 1001
    .end local v7           #strVal:Ljava/lang/String;
    :cond_3
    mul-int/lit8 v8, v2, 0x1f

    add-int v2, v8, v0

    .line 1003
    const/16 v8, 0x5c

    if-ne v0, v8, :cond_a

    .line 1004
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1005
    const/4 v7, 0x0

    goto :goto_1

    .line 1013
    .restart local v7       #strVal:Ljava/lang/String;
    :cond_4
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_9

    .line 1014
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v8, v9

    .line 1015
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_5

    .line 1016
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1017
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v8, v8, v9

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1030
    :goto_3
    const/4 v8, 0x4

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    .line 1018
    :cond_5
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_6

    .line 1019
    const/16 v8, 0xf

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1020
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v8, v8, v9

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1021
    :cond_6
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_7

    .line 1022
    const/16 v8, 0xd

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1023
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v8, v8, v9

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1024
    :cond_7
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_8

    .line 1025
    const/16 v8, 0x14

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    .line 1027
    :cond_8
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1028
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1032
    :cond_9
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1033
    const/4 v7, 0x0

    goto/16 :goto_1

    .end local v7           #strVal:Ljava/lang/String;
    :cond_a
    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto/16 :goto_2
.end method

.method public scanISO8601DateIfMatch()Z
    .locals 34

    .prologue
    .line 2282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buflen:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    sub-int v21, v31, v32

    .line 2284
    .local v21, rest:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_0

    .line 2285
    const/16 v31, 0x0

    .line 2467
    :goto_0
    return v31

    .line 2288
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    aget-char v26, v31, v32

    .line 2289
    .local v26, y0:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    aget-char v27, v31, v32

    .line 2290
    .local v27, y1:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x2

    aget-char v28, v31, v32

    .line 2291
    .local v28, y2:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x3

    aget-char v29, v31, v32

    .line 2292
    .local v29, y3:C
    const/16 v31, 0x31

    move/from16 v0, v26

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    const/16 v31, 0x32

    move/from16 v0, v26

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    .line 2293
    const/16 v31, 0x0

    goto :goto_0

    .line 2295
    :cond_1
    const/16 v31, 0x30

    move/from16 v0, v27

    move/from16 v1, v31

    if-lt v0, v1, :cond_2

    const/16 v31, 0x39

    move/from16 v0, v27

    move/from16 v1, v31

    if-le v0, v1, :cond_3

    .line 2296
    :cond_2
    const/16 v31, 0x0

    goto :goto_0

    .line 2298
    :cond_3
    const/16 v31, 0x30

    move/from16 v0, v28

    move/from16 v1, v31

    if-lt v0, v1, :cond_4

    const/16 v31, 0x39

    move/from16 v0, v28

    move/from16 v1, v31

    if-le v0, v1, :cond_5

    .line 2299
    :cond_4
    const/16 v31, 0x0

    goto :goto_0

    .line 2301
    :cond_5
    const/16 v31, 0x30

    move/from16 v0, v29

    move/from16 v1, v31

    if-lt v0, v1, :cond_6

    const/16 v31, 0x39

    move/from16 v0, v29

    move/from16 v1, v31

    if-le v0, v1, :cond_7

    .line 2302
    :cond_6
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2305
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x4

    aget-char v31, v31, v32

    const/16 v32, 0x2d

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_8

    .line 2306
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2309
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x5

    aget-char v3, v31, v32

    .line 2310
    .local v3, M0:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x6

    aget-char v4, v31, v32

    .line 2311
    .local v4, M1:C
    const/16 v31, 0x30

    move/from16 v0, v31

    if-ne v3, v0, :cond_a

    .line 2312
    const/16 v31, 0x31

    move/from16 v0, v31

    if-lt v4, v0, :cond_9

    const/16 v31, 0x39

    move/from16 v0, v31

    if-le v4, v0, :cond_c

    .line 2313
    :cond_9
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2315
    :cond_a
    const/16 v31, 0x31

    move/from16 v0, v31

    if-ne v3, v0, :cond_b

    .line 2316
    const/16 v31, 0x30

    move/from16 v0, v31

    if-eq v4, v0, :cond_c

    const/16 v31, 0x31

    move/from16 v0, v31

    if-eq v4, v0, :cond_c

    const/16 v31, 0x32

    move/from16 v0, v31

    if-eq v4, v0, :cond_c

    .line 2317
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2320
    :cond_b
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2323
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x7

    aget-char v31, v31, v32

    const/16 v32, 0x2d

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_d

    .line 2324
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2327
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x8

    aget-char v8, v31, v32

    .line 2328
    .local v8, d0:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x9

    aget-char v9, v31, v32

    .line 2329
    .local v9, d1:C
    const/16 v31, 0x30

    move/from16 v0, v31

    if-ne v8, v0, :cond_f

    .line 2330
    const/16 v31, 0x31

    move/from16 v0, v31

    if-lt v9, v0, :cond_e

    const/16 v31, 0x39

    move/from16 v0, v31

    if-le v9, v0, :cond_14

    .line 2331
    :cond_e
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2333
    :cond_f
    const/16 v31, 0x31

    move/from16 v0, v31

    if-eq v8, v0, :cond_10

    const/16 v31, 0x32

    move/from16 v0, v31

    if-ne v8, v0, :cond_12

    .line 2334
    :cond_10
    const/16 v31, 0x30

    move/from16 v0, v31

    if-lt v9, v0, :cond_11

    const/16 v31, 0x39

    move/from16 v0, v31

    if-le v9, v0, :cond_14

    .line 2335
    :cond_11
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2337
    :cond_12
    const/16 v31, 0x33

    move/from16 v0, v31

    if-ne v8, v0, :cond_13

    .line 2338
    const/16 v31, 0x30

    move/from16 v0, v31

    if-eq v9, v0, :cond_14

    const/16 v31, 0x31

    move/from16 v0, v31

    if-eq v9, v0, :cond_14

    .line 2339
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2342
    :cond_13
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2345
    :cond_14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    .line 2346
    .local v15, local:Ljava/util/Locale;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v0, v15}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 2347
    sget-object v31, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v31, v31, v26

    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v31, v0

    sget-object v32, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v32, v32, v27

    mul-int/lit8 v32, v32, 0x64

    add-int v31, v31, v32

    sget-object v32, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v32, v32, v28

    mul-int/lit8 v32, v32, 0xa

    add-int v31, v31, v32

    sget-object v32, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v32, v32, v29

    add-int v30, v31, v32

    .line 2348
    .local v30, year:I
    sget-object v31, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v31, v31, v3

    mul-int/lit8 v31, v31, 0xa

    sget-object v32, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v32, v32, v4

    add-int v31, v31, v32

    add-int/lit8 v20, v31, -0x1

    .line 2349
    .local v20, month:I
    sget-object v31, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v31, v31, v8

    mul-int/lit8 v31, v31, 0xa

    sget-object v32, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v32, v32, v9

    add-int v10, v31, v32

    .line 2350
    .local v10, day:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v31, v0

    const/16 v32, 0x5

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 2354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0xa

    aget-char v25, v31, v32

    .line 2355
    .local v25, t:C
    const/16 v31, 0x54

    move/from16 v0, v25

    move/from16 v1, v31

    if-ne v0, v1, :cond_15

    .line 2356
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_18

    .line 2357
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2359
    :cond_15
    const/16 v31, 0x22

    move/from16 v0, v25

    move/from16 v1, v31

    if-eq v0, v1, :cond_16

    const/16 v31, 0x1a

    move/from16 v0, v25

    move/from16 v1, v31

    if-ne v0, v1, :cond_17

    .line 2360
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v31, v0

    const/16 v32, 0xb

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Ljava/util/Calendar;->set(II)V

    .line 2361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v31, v0

    const/16 v32, 0xc

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Ljava/util/Calendar;->set(II)V

    .line 2362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v31, v0

    const/16 v32, 0xd

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Ljava/util/Calendar;->set(II)V

    .line 2363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v31, v0

    const/16 v32, 0xe

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Ljava/util/Calendar;->set(II)V

    .line 2365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0xa

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2367
    const/16 v31, 0x5

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2368
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 2370
    :cond_17
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2373
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0xb

    aget-char v12, v31, v32

    .line 2374
    .local v12, h0:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0xc

    aget-char v13, v31, v32

    .line 2375
    .local v13, h1:C
    const/16 v31, 0x30

    move/from16 v0, v31

    if-ne v12, v0, :cond_1a

    .line 2376
    const/16 v31, 0x30

    move/from16 v0, v31

    if-lt v13, v0, :cond_19

    const/16 v31, 0x39

    move/from16 v0, v31

    if-le v13, v0, :cond_1f

    .line 2377
    :cond_19
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2379
    :cond_1a
    const/16 v31, 0x31

    move/from16 v0, v31

    if-ne v12, v0, :cond_1c

    .line 2380
    const/16 v31, 0x30

    move/from16 v0, v31

    if-lt v13, v0, :cond_1b

    const/16 v31, 0x39

    move/from16 v0, v31

    if-le v13, v0, :cond_1f

    .line 2381
    :cond_1b
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2383
    :cond_1c
    const/16 v31, 0x32

    move/from16 v0, v31

    if-ne v12, v0, :cond_1e

    .line 2384
    const/16 v31, 0x30

    move/from16 v0, v31

    if-lt v13, v0, :cond_1d

    const/16 v31, 0x34

    move/from16 v0, v31

    if-le v13, v0, :cond_1f

    .line 2385
    :cond_1d
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2388
    :cond_1e
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2391
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0xd

    aget-char v31, v31, v32

    const/16 v32, 0x3a

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_20

    .line 2392
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2395
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0xe

    aget-char v16, v31, v32

    .line 2396
    .local v16, m0:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0xf

    aget-char v17, v31, v32

    .line 2397
    .local v17, m1:C
    const/16 v31, 0x30

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_22

    const/16 v31, 0x35

    move/from16 v0, v16

    move/from16 v1, v31

    if-gt v0, v1, :cond_22

    .line 2398
    const/16 v31, 0x30

    move/from16 v0, v17

    move/from16 v1, v31

    if-lt v0, v1, :cond_21

    const/16 v31, 0x39

    move/from16 v0, v17

    move/from16 v1, v31

    if-le v0, v1, :cond_24

    .line 2399
    :cond_21
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2401
    :cond_22
    const/16 v31, 0x36

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_23

    .line 2402
    const/16 v31, 0x30

    move/from16 v0, v17

    move/from16 v1, v31

    if-eq v0, v1, :cond_24

    .line 2403
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2406
    :cond_23
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2409
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x10

    aget-char v31, v31, v32

    const/16 v32, 0x3a

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_25

    .line 2410
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2413
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x11

    aget-char v22, v31, v32

    .line 2414
    .local v22, s0:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x12

    aget-char v23, v31, v32

    .line 2415
    .local v23, s1:C
    const/16 v31, 0x30

    move/from16 v0, v22

    move/from16 v1, v31

    if-lt v0, v1, :cond_27

    const/16 v31, 0x35

    move/from16 v0, v22

    move/from16 v1, v31

    if-gt v0, v1, :cond_27

    .line 2416
    const/16 v31, 0x30

    move/from16 v0, v23

    move/from16 v1, v31

    if-lt v0, v1, :cond_26

    const/16 v31, 0x39

    move/from16 v0, v23

    move/from16 v1, v31

    if-le v0, v1, :cond_29

    .line 2417
    :cond_26
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2419
    :cond_27
    const/16 v31, 0x36

    move/from16 v0, v22

    move/from16 v1, v31

    if-ne v0, v1, :cond_28

    .line 2420
    const/16 v31, 0x30

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_29

    .line 2421
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2424
    :cond_28
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2427
    :cond_29
    sget-object v31, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v31, v31, v12

    mul-int/lit8 v31, v31, 0xa

    sget-object v32, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v32, v32, v13

    add-int v14, v31, v32

    .line 2428
    .local v14, hour:I
    sget-object v31, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v31, v31, v16

    mul-int/lit8 v31, v31, 0xa

    sget-object v32, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v32, v32, v17

    add-int v19, v31, v32

    .line 2429
    .local v19, minute:I
    sget-object v31, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v31, v31, v22

    mul-int/lit8 v31, v31, 0xa

    sget-object v32, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v32, v32, v23

    add-int v24, v31, v32

    .line 2430
    .local v24, seconds:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v31, v0

    const/16 v32, 0xb

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v1, v14}, Ljava/util/Calendar;->set(II)V

    .line 2431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v31, v0

    const/16 v32, 0xc

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v31, v0

    const/16 v32, 0xd

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x13

    aget-char v11, v31, v32

    .line 2435
    .local v11, dot:C
    const/16 v31, 0x2e

    move/from16 v0, v31

    if-ne v11, v0, :cond_2a

    .line 2436
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_2b

    .line 2437
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2440
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v31, v0

    const/16 v32, 0xe

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Ljava/util/Calendar;->set(II)V

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x13

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2444
    const/16 v31, 0x5

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2445
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 2448
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x14

    aget-char v5, v31, v32

    .line 2449
    .local v5, S0:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x15

    aget-char v6, v31, v32

    .line 2450
    .local v6, S1:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x16

    aget-char v7, v31, v32

    .line 2451
    .local v7, S2:C
    const/16 v31, 0x30

    move/from16 v0, v31

    if-lt v5, v0, :cond_2c

    const/16 v31, 0x39

    move/from16 v0, v31

    if-le v5, v0, :cond_2d

    .line 2452
    :cond_2c
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2454
    :cond_2d
    const/16 v31, 0x30

    move/from16 v0, v31

    if-lt v6, v0, :cond_2e

    const/16 v31, 0x39

    move/from16 v0, v31

    if-le v6, v0, :cond_2f

    .line 2455
    :cond_2e
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2457
    :cond_2f
    const/16 v31, 0x30

    move/from16 v0, v31

    if-lt v7, v0, :cond_30

    const/16 v31, 0x39

    move/from16 v0, v31

    if-le v7, v0, :cond_31

    .line 2458
    :cond_30
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2461
    :cond_31
    sget-object v31, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v31, v31, v5

    mul-int/lit8 v31, v31, 0x64

    sget-object v32, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v32, v32, v6

    mul-int/lit8 v32, v32, 0xa

    add-int v31, v31, v32

    sget-object v32, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v32, v32, v7

    add-int v18, v31, v32

    .line 2462
    .local v18, millis:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v31, v0

    const/16 v32, 0xe

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x17

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2466
    const/16 v31, 0x5

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2467
    const/16 v31, 0x1

    goto/16 :goto_0
.end method

.method public scanIdent()V
    .locals 4

    .prologue
    .line 1846
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .line 1847
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    .line 1850
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 1852
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v2, v2, v3

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1853
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1857
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 1859
    .local v0, ident:Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->keywods:Lcom/alibaba/fastjson/parser/Keywords;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/parser/Keywords;->getKeyword(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1860
    .local v1, tok:Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 1861
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1865
    :goto_0
    return-void

    .line 1863
    :cond_1
    const/16 v2, 0x12

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0
.end method

.method public scanNullOrNew()V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    .line 1777
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    .line 1778
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse null or new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x75

    if-ne v0, v1, :cond_5

    .line 1782
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1783
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    .line 1784
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1786
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    .line 1787
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1789
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1791
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v5, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v7, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v4, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v6, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v3, :cond_4

    .line 1793
    :cond_3
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1816
    :goto_0
    return-void

    .line 1795
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1800
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    .line 1801
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse e"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1804
    :cond_6
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1805
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x77

    if-eq v0, v1, :cond_7

    .line 1806
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse w"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1808
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1810
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v5, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v7, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v4, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v6, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v3, :cond_9

    .line 1812
    :cond_8
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    .line 1814
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanNumber()V
    .locals 8

    .prologue
    const/16 v7, 0x46

    const/16 v6, 0x44

    const/16 v5, 0x2d

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 1870
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .line 1872
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v5, :cond_0

    .line 1873
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 1874
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1878
    :cond_0
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v1, v3, :cond_1

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v1, v4, :cond_1

    .line 1879
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 1883
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_0

    .line 1886
    :cond_1
    const/4 v0, 0x0

    .line 1888
    .local v0, isDouble:Z
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    .line 1889
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 1890
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1891
    const/4 v0, 0x1

    .line 1894
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v1, v3, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v1, v4, :cond_2

    .line 1895
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 1899
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_1

    .line 1903
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_4

    .line 1904
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 1905
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1945
    :cond_3
    :goto_2
    if-eqz v0, :cond_f

    .line 1946
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1950
    :goto_3
    return-void

    .line 1906
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x53

    if-ne v1, v2, :cond_5

    .line 1907
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 1908
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 1909
    :cond_5
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x42

    if-ne v1, v2, :cond_6

    .line 1910
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 1911
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 1912
    :cond_6
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v7, :cond_7

    .line 1913
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 1914
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1915
    const/4 v0, 0x1

    goto :goto_2

    .line 1916
    :cond_7
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v6, :cond_8

    .line 1917
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 1918
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1919
    const/4 v0, 0x1

    goto :goto_2

    .line 1920
    :cond_8
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x65

    if-eq v1, v2, :cond_9

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x45

    if-ne v1, v2, :cond_3

    .line 1921
    :cond_9
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 1922
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1924
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_a

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v5, :cond_b

    .line 1925
    :cond_a
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 1926
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1930
    :cond_b
    :goto_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v1, v3, :cond_c

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v1, v4, :cond_c

    .line 1931
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 1935
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 1938
    :cond_c
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v6, :cond_d

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v7, :cond_e

    .line 1939
    :cond_d
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1942
    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1948
    :cond_f
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_3
.end method

.method public scanSet()V
    .locals 3

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    .line 1726
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1728
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    .line 1729
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1731
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_2

    .line 1732
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1735
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1737
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_4

    .line 1738
    :cond_3
    const/16 v0, 0x15

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1742
    return-void

    .line 1740
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan set error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanString()V
    .locals 18

    .prologue
    .line 666
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .line 667
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    .line 670
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v13, v14

    .line 672
    .local v1, ch:C
    const/16 v13, 0x22

    if-ne v1, v13, :cond_0

    .line 756
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 757
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v13, v13, v14

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 758
    return-void

    .line 676
    :cond_0
    const/16 v13, 0x5c

    if-ne v1, v13, :cond_4

    .line 677
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v13, :cond_3

    .line 678
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    .line 680
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v14, v14

    if-lt v13, v14, :cond_2

    .line 681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v13, v13

    mul-int/lit8 v2, v13, 0x2

    .line 682
    .local v2, newCapcity:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    if-le v13, v2, :cond_1

    .line 683
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 685
    :cond_1
    new-array v3, v2, [C

    .line 686
    .local v3, newsbuf:[C
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v14, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 687
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    .line 690
    .end local v2           #newCapcity:I
    .end local v3           #newsbuf:[C
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    move/from16 v17, v0

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 693
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v13, v14

    .line 695
    sparse-switch v1, :sswitch_data_0

    .line 738
    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 739
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unclosed string : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 697
    :sswitch_0
    const/16 v13, 0x22

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 700
    :sswitch_1
    const/16 v13, 0x5c

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 703
    :sswitch_2
    const/16 v13, 0x2f

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 706
    :sswitch_3
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 710
    :sswitch_4
    const/16 v13, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 713
    :sswitch_5
    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 716
    :sswitch_6
    const/16 v13, 0xd

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 719
    :sswitch_7
    const/16 v13, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 722
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v13, v14

    move v9, v1

    .line 723
    .local v9, x1:C
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v13, v14

    move v10, v1

    .line 725
    .local v10, x2:C
    sget-object v13, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v13, v13, v9

    mul-int/lit8 v13, v13, 0x10

    sget-object v14, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v14, v14, v10

    add-int v12, v13, v14

    .line 726
    .local v12, x_val:I
    int-to-char v11, v12

    .line 727
    .local v11, x_char:C
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 730
    .end local v9           #x1:C
    .end local v10           #x2:C
    .end local v11           #x_char:C
    .end local v12           #x_val:I
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v13, v14

    move v4, v1

    .line 731
    .local v4, u1:C
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v13, v14

    move v5, v1

    .line 732
    .local v5, u2:C
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v13, v14

    move v6, v1

    .line 733
    .local v6, u3:C
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v13, v14

    move v7, v1

    .line 734
    .local v7, u4:C
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x4

    new-array v14, v14, [C

    const/4 v15, 0x0

    aput-char v4, v14, v15

    const/4 v15, 0x1

    aput-char v5, v14, v15

    const/4 v15, 0x2

    aput-char v6, v14, v15

    const/4 v15, 0x3

    aput-char v7, v14, v15

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 735
    .local v8, val:I
    int-to-char v13, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 744
    .end local v4           #u1:C
    .end local v5           #u2:C
    .end local v6           #u3:C
    .end local v7           #u4:C
    .end local v8           #val:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v13, :cond_5

    .line 745
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    goto/16 :goto_0

    .line 749
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v14, v14

    if-ne v13, v14, :cond_6

    .line 750
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 752
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    aput-char v1, v13, v14

    goto/16 :goto_0

    .line 695
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_2
        0x46 -> :sswitch_4
        0x5c -> :sswitch_1
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x72 -> :sswitch_6
        0x74 -> :sswitch_7
        0x75 -> :sswitch_9
        0x78 -> :sswitch_8
    .end sparse-switch
.end method

.method public final scanStringSingleQuote()V
    .locals 17

    .prologue
    .line 568
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .line 569
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    .line 572
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v5, v12, v13

    .line 574
    .local v5, ch:C
    const/16 v12, 0x27

    if-ne v5, v12, :cond_0

    .line 661
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 662
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v12, v12, v13

    move-object/from16 v0, p0

    iput-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 663
    return-void

    .line 578
    :cond_0
    const/16 v12, 0x1a

    if-ne v5, v12, :cond_1

    .line 579
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string v13, "unclosed single-quote string"

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 582
    :cond_1
    const/16 v12, 0x5c

    if-ne v5, v12, :cond_4

    .line 583
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v12, :cond_3

    .line 584
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    .line 586
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v13, v13

    if-le v12, v13, :cond_2

    .line 587
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    mul-int/lit8 v12, v12, 0x2

    new-array v6, v12, [C

    .line 588
    .local v6, newsbuf:[C
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v15, v15

    invoke-static {v12, v13, v6, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    .line 592
    .end local v6           #newsbuf:[C
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    move/from16 v16, v0

    invoke-static/range {v12 .. v16}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v5, v12, v13

    .line 597
    sparse-switch v5, :sswitch_data_0

    .line 643
    move-object/from16 v0, p0

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 644
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string v13, "unclosed single-quote string"

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 599
    :sswitch_0
    const/16 v12, 0x22

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 602
    :sswitch_1
    const/16 v12, 0x5c

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 605
    :sswitch_2
    const/16 v12, 0x2f

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 608
    :sswitch_3
    const/16 v12, 0x27

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 611
    :sswitch_4
    const/16 v12, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 615
    :sswitch_5
    const/16 v12, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 618
    :sswitch_6
    const/16 v12, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 621
    :sswitch_7
    const/16 v12, 0xd

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 624
    :sswitch_8
    const/16 v12, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 627
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v5, v12, v13

    move v8, v5

    .line 628
    .local v8, x1:C
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v5, v12, v13

    move v9, v5

    .line 630
    .local v9, x2:C
    sget-object v12, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v12, v12, v8

    mul-int/lit8 v12, v12, 0x10

    sget-object v13, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v13, v13, v9

    add-int v11, v12, v13

    .line 631
    .local v11, x_val:I
    int-to-char v10, v11

    .line 632
    .local v10, x_char:C
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 635
    .end local v8           #x1:C
    .end local v9           #x2:C
    .end local v10           #x_char:C
    .end local v11           #x_val:I
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v5, v12, v13

    move v1, v5

    .line 636
    .local v1, c1:C
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v5, v12, v13

    move v2, v5

    .line 637
    .local v2, c2:C
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v5, v12, v13

    move v3, v5

    .line 638
    .local v3, c3:C
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v5, v12, v13

    move v4, v5

    .line 639
    .local v4, c4:C
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x4

    new-array v13, v13, [C

    const/4 v14, 0x0

    aput-char v1, v13, v14

    const/4 v14, 0x1

    aput-char v2, v13, v14

    const/4 v14, 0x2

    aput-char v3, v13, v14

    const/4 v14, 0x3

    aput-char v4, v13, v14

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([C)V

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 640
    .local v7, val:I
    int-to-char v12, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 649
    .end local v1           #c1:C
    .end local v2           #c2:C
    .end local v3           #c3:C
    .end local v4           #c4:C
    .end local v7           #val:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v12, :cond_5

    .line 650
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    goto/16 :goto_0

    .line 654
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v13, v13

    if-ne v12, v13, :cond_6

    .line 655
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 657
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    aput-char v5, v12, v13

    goto/16 :goto_0

    .line 597
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_3
        0x2f -> :sswitch_2
        0x46 -> :sswitch_5
        0x5c -> :sswitch_1
        0x62 -> :sswitch_4
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x72 -> :sswitch_7
        0x74 -> :sswitch_8
        0x75 -> :sswitch_a
        0x78 -> :sswitch_9
    .end sparse-switch
.end method

.method public scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4
    .parameter "symbolTable"

    .prologue
    const/16 v3, 0x27

    const/16 v2, 0x22

    const/4 v0, 0x0

    .line 1551
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 1553
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v2, :cond_0

    .line 1554
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 1586
    :goto_0
    return-object v0

    .line 1557
    :cond_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v3, :cond_2

    .line 1558
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1559
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1562
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1565
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_3

    .line 1566
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1567
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    .line 1571
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    .line 1572
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1573
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    .line 1577
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_5

    .line 1578
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    .line 1582
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1583
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1586
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 16
    .parameter "symbolTable"
    .parameter "quote"

    .prologue
    .line 1590
    const/4 v7, 0x0

    .line 1592
    .local v7, hash:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .line 1593
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 1594
    const/4 v6, 0x0

    .line 1597
    .local v6, hasSpecial:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v5, v11, v12

    .line 1599
    .local v5, ch:C
    move/from16 v0, p2

    if-ne v5, v0, :cond_0

    .line 1690
    const/4 v11, 0x4

    move-object/from16 v0, p0

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1691
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v11, v11, v12

    move-object/from16 v0, p0

    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1693
    if-nez v6, :cond_8

    .line 1694
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v7}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v11

    .line 1696
    :goto_1
    return-object v11

    .line 1603
    :cond_0
    const/16 v11, 0x1a

    if-ne v5, v11, :cond_1

    .line 1604
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "unclosed.str"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1607
    :cond_1
    const/16 v11, 0x5c

    if-ne v5, v11, :cond_5

    .line 1608
    if-nez v6, :cond_4

    .line 1609
    const/4 v6, 0x1

    .line 1611
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v12, v12

    if-lt v11, v12, :cond_3

    .line 1612
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v11, v11

    mul-int/lit8 v8, v11, 0x2

    .line 1613
    .local v8, newCapcity:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    if-le v11, v8, :cond_2

    .line 1614
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 1616
    :cond_2
    new-array v9, v8, [C

    .line 1617
    .local v9, newsbuf:[C
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v14, v14

    invoke-static {v11, v12, v9, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1618
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    .line 1621
    .end local v8           #newCapcity:I
    .end local v9           #newsbuf:[C
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1624
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v5, v11, v12

    .line 1626
    sparse-switch v5, :sswitch_data_0

    .line 1670
    move-object/from16 v0, p0

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1671
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "unclosed.str.lit"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1628
    :sswitch_0
    mul-int/lit8 v11, v7, 0x1f

    add-int/lit8 v7, v11, 0x22

    .line 1629
    const/16 v11, 0x22

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 1632
    :sswitch_1
    mul-int/lit8 v11, v7, 0x1f

    add-int/lit8 v7, v11, 0x5c

    .line 1633
    const/16 v11, 0x5c

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 1636
    :sswitch_2
    mul-int/lit8 v11, v7, 0x1f

    add-int/lit8 v7, v11, 0x2f

    .line 1637
    const/16 v11, 0x2f

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 1640
    :sswitch_3
    mul-int/lit8 v11, v7, 0x1f

    add-int/lit8 v7, v11, 0x8

    .line 1641
    const/16 v11, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 1645
    :sswitch_4
    mul-int/lit8 v11, v7, 0x1f

    add-int/lit8 v7, v11, 0xc

    .line 1646
    const/16 v11, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 1649
    :sswitch_5
    mul-int/lit8 v11, v7, 0x1f

    add-int/lit8 v7, v11, 0xa

    .line 1650
    const/16 v11, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 1653
    :sswitch_6
    mul-int/lit8 v11, v7, 0x1f

    add-int/lit8 v7, v11, 0xd

    .line 1654
    const/16 v11, 0xd

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 1657
    :sswitch_7
    mul-int/lit8 v11, v7, 0x1f

    add-int/lit8 v7, v11, 0x9

    .line 1658
    const/16 v11, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 1661
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v5, v11, v12

    move v1, v5

    .line 1662
    .local v1, c1:C
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v5, v11, v12

    move v2, v5

    .line 1663
    .local v2, c2:C
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v5, v11, v12

    move v3, v5

    .line 1664
    .local v3, c3:C
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v5, v11, v12

    move v4, v5

    .line 1665
    .local v4, c4:C
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x4

    new-array v12, v12, [C

    const/4 v13, 0x0

    aput-char v1, v12, v13

    const/4 v13, 0x1

    aput-char v2, v12, v13

    const/4 v13, 0x2

    aput-char v3, v12, v13

    const/4 v13, 0x3

    aput-char v4, v12, v13

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([C)V

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 1666
    .local v10, val:I
    mul-int/lit8 v11, v7, 0x1f

    add-int v7, v11, v10

    .line 1667
    int-to-char v11, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 1676
    .end local v1           #c1:C
    .end local v2           #c2:C
    .end local v3           #c3:C
    .end local v4           #c4:C
    .end local v10           #val:I
    :cond_5
    mul-int/lit8 v11, v7, 0x1f

    add-int v7, v11, v5

    .line 1678
    if-nez v6, :cond_6

    .line 1679
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    goto/16 :goto_0

    .line 1683
    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v12, v12

    if-ne v11, v12, :cond_7

    .line 1684
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->putChar(C)V

    goto/16 :goto_0

    .line 1686
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    aput-char v5, v11, v12

    goto/16 :goto_0

    .line 1696
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v7}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1626
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_2
        0x46 -> :sswitch_4
        0x5c -> :sswitch_1
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x72 -> :sswitch_6
        0x74 -> :sswitch_7
        0x75 -> :sswitch_8
    .end sparse-switch
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 11
    .parameter "symbolTable"

    .prologue
    const/16 v10, 0x6c

    const/4 v7, 0x1

    .line 761
    sget-object v4, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    .line 762
    .local v4, firstIdentifierFlags:[Z
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 764
    .local v2, first:C
    iget-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    array-length v9, v4

    if-ge v8, v9, :cond_0

    aget-boolean v8, v4, v2

    if-eqz v8, :cond_1

    :cond_0
    move v3, v7

    .line 765
    .local v3, firstFlag:Z
    :goto_0
    if-nez v3, :cond_2

    .line 766
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal identifier : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-char v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 764
    .end local v3           #firstFlag:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 769
    .restart local v3       #firstFlag:Z
    :cond_2
    sget-object v6, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    .line 771
    .local v6, identifierFlags:[Z
    move v5, v2

    .line 773
    .local v5, hash:I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .line 774
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 777
    :goto_1
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v1, v7, v8

    .line 779
    .local v1, ch:C
    array-length v7, v6

    if-ge v1, v7, :cond_3

    .line 780
    aget-boolean v7, v6, v1

    if-nez v7, :cond_3

    .line 791
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v7, v7, v8

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 792
    const/16 v7, 0x12

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 794
    const v0, 0x33c587

    .line 795
    .local v0, NULL_HASH:I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    const v7, 0x33c587

    if-ne v5, v7, :cond_4

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    aget-char v7, v7, v8

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v8, v8, 0x1

    aget-char v7, v7, v8

    const/16 v8, 0x75

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v8, v8, 0x2

    aget-char v7, v7, v8

    if-ne v7, v10, :cond_4

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v8, v8, 0x3

    aget-char v7, v7, v8

    if-ne v7, v10, :cond_4

    .line 797
    const/4 v7, 0x0

    .line 800
    :goto_2
    return-object v7

    .line 785
    .end local v0           #NULL_HASH:I
    :cond_3
    mul-int/lit8 v7, v5, 0x1f

    add-int v5, v7, v1

    .line 787
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    goto :goto_1

    .line 800
    .restart local v0       #NULL_HASH:I
    :cond_4
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p1, v7, v8, v9, v5}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method public scanTreeSet()V
    .locals 4

    .prologue
    const/16 v3, 0x65

    .line 1745
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    .line 1746
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1748
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    .line 1749
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1751
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_2

    .line 1752
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1754
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_3

    .line 1755
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1757
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x53

    if-eq v0, v1, :cond_4

    .line 1758
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1760
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_5

    .line 1761
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1763
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_6

    .line 1764
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1767
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1769
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_8

    .line 1770
    :cond_7
    const/16 v0, 0x16

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1774
    return-void

    .line 1772
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan set error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanTrue()V
    .locals 3

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    .line 1702
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1704
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    .line 1705
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1707
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    .line 1708
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1710
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    .line 1711
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1714
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1716
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 1718
    :cond_4
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1722
    return-void

    .line 1720
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanType(Ljava/lang/String;)I
    .locals 11
    .parameter "type"

    .prologue
    const/16 v10, 0x7d

    const/16 v9, 0x2c

    const/16 v8, 0x10

    const/4 v4, -0x1

    .line 814
    const/4 v5, 0x0

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 816
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    array-length v1, v5

    .line 818
    .local v1, fieldNameLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 819
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    aget-char v5, v5, v2

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v7, v2

    aget-char v6, v6, v7

    if-eq v5, v6, :cond_1

    .line 820
    const/4 v4, -0x2

    .line 864
    :cond_0
    :goto_1
    return v4

    .line 818
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 824
    :cond_2
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v5, v1

    .line 826
    .local v0, bp:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 827
    .local v3, typeLength:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 828
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int v7, v0, v2

    aget-char v6, v6, v7

    if-ne v5, v6, :cond_0

    .line 827
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 832
    :cond_3
    add-int/2addr v0, v3

    .line 833
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    aget-char v5, v5, v0

    const/16 v6, 0x22

    if-ne v5, v6, :cond_0

    .line 837
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v0, 0x1

    aget-char v5, v5, v0

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 839
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v5, v9, :cond_4

    .line 840
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v0, 0x1

    aget-char v4, v4, v0

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 841
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 842
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 843
    const/4 v4, 0x3

    goto :goto_1

    .line 844
    :cond_4
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v5, v10, :cond_5

    .line 845
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v0, 0x1

    aget-char v5, v5, v0

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 846
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v5, v9, :cond_6

    .line 847
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 848
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v0, 0x1

    aget-char v4, v4, v0

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 860
    :goto_3
    const/4 v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 863
    :cond_5
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 864
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    .line 849
    :cond_6
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_7

    .line 850
    const/16 v4, 0xf

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 851
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v0, 0x1

    aget-char v4, v4, v0

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 852
    :cond_7
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v5, v10, :cond_8

    .line 853
    const/16 v4, 0xd

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 854
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    add-int/lit8 v0, v0, 0x1

    aget-char v4, v4, v0

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 855
    :cond_8
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v6, 0x1a

    if-ne v5, v6, :cond_0

    .line 856
    const/16 v4, 0x14

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3
.end method

.method public setResetFlag(Z)V
    .locals 0
    .parameter "resetFlag"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->resetFlag:Z

    .line 147
    return-void
.end method

.method public final skipWhitespace()V
    .locals 2

    .prologue
    .line 207
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->whitespaceFlags:[Z

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method

.method public stringDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 964
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    const-string v0, ""

    .line 967
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1976
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_0

    .line 1977
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1979
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public final symbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4
    .parameter "symbolTable"

    .prologue
    const/4 v3, 0x0

    .line 1997
    if-nez p1, :cond_1

    .line 1998
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_0

    .line 1999
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 2008
    :goto_0
    return-object v0

    .line 2001
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 2005
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_2

    .line 2006
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2008
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p1, v0, v3, v1}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final token()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v0
.end method

.method public final tokenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
