.class public Lcom/alibaba/adi/collie/business/taobao/login/mtop/AppTokenConnectorHelper;
.super Ljava/lang/Object;
.source "AppTokenConnectorHelper.java"

# interfaces
.implements Landroid/taobao/apirequest/ConnectorHelper;


# instance fields
.field private mUserInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;)V
    .locals 0
    .parameter "userInput"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/AppTokenConnectorHelper;->mUserInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    .line 30
    return-void
.end method


# virtual methods
.method public getApiUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Landroid/taobao/apirequest/TaoApiRequest;

    invoke-direct {v0}, Landroid/taobao/apirequest/TaoApiRequest;-><init>()V

    .line 35
    .local v0, request:Landroid/taobao/apirequest/TaoApiRequest;
    const-string v2, "api"

    const-string v3, "com.taobao.client.sys.getAppToken"

    invoke-virtual {v0, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v2, "v"

    const-string v3, "v2"

    invoke-virtual {v0, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v2, "t"

    invoke-static {}, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->getInstance()Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->getMtopCorrectedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/AppTokenConnectorHelper;->mUserInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    if-eqz v2, :cond_0

    .line 39
    const-string v2, "key"

    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/AppTokenConnectorHelper;->mUserInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/common/SDKConfig;->getGlobalBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/taobao/apirequest/TaoApiRequest;->generalRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, temstr:Ljava/lang/String;
    return-object v1
.end method

.method public syncPaser([B)Ljava/lang/Object;
    .locals 7
    .parameter "bytes"

    .prologue
    .line 47
    new-instance v0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;-><init>()V

    .line 48
    .local v0, appToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/AppTokenConnectorHelper;->mUserInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    invoke-virtual {v0, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->setUserInput(Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;)V

    .line 50
    new-instance v3, Landroid/taobao/apirequest/ApiResponse;

    invoke-direct {v3}, Landroid/taobao/apirequest/ApiResponse;-><init>()V

    .line 51
    .local v3, response:Landroid/taobao/apirequest/ApiResponse;
    const/4 v4, 0x0

    .line 53
    .local v4, value:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, p1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v4           #value:Ljava/lang/String;
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    move-object v4, v5

    .line 78
    .end local v5           #value:Ljava/lang/String;
    .restart local v4       #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .end local v4           #value:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v5}, Landroid/taobao/apirequest/ApiResponse;->parseResult(Ljava/lang/String;)Landroid/taobao/apirequest/ApiResponse;

    move-result-object v6

    iget-boolean v6, v6, Landroid/taobao/apirequest/ApiResponse;->success:Z

    if-eqz v6, :cond_3

    .line 64
    iget-object v2, v3, Landroid/taobao/apirequest/ApiResponse;->data:Lorg/json/JSONObject;

    .line 66
    .local v2, jsonObj:Lorg/json/JSONObject;
    :try_start_1
    const-string v6, "token"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 67
    const-string v6, "token"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->setAppToken(Ljava/lang/String;)V

    .line 69
    :cond_2
    const-string v6, "pubKey"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 70
    const-string v6, "pubKey"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->setPubKey(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2           #jsonObj:Lorg/json/JSONObject;
    :cond_3
    move-object v4, v5

    .line 78
    .end local v5           #value:Ljava/lang/String;
    .restart local v4       #value:Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v4           #value:Ljava/lang/String;
    .restart local v2       #jsonObj:Lorg/json/JSONObject;
    .restart local v5       #value:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 73
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v5

    .line 74
    .end local v5           #value:Ljava/lang/String;
    .restart local v4       #value:Ljava/lang/String;
    goto :goto_0
.end method
