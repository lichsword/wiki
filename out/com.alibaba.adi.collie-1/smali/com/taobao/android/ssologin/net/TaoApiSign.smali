.class public Lcom/taobao/android/ssologin/net/TaoApiSign;
.super Ljava/lang/Object;
.source "TaoApiSign.java"


# static fields
.field public static final API:Ljava/lang/String; = "api"

.field public static final APPKEY:Ljava/lang/String; = "appKey"

.field public static final APPSECRET:Ljava/lang/String; = "appSecret"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final ECODE:Ljava/lang/String; = "ecode"

.field public static final IMEI:Ljava/lang/String; = "imei"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field public static final SPLIT_STR:Ljava/lang/String; = "&"

.field public static final T:Ljava/lang/String; = "t"

.field public static final V:Ljava/lang/String; = "v"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSign(Ljava/util/Map;)Ljava/lang/String;
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v15, "appKey"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    .local v2, appKey:Ljava/lang/String;
    const-string v15, "appSecret"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 30
    .local v3, appSecret:Ljava/lang/String;
    const-string v15, "api"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    .local v1, api:Ljava/lang/String;
    const-string v15, "v"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 32
    .local v14, v:Ljava/lang/String;
    const-string v15, "imei"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 33
    .local v9, imei:Ljava/lang/String;
    const-string v15, "imsi"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 34
    .local v10, imsi:Ljava/lang/String;
    const-string v15, "data"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 35
    .local v5, data:Ljava/lang/String;
    const-string v15, "t"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 36
    .local v13, t:Ljava/lang/String;
    const-string v15, "ecode"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 38
    .local v8, ecode:Ljava/lang/String;
    if-eqz v14, :cond_0

    const-string v15, ""

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 39
    :cond_0
    const-string v14, "*"

    .line 42
    :cond_1
    if-nez v5, :cond_2

    .line 43
    const-string v5, ""

    .line 45
    :cond_2
    new-instance v15, Ljava/io/ByteArrayInputStream;

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v15}, Lcom/taobao/android/ssologin/net/DigestUtils;->md5ToHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, appkeySign:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v12, sb:Ljava/lang/StringBuffer;
    if-nez v8, :cond_3

    const-string v15, ""

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 49
    :cond_3
    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    :cond_4
    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    new-instance v15, Ljava/io/ByteArrayInputStream;

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v15}, Lcom/taobao/android/ssologin/net/DigestUtils;->md5ToHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, dataSign:Ljava/lang/String;
    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "UTF-8"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v15}, Lcom/taobao/android/ssologin/net/DigestUtils;->md5ToHex(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 80
    .end local v1           #api:Ljava/lang/String;
    .end local v2           #appKey:Ljava/lang/String;
    .end local v3           #appSecret:Ljava/lang/String;
    .end local v4           #appkeySign:Ljava/lang/String;
    .end local v5           #data:Ljava/lang/String;
    .end local v6           #dataSign:Ljava/lang/String;
    .end local v8           #ecode:Ljava/lang/String;
    .end local v9           #imei:Ljava/lang/String;
    .end local v10           #imsi:Ljava/lang/String;
    .end local v12           #sb:Ljava/lang/StringBuffer;
    .end local v13           #t:Ljava/lang/String;
    .end local v14           #v:Ljava/lang/String;
    :goto_0
    return-object v11

    .line 77
    :catch_0
    move-exception v7

    .line 78
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    const/4 v11, 0x0

    goto :goto_0
.end method
