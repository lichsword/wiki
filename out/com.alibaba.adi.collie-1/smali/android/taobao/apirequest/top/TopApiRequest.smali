.class public Landroid/taobao/apirequest/top/TopApiRequest;
.super Landroid/taobao/apirequest/ApiRequest;
.source "TopApiRequest.java"


# static fields
.field private static mSign:Landroid/taobao/common/i/ISign;


# instance fields
.field private mConvertor:Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;

.field protected params:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/taobao/apirequest/ApiRequest;-><init>()V

    .line 24
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/apirequest/top/TopApiRequest;->params:Ljava/util/TreeMap;

    .line 36
    return-void
.end method

.method public static setISign(Landroid/taobao/common/i/ISign;)V
    .locals 0
    .parameter "iSign"

    .prologue
    .line 118
    sput-object p0, Landroid/taobao/apirequest/top/TopApiRequest;->mSign:Landroid/taobao/common/i/ISign;

    .line 119
    return-void
.end method


# virtual methods
.method public addParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 103
    iget-object v0, p0, Landroid/taobao/apirequest/top/TopApiRequest;->params:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    return-void
.end method

.method public addParams([Ljava/lang/Object;)V
    .locals 3
    .parameter "urlParams"

    .prologue
    .line 109
    if-nez p1, :cond_1

    .line 115
    :cond_0
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 112
    aget-object v1, p1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v2, p1, v0

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/taobao/apirequest/top/TopApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public generalRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "baseUrl"

    .prologue
    .line 45
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v11, url:Ljava/lang/StringBuffer;
    const-string v13, "app_key"

    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v14

    invoke-virtual {v14}, Landroid/taobao/common/SDKConfig;->getGlobalAppkey()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/taobao/apirequest/top/TopApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v13, "timestamp"

    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/taobao/apirequest/top/TopApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v13, "format"

    const-string v14, "json"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/taobao/apirequest/top/TopApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v13, "sign_method"

    const-string v14, "md5"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/taobao/apirequest/top/TopApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v13

    invoke-virtual {v13}, Landroid/taobao/common/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/taobao/util/PhoneInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, imei:Ljava/lang/String;
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v13

    invoke-virtual {v13}, Landroid/taobao/common/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/taobao/util/PhoneInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, imsi:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {v13}, Landroid/taobao/util/Base64;->encodeBase64([B)[B

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/lang/String;-><init>([B)V

    .line 56
    .end local v3           #imei:Ljava/lang/String;
    .local v4, imei:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {v13}, Landroid/taobao/util/Base64;->encodeBase64([B)[B

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/lang/String;-><init>([B)V

    .line 57
    .end local v5           #imsi:Ljava/lang/String;
    .local v6, imsi:Ljava/lang/String;
    const-string v13, "imei"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Landroid/taobao/apirequest/top/TopApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v13, "imsi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Landroid/taobao/apirequest/top/TopApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v13, "ttid"

    const-string v14, "200001@taobao_android_3.4.6"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/taobao/apirequest/top/TopApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v9, 0x0

    .line 63
    .local v9, sign:Ljava/lang/String;
    sget-object v13, Landroid/taobao/apirequest/top/TopApiRequest;->mSign:Landroid/taobao/common/i/ISign;

    if-eqz v13, :cond_1

    .line 65
    sget-object v13, Landroid/taobao/apirequest/top/TopApiRequest;->mSign:Landroid/taobao/common/i/ISign;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/apirequest/top/TopApiRequest;->params:Ljava/util/TreeMap;

    invoke-interface {v13, v14}, Landroid/taobao/common/i/ISign;->getSign(Ljava/util/AbstractMap;)Ljava/lang/String;

    move-result-object v9

    .line 66
    invoke-static {v9}, Landroid/taobao/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 69
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/apirequest/top/TopApiRequest;->params:Ljava/util/TreeMap;

    const-string v14, "api"

    invoke-virtual {v13, v14}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    .local v1, api:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "sign failed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 71
    .local v10, tbsLogStr:Ljava/lang/String;
    const-string v13, "tag_sign"

    invoke-static {v13, v10}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v13, "tag_sign"

    sget v14, Landroid/taobao/common/SDKConstants;->ID_PAGE_SIGN_STAT:I

    invoke-static {v13, v14, v10}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/apirequest/top/TopApiRequest;->params:Ljava/util/TreeMap;

    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v14

    invoke-virtual {v14}, Landroid/taobao/common/SDKConfig;->getGlobalAppSecret()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/taobao/common/TaoToolBox;->sign(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 79
    .end local v1           #api:Ljava/lang/String;
    .end local v10           #tbsLogStr:Ljava/lang/String;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/apirequest/top/TopApiRequest;->params:Ljava/util/TreeMap;

    invoke-virtual {v13}, Ljava/util/TreeMap;->size()I

    move-result v8

    .line 80
    .local v8, num:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/apirequest/top/TopApiRequest;->params:Ljava/util/TreeMap;

    invoke-virtual {v13}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .line 81
    .local v7, keys:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/apirequest/top/TopApiRequest;->params:Ljava/util/TreeMap;

    invoke-virtual {v13}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v12

    .line 82
    .local v12, values:[Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v13, "sign="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v8, :cond_2

    .line 86
    const-string v13, "&"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    aget-object v13, v7, v2

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v13, "="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    aget-object v13, v12, v2

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 77
    .end local v2           #i:I
    .end local v7           #keys:[Ljava/lang/Object;
    .end local v8           #num:I
    .end local v12           #values:[Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/apirequest/top/TopApiRequest;->params:Ljava/util/TreeMap;

    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v14

    invoke-virtual {v14}, Landroid/taobao/common/SDKConfig;->getGlobalAppSecret()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/taobao/common/TaoToolBox;->sign(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 92
    .restart local v2       #i:I
    .restart local v7       #keys:[Ljava/lang/Object;
    .restart local v8       #num:I
    .restart local v12       #values:[Ljava/lang/Object;
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, " "

    const-string v15, "%20"

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public setConvertor(Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;)V
    .locals 0
    .parameter "mConvertor"

    .prologue
    .line 32
    iput-object p1, p0, Landroid/taobao/apirequest/top/TopApiRequest;->mConvertor:Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;

    .line 33
    return-void
.end method
