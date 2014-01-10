.class public Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
.super Ljava/lang/Object;
.source "NumberDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "parser"
    .parameter "clazz"
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 18
    .local v0, lexer:Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 19
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_0

    const-class v4, Ljava/lang/Double;

    if-ne p2, v4, :cond_2

    .line 20
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, val:Ljava/lang/String;
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 22
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 85
    .end local v1           #val:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 25
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v1

    .line 26
    .local v1, val:J
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 28
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_3

    const-class v4, Ljava/lang/Double;

    if-ne p2, v4, :cond_4

    .line 29
    :cond_3
    long-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 32
    :cond_4
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_5

    const-class v4, Ljava/lang/Short;

    if-ne p2, v4, :cond_6

    .line 33
    :cond_5
    long-to-int v4, v1

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 36
    :cond_6
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_7

    const-class v4, Ljava/lang/Byte;

    if-ne p2, v4, :cond_8

    .line 37
    :cond_7
    long-to-int v4, v1

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 40
    :cond_8
    const-wide/32 v4, -0x80000000

    cmp-long v4, v1, v4

    if-ltz v4, :cond_9

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gtz v4, :cond_9

    .line 41
    long-to-int v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 43
    :cond_9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 46
    .end local v1           #val:J
    :cond_a
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_10

    .line 47
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_b

    const-class v4, Ljava/lang/Double;

    if-ne p2, v4, :cond_c

    .line 48
    :cond_b
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, val:Ljava/lang/String;
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 50
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 53
    .end local v1           #val:Ljava/lang/String;
    :cond_c
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    .line 54
    .local v1, val:Ljava/math/BigDecimal;
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 56
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_d

    const-class v4, Ljava/lang/Short;

    if-ne p2, v4, :cond_e

    .line 57
    :cond_d
    invoke-virtual {v1}, Ljava/math/BigDecimal;->shortValue()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto/16 :goto_0

    .line 60
    :cond_e
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_f

    const-class v4, Ljava/lang/Byte;

    if-ne p2, v4, :cond_1

    .line 61
    :cond_f
    invoke-virtual {v1}, Ljava/math/BigDecimal;->byteValue()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto/16 :goto_0

    .line 67
    .end local v1           #val:Ljava/math/BigDecimal;
    :cond_10
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 69
    .local v3, value:Ljava/lang/Object;
    if-nez v3, :cond_11

    .line 70
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 73
    :cond_11
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_12

    const-class v4, Ljava/lang/Double;

    if-ne p2, v4, :cond_13

    .line 74
    :cond_12
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    goto/16 :goto_0

    .line 77
    :cond_13
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_14

    const-class v4, Ljava/lang/Short;

    if-ne p2, v4, :cond_15

    .line 78
    :cond_14
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v1

    goto/16 :goto_0

    .line 81
    :cond_15
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_16

    const-class v4, Ljava/lang/Byte;

    if-ne p2, v4, :cond_17

    .line 82
    :cond_16
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v1

    goto/16 :goto_0

    .line 85
    :cond_17
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x2

    return v0
.end method
