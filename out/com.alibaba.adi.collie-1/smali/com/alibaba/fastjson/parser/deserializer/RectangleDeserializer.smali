.class public Lcom/alibaba/fastjson/parser/deserializer/RectangleDeserializer;
.super Ljava/lang/Object;
.source "RectangleDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/RectangleDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/RectangleDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/RectangleDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/RectangleDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/RectangleDeserializer;

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
    .locals 12
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
    const/16 v11, 0x10

    const/4 v10, 0x4

    const/4 v9, 0x2

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 21
    .local v2, lexer:Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 22
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 23
    const/4 v7, 0x0

    .line 71
    :goto_0
    return-object v7

    .line 26
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v7

    if-eq v7, v11, :cond_1

    .line 27
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 29
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 31
    const/4 v5, 0x0

    .local v5, x:I
    const/4 v6, 0x0

    .local v6, y:I
    const/4 v4, 0x0

    .local v4, width:I
    const/4 v0, 0x0

    .line 33
    .local v0, height:I
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_3

    .line 34
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 71
    new-instance v7, Ljava/awt/Rectangle;

    invoke-direct {v7, v5, v6, v4, v0}, Ljava/awt/Rectangle;-><init>(IIII)V

    goto :goto_0

    .line 39
    :cond_3
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v7

    if-ne v7, v10, :cond_4

    .line 40
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    .line 47
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v7

    if-ne v7, v9, :cond_5

    .line 48
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->intValue()I

    move-result v3

    .line 49
    .local v3, val:I
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 54
    const-string v7, "x"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 55
    move v5, v3

    .line 66
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 67
    invoke-virtual {v2, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    goto :goto_1

    .line 43
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #val:I
    :cond_4
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 51
    .restart local v1       #key:Ljava/lang/String;
    :cond_5
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 56
    .restart local v3       #val:I
    :cond_6
    const-string v7, "y"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 57
    move v6, v3

    goto :goto_2

    .line 58
    :cond_7
    const-string v7, "width"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 59
    move v4, v3

    goto :goto_2

    .line 60
    :cond_8
    const-string v7, "height"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 61
    move v0, v3

    goto :goto_2

    .line 63
    :cond_9
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syntax error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7
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
    .line 79
    const-class v0, Ljava/awt/Rectangle;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0xc

    return v0
.end method
