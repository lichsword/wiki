.class public Lcom/alibaba/adi/collie/business/taobao/timing/MtopTimingConnectHelper;
.super Ljava/lang/Object;
.source "MtopTimingConnectHelper.java"

# interfaces
.implements Landroid/taobao/apirequest/ConnectorHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtopTimingConnectHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Landroid/taobao/apirequest/TaoApiRequest;

    invoke-direct {v0}, Landroid/taobao/apirequest/TaoApiRequest;-><init>()V

    .line 25
    .local v0, request:Landroid/taobao/apirequest/TaoApiRequest;
    const-string v1, "api"

    const-string v2, "mtop.common.getTimestamp"

    invoke-virtual {v0, v1, v2}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v1, "v"

    const-string v2, "*"

    invoke-virtual {v0, v1, v2}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/util/Map;)V

    .line 28
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/common/SDKConfig;->getGlobalBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/apirequest/TaoApiRequest;->generalRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public syncPaser([B)Ljava/lang/Object;
    .locals 10
    .parameter "bytes"

    .prologue
    const/4 v8, 0x0

    .line 33
    new-instance v2, Landroid/taobao/apirequest/ApiResponse;

    invoke-direct {v2}, Landroid/taobao/apirequest/ApiResponse;-><init>()V

    .line 34
    .local v2, response:Landroid/taobao/apirequest/ApiResponse;
    const/4 v3, 0x0

    .line 36
    .local v3, retValue:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v4, p1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #retValue:Ljava/lang/String;
    .local v4, retValue:Ljava/lang/String;
    move-object v3, v4

    .line 40
    .end local v4           #retValue:Ljava/lang/String;
    .restart local v3       #retValue:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    .line 41
    :cond_0
    const-string v7, "MtopTimingConnectHelper"

    const-string v9, "syncPaser() receives empty bytes"

    invoke-static {v7, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 58
    :goto_1
    return-object v7

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    invoke-virtual {v2, v3}, Landroid/taobao/apirequest/ApiResponse;->parseResult(Ljava/lang/String;)Landroid/taobao/apirequest/ApiResponse;

    move-result-object v7

    iget-boolean v7, v7, Landroid/taobao/apirequest/ApiResponse;->success:Z

    if-eqz v7, :cond_2

    .line 47
    :try_start_1
    iget-object v1, v2, Landroid/taobao/apirequest/ApiResponse;->data:Lorg/json/JSONObject;

    .line 48
    .local v1, jsonObject:Lorg/json/JSONObject;
    const-string v7, "t"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 50
    const-string v7, "t"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 51
    .local v5, t:J
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v5, v6}, Ljava/lang/Long;-><init>(J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 53
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .end local v5           #t:J
    :catch_1
    move-exception v0

    .line 54
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v7, v8

    .line 55
    goto :goto_1

    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    move-object v7, v8

    .line 58
    goto :goto_1
.end method
