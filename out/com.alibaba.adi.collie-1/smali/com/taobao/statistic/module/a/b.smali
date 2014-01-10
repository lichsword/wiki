.class public Lcom/taobao/statistic/module/a/b;
.super Lcom/taobao/statistic/c/b;
.source "ConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/module/a/b$a;
    }
.end annotation


# instance fields
.field private nA:Z

.field private ny:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/taobao/statistic/module/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private nz:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/taobao/statistic/module/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 1
    .parameter "aRuntime"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/taobao/statistic/c/b;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/module/a/b;->ny:Ljava/util/Vector;

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/module/a/b;->nz:Ljava/util/Vector;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/statistic/module/a/b;->nA:Z

    .line 55
    return-void
.end method

.method private declared-synchronized S(Ljava/lang/String;)V
    .locals 3
    .parameter "responseText"

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/taobao/statistic/module/a/b;->ny:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/statistic/module/a/a;

    .line 180
    .local v0, business:Lcom/taobao/statistic/module/a/a;
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/module/a/a;->l(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 179
    .end local v0           #business:Lcom/taobao/statistic/module/a/a;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 183
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/taobao/statistic/module/a/b;->nz:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/statistic/module/a/c;

    .line 184
    .local v0, business:Lcom/taobao/statistic/module/a/c;
    invoke-interface {v0, p1}, Lcom/taobao/statistic/module/a/c;->l(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 186
    .end local v0           #business:Lcom/taobao/statistic/module/a/c;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method static synthetic a(Lcom/taobao/statistic/module/a/b;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/taobao/statistic/module/a/b;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/taobao/statistic/module/a/b;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/taobao/statistic/module/a/b;->dr()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 10
    .parameter "jData"
    .parameter "localData"

    .prologue
    .line 270
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 271
    .local v5, mergedData:Lorg/json/JSONObject;
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .local v3, kiter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 272
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    .local v0, bizK:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 274
    .local v6, serverV:Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    const-string v7, "content"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 275
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 276
    .local v1, bizm:Lorg/json/JSONObject;
    const-string v7, "gc_304"

    const-string v8, "content"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 277
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 278
    .local v4, localV:Lorg/json/JSONObject;
    const-string v7, "t"

    const-string v8, "t"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 279
    const-string v7, "content"

    const-string v8, "content"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    .end local v4           #localV:Lorg/json/JSONObject;
    :goto_1
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    .end local v0           #bizK:Ljava/lang/String;
    .end local v1           #bizm:Lorg/json/JSONObject;
    .end local v3           #kiter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #mergedData:Lorg/json/JSONObject;
    .end local v6           #serverV:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 291
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    return-object v5

    .line 281
    .restart local v0       #bizK:Ljava/lang/String;
    .restart local v1       #bizm:Lorg/json/JSONObject;
    .restart local v3       #kiter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5       #mergedData:Lorg/json/JSONObject;
    .restart local v6       #serverV:Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v7, "t"

    const-string v8, "t"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 282
    const-string v7, "content"

    const-string v8, "content"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 287
    .end local v0           #bizK:Ljava/lang/String;
    .end local v1           #bizm:Lorg/json/JSONObject;
    .end local v6           #serverV:Lorg/json/JSONObject;
    :cond_2
    const/4 v7, 0x2

    const-string v8, "mergeServerConfig"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic a(Lcom/taobao/statistic/module/a/b;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/taobao/statistic/module/a/b;->S(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/statistic/module/a/b;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/taobao/statistic/module/a/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9
    .parameter "responseText"
    .parameter "localData"

    .prologue
    .line 230
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 231
    .local v2, jResult:Lorg/json/JSONObject;
    if-eqz v2, :cond_3

    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, jData:Lorg/json/JSONObject;
    const-string v7, "data"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 234
    const-string v7, "data"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, vData:Ljava/lang/String;
    invoke-static {v6}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 237
    const-string v7, "data"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 240
    .end local v6           #vData:Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 241
    new-instance v1, Lorg/json/JSONObject;

    .end local v1           #jData:Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 243
    .restart local v1       #jData:Lorg/json/JSONObject;
    :cond_1
    const-string v7, "t"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 244
    const-string v7, "t"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, tValue:Ljava/lang/String;
    invoke-static {v5}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 246
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 247
    .local v3, lJson:Lorg/json/JSONObject;
    const-string v7, "content"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v7, "t"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 249
    const-string v7, "B01N1"

    invoke-virtual {v1, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    .end local v3           #lJson:Lorg/json/JSONObject;
    .end local v5           #tValue:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/taobao/statistic/module/a/b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 253
    .local v4, mergedData:Lorg/json/JSONObject;
    invoke-direct {p0, v4}, Lcom/taobao/statistic/module/a/b;->c(Lorg/json/JSONObject;)V

    .line 255
    invoke-direct {p0, v4}, Lcom/taobao/statistic/module/a/b;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v1           #jData:Lorg/json/JSONObject;
    .end local v2           #jResult:Lorg/json/JSONObject;
    .end local v4           #mergedData:Lorg/json/JSONObject;
    :cond_3
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized b(Lorg/json/JSONObject;)V
    .locals 9
    .parameter "aConfigurations"

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-boolean v8, p0, Lcom/taobao/statistic/module/a/b;->nA:Z

    if-nez v8, :cond_2

    .line 136
    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/taobao/statistic/module/a/b;->ny:Ljava/util/Vector;

    if-eqz v8, :cond_2

    .line 138
    iget-object v8, p0, Lcom/taobao/statistic/module/a/b;->ny:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/statistic/module/a/a;

    .line 139
    .local v1, configurationBusiness:Lcom/taobao/statistic/module/a/a;
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1}, Lcom/taobao/statistic/module/a/a;->aC()Ljava/util/List;

    move-result-object v3

    .line 144
    .local v3, configurationNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 146
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .local v2, configurationName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 149
    .local v0, cContent:Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 156
    :try_start_2
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, value:Ljava/lang/String;
    invoke-static {v7}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 159
    invoke-virtual {v1, v2, v7}, Lcom/taobao/statistic/module/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 135
    .end local v0           #cContent:Ljava/lang/Object;
    .end local v1           #configurationBusiness:Lcom/taobao/statistic/module/a/a;
    .end local v2           #configurationName:Ljava/lang/String;
    .end local v3           #configurationNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #value:Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 151
    .restart local v0       #cContent:Ljava/lang/Object;
    .restart local v1       #configurationBusiness:Lcom/taobao/statistic/module/a/a;
    .restart local v2       #configurationName:Ljava/lang/String;
    .restart local v3       #configurationNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 154
    .local v4, e:Lorg/json/JSONException;
    goto :goto_0

    .line 169
    .end local v0           #cContent:Ljava/lang/Object;
    .end local v1           #configurationBusiness:Lcom/taobao/statistic/module/a/a;
    .end local v2           #configurationName:Ljava/lang/String;
    .end local v3           #configurationNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #e:Lorg/json/JSONException;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized c(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "mergedData"

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, storeData:Ljava/lang/String;
    iget-object v3, p0, Lcom/taobao/statistic/module/a/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v1

    .line 303
    .local v1, cpc:Lcom/taobao/statistic/core/a/c;
    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/a/a/a/a/a;->k([B)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, base64Value:Ljava/lang/String;
    const-string v3, "UTConfCache"

    invoke-virtual {v1, v3, v0}, Lcom/taobao/statistic/core/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 309
    const/4 v3, 0x2

    const-string v4, "storeConfig"

    invoke-static {v3, v4, v2}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    .end local v0           #base64Value:Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void

    .line 299
    .end local v1           #cpc:Lcom/taobao/statistic/core/a/c;
    .end local v2           #storeData:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private d(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 10
    .parameter "localData"

    .prologue
    .line 349
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 350
    .local v5, upData:Lorg/json/JSONObject;
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .local v4, kiter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 351
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    .local v0, bizK:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 353
    .local v1, bizV:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v6, "t"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "t"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 354
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 355
    .local v2, bizV2:Lorg/json/JSONObject;
    const-string v6, "t"

    const-string v7, "t"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v2, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 356
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    .end local v0           #bizK:Ljava/lang/String;
    .end local v1           #bizV:Lorg/json/JSONObject;
    .end local v2           #bizV2:Lorg/json/JSONObject;
    .end local v4           #kiter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #upData:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 362
    .local v3, e:Ljava/lang/Exception;
    const-string v6, ""

    .end local v3           #e:Ljava/lang/Exception;
    :goto_1
    return-object v6

    .line 359
    .restart local v4       #kiter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5       #upData:Lorg/json/JSONObject;
    :cond_1
    const/4 v6, 0x2

    :try_start_1
    const-string v7, "prepareUpConfig"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 360
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1
.end method

.method private declared-synchronized dr()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 318
    monitor-enter p0

    const/4 v2, 0x0

    .line 319
    .local v2, serverConfig:Ljava/lang/String;
    const/4 v4, 0x0

    .line 320
    .local v4, xmlServerConfig:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/taobao/statistic/module/a/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v6}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v0

    .line 322
    .local v0, cpc:Lcom/taobao/statistic/core/a/c;
    if-eqz v0, :cond_0

    .line 323
    const-string v6, "UTConfCache"

    invoke-virtual {v0, v6}, Lcom/taobao/statistic/core/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 326
    :cond_0
    invoke-static {v4}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 327
    invoke-static {v4}, Lorg/usertrack/a/a/a/a/a;->ar(Ljava/lang/String;)[B

    move-result-object v5

    .line 329
    .local v5, xmlServerConfigByte:[B
    if-eqz v5, :cond_1

    array-length v6, v5

    if-lez v6, :cond_1

    .line 331
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v2           #serverConfig:Ljava/lang/String;
    .local v3, serverConfig:Ljava/lang/String;
    const/4 v6, 0x2

    :try_start_1
    const-string v7, "loadServerConfig"

    invoke-static {v6, v7, v3}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 336
    .end local v3           #serverConfig:Ljava/lang/String;
    .end local v5           #xmlServerConfigByte:[B
    .restart local v2       #serverConfig:Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 339
    .end local v0           #cpc:Lcom/taobao/statistic/core/a/c;
    :goto_0
    monitor-exit p0

    return-object v6

    .line 336
    .restart local v0       #cpc:Lcom/taobao/statistic/core/a/c;
    :cond_2
    :try_start_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 338
    .end local v0           #cpc:Lcom/taobao/statistic/core/a/c;
    :catch_0
    move-exception v1

    .line 339
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_4
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 318
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #serverConfig:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 338
    .restart local v0       #cpc:Lcom/taobao/statistic/core/a/c;
    .restart local v3       #serverConfig:Ljava/lang/String;
    .restart local v5       #xmlServerConfigByte:[B
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #serverConfig:Ljava/lang/String;
    .restart local v2       #serverConfig:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized T(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "pBusinessName"

    .prologue
    .line 192
    monitor-enter p0

    const/4 v0, 0x0

    .line 193
    .local v0, lGrayRelaseConfig:Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 194
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/statistic/module/a/b;->dr()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 195
    .local v1, lServerConfig:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 197
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 203
    .end local v1           #lServerConfig:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 199
    .restart local v1       #lServerConfig:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 192
    .end local v1           #lServerConfig:Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized U(Ljava/lang/String;)V
    .locals 3
    .parameter "pBusinessName"

    .prologue
    .line 207
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 208
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/statistic/module/a/b;->dr()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 209
    .local v1, lServerConfig:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 211
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    invoke-direct {p0, v1}, Lcom/taobao/statistic/module/a/b;->c(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    .end local v1           #lServerConfig:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    .restart local v1       #lServerConfig:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 207
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #lServerConfig:Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized a(Lcom/taobao/statistic/module/a/a;)V
    .locals 1
    .parameter "aBusiness"

    .prologue
    .line 76
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/taobao/statistic/module/a/b;->ny:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/taobao/statistic/module/a/c;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 64
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/taobao/statistic/module/a/b;->nz:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dp()V
    .locals 4

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, configurationUrl:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/taobao/statistic/module/a/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bY()Lcom/taobao/statistic/core/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/p;->cI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    new-instance v2, Lcom/taobao/statistic/module/a/b$a;

    invoke-direct {v2, p0, v0}, Lcom/taobao/statistic/module/a/b$a;-><init>(Lcom/taobao/statistic/module/a/b;Ljava/lang/String;)V

    .line 95
    .local v2, syncConfigurationThread:Lcom/taobao/statistic/module/a/b$a;
    const-string v3, "SyncConfigurationThread"

    invoke-virtual {v2, v3}, Lcom/taobao/statistic/module/a/b$a;->setName(Ljava/lang/String;)V

    .line 96
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/taobao/statistic/module/a/b$a;->setDaemon(Z)V

    .line 97
    invoke-virtual {v2}, Lcom/taobao/statistic/module/a/b$a;->start()V

    .line 99
    .end local v2           #syncConfigurationThread:Lcom/taobao/statistic/module/a/b$a;
    :cond_0
    return-void

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized dq()V
    .locals 3

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/taobao/statistic/module/a/b;->ny:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/statistic/module/a/a;

    .line 108
    .local v0, business:Lcom/taobao/statistic/module/a/a;
    invoke-virtual {v0}, Lcom/taobao/statistic/module/a/a;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    .end local v0           #business:Lcom/taobao/statistic/module/a/a;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 111
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/statistic/module/a/b;->dp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 3

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/taobao/statistic/module/a/b;->ny:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/statistic/module/a/a;

    .line 120
    .local v0, business:Lcom/taobao/statistic/module/a/a;
    invoke-virtual {v0}, Lcom/taobao/statistic/module/a/a;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    .end local v0           #business:Lcom/taobao/statistic/module/a/a;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 123
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/taobao/statistic/module/a/b;->ny:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 124
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/taobao/statistic/module/a/b;->nA:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    monitor-exit p0

    return-void
.end method
