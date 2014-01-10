.class public Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginConnectorHelper;
.super Ljava/lang/Object;
.source "MtopAutoLoginConnectorHelper.java"

# interfaces
.implements Landroid/taobao/apirequest/ConnectorHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtopAutoLoginConnectorHelper"


# instance fields
.field private final mAutoLoginToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "autoLoginToken"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginConnectorHelper;->mAutoLoginToken:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getApiUrl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 32
    invoke-static {}, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->getInstance()Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->getMtopCorrectedTime()Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, timeStr:Ljava/lang/String;
    new-instance v0, Landroid/taobao/apirequest/TaoApiRequest;

    invoke-direct {v0}, Landroid/taobao/apirequest/TaoApiRequest;-><init>()V

    .line 34
    .local v0, request:Landroid/taobao/apirequest/TaoApiRequest;
    const-string v3, "api"

    const-string v4, "com.taobao.client.sys.autoLoginAsync"

    invoke-virtual {v0, v3, v4}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v3, "t"

    invoke-virtual {v0, v3, v2}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v3, "v"

    const-string v4, "v3"

    invoke-virtual {v0, v3, v4}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginConnectorHelper;->mAutoLoginToken:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginConnectorHelper;->mAutoLoginToken:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 38
    const-string v3, "token"

    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginConnectorHelper;->mAutoLoginToken:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/common/SDKConfig;->getGlobalBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/taobao/apirequest/TaoApiRequest;->generalRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, temstr:Ljava/lang/String;
    const-string v3, "MtopAutoLoginConnectorHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "autoLoginUrl="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .end local v1           #temstr:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 40
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public syncPaser([B)Ljava/lang/Object;
    .locals 8
    .parameter "bytes"

    .prologue
    .line 49
    new-instance v2, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;-><init>()V

    .line 51
    .local v2, loginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    new-instance v3, Landroid/taobao/apirequest/ApiResponse;

    invoke-direct {v3}, Landroid/taobao/apirequest/ApiResponse;-><init>()V

    .line 52
    .local v3, response:Landroid/taobao/apirequest/ApiResponse;
    const/4 v4, 0x0

    .line 54
    .local v4, retValue:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, p1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #retValue:Ljava/lang/String;
    .local v5, retValue:Ljava/lang/String;
    move-object v4, v5

    .line 58
    .end local v5           #retValue:Ljava/lang/String;
    .restart local v4       #retValue:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_2

    .line 59
    :cond_0
    const-string v6, "MtopAutoLoginConnectorHelper"

    const-string v7, "syncPaser() receives empty bytes"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1
    :goto_1
    return-object v2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-virtual {v3, v4}, Landroid/taobao/apirequest/ApiResponse;->parseResult(Ljava/lang/String;)Landroid/taobao/apirequest/ApiResponse;

    move-result-object v6

    iget-boolean v6, v6, Landroid/taobao/apirequest/ApiResponse;->success:Z

    if-eqz v6, :cond_1

    .line 64
    iget-object v1, v3, Landroid/taobao/apirequest/ApiResponse;->data:Lorg/json/JSONObject;

    .line 66
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v6, "sid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 67
    const-string v6, "sid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setSessionId(Ljava/lang/String;)V

    .line 69
    :cond_3
    const-string v6, "userId"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 70
    const-string v6, "userId"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setUserId(Ljava/lang/String;)V

    .line 72
    :cond_4
    const-string v6, "nick"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 73
    const-string v6, "nick"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setNickName(Ljava/lang/String;)V

    .line 75
    :cond_5
    const-string v6, "topSession"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 76
    const-string v6, "topSession"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setTopSession(Ljava/lang/String;)V

    .line 78
    :cond_6
    const-string v6, "ecode"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 79
    const-string v6, "ecode"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->seteCode(Ljava/lang/String;)V

    .line 81
    :cond_7
    const-string v6, "logintime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 82
    const-string v6, "logintime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setLoginTime(Ljava/lang/String;)V

    .line 84
    :cond_8
    sget-object v6, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;->MTOP:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;

    invoke-virtual {v2, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setLoginMode(Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 85
    :catch_1
    move-exception v0

    .line 86
    .local v0, e:Lorg/json/JSONException;
    const-string v6, "MtopAutoLoginConnectorHelper"

    const-string v7, "error parsing JSON"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method
