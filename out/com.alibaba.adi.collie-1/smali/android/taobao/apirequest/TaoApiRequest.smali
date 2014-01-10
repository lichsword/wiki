.class public Landroid/taobao/apirequest/TaoApiRequest;
.super Landroid/taobao/apirequest/ApiRequest;
.source "TaoApiRequest.java"


# static fields
.field private static imei:Ljava/lang/String;

.field private static imsi:Ljava/lang/String;

.field private static mSign:Landroid/taobao/common/i/ISign;


# instance fields
.field protected dataParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
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
    .line 33
    invoke-direct {p0}, Landroid/taobao/apirequest/ApiRequest;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/apirequest/TaoApiRequest;->dataParams:Ljava/util/HashMap;

    .line 34
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-static {p0}, Landroid/taobao/util/PhoneInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/apirequest/TaoApiRequest;->imei:Ljava/lang/String;

    .line 38
    invoke-static {p0}, Landroid/taobao/util/PhoneInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/apirequest/TaoApiRequest;->imsi:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static setISign(Landroid/taobao/common/i/ISign;)V
    .locals 0
    .parameter "iSign"

    .prologue
    .line 188
    sput-object p0, Landroid/taobao/apirequest/TaoApiRequest;->mSign:Landroid/taobao/common/i/ISign;

    .line 189
    return-void
.end method


# virtual methods
.method public addDataParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 71
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 72
    iget-object v0, p0, Landroid/taobao/apirequest/TaoApiRequest;->dataParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    return-void
.end method

