.class public Landroid/taobao/util/TaoApiSign;
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
    .line 16
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
    .line 33
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v15, "appKey"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 34
    .local v2, appKey:Ljava/lang/String;
    const-string v15, "appSecret"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    .local v3, appSecret:Ljava/lang/String;
    const-string v15, "api"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    .local v1, api:Ljava/lang/String;
    const-string v15, "v"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 37
    .local v14, v:Ljava/lang/String;
    const-string v15, "imei"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 38
    .local v9, imei:Ljava/lang/String;
    const-string v15, "imsi"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 39
    .local v10, imsi:Ljava/lang/String;
    const-string v15, "data"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 40
    .local v5, data:Ljava/lang/String;
    const-string v15, "t"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 41
    .local v13, t:Ljava/lang/String;
    const-string v15, "ecode"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 43
    .local v8, ecode:Ljava/lang/String;
    if-eqz v14, :cond_0

    const-string v15, ""

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 44
    :cond_0
    const-string v14, "*"

    .line 55
    :cond_1
    if-nez v5, :cond_2

    .line 56
    const-string v5, ""

    .line 64
    :cond_2
    new-instance v15, Ljava/io/ByteArrayInputStream;

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v15}, Landroid/taobao/util/DigestUtils;->md5ToHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, appkeySign:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    .local v12, sb:Ljava/lang/StringBuffer;
    if-nez v8, :cond_3

    const-string v15, ""

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 68
    :cond_3
    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :cond_4
    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    new-instance v15, Ljava/io/ByteArrayInputStream;

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v15}, Landroid/taobao/util/DigestUtils;->md5ToHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, dataSign:Ljava/lang/String;
    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "UTF-8"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v15}, Landroid/taobao/util/DigestUtils;->md5ToHex(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 100
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

    .line 97
    :catch_0
    move-exception v7

    .line 98
    .local v7, e:Ljava/lang/Exception;
    const-string v15, "SecretUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "generate sign fail."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v11, 0x0

    goto :goto_0
.end method
