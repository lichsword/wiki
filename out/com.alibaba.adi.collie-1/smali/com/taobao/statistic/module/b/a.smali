.class public final Lcom/taobao/statistic/module/b/a;
.super Lcom/taobao/statistic/c/b;
.source "CookieHelper.java"


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 0
    .parameter "aRuntime"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/taobao/statistic/c/b;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 38
    return-void
.end method

.method private V(Ljava/lang/String;)V
    .locals 9
    .parameter "aUrl"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/taobao/statistic/module/b/a;->ds()Ljava/util/List;

    move-result-object v2

    .line 151
    .local v2, cookieDomains:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v0, cdomains:Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    .local v1, cookieDomain:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lorg/usertrack/a/a/a/a/a;->k([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 156
    .end local v1           #cookieDomain:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lorg/usertrack/a/a/a/a/a;->k([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v5, p0, Lcom/taobao/statistic/module/b/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v5}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v3

    .line 158
    .local v3, cpc:Lcom/taobao/statistic/core/a/c;
    if-eqz v3, :cond_1

    .line 159
    const-string v5, "utCookieDomains"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/taobao/statistic/core/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v3}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 161
    const/4 v5, 0x2

    const-string v6, "saveCookieDomain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "aUrl is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 164
    .end local v0           #cdomains:Ljava/lang/StringBuilder;
    .end local v3           #cpc:Lcom/taobao/statistic/core/a/c;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private W(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "aUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, address:Ljava/lang/String;
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 196
    .local v3, url:Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, host:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, scheme:Ljava/lang/String;
    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    move-object v0, v1

    .line 208
    :goto_0
    return-object v0

    .line 203
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_1
    const-string v4, "getAddress"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aUrl is malformed, or no protocol, aUrl="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 15
    .parameter "allCookie"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, kvs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 49
    const-string v11, "utkey="

    .line 115
    :goto_0
    return-object v11

    .line 51
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 52
    const/4 v11, 0x0

    goto :goto_0

    .line 56
    :cond_1
    const/4 v11, 0x0

    .line 58
    .local v11, oldCookie:Ljava/lang/String;
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 59
    const-string v13, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, allCookies:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v13, v1

    if-ge v8, v13, :cond_2

    .line 61
    aget-object v13, v1, v8

    const-string v14, "utkey="

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 62
    aget-object v13, v1, v8

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 74
    .end local v1           #allCookies:[Ljava/lang/String;
    .end local v8           #i:I
    :cond_2
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v3, cookieCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 77
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_3

    .line 78
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "k should not be null, nothing to do."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .end local v3           #cookieCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 113
    .local v5, e:Ljava/lang/Exception;
    const-string v13, "mergeUTCookie"

    const-string v14, "cookie format error, please read docs."

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 60
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v1       #allCookies:[Ljava/lang/String;
    .restart local v8       #i:I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 67
    .end local v1           #allCookies:[Ljava/lang/String;
    .end local v8           #i:I
    :catch_1
    move-exception v5

    .line 68
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v13, "mergeUTCookie"

    const-string v14, "cookie format error, please read docs."

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    const/4 v11, 0x0

    goto :goto_0

    .line 83
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #cookieCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_5
    if-eqz v11, :cond_7

    :try_start_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_7

    .line 84
    const-string v13, "utkey="

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 85
    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 86
    .local v12, oldCookies:[Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    array-length v13, v12

    if-ge v8, v13, :cond_7

    .line 87
    aget-object v13, v12, v8

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 88
    aget-object v13, v12, v8

    const/16 v14, 0x3d

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 89
    .local v7, eqidx:I
    aget-object v13, v12, v8

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, ck:Ljava/lang/String;
    aget-object v13, v12, v8

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, cv:Ljava/lang/String;
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v2           #ck:Ljava/lang/String;
    .end local v4           #cv:Ljava/lang/String;
    .end local v7           #eqidx:I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 96
    .end local v8           #i:I
    .end local v12           #oldCookies:[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 98
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v10, mergedUtCookie:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 100
    .restart local v6       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 103
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_8
    const/16 v13, 0x2c

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 107
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_a

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const/16 v14, 0x2c

    if-ne v13, v14, :cond_a

    .line 108
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 111
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "utkey="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    goto/16 :goto_0
.end method

.method private ds()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v3, cookieDomains:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 169
    .local v7, xmlcdomains:Ljava/lang/String;
    iget-object v9, p0, Lcom/taobao/statistic/module/b/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v9}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v4

    .line 170
    .local v4, cpc:Lcom/taobao/statistic/core/a/c;
    if-eqz v4, :cond_0

    .line 171
    const-string v9, "utCookieDomains"

    invoke-virtual {v4, v9}, Lcom/taobao/statistic/core/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 173
    :cond_0
    invoke-static {v7}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 174
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, base64cdomains:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, v0, v5

    .line 176
    .local v1, base64cdomain:Ljava/lang/String;
    invoke-static {v1}, Lorg/usertrack/a/a/a/a/a;->ar(Ljava/lang/String;)[B

    move-result-object v8

    .line 177
    .local v8, xmlcdomainsByte:[B
    if-eqz v8, :cond_1

    array-length v9, v8

    if-lez v9, :cond_1

    .line 178
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 183
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #base64cdomain:Ljava/lang/String;
    .end local v2           #base64cdomains:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #xmlcdomainsByte:[B
    :cond_2
    return-object v3
.end method


# virtual methods
.method public dt()V
    .locals 4

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/taobao/statistic/module/b/a;->ds()Ljava/util/List;

    move-result-object v1

    .line 188
    .local v1, cookieDomains:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    .local v0, cookieDomain:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/taobao/statistic/module/b/a;->updateUTCookie(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 191
    .end local v0           #cookieDomain:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updateUTCookie(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .parameter "aUrl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, kvs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/taobao/statistic/module/b/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v5}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 122
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 123
    .local v2, cookieManager:Landroid/webkit/CookieManager;
    if-eqz v2, :cond_2

    .line 124
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 126
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/statistic/module/b/a;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v2, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, allCookie:Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Lcom/taobao/statistic/module/b/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, utCookie:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 131
    invoke-virtual {v2, v0, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    const-string v5, "http://log.mmstat.com"

    invoke-virtual {v2, v5, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/taobao/statistic/module/b/a;->V(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #allCookie:Ljava/lang/String;
    .end local v4           #utCookie:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 142
    :cond_2
    return-void

    .line 137
    :catch_0
    move-exception v3

    .line 138
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "updateUTCookie"

    const-string v6, "Call is not allowed (SDK not initialized)."

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateUTSIDToCookie(Ljava/lang/String;)V
    .locals 7
    .parameter "aUrl"

    .prologue
    .line 212
    iget-object v4, p0, Lcom/taobao/statistic/module/b/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v4}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 213
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 214
    .local v1, cookieManager:Landroid/webkit/CookieManager;
    if-eqz v1, :cond_1

    .line 215
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 217
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/statistic/module/b/a;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 220
    iget-object v4, p0, Lcom/taobao/statistic/module/b/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v4}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/statistic/core/l;->cf()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, utsid:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "utsid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v4, ".taobaocdn.com"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "utsid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v4, ".taobao.com"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "utsid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v4, ".etao.com"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "utsid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v4, ".tmall.com"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "utsid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v4, "http://log.mmstat.com"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "utsid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v4, ".mmstat.com"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "utsid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v4, "h5.m.taobao.com"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "utsid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v0           #address:Ljava/lang/String;
    .end local v3           #utsid:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 235
    :cond_1
    return-void

    .line 230
    :catch_0
    move-exception v2

    .line 231
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "updateUTSIDToCookie"

    const-string v5, "Call is not allowed (SDK not initialized)."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
