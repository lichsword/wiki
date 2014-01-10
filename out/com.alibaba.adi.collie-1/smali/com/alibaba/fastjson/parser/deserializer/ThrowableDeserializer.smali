.class public Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.source "ThrowableDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .parameter "mapping"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V

    .line 20
    return-void
.end method

.method private createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 12
    .parameter "message"
    .parameter "cause"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, exClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 124
    const/4 v3, 0x0

    .line 125
    .local v3, defaultConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x0

    .line 126
    .local v6, messageConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x0

    .line 127
    .local v1, causeConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Constructor;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 128
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_1

    .line 129
    move-object v3, v2

    .line 127
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v10, :cond_2

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v9

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_2

    .line 134
    move-object v6, v2

    .line 135
    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v11, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v9

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v10

    const-class v8, Ljava/lang/Throwable;

    if-ne v7, v8, :cond_0

    .line 140
    move-object v1, v2

    .line 141
    goto :goto_1

    .line 145
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :cond_3
    if-eqz v1, :cond_4

    .line 146
    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v9

    aput-object p2, v7, v10

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    .line 157
    :goto_2
    return-object v7

    .line 149
    :cond_4
    if-eqz v6, :cond_5

    .line 150
    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    goto :goto_2

    .line 153
    :cond_5
    if-eqz v3, :cond_6

    .line 154
    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    goto :goto_2

    .line 157
    :cond_6
    const/4 v7, 0x0

    goto :goto_2
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
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
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 26
    .local v9, lexer:Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    .line 27
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    .local v1, cause:Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 37
    .local v6, exClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    instance-of v13, v0, Ljava/lang/Class;

    if-eqz v13, :cond_1

    move-object/from16 v2, p2

    .line 38
    check-cast v2, Ljava/lang/Class;

    .line 39
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v13, Ljava/lang/Throwable;

    invoke-virtual {v13, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 40
    move-object v6, v2

    .line 44
    .end local v2           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    const/4 v10, 0x0

    .line 45
    .local v10, message:Ljava/lang/String;
    const/4 v12, 0x0

    .line 46
    .local v12, stackTrace:[Ljava/lang/StackTraceElement;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v11, otherValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v8

    .line 52
    .local v8, key:Ljava/lang/String;
    if-nez v8, :cond_7

    .line 53
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/16 v14, 0xd

    if-ne v13, v14, :cond_6

    .line 54
    const/16 v13, 0x10

    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 102
    :goto_0
    const/4 v4, 0x0

    .line 103
    .local v4, ex:Ljava/lang/Throwable;
    if-nez v6, :cond_f

    .line 104
    new-instance v4, Ljava/lang/Exception;

    .end local v4           #ex:Ljava/lang/Throwable;
    invoke-direct {v4, v10, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .restart local v4       #ex:Ljava/lang/Throwable;
    :cond_3
    :goto_1
    if-eqz v12, :cond_4

    .line 117
    invoke-virtual {v4, v12}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 120
    :cond_4
    return-object v4

    .line 29
    .end local v1           #cause:Ljava/lang/Throwable;
    .end local v4           #ex:Ljava/lang/Throwable;
    .end local v6           #exClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #key:Ljava/lang/String;
    .end local v10           #message:Ljava/lang/String;
    .end local v11           #otherValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12           #stackTrace:[Ljava/lang/StackTraceElement;
    :cond_5
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/16 v14, 0xc

    if-eq v13, v14, :cond_0

    .line 30
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string v14, "syntax error"

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 57
    .restart local v1       #cause:Ljava/lang/Throwable;
    .restart local v6       #exClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v8       #key:Ljava/lang/String;
    .restart local v10       #message:Ljava/lang/String;
    .restart local v11       #otherValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12       #stackTrace:[Ljava/lang/StackTraceElement;
    :cond_6
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/16 v14, 0x10

    if-ne v13, v14, :cond_7

    .line 58
    sget-object v13, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 64
    :cond_7
    const/4 v13, 0x4

    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    .line 66
    const-string v13, "@type"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 67
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_8

    .line 68
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, exClassName:Ljava/lang/String;
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 73
    const/16 v13, 0x10

    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 92
    .end local v7           #exClassName:Ljava/lang/String;
    :goto_2
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/16 v14, 0x10

    if-eq v13, v14, :cond_2

    .line 96
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/16 v14, 0xd

    if-ne v13, v14, :cond_2

    .line 97
    const/16 v13, 0x10

    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    goto :goto_0

    .line 71
    :cond_8
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string v14, "syntax error"

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 74
    :cond_9
    const-string v13, "message"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 75
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_a

    .line 76
    const/4 v10, 0x0

    .line 82
    :goto_3
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    goto :goto_2

    .line 77
    :cond_a
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_b

    .line 78
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 80
    :cond_b
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string v14, "syntax error"

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 83
    :cond_c
    const-string v13, "cause"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 84
    const/4 v13, 0x0

    const-string v14, "cause"

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v13, v14}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cause:Ljava/lang/Throwable;
    check-cast v1, Ljava/lang/Throwable;

    .restart local v1       #cause:Ljava/lang/Throwable;
    goto :goto_2

    .line 85
    :cond_d
    const-string v13, "stackTrace"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 86
    const-class v13, [Ljava/lang/StackTraceElement;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #stackTrace:[Ljava/lang/StackTraceElement;
    check-cast v12, [Ljava/lang/StackTraceElement;

    .restart local v12       #stackTrace:[Ljava/lang/StackTraceElement;
    goto :goto_2

    .line 89
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 107
    .restart local v4       #ex:Ljava/lang/Throwable;
    :cond_f
    :try_start_0
    invoke-direct {p0, v10, v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v4

    .line 108
    if-nez v4, :cond_3

    .line 109
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v10, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #ex:Ljava/lang/Throwable;
    .local v5, ex:Ljava/lang/Throwable;
    move-object v4, v5

    .end local v5           #ex:Ljava/lang/Throwable;
    .restart local v4       #ex:Ljava/lang/Throwable;
    goto/16 :goto_1

    .line 111
    :catch_0
    move-exception v3

    .line 112
    .local v3, e:Ljava/lang/Exception;
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string v14, "create instance error"

    invoke-direct {v13, v14, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 161
    const/16 v0, 0xc

    return v0
.end method
