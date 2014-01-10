.class public Lcom/alibaba/fastjson/parser/deserializer/FontDeserializer;
.super Ljava/lang/Object;
.source "FontDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/FontDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/FontDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/FontDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/FontDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/FontDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
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
    const/16 v9, 0x10

    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 21
    .local v1, lexer:Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 22
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 23
    const/4 v5, 0x0

    .line 78
    :goto_0
    return-object v5

    .line 26
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    if-eq v5, v9, :cond_1

    .line 27
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 29
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 31
    const/4 v3, 0x0

    .local v3, size:I
    const/4 v4, 0x0

    .line 32
    .local v4, style:I
    const/4 v2, 0x0

    .line 34
    .local v2, name:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_3

    .line 35
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 78
    new-instance v5, Ljava/awt/Font;

    invoke-direct {v5, v2, v4, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 41
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    .line 48
    const-string v5, "name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 49
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 50
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 73
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 74
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    goto :goto_1

    .line 44
    .end local v0           #key:Ljava/lang/String;
    :cond_4
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 53
    .restart local v0       #key:Ljava/lang/String;
    :cond_5
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 55
    :cond_6
    const-string v5, "style"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 56
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 57
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->intValue()I

    move-result v4

    .line 58
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    goto :goto_2

    .line 60
    :cond_7
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 62
    :cond_8
    const-string v5, "size"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 63
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    if-ne v5, v7, :cond_9

    .line 64
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->intValue()I

    move-result v3

    .line 65
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    goto :goto_2

    .line 67
    :cond_9
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 70
    :cond_a
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syntax error, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getAutowiredFor()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    const-class v0, Ljava/awt/Font;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0xc

    return v0
.end method