.method public addDataParam(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addDataParam([Ljava/lang/Object;)V
    .locals 3
    .parameter "dataParams"

    .prologue
    .line 54
    if-nez p1, :cond_1

    .line 62
    :cond_0
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 58
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

    invoke-virtual {p0, v1, v2}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addParams([Ljava/lang/Object;)V
    .locals 3
    .parameter "urlParams"

    .prologue
    .line 43
    if-nez p1, :cond_1

    .line 50
    :cond_0
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 47
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

    invoke-virtual {p0, v1, v2}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public generalRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "baseUrl"

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/taobao/apirequest/TaoApiRequest;->generalRequestUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generalRequestUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .parameter "baseUrl"
    .parameter "mustSign"

    .prologue
    .line 85
    const-string v9, "ttid"

    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v10

    invoke-virtual {v10}, Landroid/taobao/common/SDKConfig;->getGlobalTTID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v9, "imei"

    sget-object v10, Landroid/taobao/apirequest/TaoApiRequest;->imei:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v9, "imsi"

    sget-object v10, Landroid/taobao/apirequest/TaoApiRequest;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Landroid/taobao/deviceid/DeviceIDManager;->getInstance()Landroid/taobao/deviceid/DeviceIDManager;

    move-result-object v9

    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v10

    invoke-virtual {v10}, Landroid/taobao/common/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v11

    invoke-virtual {v11}, Landroid/taobao/common/SDKConfig;->getGlobalAppkey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/taobao/deviceid/DeviceIDManager;->getLocalDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, deviceId:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 90
    const-string v9, "deviceId"

    invoke-virtual {p0, v9, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v9, p0, Landroid/taobao/apirequest/TaoApiRequest;->dataParams:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 93
    invoke-virtual {p0}, Landroid/taobao/apirequest/TaoApiRequest;->processDataParam()V

    .line 98
    :cond_1
    if-eqz p2, :cond_4

    .line 99
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 100
    .local v2, date:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 101
    .local v7, time:J
    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    .line 103
    iget-object v9, p0, Landroid/taobao/apirequest/TaoApiRequest;->params:Ljava/util/HashMap;

    const-string v10, "t"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 106
    const-string v9, "t"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_2
    const-string v9, "appKey"

    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v10

    invoke-virtual {v10}, Landroid/taobao/common/SDKConfig;->getGlobalAppkey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v4, 0x0

    .line 112
    .local v4, finalSign:Ljava/lang/String;
    iget-object v9, p0, Landroid/taobao/apirequest/TaoApiRequest;->params:Ljava/util/HashMap;

    const-string v10, "api"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    .local v0, api:Ljava/lang/String;
    sget-object v9, Landroid/taobao/apirequest/TaoApiRequest;->mSign:Landroid/taobao/common/i/ISign;

    if-eqz v9, :cond_d

    .line 116
    sget-object v9, Landroid/taobao/apirequest/TaoApiRequest;->mSign:Landroid/taobao/common/i/ISign;

    iget-object v10, p0, Landroid/taobao/apirequest/TaoApiRequest;->params:Ljava/util/HashMap;

    invoke-interface {v9, v10}, Landroid/taobao/common/i/ISign;->getSign(Ljava/util/AbstractMap;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, customSign:Ljava/lang/String;
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v9

    invoke-virtual {v9}, Landroid/taobao/common/SDKConfig;->getGlobalAppSecret()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 118
    move-object v4, v1

    .line 158
    .end local v1           #customSign:Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v9, "sign"

    invoke-super {p0, v9, v4}, Landroid/taobao/apirequest/ApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v0           #api:Ljava/lang/String;
    .end local v2           #date:Ljava/util/Date;
    .end local v4           #finalSign:Ljava/lang/String;
    .end local v7           #time:J
    :cond_4
    iget-object v9, p0, Landroid/taobao/apirequest/TaoApiRequest;->params:Ljava/util/HashMap;

    const-string v10, "appSecret"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 166
    iget-object v9, p0, Landroid/taobao/apirequest/TaoApiRequest;->params:Ljava/util/HashMap;

    const-string v10, "appSecret"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_5
    iget-object v9, p0, Landroid/taobao/apirequest/TaoApiRequest;->params:Ljava/util/HashMap;

    const-string v10, "v"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 169
    iget-object v9, p0, Landroid/taobao/apirequest/TaoApiRequest;->params:Ljava/util/HashMap;

    const-string v10, "v"

    const-string v11, "*"

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_6
    iget-object v9, p0, Landroid/taobao/apirequest/TaoApiRequest;->params:Ljava/util/HashMap;

    const-string v10, "ecode"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 173
    iget-object v9, p0, Landroid/taobao/apirequest/TaoApiRequest;->params:Ljava/util/HashMap;

    const-string v10, "ecode"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_7
    invoke-super {p0, p1}, Landroid/taobao/apirequest/ApiRequest;->generalRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 121
    .restart local v0       #api:Ljava/lang/String;
    .restart local v1       #customSign:Ljava/lang/String;
    .restart local v2       #date:Ljava/util/Date;
    .restart local v4       #finalSign:Ljava/lang/String;
    .restart local v7       #time:J
    :cond_8
    const-string v9, "appSecret"

    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v10

    invoke-virtual {v10}, Landroid/taobao/common/SDKConfig;->getGlobalAppSecret()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p1}, Landroid/taobao/apirequest/TaoApiRequest;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, oldSign:Ljava/lang/String;
    const/4 v5, 0x0

    .line 124
    .local v5, logInfo:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "api="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  two signs value are null "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 140
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 141
    const-string v9, "tag_sign"

    invoke-static {v9, v5}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v9, "tag_sign"

    sget v10, Landroid/taobao/common/SDKConstants;->ID_PAGE_SIGN_STAT:I

    invoke-static {v9, v10, v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 127
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 128
    move-object v4, v6

    .line 129
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "api="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " customSign is null --- oldSign=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 130
    :cond_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 131
    move-object v4, v1

    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "api="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " old sign is null --- customSign=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 134
    :cond_b
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 136
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  customSign != old sign  api="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "----customSign=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "---old Sign=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    :cond_c
    move-object v4, v6

    goto/16 :goto_1

    .line 148
    .end local v1           #customSign:Ljava/lang/String;
    .end local v5           #logInfo:Ljava/lang/String;
    .end local v6           #oldSign:Ljava/lang/String;
    :cond_d
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v9

    invoke-virtual {v9}, Landroid/taobao/common/SDKConfig;->getGlobalAppSecret()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 149
    const-string v9, "tag_sign"

    const-string v10, "\u5fc5\u987b\u63d0\u4f9b\u7ee7\u627fISign\u63a5\u53e3\u7684\u52a0\u7b7e\u5bf9\u8c61\u6216\u8005Appsecret"

    invoke-static {v9, v10}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_e
    const-string v9, "tag_sign"

    const-string v10, "old sign method with appsecret "

    invoke-static {v9, v10}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v9, "appSecret"

    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v10

    invoke-virtual {v10}, Landroid/taobao/common/SDKConfig;->getGlobalAppSecret()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p1}, Landroid/taobao/apirequest/TaoApiRequest;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method protected processDataParam()V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Landroid/taobao/apirequest/TaoApiRequest;->dataParams:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 183
    .local v0, jso:Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, jsoStr:Ljava/lang/String;
    const-string v2, "data"

    invoke-super {p0, v2, v1}, Landroid/taobao/apirequest/ApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public resetParams()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/taobao/apirequest/TaoApiRequest;->params:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 77
    iget-object v0, p0, Landroid/taobao/apirequest/TaoApiRequest;->dataParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 78
    return-void
.end method
