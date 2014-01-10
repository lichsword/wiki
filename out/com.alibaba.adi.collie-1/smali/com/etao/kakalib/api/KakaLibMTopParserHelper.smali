.class public Lcom/etao/kakalib/api/KakaLibMTopParserHelper;
.super Ljava/lang/Object;
.source "KakaLibMTopParserHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etao/kakalib/api/KakaLibMTopParserHelper$BaseCardDeserializer;,
        Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;
    }
.end annotation


# static fields
.field public static final MTOP_API3BASE:Ljava/lang/String; = "http://api.m.taobao.com/rest/api3.do?"

.field protected static final TAG:Ljava/lang/String; = "KakaLibMTopParserHelper"

.field private static final mtopApi:Ljava/lang/String; = "http://api.m.taobao.com/rest/api3.do"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    .line 43
    const-class v1, Lcom/etao/kakalib/api/beans/BaseCard;

    new-instance v2, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$BaseCardDeserializer;

    invoke-direct {v2}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$BaseCardDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generalRequestUrl(Landroid/taobao/apirequest/TaoApiRequest;)Ljava/lang/String;
    .locals 1
    .parameter "request"

    .prologue
    .line 288
    const-string v0, "http://api.m.taobao.com/rest/api3.do?"

    invoke-virtual {p0, v0}, Landroid/taobao/apirequest/TaoApiRequest;->generalRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generatePostByte(Landroid/taobao/apirequest/TaoApiRequest;Ljava/lang/String;)[B
    .locals 5
    .parameter "taoApiRequest"
    .parameter "baseUrl"

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Landroid/taobao/apirequest/TaoApiRequest;->generalRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, url:Ljava/lang/String;
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, param:Ljava/lang/String;
    const/4 v0, 0x0

    .line 219
    .local v0, bytes:[B
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCommonApiRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/taobao/apirequest/TaoApiRequest;
    .locals 6
    .parameter "context"
    .parameter "apiString"
    .parameter "apiVersion"

    .prologue
    .line 301
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v2

    const/16 v3, 0x1388

    const/16 v4, 0x3e8

    const/16 v5, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/taobao/apirequest/ApiRequestMgr;->setTimeout(III)V

    .line 302
    new-instance v1, Landroid/taobao/apirequest/TaoApiRequest;

    invoke-direct {v1}, Landroid/taobao/apirequest/TaoApiRequest;-><init>()V

    .line 303
    .local v1, request:Landroid/taobao/apirequest/TaoApiRequest;
    const-string v2, "api"

    invoke-virtual {v1, v2, p1}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v2, "v"

    invoke-virtual {v1, v2, p2}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    if-eqz p0, :cond_0

    .line 306
    const-string v2, "imei"

    .line 307
    invoke-static {p0}, Lcom/etao/kakalib/util/KaKaLibUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/etao/kakalib/api/KaKaLibApiProcesser;->getBase64Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-virtual {v1, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v2, "imsi"

    .line 309
    invoke-static {p0}, Lcom/etao/kakalib/util/KaKaLibUtils;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/etao/kakalib/api/KaKaLibApiProcesser;->getBase64Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-virtual {v1, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    invoke-static {}, Lcom/etao/kakalib/api/KaKaLibApiProcesser;->getLoactionGpsString()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, gps:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 313
    const-string v2, "gps"

    invoke-virtual {v1, v2, v0}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :goto_0
    return-object v1

    .line 315
    :cond_1
    const-string v2, "gps"

    const-string v3, "0,0"

    invoke-virtual {v1, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static postMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;)Landroid/taobao/apirequest/ApiID;
    .locals 8
    .parameter "context"
    .parameter "url"
    .parameter "apiVersion"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/etao/kakalib/api/HttpRequstCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .local p3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<TT;>;"
    .local p5, beanClazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, v4

    invoke-static/range {v0 .. v7}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->postMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;Lcom/alibaba/fastjson/TypeReference;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public static postMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;Lcom/alibaba/fastjson/TypeReference;)Landroid/taobao/apirequest/ApiID;
    .locals 13
    .parameter "context"
    .parameter "url"
    .parameter "apiVersion"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/etao/kakalib/api/HttpRequstCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/TypeReference",
            "<*>;)",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 149
    .local p3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<TT;>;"
    .local p6, beanClazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p7, typeReference:Lcom/alibaba/fastjson/TypeReference;,"Lcom/alibaba/fastjson/TypeReference<*>;"
    new-instance v5, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-direct {v5, p1, v0, v1, v2}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;-><init>(Ljava/lang/String;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;Lcom/alibaba/fastjson/TypeReference;)V

    .line 151
    .local v5, callback:Landroid/taobao/apirequest/AsyncDataListener;
    invoke-static {p0, p1, p2}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->getCommonApiRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/taobao/apirequest/TaoApiRequest;

    move-result-object v9

    .line 152
    .local v9, request:Landroid/taobao/apirequest/TaoApiRequest;
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 153
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 154
    .local v8, paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 160
    .end local v8           #paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    new-instance v3, Landroid/taobao/apirequest/ApiProperty;

    invoke-direct {v3}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    .line 161
    .local v3, apiProp:Landroid/taobao/apirequest/ApiProperty;
    const-string v10, "http://api.m.taobao.com/rest/api3.do?"

    invoke-static {v9, v10}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->generatePostByte(Landroid/taobao/apirequest/TaoApiRequest;Ljava/lang/String;)[B

    move-result-object v4

    .line 162
    .local v4, b__:[B
    if-eqz v4, :cond_3

    array-length v10, v4

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 163
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/taobao/apirequest/ApiProperty;->setPost(Z)V

    .line 164
    invoke-virtual {v3, v4}, Landroid/taobao/apirequest/ApiProperty;->setPostData([B)V

    .line 166
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v7, httpHeader:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "Content-Type"

    const-string v11, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {v3, v7}, Landroid/taobao/apirequest/ApiProperty;->setConnectionHeader(Ljava/util/Map;)V

    .line 169
    if-eqz p5, :cond_1

    .line 170
    invoke-virtual/range {p5 .. p5}, Lcom/etao/kakalib/api/HttpRequstCallback;->onHttpLoadingStarted()V

    .line 172
    :cond_1
    const-string v10, "_p"

    const-string v11, "sync req start..."

    invoke-static {v10, v11}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v10

    const-string v11, "http://api.m.taobao.com/rest/api3.do"

    invoke-virtual {v10, v11, v5, v3}, Landroid/taobao/apirequest/ApiRequestMgr;->asyncConnect(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiID;

    move-result-object v10

    .line 176
    .end local v7           #httpHeader:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v10

    .line 154
    .end local v3           #apiProp:Landroid/taobao/apirequest/ApiProperty;
    .end local v4           #b__:[B
    .restart local v8       #paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 155
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v3       #apiProp:Landroid/taobao/apirequest/ApiProperty;
    .restart local v4       #b__:[B
    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public static requestMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/etao/kakalib/api/HttpRequstCallback;Lcom/alibaba/fastjson/TypeReference;)Landroid/taobao/apirequest/ApiID;
    .locals 8
    .parameter "context"
    .parameter "url"
    .parameter "apiVersion"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/etao/kakalib/api/HttpRequstCallback",
            "<TT;>;",
            "Lcom/alibaba/fastjson/TypeReference",
            "<*>;)",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .local p3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<TT;>;"
    .local p5, typeReference:Lcom/alibaba/fastjson/TypeReference;,"Lcom/alibaba/fastjson/TypeReference<*>;"
    const/4 v4, 0x0

    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, v4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->requestMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;Lcom/alibaba/fastjson/TypeReference;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public static requestMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;)Landroid/taobao/apirequest/ApiID;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "apiVersion"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/etao/kakalib/api/HttpRequstCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 88
    .local p3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<TT;>;"
    .local p5, beanClazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->requestMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public static requestMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;)Landroid/taobao/apirequest/ApiID;
    .locals 8
    .parameter "context"
    .parameter "url"
    .parameter "apiVersion"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/etao/kakalib/api/HttpRequstCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 102
    .line 103
    .local p3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<TT;>;"
    .local p6, beanClazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 102
    invoke-static/range {v0 .. v7}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->requestMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;Lcom/alibaba/fastjson/TypeReference;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public static requestMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;Lcom/alibaba/fastjson/TypeReference;)Landroid/taobao/apirequest/ApiID;
    .locals 8
    .parameter "context"
    .parameter "url"
    .parameter "apiVersion"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/etao/kakalib/api/HttpRequstCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/TypeReference",
            "<*>;)",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 115
    .local p3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<TT;>;"
    .local p6, beanClazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p7, typeReference:Lcom/alibaba/fastjson/TypeReference;,"Lcom/alibaba/fastjson/TypeReference<*>;"
    new-instance v1, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;

    invoke-direct {v1, p1, p5, p6, p7}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;-><init>(Ljava/lang/String;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;Lcom/alibaba/fastjson/TypeReference;)V

    .line 117
    .local v1, callback:Landroid/taobao/apirequest/AsyncDataListener;
    invoke-static {p0, p1, p2}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->getCommonApiRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/taobao/apirequest/TaoApiRequest;

    move-result-object v4

    .line 118
    .local v4, request:Landroid/taobao/apirequest/TaoApiRequest;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 119
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 120
    .local v3, paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 125
    .end local v3           #paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-static {v4}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->generalRequestUrl(Landroid/taobao/apirequest/TaoApiRequest;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, api:Ljava/lang/String;
    if-eqz p5, :cond_1

    .line 127
    invoke-virtual {p5}, Lcom/etao/kakalib/api/HttpRequstCallback;->onHttpLoadingStarted()V

    .line 129
    :cond_1
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroid/taobao/apirequest/ApiRequestMgr;->asyncConnect(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;)Landroid/taobao/apirequest/ApiID;

    move-result-object v5

    return-object v5

    .line 120
    .end local v0           #api:Ljava/lang/String;
    .restart local v3       #paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 121
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static syncPostMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "apiVersion"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 183
    .local p3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, beanClazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->syncPostMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Class;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static syncPostMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Class;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;
    .locals 10
    .parameter "context"
    .parameter "url"
    .parameter "apiVersion"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/TypeReference",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 190
    .local p3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, beanClazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p5, typeReference:Lcom/alibaba/fastjson/TypeReference;,"Lcom/alibaba/fastjson/TypeReference<*>;"
    invoke-static {p0, p1, p2}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->getCommonApiRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/taobao/apirequest/TaoApiRequest;

    move-result-object v6

    .line 191
    .local v6, request:Landroid/taobao/apirequest/TaoApiRequest;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 192
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 193
    .local v5, paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 199
    .end local v5           #paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    new-instance v0, Landroid/taobao/apirequest/ApiProperty;

    invoke-direct {v0}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    .line 200
    .local v0, apiProp:Landroid/taobao/apirequest/ApiProperty;
    const-string v7, "http://api.m.taobao.com/rest/api3.do?"

    invoke-static {v6, v7}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->generatePostByte(Landroid/taobao/apirequest/TaoApiRequest;Ljava/lang/String;)[B

    move-result-object v1

    .line 201
    .local v1, b__:[B
    if-eqz v1, :cond_2

    array-length v7, v1

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 202
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/taobao/apirequest/ApiProperty;->setPost(Z)V

    .line 203
    invoke-virtual {v0, v1}, Landroid/taobao/apirequest/ApiProperty;->setPostData([B)V

    .line 204
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v4, httpHeader:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "Content-Type"

    const-string v8, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-virtual {v0, v4}, Landroid/taobao/apirequest/ApiProperty;->setConnectionHeader(Ljava/util/Map;)V

    .line 207
    new-instance v2, Lcom/etao/kakalib/api/MopPostConnector;

    const-string v7, "http://api.m.taobao.com/rest/api3.do"

    invoke-direct {v2, v7, p4, p5}, Lcom/etao/kakalib/api/MopPostConnector;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson/TypeReference;)V

    .line 208
    .local v2, connector:Lcom/etao/kakalib/api/MopPostConnector;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v7

    invoke-virtual {v7, v2, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v7

    .line 210
    .end local v2           #connector:Lcom/etao/kakalib/api/MopPostConnector;
    .end local v4           #httpHeader:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v7

    .line 193
    .end local v0           #apiProp:Landroid/taobao/apirequest/ApiProperty;
    .end local v1           #b__:[B
    .restart local v5       #paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 194
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v0       #apiProp:Landroid/taobao/apirequest/ApiProperty;
    .restart local v1       #b__:[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method
