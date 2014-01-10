.class public Lorg/android/agoo/net/mtop/MtopRequestHelper;
.super Ljava/lang/Object;
.source "MtopRequestHelper.java"


# static fields
.field public static final SPLIT_STR:Ljava/lang/String; = "&"

.field private static final TAG:Ljava/lang/String; = "MtopRequestHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppKeyAndAppSecret(Lorg/android/agoo/net/mtop/MtopRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "request"
    .parameter "appKey"
    .parameter "appSecret"

    .prologue
    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/android/agoo/net/mtop/MtopRequest;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Lorg/android/agoo/net/mtop/MtopRequest;->setAppKey(Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/android/agoo/net/mtop/MtopRequest;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0, p2}, Lorg/android/agoo/net/mtop/MtopRequest;->setAppSecret(Ljava/lang/String;)V

    .line 37
    :cond_1
    return-void
.end method

.method private static getTime()J
    .locals 4

    .prologue
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getUrlWithRequestParams(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/async/RequestParams;
    .locals 26
    .parameter "context"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v23, Lorg/android/agoo/net/async/RequestParams;

    invoke-direct/range {v23 .. v23}, Lorg/android/agoo/net/async/RequestParams;-><init>()V

    .line 42
    .local v23, params:Lorg/android/agoo/net/async/RequestParams;
    const-string v2, "api"

    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getApi()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v2, "v"

    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getV()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getTime()J

    move-result-wide v8

    .line 45
    .local v8, t:J
    const-wide/16 v4, 0x0

    cmp-long v2, v8, v4

    if-gtz v2, :cond_0

    .line 46
    invoke-static {}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->getTime()J

    move-result-wide v8

    .line 48
    :cond_0
    const-string v2, "t"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static/range {p0 .. p0}, Lorg/android/agoo/helper/PhoneHelper;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, imei:Ljava/lang/String;
    const-string v2, "imei"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v6}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static/range {p0 .. p0}, Lorg/android/agoo/helper/PhoneHelper;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, imsi:Ljava/lang/String;
    const-string v2, "imsi"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v7}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "ttid"

    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getTtId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "appKey"

    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getAppKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    const-string v2, "deviceId"

    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getSysParams()Ljava/util/Map;

    move-result-object v25

    .line 60
    .local v25, sysParam:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v25, :cond_3

    .line 61
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 62
    .local v22, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v22, :cond_3

    .line 63
    const/16 v21, 0x0

    .line 64
    .local v21, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .end local v21           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v21, Ljava/util/Map$Entry;

    .line 66
    .restart local v21       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v21, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 69
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v21           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->param2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 76
    .local v10, data:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getAppKey()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, tmpAppKey:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getAppSecret()Ljava/lang/String;

    move-result-object v12

    .line 78
    .local v12, tmpAppSecret:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "appKey is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_4
    const/16 v24, 0x0

    .line 82
    .local v24, sign:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->isHasSigin()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 83
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 84
    const-string v2, "MtopRequestHelper"

    const-string v4, "appSecret is null,to sign lib.*.*.so"

    invoke-static {v2, v4}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getApi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getV()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getEcode()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v11}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->toV3Sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 94
    :goto_1
    const-string v2, "sign"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_5
    const-string v2, "data"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v10}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getSId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, ""

    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getSId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 98
    :cond_6
    const-string v2, "sid"

    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getSId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_7
    return-object v23

    .line 90
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getApi()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getV()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lorg/android/agoo/net/mtop/MtopRequest;->getEcode()Ljava/lang/String;

    move-result-object v20

    move-object v11, v3

    move-object v15, v6

    move-object/from16 v16, v7

    move-wide/from16 v17, v8

    move-object/from16 v19, v10

    invoke-static/range {v11 .. v20}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->toV3Sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto :goto_1
.end method

.method private static param2String(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 165
    .local v0, jso:Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static toV3Sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "tmpAppSecret"
    .parameter "api"
    .parameter "v"
    .parameter "imei"
    .parameter "imsi"
    .parameter "t"
    .parameter "data"
    .parameter "ecode"

    .prologue
    .line 110
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/taobao/securityjni/GlobalInit;->setEnableOutPutExpInfo(Z)V

    .line 111
    new-instance v2, Lcom/taobao/securityjni/SecretUtil;

    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0
    invoke-direct {v2, p0}, Lcom/taobao/securityjni/SecretUtil;-><init>(Landroid/content/ContextWrapper;)V

    .line 112
    .local v2, util:Lcom/taobao/securityjni/SecretUtil;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v1, signParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "API"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v3, "DATA"

    invoke-virtual {v1, v3, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v3, "IMEI"

    invoke-virtual {v1, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v3, "IMSI"

    invoke-virtual {v1, v3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v3, "TIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v3, "V"

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    const-string v3, "ECODE"

    invoke-virtual {v1, v3, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    .line 123
    .local v0, dataCtx:Lcom/taobao/securityjni/tools/DataContext;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v0, Lcom/taobao/securityjni/tools/DataContext;->extData:Ljava/lang/Object;

    .line 124
    invoke-virtual {v2, v1, v0}, Lcom/taobao/securityjni/SecretUtil;->getSign(Ljava/util/HashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static toV3Sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "appKey"
    .parameter "appSecret"
    .parameter "api"
    .parameter "v"
    .parameter "imei"
    .parameter "imsi"
    .parameter "t"
    .parameter "data"
    .parameter "ecode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v5, 0x0

    .line 133
    .local v5, result:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayInputStream;

    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v7}, Lorg/android/agoo/util/DigestUtil;->md5ToHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, appkeySign:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    .local v6, sb:Ljava/lang/StringBuffer;
    if-eqz p9, :cond_0

    const-string v7, ""

    move-object/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 137
    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    :cond_0
    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v6, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v6, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v6, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    new-instance v7, Ljava/io/ByteArrayInputStream;

    const-string v8, "UTF-8"

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v7}, Lorg/android/agoo/util/DigestUtil;->md5ToHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, dataSign:Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    move-wide/from16 v0, p6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 156
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v7}, Lorg/android/agoo/util/DigestUtil;->md5ToHex(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 160
    return-object v5

    .line 157
    .end local v2           #appkeySign:Ljava/lang/String;
    .end local v3           #dataSign:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    .line 158
    .local v4, e:Ljava/lang/Throwable;
    throw v4
.end method
