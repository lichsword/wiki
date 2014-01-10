.class public Lcom/alibaba/fastjson/parser/deserializer/ArrayListStringDeserializer;
.super Ljava/lang/Object;
.source "ArrayListStringDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/ArrayListStringDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListStringDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListStringDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListStringDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/ArrayListStringDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Collection;)V
    .locals 7
    .parameter "parser"
    .parameter "array"

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0x10

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 55
    .local v0, lexer:Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 56
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 104
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_1

    .line 61
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 64
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xe

    if-eq v3, v4, :cond_2

    .line 65
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exepct \'[\', but "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_2
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 71
    :cond_3
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 72
    :goto_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 73
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_2

    .line 78
    :cond_4
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_5

    .line 103
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 83
    :cond_5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 84
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, value:Ljava/lang/String;
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 95
    :goto_3
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 98
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    .line 87
    .end local v2           #value:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 88
    .local v1, obj:Ljava/lang/Object;
    if-nez v1, :cond_7

    .line 89
    const/4 v2, 0x0

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_3

    .line 91
    .end local v2           #value:Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_3
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "parser"
    .parameter "type"
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
    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v1

    .line 24
    .local v1, lexer:Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 25
    const/16 v3, 0x10

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 26
    const/4 v0, 0x0

    .line 48
    .end local p2
    :goto_0
    return-object v0

    .line 29
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    .line 31
    .local v0, array:Ljava/util/Collection;
    const-class v3, Ljava/util/Set;

    if-eq p2, v3, :cond_1

    const-class v3, Ljava/util/HashSet;

    if-ne p2, v3, :cond_4

    .line 32
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #array:Ljava/util/Collection;
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 42
    .end local p2
    .restart local v0       #array:Ljava/util/Collection;
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #array:Ljava/util/Collection;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .restart local v0       #array:Ljava/util/Collection;
    :cond_3
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListStringDeserializer;->parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Collection;)V

    goto :goto_0

    .line 34
    .restart local p2
    :cond_4
    instance-of v3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2

    .line 35
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .end local p2
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 36
    .local v2, rawType:Ljava/lang/reflect/Type;
    const-class v3, Ljava/util/Set;

    if-eq v2, v3, :cond_5

    const-class v3, Ljava/util/HashSet;

    if-ne v2, v3, :cond_2

    .line 37
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #array:Ljava/util/Collection;
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .restart local v0       #array:Ljava/util/Collection;
    goto :goto_1
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0xe

    return v0
.end method
