.class public Lcom/alibaba/fastjson/parser/deserializer/DefaultObjectDeserializer;
.super Ljava/lang/Object;
.source "DefaultObjectDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/DefaultObjectDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/DefaultObjectDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/DefaultObjectDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/DefaultObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/DefaultObjectDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 439
    const/4 v2, 0x0

    .line 441
    .local v2, value:Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 442
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v4

    const/16 v5, 0x10

    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object v2, v3

    .line 476
    .end local v2           #value:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 445
    .restart local v2       #value:Ljava/lang/Object;
    :cond_0
    const-class v4, Ljava/util/HashMap;

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 446
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #value:Ljava/lang/Object;
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 457
    :cond_1
    :goto_1
    const-class v4, Ljava/lang/Class;

    if-ne p2, v4, :cond_7

    .line 458
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 459
    .local v0, classValue:Ljava/lang/Object;
    if-nez v0, :cond_6

    move-object v2, v3

    .line 460
    goto :goto_0

    .line 447
    .end local v0           #classValue:Ljava/lang/Object;
    .restart local v2       #value:Ljava/lang/Object;
    :cond_2
    const-class v4, Ljava/util/TreeMap;

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 448
    new-instance v2, Ljava/util/TreeMap;

    .end local v2           #value:Ljava/lang/Object;
    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .local v2, value:Ljava/util/TreeMap;
    goto :goto_1

    .line 449
    .local v2, value:Ljava/lang/Object;
    :cond_3
    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 450
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v2           #value:Ljava/lang/Object;
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .local v2, value:Ljava/util/concurrent/ConcurrentHashMap;
    goto :goto_1

    .line 451
    .local v2, value:Ljava/lang/Object;
    :cond_4
    const-class v4, Ljava/util/Properties;

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 452
    new-instance v2, Ljava/util/Properties;

    .end local v2           #value:Ljava/lang/Object;
    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .local v2, value:Ljava/util/Properties;
    goto :goto_1

    .line 453
    .local v2, value:Ljava/lang/Object;
    :cond_5
    const-class v4, Ljava/util/IdentityHashMap;

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 454
    new-instance v2, Ljava/util/IdentityHashMap;

    .end local v2           #value:Ljava/lang/Object;
    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .local v2, value:Ljava/util/IdentityHashMap;
    goto :goto_1

    .line 463
    .end local v2           #value:Ljava/util/IdentityHashMap;
    .restart local v0       #classValue:Ljava/lang/Object;
    :cond_6
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 464
    check-cast v0, Ljava/lang/String;

    .end local v0           #classValue:Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMClassLoader;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 466
    :cond_7
    const-class v3, Ljava/io/Serializable;

    if-ne p2, v3, :cond_8

    .line 467
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 470
    :cond_8
    if-nez v2, :cond_9

    .line 471
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not support type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 475
    :cond_9
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/DefaultObjectDeserializer;->parseObject(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 477
    :catch_0
    move-exception v1

    .line 478
    .local v1, e:Lcom/alibaba/fastjson/JSONException;
    throw v1

    .line 479
    .end local v1           #e:Lcom/alibaba/fastjson/JSONException;
    :catch_1
    move-exception v1

    .line 480
    .local v1, e:Ljava/lang/Throwable;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/ParameterizedType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "parser"
    .parameter "type"
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 386
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v8

    .line 387
    .local v8, lexer:Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 388
    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 389
    const/4 v1, 0x0

    .line 423
    :goto_0
    return-object v1

    .line 392
    :cond_0
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 393
    .local v10, rawType:Ljava/lang/reflect/Type;
    instance-of v1, v10, Ljava/lang/Class;

    if-eqz v1, :cond_7

    .line 394
    move-object v0, v10

    check-cast v0, Ljava/lang/Class;

    move-object v9, v0

    .line 396
    .local v9, rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 399
    invoke-virtual {v9}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 400
    const-class v1, Ljava/util/Map;

    if-ne v9, v1, :cond_1

    .line 401
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 417
    .local v3, map:Ljava/util/Map;
    :goto_1
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v4, v1, v2

    .line 418
    .local v4, keyType:Ljava/lang/reflect/Type;
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v5, v1, v2

    .line 420
    .local v5, valueType:Ljava/lang/reflect/Type;
    const-class v1, Ljava/lang/String;

    if-ne v4, v1, :cond_6

    .line 421
    invoke-virtual {p0, p1, v3, v5, p3}, Lcom/alibaba/fastjson/parser/deserializer/DefaultObjectDeserializer;->parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 402
    .end local v3           #map:Ljava/util/Map;
    .end local v4           #keyType:Ljava/lang/reflect/Type;
    .end local v5           #valueType:Ljava/lang/reflect/Type;
    :cond_1
    const-class v1, Ljava/util/SortedMap;

    if-ne v9, v1, :cond_2

    .line 403
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .restart local v3       #map:Ljava/util/Map;
    goto :goto_1

    .line 404
    .end local v3           #map:Ljava/util/Map;
    :cond_2
    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    if-ne v9, v1, :cond_3

    .line 405
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .restart local v3       #map:Ljava/util/Map;
    goto :goto_1

    .line 407
    .end local v3           #map:Ljava/util/Map;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not create instance : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 430
    .end local v8           #lexer:Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v9           #rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v10           #rawType:Ljava/lang/reflect/Type;
    :catch_0
    move-exception v7

    .line 431
    .local v7, e:Lcom/alibaba/fastjson/JSONException;
    throw v7

    .line 410
    .end local v7           #e:Lcom/alibaba/fastjson/JSONException;
    .restart local v8       #lexer:Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v9       #rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v10       #rawType:Ljava/lang/reflect/Type;
    :cond_4
    :try_start_1
    const-class v1, Ljava/util/HashMap;

    if-ne v9, v1, :cond_5

    .line 411
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .restart local v3       #map:Ljava/util/Map;
    goto :goto_1

    .line 413
    .end local v3           #map:Ljava/util/Map;
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .restart local v3       #map:Ljava/util/Map;
    goto :goto_1

    .restart local v4       #keyType:Ljava/lang/reflect/Type;
    .restart local v5       #valueType:Ljava/lang/reflect/Type;
    :cond_6
    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    .line 423
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/DefaultObjectDeserializer;->parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .line 429
    .end local v3           #map:Ljava/util/Map;
    .end local v4           #keyType:Ljava/lang/reflect/Type;
    .end local v5           #valueType:Ljava/lang/reflect/Type;
    .end local v9           #rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support type : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 432
    .end local v8           #lexer:Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v10           #rawType:Ljava/lang/reflect/Type;
    :catch_1
    move-exception v7

    .line 433
    .local v7, e:Ljava/lang/Throwable;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    .line 350
    instance-of v4, p2, Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 351
    check-cast p2, Ljava/lang/Class;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/DefaultObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    .line 354
    .restart local p2
    :cond_0
    instance-of v4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    .line 355
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/DefaultObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/ParameterizedType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 358
    .restart local p2
    :cond_1
    instance-of v4, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_2

    .line 359
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 362
    :cond_2
    instance-of v4, p2, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_3

    .line 363
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 366
    :cond_3
    instance-of v4, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_4

    move-object v4, p2

    .line 367
    check-cast v4, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v4}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 368
    .local v2, componentType:Ljava/lang/reflect/Type;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 370
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_4

    move-object v1, v2

    .line 371
    check-cast v1, Ljava/lang/Class;

    .line 372
    .local v1, componentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    .line 374
    .local v0, array:[Ljava/lang/Object;
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    .line 380
    .end local v0           #array:[Ljava/lang/Object;
    .end local v1           #componentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #componentType:Ljava/lang/reflect/Type;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 485
    const/16 v0, 0xc

    return v0
.end method

.method public parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .parameter "parser"
    .parameter
    .parameter "keyType"
    .parameter "valueType"
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 45
    .local v6, lexer:Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/16 v14, 0xc

    if-eq v13, v14, :cond_0

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/16 v14, 0x10

    if-eq v13, v14, :cond_0

    .line 46
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "syntax error, expect {, actual "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->tokenName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 49
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    .line 50
    .local v5, keyDeserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v12

    .line 51
    .local v12, valueDeserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v13

    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v3

    .line 56
    .local v3, context:Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/16 v14, 0xd

    if-ne v13, v14, :cond_2

    .line 57
    const/16 v13, 0x10

    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 139
    .end local p2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_1
    return-object p2

    .line 61
    .restart local p2       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_b

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->isRef()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 62
    const/4 v7, 0x0

    .line 64
    .local v7, object:Ljava/lang/Object;
    const/4 v13, 0x4

    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    .line 65
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_9

    .line 66
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v9

    .line 67
    .local v9, ref:Ljava/lang/String;
    const-string v13, "@"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 68
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v7

    .line 97
    .end local v7           #object:Ljava/lang/Object;
    :goto_2
    const/16 v13, 0xd

    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 98
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/16 v14, 0xd

    if-eq v13, v14, :cond_a

    .line 99
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string v14, "illegal ref"

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .end local v9           #ref:Ljava/lang/String;
    :catchall_0
    move-exception v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v13

    .line 69
    .restart local v7       #object:Ljava/lang/Object;
    .restart local v9       #ref:Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v13, ".."

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 70
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v8

    .line 71
    .local v8, parentContext:Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 72
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 74
    :cond_4
    new-instance v13, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v13, v8, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 75
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_2

    .line 77
    .end local v8           #parentContext:Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_5
    const-string v13, "$"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 78
    move-object v10, v3

    .line 79
    .local v10, rootContext:Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_3
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 80
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v10

    goto :goto_3

    .line 83
    :cond_6
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 84
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 86
    :cond_7
    new-instance v13, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v13, v10, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 87
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_2

    .line 90
    .end local v10           #rootContext:Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_8
    new-instance v13, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v13, v3, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 91
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto/16 :goto_2

    .line 94
    .end local v9           #ref:Ljava/lang/String;
    :cond_9
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "illegal ref, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v15

    invoke-static {v15}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 101
    .end local v7           #object:Ljava/lang/Object;
    .restart local v9       #ref:Ljava/lang/String;
    :cond_a
    const/16 v13, 0x10

    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 p2, v7

    goto/16 :goto_1

    .line 109
    .end local v9           #ref:Ljava/lang/String;
    :cond_b
    :try_start_3
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_c

    const-string v13, "@type"

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 110
    const/4 v13, 0x4

    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    .line 111
    const/16 v13, 0x10

    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 112
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v13

    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 115
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v5, v0, v1, v13}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 117
    .local v4, key:Ljava/lang/Object;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/16 v14, 0x11

    if-eq v13, v14, :cond_d

    .line 118
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "syntax error, expect :, actual "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 121
    :cond_d
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v13

    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 123
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v12, v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 125
    .local v11, value:Ljava/lang/Object;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v13

    if-nez v13, :cond_e

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p2

    if-eq v13, v0, :cond_e

    .line 126
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v3, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 129
    :cond_e
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v13

    const/16 v14, 0x10

    if-ne v13, v14, :cond_1

    .line 132
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v13

    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    .locals 11
    .parameter "parser"
    .parameter
    .parameter "valueType"
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    .line 144
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 146
    .local v5, lexer:Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v8

    const/16 v9, 0xc

    if-eq v8, v9, :cond_0

    .line 147
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "syntax error, expect {, actual "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2

    .line 153
    .local v2, context:Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 154
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result v0

    .line 155
    .local v0, ch:C
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 156
    :goto_0
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_2

    .line 157
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->incrementBufferPosition()V

    .line 158
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 159
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result v0

    goto :goto_0

    .line 164
    :cond_2
    const/16 v8, 0x22

    if-ne v0, v8, :cond_3

    .line 165
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 167
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result v0

    .line 168
    const/16 v8, 0x3a

    if-eq v0, v8, :cond_8

    .line 169
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "expect \':\' at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->pos()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    .end local v0           #ch:C
    .end local v4           #key:Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v8

    .line 171
    .restart local v0       #ch:C
    :cond_3
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_4

    .line 172
    :try_start_1
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->incrementBufferPosition()V

    .line 173
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->resetStringPosition()V

    .line 174
    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .end local p2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    return-object p2

    .line 176
    .restart local p2       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    const/16 v8, 0x27

    if-ne v0, v8, :cond_6

    .line 177
    :try_start_2
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 178
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 181
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v8

    const/16 v9, 0x27

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v4

    .line 182
    .restart local v4       #key:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 183
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result v0

    .line 184
    const/16 v8, 0x3a

    if-eq v0, v8, :cond_8

    .line 185
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "expect \':\' at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->pos()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 188
    .end local v4           #key:Ljava/lang/String;
    :cond_6
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 189
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 192
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v4

    .line 193
    .restart local v4       #key:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 194
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result v0

    .line 195
    const/16 v8, 0x3a

    if-eq v0, v8, :cond_8

    .line 196
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "expect \':\' at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->pos()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", actual "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 200
    :cond_8
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->incrementBufferPosition()V

    .line 201
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 202
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result v0

    .line 204
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->resetStringPosition()V

    .line 206
    const-string v8, "@type"

    if-ne v4, v8, :cond_b

    .line 207
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, typeName:Ljava/lang/String;
    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 210
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v1, v8, :cond_9

    .line 211
    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 212
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_1

    .line 213
    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_1

    .line 219
    :cond_9
    :try_start_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 221
    .local v3, deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 223
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 225
    if-eqz v2, :cond_a

    instance-of v8, p4, Ljava/lang/Integer;

    if-nez v8, :cond_a

    .line 226
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    .line 229
    :cond_a
    invoke-interface {v3, p1, v1, p4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object p2, v8

    goto/16 :goto_1

    .line 233
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v6           #typeName:Ljava/lang/String;
    :cond_b
    :try_start_4
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 235
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_c

    .line 236
    const/4 v7, 0x0

    .line 237
    .local v7, value:Ljava/lang/Object;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 242
    .end local v7           #value:Ljava/lang/Object;
    :goto_2
    invoke-interface {p2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {p1, p2, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1, v2, v7, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 247
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_1

    .line 248
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 253
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_1

    .line 239
    :cond_c
    :try_start_5
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    .restart local v7       #value:Ljava/lang/Object;
    goto :goto_2
.end method

.method public parseObject(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V
    .locals 15
    .parameter "parser"
    .parameter "object"

    .prologue
    .line 259
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 260
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldDeserializers(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v11

    .line 262
    .local v11, setters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 264
    .local v9, lexer:Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v12

    const/16 v13, 0xd

    if-ne v12, v13, :cond_0

    .line 265
    const/16 v12, 0x10

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 346
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v12

    const/16 v13, 0xc

    if-eq v12, v13, :cond_1

    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v12

    const/16 v13, 0x10

    if-eq v12, v13, :cond_1

    .line 270
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "syntax error, expect {, actual "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->tokenName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 273
    :cond_1
    const/4 v12, 0x1

    new-array v1, v12, [Ljava/lang/Object;

    .line 277
    .local v1, args:[Ljava/lang/Object;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, key:Ljava/lang/String;
    if-nez v8, :cond_4

    .line 280
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v12

    const/16 v13, 0xd

    if-ne v12, v13, :cond_3

    .line 281
    const/16 v12, 0x10

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    goto :goto_0

    .line 284
    :cond_3
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v12

    const/16 v13, 0x10

    if-ne v12, v13, :cond_4

    .line 285
    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 291
    :cond_4
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 292
    .local v5, fieldDeser:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v5, :cond_6

    .line 293
    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 294
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setter not found, class "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", property "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 297
    :cond_5
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon()V

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 300
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v12

    const/16 v13, 0xd

    if-ne v12, v13, :cond_2

    .line 301
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    goto/16 :goto_0

    .line 307
    :cond_6
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    .line 308
    .local v10, method:Ljava/lang/reflect/Method;
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v4, v12, v13

    .line 309
    .local v4, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v6, v12, v13

    .line 310
    .local v6, fieldType:Ljava/lang/reflect/Type;
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v12, :cond_7

    .line 311
    const/4 v12, 0x2

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    .line 312
    const/4 v12, 0x0

    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/deserializer/IntegerDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v1, v12

    .line 331
    :goto_1
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v12

    const/16 v13, 0x10

    if-eq v12, v13, :cond_2

    .line 341
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v12

    const/16 v13, 0xd

    if-ne v12, v13, :cond_2

    .line 342
    const/16 v12, 0x10

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    goto/16 :goto_0

    .line 313
    :cond_7
    const-class v12, Ljava/lang/String;

    if-ne v4, v12, :cond_8

    .line 314
    const/4 v12, 0x4

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    .line 315
    const/4 v12, 0x0

    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/deserializer/StringDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v1, v12

    goto :goto_1

    .line 316
    :cond_8
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v12, :cond_9

    .line 317
    const/4 v12, 0x2

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    .line 318
    const/4 v12, 0x0

    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/deserializer/LongDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v1, v12

    goto :goto_1

    .line 319
    :cond_9
    const-class v12, Ljava/util/List;

    if-ne v4, v12, :cond_a

    .line 320
    const/16 v12, 0xc

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    .line 321
    const/4 v12, 0x0

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v14}, Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v1, v12

    goto :goto_1

    .line 323
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v12

    invoke-virtual {v12, v4, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    .line 326
    .local v7, fieldValueDeserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    .line 327
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v7, v0, v6, v13}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v1, v12

    goto :goto_1

    .line 332
    .end local v7           #fieldValueDeserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :catch_0
    move-exception v3

    .line 333
    .local v3, e:Ljava/lang/Exception;
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "set proprety error, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
.end method
