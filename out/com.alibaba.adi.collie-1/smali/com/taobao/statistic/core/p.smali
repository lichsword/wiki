.class public Lcom/taobao/statistic/core/p;
.super Lcom/taobao/statistic/c/b;
.source "UrlWrapper.java"


# instance fields
.field private iC:Lcom/taobao/statistic/core/q;

.field private iz:Lcom/ut/device/b;

.field private mC:Z

.field private mP:Lcom/taobao/statistic/core/m;

.field private mQ:Ljava/lang/reflect/Method;

.field private mR:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 1
    .parameter "aRuntime"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/taobao/statistic/c/b;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 25
    iput-object v0, p0, Lcom/taobao/statistic/core/p;->mP:Lcom/taobao/statistic/core/m;

    .line 26
    iput-object v0, p0, Lcom/taobao/statistic/core/p;->iz:Lcom/ut/device/b;

    .line 27
    iput-object v0, p0, Lcom/taobao/statistic/core/p;->iC:Lcom/taobao/statistic/core/q;

    .line 28
    iput-object v0, p0, Lcom/taobao/statistic/core/p;->mQ:Ljava/lang/reflect/Method;

    .line 29
    iput-object v0, p0, Lcom/taobao/statistic/core/p;->mR:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/statistic/core/p;->mC:Z

    .line 34
    invoke-virtual {p1}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/statistic/core/p;->mP:Lcom/taobao/statistic/core/m;

    .line 35
    invoke-virtual {p1}, Lcom/taobao/statistic/core/i;->bN()Lcom/ut/device/b;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/statistic/core/p;->iz:Lcom/ut/device/b;

    .line 36
    invoke-virtual {p1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/statistic/core/p;->iC:Lcom/taobao/statistic/core/q;

    .line 39
    iget-object v0, p0, Lcom/taobao/statistic/core/p;->mP:Lcom/taobao/statistic/core/m;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/m;->cB()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/statistic/core/p;->mC:Z

    .line 40
    iget-boolean v0, p0, Lcom/taobao/statistic/core/p;->mC:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/taobao/statistic/core/p;->cG()V

    .line 43
    :cond_0
    return-void
.end method

.method private I(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/statistic/core/p;->mP:Lcom/taobao/statistic/core/m;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/m;->cy()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, appkey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/statistic/core/p;->mP:Lcom/taobao/statistic/core/m;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/m;->getChannel()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, channel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/statistic/core/p;->iz:Lcom/ut/device/b;

    invoke-virtual {v1}, Lcom/ut/device/b;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, appVersion:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/statistic/core/p;->mP:Lcom/taobao/statistic/core/m;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/m;->cz()Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, appSecret:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/statistic/core/p;->iz:Lcom/ut/device/b;

    invoke-virtual {v1}, Lcom/ut/device/b;->dY()Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, platform:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/statistic/core/p;->iC:Lcom/taobao/statistic/core/q;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->cN()Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, sdkVersion:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/statistic/core/p;->iz:Lcom/ut/device/b;

    invoke-virtual {v1}, Lcom/ut/device/b;->getUtdid()Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v7, utdid:Ljava/lang/String;
    const-string v9, "2.0"

    .line 107
    .local v9, v:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, t:Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, newUrl:Ljava/lang/String;
    move-object/from16 v1, p0

    .line 109
    invoke-direct/range {v1 .. v10}, Lcom/taobao/statistic/core/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 111
    .local v15, signValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/statistic/core/p;->iz:Lcom/ut/device/b;

    invoke-virtual {v1}, Lcom/ut/device/b;->getImei()Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, lIMEI:Ljava/lang/String;
    const-string v12, ""

    .line 113
    .local v12, base64_dd:Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 115
    const-string v1, "UTF-8"

    invoke-virtual {v13, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/usertrack/android/utils/g;->u([B)[B

    move-result-object v11

    .line 117
    .local v11, bMd5:[B
    invoke-static {v11}, Lorg/usertrack/android/utils/c;->k([B)Ljava/lang/String;

    move-result-object v12

    .line 118
    if-nez v12, :cond_0

    .line 119
    const-string v12, ""

    .line 123
    .end local v11           #bMd5:[B
    :cond_0
    const-string v1, "%s?ak=%s&av=%s&c=%s&v=%s&s=%s&d=%s&sv=%s&p=%s&t=%s&u=%s&dd=%s"

    const/16 v16, 0xc

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/taobao/statistic/core/p;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/taobao/statistic/core/p;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/taobao/statistic/core/p;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/taobao/statistic/core/p;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/taobao/statistic/core/p;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/taobao/statistic/core/p;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x7

    aput-object v6, v16, v17

    const/16 v17, 0x8

    aput-object v5, v16, v17

    const/16 v17, 0x9

    aput-object v8, v16, v17

    const/16 v17, 0xa

    const-string v18, ""

    aput-object v18, v16, v17

    const/16 v17, 0xb

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 129
    return-object v14
.end method

.method private J(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 139
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private K(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "t"

    .prologue
    const/4 v6, 0x1

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/taobao/statistic/core/p;->mQ:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/taobao/statistic/core/p;->mR:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 194
    .local v1, sign:Ljava/lang/Object;
    const/4 v2, 0x1

    const-string v3, "getSignPublic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sign:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/taobao/statistic/core/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 196
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 197
    check-cast v1, Ljava/lang/String;

    .line 203
    .end local v1           #sign:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 199
    .restart local v1       #sign:Ljava/lang/Object;
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v1           #sign:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "getSignPublic"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/taobao/statistic/core/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 203
    const-string v1, ""

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "appkey"
    .parameter "channel"
    .parameter "appVersion"
    .parameter "platform"
    .parameter "sdkVersion"
    .parameter "utdid"
    .parameter "t"
    .parameter "v"
    .parameter "appSecret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, sign:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/taobao/statistic/core/p;->mC:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/statistic/core/p;->mQ:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/statistic/core/p;->mR:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 152
    invoke-direct {p0, p7}, Lcom/taobao/statistic/core/p;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-direct/range {p0 .. p9}, Lcom/taobao/statistic/core/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "appkey"
    .parameter "channel"
    .parameter "appVersion"
    .parameter "platform"
    .parameter "sdkVersion"
    .parameter "utdid"
    .parameter "t"
    .parameter "v"
    .parameter "appSecret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v14, 0x0

    .line 166
    .local v14, result:[B
    :try_start_0
    const-string v1, "UTF-8"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lorg/usertrack/a/a/a/a/c;->m(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lorg/usertrack/a/a/a/a/c;->m(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lorg/usertrack/a/a/a/a/c;->m(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lorg/usertrack/a/a/a/a/c;->m(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "UTF-8"

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Lorg/usertrack/a/a/a/a/c;->m(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "UTF-8"

    move-object/from16 v0, p6

    invoke-static {v0, v6}, Lorg/usertrack/a/a/a/a/c;->m(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "UTF-8"

    move-object/from16 v0, p7

    invoke-static {v0, v7}, Lorg/usertrack/a/a/a/a/c;->m(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "UTF-8"

    move-object/from16 v0, p8

    invoke-static {v0, v8}, Lorg/usertrack/a/a/a/a/c;->m(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "UTF-8"

    move-object/from16 v0, p9

    invoke-static {v0, v9}, Lorg/usertrack/a/a/a/a/c;->m(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    invoke-static/range {v1 .. v9}, Lorg/usertrack/android/utils/NDKUtils;->S([B[B[B[B[B[B[B[B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 182
    :goto_0
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 183
    .local v15, sb:Ljava/lang/StringBuffer;
    if-eqz v14, :cond_0

    .line 184
    move-object v10, v14

    .local v10, arr$:[B
    array-length v13, v10

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v13, :cond_0

    aget-byte v11, v10, v12

    .line 185
    .local v11, b:B
    const-string v1, "%02x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 188
    .end local v10           #arr$:[B
    .end local v11           #b:B
    .end local v12           #i$:I
    .end local v13           #len$:I
    :cond_0
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 178
    .end local v15           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private cG()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 47
    :try_start_0
    const-string v3, "com.taobao.securityjni.SecurityCheck"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 49
    .local v1, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "getCheckSignature"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/statistic/core/p;->mQ:Ljava/lang/reflect/Method;

    .line 51
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ContextWrapper;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 52
    .local v0, cc:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/taobao/statistic/core/p;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/content/ContextWrapper;

    aput-object v3, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/statistic/core/p;->mR:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0           #cc:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v1           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, e:Ljava/lang/Throwable;
    const-string v3, "getSignPublic"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/taobao/statistic/core/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public cH()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/taobao/statistic/core/p;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->dl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/statistic/core/p;->I(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "http://adash.m.taobao.com/rest/ur"

    invoke-direct {p0, v1}, Lcom/taobao/statistic/core/p;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public cI()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/taobao/statistic/core/p;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->dm()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/p;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
