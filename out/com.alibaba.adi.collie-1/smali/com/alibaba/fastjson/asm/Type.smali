.class public Lcom/alibaba/fastjson/asm/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final ARRAY:I = 0x9

.field public static final BOOLEAN:I = 0x1

.field public static final BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type; = null

.field public static final BYTE:I = 0x3

.field public static final BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type; = null

.field public static final CHAR:I = 0x2

.field public static final CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type; = null

.field public static final DOUBLE:I = 0x8

.field public static final DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type; = null

.field public static final FLOAT:I = 0x6

.field public static final FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type; = null

.field public static final INT:I = 0x5

.field public static final INT_TYPE:Lcom/alibaba/fastjson/asm/Type; = null

.field public static final LONG:I = 0x7

.field public static final LONG_TYPE:Lcom/alibaba/fastjson/asm/Type; = null

.field public static final OBJECT:I = 0xa

.field public static final SHORT:I = 0x4

.field public static final SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final VOID:I

.field public static final VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;


# instance fields
.field private final buf:[C

.field private final len:I

.field private final off:I

.field private final sort:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 98
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x0

    const/high16 v2, 0x5605

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 103
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const v1, 0x5a000501

    invoke-direct {v0, v3, v4, v1, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 108
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x2

    const v2, 0x43000601

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 113
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x3

    const v2, 0x42000501

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 118
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x4

    const v2, 0x53000701

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 123
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x5

    const v2, 0x49000001

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 128
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x6

    const v2, 0x46020201

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 133
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x7

    const v2, 0x4a010102

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 138
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/16 v1, 0x8

    const v2, 0x44030302

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-void
.end method

.method private constructor <init>(I[CII)V
    .locals 0
    .parameter "sort"
    .parameter "buf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p1, p0, Lcom/alibaba/fastjson/asm/Type;->sort:I

    .line 180
    iput-object p2, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    .line 181
    iput p3, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    .line 182
    iput p4, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    .line 183
    return-void
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .locals 9
    .parameter "desc"

    .prologue
    const/16 v8, 0x5b

    const/16 v7, 0x4a

    const/16 v6, 0x44

    .line 204
    const/4 v3, 0x1

    .line 205
    .local v3, n:I
    const/4 v0, 0x1

    .line 207
    .local v0, c:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0           #c:I
    .local v1, c:I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 208
    .local v2, car:C
    const/16 v4, 0x29

    if-ne v2, v4, :cond_4

    .line 209
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 210
    shl-int/lit8 v5, v3, 0x2

    const/16 v4, 0x56

    if-ne v2, v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    or-int/2addr v4, v5

    return v4

    :cond_1
    if-eq v2, v6, :cond_2

    if-ne v2, v7, :cond_3

    :cond_2
    const/4 v4, 0x2

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 211
    :cond_4
    const/16 v4, 0x4c

    if-ne v2, v4, :cond_6

    move v0, v1

    .line 212
    .end local v1           #c:I
    .restart local v0       #c:I
    :goto_2
    add-int/lit8 v1, v0, 0x1

    .end local v0           #c:I
    .restart local v1       #c:I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_5

    move v0, v1

    .end local v1           #c:I
    .restart local v0       #c:I
    goto :goto_2

    .line 214
    .end local v0           #c:I
    .restart local v1       #c:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1           #c:I
    .restart local v0       #c:I
    goto :goto_0

    .line 215
    .end local v0           #c:I
    .restart local v1       #c:I
    :cond_6
    if-ne v2, v8, :cond_9

    move v0, v1

    .line 216
    .end local v1           #c:I
    .restart local v0       #c:I
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_7

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 219
    :cond_7
    if-eq v2, v6, :cond_8

    if-ne v2, v7, :cond_0

    .line 220
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 222
    .end local v0           #c:I
    .restart local v1       #c:I
    :cond_9
    if-eq v2, v6, :cond_a

    if-ne v2, v7, :cond_b

    .line 223
    :cond_a
    add-int/lit8 v3, v3, 0x2

    move v0, v1

    .end local v1           #c:I
    .restart local v0       #c:I
    goto :goto_0

    .line 225
    .end local v0           #c:I
    .restart local v1       #c:I
    :cond_b
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1           #c:I
    .restart local v0       #c:I
    goto :goto_0
.end method

.method public static getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
    .locals 2
    .parameter "typeDescriptor"

    .prologue
    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/asm/Type;->getType([CI)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method private static getType([CI)Lcom/alibaba/fastjson/asm/Type;
    .locals 5
    .parameter "buf"
    .parameter "off"

    .prologue
    const/16 v3, 0x3b

    .line 239
    aget-char v1, p0, p1

    sparse-switch v1, :sswitch_data_0

    .line 272
    const/4 v0, 0x1

    .line 273
    .local v0, len:I
    :goto_0
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-eq v1, v3, :cond_2

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v0           #len:I
    :sswitch_0
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 276
    :goto_1
    return-object v1

    .line 243
    :sswitch_1
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 245
    :sswitch_2
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 247
    :sswitch_3
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 249
    :sswitch_4
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 251
    :sswitch_5
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 253
    :sswitch_6
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 255
    :sswitch_7
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 257
    :sswitch_8
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 259
    :sswitch_9
    const/4 v0, 0x1

    .line 260
    .restart local v0       #len:I
    :goto_2
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 263
    :cond_0
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_1

    .line 264
    add-int/lit8 v0, v0, 0x1

    .line 265
    :goto_3
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-eq v1, v3, :cond_1

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 269
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/asm/Type;

    const/16 v2, 0x9

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    goto :goto_1

    .line 276
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/asm/Type;

    const/16 v2, 0xa

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v0, -0x1

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    goto :goto_1

    .line 239
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_2
        0x44 -> :sswitch_8
        0x46 -> :sswitch_6
        0x49 -> :sswitch_5
        0x4a -> :sswitch_7
        0x53 -> :sswitch_4
        0x56 -> :sswitch_0
        0x5a -> :sswitch_1
        0x5b -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public getDescriptor()Ljava/lang/String;
    .locals 4

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    if-nez v1, :cond_0

    .line 320
    iget v1, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    const/high16 v2, -0x100

    and-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x18

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 329
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 321
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/asm/Type;->sort:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 322
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 324
    :cond_1
    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 325
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 326
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 303
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getSort()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/alibaba/fastjson/asm/Type;->sort:I

    return v0
.end method
