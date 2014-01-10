.class public abstract Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.super Ljava/lang/Object;
.source "AbstractDateDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
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
    .line 16
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 19
    .local v2, lexer:Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 20
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 21
    .local v8, val:Ljava/lang/Long;
    const/16 v9, 0x10

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 95
    .end local v8           #val:Ljava/lang/Long;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v8}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;->cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 22
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 23
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, strVal:Ljava/lang/String;
    move-object v8, v3

    .line 25
    .local v8, val:Ljava/lang/String;
    const/16 v9, 0x10

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 27
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 28
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, iso8601Lexer:Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .local v8, val:Ljava/util/Date;
    goto :goto_0

    .line 33
    .end local v0           #iso8601Lexer:Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v3           #strVal:Ljava/lang/String;
    .end local v8           #val:Ljava/util/Date;
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_3

    .line 34
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 35
    const/4 v8, 0x0

    .local v8, val:Ljava/lang/Object;
    goto :goto_0

    .line 36
    .end local v8           #val:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v9

    const/16 v10, 0xc

    if-ne v9, v10, :cond_8

    .line 37
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 40
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_6

    .line 41
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, key:Ljava/lang/String;
    const-string v9, "@type"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 44
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 45
    const/16 v9, 0x11

    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 47
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, typeName:Ljava/lang/String;
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 49
    .local v6, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v6, :cond_4

    .line 50
    move-object p2, v6

    .line 53
    :cond_4
    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 54
    const/16 v9, 0x10

    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 57
    .end local v6           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #typeName:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    .line 63
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 64
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->longValue()J

    move-result-wide v4

    .line 65
    .local v4, timeMillis:J
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 72
    .local v8, val:Ljava/lang/Long;
    const/16 v9, 0xd

    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .line 59
    .end local v1           #key:Ljava/lang/String;
    .end local v4           #timeMillis:J
    .end local v8           #val:Ljava/lang/Long;
    :cond_6
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 67
    .restart local v1       #key:Ljava/lang/String;
    :cond_7
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "syntax error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->tokenName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 73
    .end local v1           #key:Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b

    .line 74
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 75
    const/16 v9, 0x10

    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 77
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_a

    .line 78
    const-string v9, "val"

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 79
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 81
    :cond_9
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 86
    const/16 v9, 0x11

    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 88
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v8

    .line 90
    .local v8, val:Ljava/lang/Object;
    const/16 v9, 0xd

    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .line 83
    .end local v8           #val:Ljava/lang/Object;
    :cond_a
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 92
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v8

    .restart local v8       #val:Ljava/lang/Object;
    goto/16 :goto_0
.end method
