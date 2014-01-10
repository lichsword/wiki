.class public Landroid/taobao/apirequest/top/TopConnectorHelper;
.super Landroid/taobao/apirequest/MTOPConnectorHelper;
.source "TopConnectorHelper.java"


# static fields
.field public static final ERROR_CODE:Ljava/lang/String; = "code"

.field public static final ERROR_DESCRIPTION:Ljava/lang/String; = "msg"

.field public static final ERROR_RESPONSE:Ljava/lang/String; = "error_response"

.field private static final TAG:Ljava/lang/String; = "TOPConnectorHelper"

.field public static final TOP_BASE_URL:Ljava/lang/String; = "http://gw.api.taobao.com/router/rest?"

.field static defaultBaseUrl:Ljava/lang/String;


# instance fields
.field private api:Ljava/lang/String;

.field private baseUrl:Ljava/lang/String;

.field protected inputObj:Ljava/lang/Object;

.field private mConvertor:Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;

.field private mNewSid:Ljava/lang/String;

.field protected outDOClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected provider:Landroid/taobao/apirequest/IEcodeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "http://gw.api.taobao.com/router/rest?"

    sput-object v0, Landroid/taobao/apirequest/top/TopConnectorHelper;->defaultBaseUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, outputDOClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Landroid/taobao/apirequest/MTOPConnectorHelper;-><init>(Ljava/lang/Class;)V

    .line 64
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/common/SDKConfig;->getGlobalIEcodeProvider()Landroid/taobao/apirequest/IEcodeProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->provider:Landroid/taobao/apirequest/IEcodeProvider;

    .line 47
    iput-object p1, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->outDOClass:Ljava/lang/Class;

    .line 48
    sget-object v0, Landroid/taobao/apirequest/top/TopConnectorHelper;->defaultBaseUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->baseUrl:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "baseUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, outputDOClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Landroid/taobao/apirequest/MTOPConnectorHelper;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/common/SDKConfig;->getGlobalIEcodeProvider()Landroid/taobao/apirequest/IEcodeProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->provider:Landroid/taobao/apirequest/IEcodeProvider;

    .line 57
    iput-object p1, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->outDOClass:Ljava/lang/Class;

    .line 58
    iput-object p2, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->baseUrl:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getApiUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/taobao/apirequest/top/TopConnectorHelper;->topPreProcess()Landroid/taobao/apirequest/top/TopApiRequest;

    move-result-object v0

    .line 76
    .local v0, request:Landroid/taobao/apirequest/top/TopApiRequest;
    iget-object v2, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->mConvertor:Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;

    invoke-virtual {v0, v2}, Landroid/taobao/apirequest/top/TopApiRequest;->setConvertor(Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;)V

    .line 77
    iget-object v2, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/taobao/apirequest/top/TopApiRequest;->generalRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, url:Ljava/lang/String;
    const-string v2, "TOPConnectorHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object v1
.end method

