.class public Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeDeserializer;
.super Ljava/lang/Object;
.source "ArrayListTypeDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private itemType:Ljava/lang/reflect/Type;

.field private rawClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 0
    .parameter
    .parameter "itemType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeDeserializer;->rawClass:Ljava/lang/Class;

    .line 19
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 20
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, list:Ljava/util/Collection;
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 40
    :goto_0
    return-object v0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeDeserializer;->rawClass:Ljava/lang/Class;

    const-class v2, Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    .end local v0           #list:Ljava/util/Collection;
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 37
    .restart local v0       #list:Ljava/util/Collection;
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeDeserializer;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v1, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeDeserializer;->rawClass:Ljava/lang/Class;

    const-class v2, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #list:Ljava/util/Collection;
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .restart local v0       #list:Ljava/util/Collection;
    goto :goto_1

    .line 34
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/Collection;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #list:Ljava/util/Collection;
    goto :goto_1
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0xe

    return v0
.end method
