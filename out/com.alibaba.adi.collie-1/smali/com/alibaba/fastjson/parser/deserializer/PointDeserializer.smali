.class public Lcom/alibaba/fastjson/parser/deserializer/PointDeserializer;
.super Ljava/lang/Object;
.source "PointDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/PointDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/PointDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/PointDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/PointDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/PointDeserializer;

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
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/16 v7, 0x10

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 23
    .local v1, lexer:Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 24
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 25
    const/4 v5, 0x0

    .line 75
    :goto_0
    return-object v5

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    if-eq v5, v7, :cond_1

    .line 29
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 31
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 33
    const/4 v3, 0x0

    .local v3, x:I
    const/4 v4, 0x0

    .line 35
    .local v4, y:I
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_3

    .line 36
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 75
    new-instance v5, Ljava/awt/Point;

    invoke-direct {v5, v3, v4}, Ljava/awt/Point;-><init>(II)V

    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 42
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, key:Ljava/lang/String;
    const-string v5, "@type"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 45
    const-string v5, "java.awt.Point"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->acceptType(Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :cond_4
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    .line 55
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 56
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->intValue()I

    move-result v2

    .line 57
    .local v2, val:I
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 62
    const-string v5, "x"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 63
    move v3, v2

    .line 70
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 71
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    goto :goto_1

    .line 51
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #val:I
    :cond_5
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 59
    .restart local v0       #key:Ljava/lang/String;
    :cond_6
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syntax error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->tokenName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 64
    .restart local v2       #val:I
    :cond_7
    const-string v5, "y"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 65
    move v4, v2

    goto :goto_2

    .line 67
    :cond_8
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
    .line 83
    const-class v0, Ljava/awt/Point;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0xc

    return v0
.end method