.method public resultToApiResult(Ljava/lang/Object;Ljava/lang/String;)Landroid/taobao/apirequest/ApiResult;
    .locals 7
    .parameter "obj"
    .parameter "data"

    .prologue
    const/16 v6, -0x3e8

    .line 152
    const/4 v3, 0x0

    .line 155
    .local v3, result:Landroid/taobao/apirequest/ApiResult;
    if-eqz p2, :cond_1

    :try_start_0
    const-string v5, "error_response"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, json:Lorg/json/JSONObject;
    new-instance v4, Landroid/taobao/apirequest/ApiResult;

    const/16 v5, -0x3e8

    invoke-direct {v4, v5}, Landroid/taobao/apirequest/ApiResult;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v3           #result:Landroid/taobao/apirequest/ApiResult;
    .local v4, result:Landroid/taobao/apirequest/ApiResult;
    :try_start_1
    const-string v5, "error_response"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 159
    .local v1, errorJson:Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/taobao/apirequest/ApiResult;->errCode:Ljava/lang/String;

    .line 160
    const-string v5, "msg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/taobao/apirequest/ApiResult;->errDescription:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 176
    .end local v1           #errorJson:Lorg/json/JSONObject;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v4           #result:Landroid/taobao/apirequest/ApiResult;
    .restart local v3       #result:Landroid/taobao/apirequest/ApiResult;
    :cond_0
    :goto_0
    return-object v3

    .line 162
    :cond_1
    if-eqz p1, :cond_0

    :try_start_2
    instance-of v5, p1, Landroid/taobao/apirequest/top/TopBaseOutDo;

    if-eqz v5, :cond_0

    .line 165
    new-instance v4, Landroid/taobao/apirequest/ApiResult;

    const/16 v5, 0xc8

    invoke-direct {v4, v5}, Landroid/taobao/apirequest/ApiResult;-><init>(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    .end local v3           #result:Landroid/taobao/apirequest/ApiResult;
    .restart local v4       #result:Landroid/taobao/apirequest/ApiResult;
    :try_start_3
    iput-object p1, v4, Landroid/taobao/apirequest/ApiResult;->data:Ljava/lang/Object;

    .line 167
    const-string v5, "SUCCESS"

    iput-object v5, v4, Landroid/taobao/apirequest/ApiResult;->errCode:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v4

    .end local v4           #result:Landroid/taobao/apirequest/ApiResult;
    .restart local v3       #result:Landroid/taobao/apirequest/ApiResult;
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 174
    new-instance v3, Landroid/taobao/apirequest/ApiResult;

    .end local v3           #result:Landroid/taobao/apirequest/ApiResult;
    invoke-direct {v3, v6}, Landroid/taobao/apirequest/ApiResult;-><init>(I)V

    .restart local v3       #result:Landroid/taobao/apirequest/ApiResult;
    goto :goto_0

    .line 171
    .end local v0           #e:Lorg/json/JSONException;
    .end local v3           #result:Landroid/taobao/apirequest/ApiResult;
    .restart local v4       #result:Landroid/taobao/apirequest/ApiResult;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #result:Landroid/taobao/apirequest/ApiResult;
    .restart local v3       #result:Landroid/taobao/apirequest/ApiResult;
    goto :goto_1
.end method

.method public setConvertor(Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;)V
    .locals 0
    .parameter "mConvertor"

    .prologue
    .line 190
    iput-object p1, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->mConvertor:Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;

    .line 191
    return-void
.end method

.method public setInputObj(Ljava/lang/Object;)V
    .locals 0
    .parameter "inputObj"

    .prologue
    .line 180
    iput-object p1, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->inputObj:Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public setSign(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 188
    return-void
.end method

.method public syncPaser([B)Ljava/lang/Object;
    .locals 8
    .parameter "all"

    .prologue
    const/16 v7, -0x3e8

    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, o:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 124
    .local v3, result:Landroid/taobao/apirequest/ApiResult;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 125
    :cond_0
    const-string v4, "TOPConnectorHelper"

    const-string v5, "PARSE INPUT PARMA IS NULL OR LENGHT = 0"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v3, Landroid/taobao/apirequest/ApiResult;

    .end local v3           #result:Landroid/taobao/apirequest/ApiResult;
    invoke-direct {v3, v7}, Landroid/taobao/apirequest/ApiResult;-><init>(I)V

    .line 141
    .end local v2           #o:Ljava/lang/Object;
    .restart local v3       #result:Landroid/taobao/apirequest/ApiResult;
    :goto_0
    return-object v3

    .line 130
    .restart local v2       #o:Ljava/lang/Object;
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 131
    .local v1, log:Ljava/lang/String;
    const-string v4, "TOPConnectorHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v4, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->outDOClass:Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, v4, v5}, Lcom/alibaba/fastjson/JSON;->parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v2

    .line 133
    invoke-virtual {p0, v2, v1}, Landroid/taobao/apirequest/top/TopConnectorHelper;->resultToApiResult(Ljava/lang/Object;Ljava/lang/String;)Landroid/taobao/apirequest/ApiResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 135
    .end local v1           #log:Ljava/lang/String;
    .end local v2           #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    const-string v4, "TOPConnectorHelper"

    const-string v5, "PARSE EXCEPTION"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v3, Landroid/taobao/apirequest/ApiResult;

    .end local v3           #result:Landroid/taobao/apirequest/ApiResult;
    invoke-direct {v3, v7}, Landroid/taobao/apirequest/ApiResult;-><init>(I)V

    .restart local v3       #result:Landroid/taobao/apirequest/ApiResult;
    goto :goto_0
.end method

.method protected topPreProcess()Landroid/taobao/apirequest/top/TopApiRequest;
    .locals 6

    .prologue
    .line 93
    iget-object v4, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->inputObj:Ljava/lang/Object;

    invoke-static {v4}, Landroid/taobao/apirequest/ReflectUtil;->convertToApiRequest(Ljava/lang/Object;)Landroid/taobao/apirequest/top/TopApiRequest;

    move-result-object v1

    .line 94
    .local v1, request:Landroid/taobao/apirequest/top/TopApiRequest;
    iget-object v4, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->mNewSid:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 96
    const-string v4, "sid"

    iget-object v5, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->mNewSid:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/top/TopApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    iget-object v4, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->inputObj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 99
    const-string v4, "v"

    iget-object v5, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->inputObj:Ljava/lang/Object;

    invoke-static {v4, v5}, Landroid/taobao/apirequest/ReflectUtil;->getPublicFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 100
    .local v3, versionObject:Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 101
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, version:Ljava/lang/String;
    const-string v4, "v"

    invoke-virtual {v1, v4, v2}, Landroid/taobao/apirequest/top/TopApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v2           #version:Ljava/lang/String;
    :cond_1
    const-string v4, "method"

    iget-object v5, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->inputObj:Ljava/lang/Object;

    invoke-static {v4, v5}, Landroid/taobao/apirequest/ReflectUtil;->getPublicFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, apiObject:Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->api:Ljava/lang/String;

    .line 107
    const-string v4, "method"

    iget-object v5, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->api:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/top/TopApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v0           #apiObject:Ljava/lang/Object;
    .end local v3           #versionObject:Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->baseUrl:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->baseUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 111
    :cond_3
    sget-object v4, Landroid/taobao/apirequest/top/TopConnectorHelper;->defaultBaseUrl:Ljava/lang/String;

    iput-object v4, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->baseUrl:Ljava/lang/String;

    .line 113
    :cond_4
    return-object v1
.end method

.method public updateSid(Ljava/lang/String;)V
    .locals 0
    .parameter "sid"

    .prologue
    .line 85
    iput-object p1, p0, Landroid/taobao/apirequest/top/TopConnectorHelper;->mNewSid:Ljava/lang/String;

    .line 86
    return-void
.end method
