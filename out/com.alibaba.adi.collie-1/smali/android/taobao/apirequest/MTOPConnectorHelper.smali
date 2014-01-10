.class public Landroid/taobao/apirequest/MTOPConnectorHelper;
.super Ljava/lang/Object;
.source "MTOPConnectorHelper.java"

# interfaces
.implements Landroid/taobao/common/i/DLConnectorHelper;


# static fields
.field public static final ERR_CODE:Ljava/lang/String; = "ERR_CODE"

.field public static final FAIL:Ljava/lang/String; = "FAIL"

.field public static final KEY:Ljava/lang/String; = "KEY"

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"

.field private static final TAG:Ljava/lang/String; = "MTOPConnectorHelper"

.field public static final VALUE:Ljava/lang/String; = "VALUE"

.field static defaultBaseUrl:Ljava/lang/String;


# instance fields
.field private api:Ljava/lang/String;

.field private baseUrl:Ljava/lang/String;

.field protected inputObj:Ljava/lang/Object;

.field private mConvertor:Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;

.field protected mDataParam:Landroid/taobao/util/Parameter;

.field private mNewSid:Ljava/lang/String;

.field protected mParam:Landroid/taobao/util/Parameter;

.field private mSign:Z

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
    .line 34
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/common/SDKConfig;->getGlobalBaseUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/apirequest/MTOPConnectorHelper;->defaultBaseUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mSign:Z

    .line 44
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/common/SDKConfig;->getGlobalIEcodeProvider()Landroid/taobao/apirequest/IEcodeProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->provider:Landroid/taobao/apirequest/IEcodeProvider;

    .line 47
    if-nez p1, :cond_0

    .line 48
    const-string v0, "MTOPConnectorHelper"

    const-string v1, "OutPutDOClass IS NULL"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    iput-object p1, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->outDOClass:Ljava/lang/Class;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->baseUrl:Ljava/lang/String;

    .line 52
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
    .line 54
    .local p1, outputDOClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mSign:Z

    .line 44
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/common/SDKConfig;->getGlobalIEcodeProvider()Landroid/taobao/apirequest/IEcodeProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->provider:Landroid/taobao/apirequest/IEcodeProvider;

    .line 55
    iput-object p1, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->outDOClass:Ljava/lang/Class;

    .line 56
    iput-object p2, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->baseUrl:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getApiUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/taobao/apirequest/MTOPConnectorHelper;->preProcess()Landroid/taobao/apirequest/MTaoApiRequest;

    move-result-object v0

    .line 65
    .local v0, request:Landroid/taobao/apirequest/MTaoApiRequest;
    iget-object v2, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mConvertor:Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;

    invoke-virtual {v0, v2}, Landroid/taobao/apirequest/MTaoApiRequest;->setConvertor(Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;)V

    .line 66
    iget-object v2, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->baseUrl:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mSign:Z

    invoke-virtual {v0, v2, v3}, Landroid/taobao/apirequest/MTaoApiRequest;->generalRequestUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, url:Ljava/lang/String;
    const-string v2, "MTOPConnectorHelper"

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

    .line 68
    return-object v1
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected needEcode(Ljava/lang/Object;)Z
    .locals 3
    .parameter "inputObj"

    .prologue
    .line 131
    const-string v2, "NEED_ECODE"

    invoke-static {v2, p1}, Landroid/taobao/apirequest/ReflectUtil;->getPublicFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 132
    .local v1, o:Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 133
    .local v0, need:Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 134
    check-cast v0, Ljava/lang/Boolean;

    .line 136
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method protected needJsonType(Ljava/lang/Object;)Z
    .locals 3
    .parameter "inputObj"

    .prologue
    .line 147
    const-string v2, "ORIGINALJSON"

    invoke-static {v2, p1}, Landroid/taobao/apirequest/ReflectUtil;->getPublicFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 148
    .local v1, o:Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 149
    .local v0, need:Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 150
    check-cast v0, Ljava/lang/Boolean;

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method protected object2ApiResult(Ljava/lang/Object;)Landroid/taobao/apirequest/ApiResult;
    .locals 7
    .parameter "o"

    .prologue
    const/16 v6, -0x3e8

    .line 186
    const/4 v2, 0x0

    .line 187
    .local v2, result:Landroid/taobao/apirequest/ApiResult;
    if-eqz p1, :cond_1

    instance-of v4, p1, Landroid/taobao/apirequest/BaseOutDo;

    if-eqz v4, :cond_1

    move-object v0, p1

    .line 188
    check-cast v0, Landroid/taobao/apirequest/BaseOutDo;

    .line 189
    .local v0, out:Landroid/taobao/apirequest/BaseOutDo;
    new-instance v2, Landroid/taobao/apirequest/ApiResult;

    .end local v2           #result:Landroid/taobao/apirequest/ApiResult;
    const/16 v4, 0xc8

    invoke-direct {v2, v4}, Landroid/taobao/apirequest/ApiResult;-><init>(I)V

    .line 190
    .restart local v2       #result:Landroid/taobao/apirequest/ApiResult;
    iput-object v0, v2, Landroid/taobao/apirequest/ApiResult;->data:Ljava/lang/Object;

    .line 191
    invoke-virtual {v0}, Landroid/taobao/apirequest/BaseOutDo;->getRet()[Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, ret:[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 193
    new-instance v1, Landroid/taobao/apirequest/ApiResponse;

    invoke-direct {v1}, Landroid/taobao/apirequest/ApiResponse;-><init>()V

    .line 194
    .local v1, response:Landroid/taobao/apirequest/ApiResponse;
    invoke-virtual {v1, v3}, Landroid/taobao/apirequest/ApiResponse;->parserRet([Ljava/lang/String;)V

    .line 195
    iget-object v4, v1, Landroid/taobao/apirequest/ApiResponse;->errCode:Ljava/lang/String;

    iput-object v4, v2, Landroid/taobao/apirequest/ApiResult;->errCode:Ljava/lang/String;

    .line 196
    iget-object v4, v1, Landroid/taobao/apirequest/ApiResponse;->errInfo:Ljava/lang/String;

    iput-object v4, v2, Landroid/taobao/apirequest/ApiResult;->errDescription:Ljava/lang/String;

    .line 208
    .end local v0           #out:Landroid/taobao/apirequest/BaseOutDo;
    .end local v1           #response:Landroid/taobao/apirequest/ApiResponse;
    .end local v3           #ret:[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 199
    .restart local v0       #out:Landroid/taobao/apirequest/BaseOutDo;
    .restart local v3       #ret:[Ljava/lang/String;
    :cond_0
    const-string v4, "MTOPConnectorHelper"

    const-string v5, "PARSE RET IS NULL OR LENGTH IS ZERO "

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iput v6, v2, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    goto :goto_0

    .line 205
    .end local v0           #out:Landroid/taobao/apirequest/BaseOutDo;
    .end local v3           #ret:[Ljava/lang/String;
    :cond_1
    const-string v4, "MTOPConnectorHelper"

    const-string v5, "PARSE INPUT PARMA IS NULL "

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v2, Landroid/taobao/apirequest/ApiResult;

    .end local v2           #result:Landroid/taobao/apirequest/ApiResult;
    invoke-direct {v2, v6}, Landroid/taobao/apirequest/ApiResult;-><init>(I)V

    .restart local v2       #result:Landroid/taobao/apirequest/ApiResult;
    goto :goto_0
.end method

.method protected preProcess()Landroid/taobao/apirequest/MTaoApiRequest;
    .locals 6

    .prologue
    .line 78
    iget-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->inputObj:Ljava/lang/Object;

    invoke-static {v4}, Landroid/taobao/apirequest/ReflectUtil;->convert(Ljava/lang/Object;)Landroid/taobao/apirequest/MTaoApiRequest;

    move-result-object v1

    .line 79
    .local v1, request:Landroid/taobao/apirequest/MTaoApiRequest;
    iget-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mNewSid:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 81
    const-string v4, "sid"

    iget-object v5, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mNewSid:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/MTaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->inputObj:Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 84
    const-string v4, "VERSION"

    iget-object v5, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->inputObj:Ljava/lang/Object;

    invoke-static {v4, v5}, Landroid/taobao/apirequest/ReflectUtil;->getPublicFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 85
    .local v3, versionObject:Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, version:Ljava/lang/String;
    const-string v4, "v"

    invoke-virtual {v1, v4, v2}, Landroid/taobao/apirequest/MTaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v2           #version:Ljava/lang/String;
    :cond_1
    const-string v4, "API_NAME"

    iget-object v5, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->inputObj:Ljava/lang/Object;

    invoke-static {v4, v5}, Landroid/taobao/apirequest/ReflectUtil;->getPublicFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, apiObject:Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->api:Ljava/lang/String;

    .line 92
    const-string v4, "api"

    iget-object v5, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->api:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/MTaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_2
    iget-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->inputObj:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroid/taobao/apirequest/MTOPConnectorHelper;->needEcode(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->provider:Landroid/taobao/apirequest/IEcodeProvider;

    if-eqz v4, :cond_3

    .line 95
    const-string v4, "ecode"

    iget-object v5, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->provider:Landroid/taobao/apirequest/IEcodeProvider;

    invoke-interface {v5}, Landroid/taobao/apirequest/IEcodeProvider;->getEcode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/MTaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_3
    iget-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->inputObj:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroid/taobao/apirequest/MTOPConnectorHelper;->needJsonType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 98
    const-string v4, "type"

    const-string v5, "originaljson"

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/MTaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .end local v0           #apiObject:Ljava/lang/Object;
    .end local v3           #versionObject:Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->baseUrl:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->baseUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    .line 104
    :cond_5
    sget-object v4, Landroid/taobao/apirequest/MTOPConnectorHelper;->defaultBaseUrl:Ljava/lang/String;

    iput-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->baseUrl:Ljava/lang/String;

    .line 107
    :cond_6
    iget-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mDataParam:Landroid/taobao/util/Parameter;

    if-eqz v4, :cond_7

    .line 108
    iget-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mDataParam:Landroid/taobao/util/Parameter;

    invoke-virtual {v4}, Landroid/taobao/util/Parameter;->getKeyValueArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/taobao/apirequest/MTaoApiRequest;->addDataParam([Ljava/lang/Object;)V

    .line 111
    :cond_7
    iget-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mParam:Landroid/taobao/util/Parameter;

    if-eqz v4, :cond_8

    .line 112
    iget-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mParam:Landroid/taobao/util/Parameter;

    invoke-virtual {v4}, Landroid/taobao/util/Parameter;->getKeyValueArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/taobao/apirequest/MTaoApiRequest;->addParams([Ljava/lang/Object;)V

    .line 115
    :cond_8
    iget-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mNewSid:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 117
    const-string v4, "sid"

    iget-object v5, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mNewSid:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/MTaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_9
    return-object v1
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "baseUrl"

    .prologue
    .line 242
    iput-object p1, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->baseUrl:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setConvertor(Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;)V
    .locals 0
    .parameter "mConvertor"

    .prologue
    .line 238
    iput-object p1, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mConvertor:Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;

    .line 239
    return-void
.end method

.method public setExcludeDataParam(Landroid/taobao/util/Parameter;)V
    .locals 0
    .parameter "mParam"

    .prologue
    .line 232
    iput-object p1, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mParam:Landroid/taobao/util/Parameter;

    .line 233
    return-void
.end method

.method public setInputObj(Ljava/lang/Object;)V
    .locals 0
    .parameter "inputObj"

    .prologue
    .line 212
    iput-object p1, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->inputObj:Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public setParam(Landroid/taobao/util/Parameter;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 226
    iput-object p1, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mDataParam:Landroid/taobao/util/Parameter;

    .line 227
    return-void
.end method

.method public setSign(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 235
    iput-boolean p1, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mSign:Z

    .line 236
    return-void
.end method

.method public syncPaser([B)Ljava/lang/Object;
    .locals 9
    .parameter "all"

    .prologue
    const/4 v8, 0x0

    const/16 v7, -0x3e8

    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, o:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 159
    .local v3, result:Landroid/taobao/apirequest/ApiResult;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 160
    :cond_0
    const-string v4, "MTOPConnectorHelper"

    const-string v5, "PARSE INPUT PARMA IS NULL OR LENGHT = 0"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v3, Landroid/taobao/apirequest/ApiResult;

    .end local v3           #result:Landroid/taobao/apirequest/ApiResult;
    const-string v4, "\u670d\u52a1\u7aef\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u4e0d\u6b63\u786e\uff01"

    invoke-direct {v3, v7, v4, v8}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    .line 175
    .end local v2           #o:Ljava/lang/Object;
    .restart local v3       #result:Landroid/taobao/apirequest/ApiResult;
    :goto_0
    return-object v3

    .line 165
    .restart local v2       #o:Ljava/lang/Object;
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v1, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 166
    .local v1, log:Ljava/lang/String;
    const-string v4, "MTOPConnectorHelper"

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

    .line 167
    iget-object v4, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->outDOClass:Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, v4, v5}, Lcom/alibaba/fastjson/JSON;->parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v2

    .line 168
    invoke-virtual {p0, v2}, Landroid/taobao/apirequest/MTOPConnectorHelper;->object2ApiResult(Ljava/lang/Object;)Landroid/taobao/apirequest/ApiResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 170
    .end local v1           #log:Ljava/lang/String;
    .end local v2           #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MTOPConnectorHelper"

    const-string v5, "PARSE EXCEPTION"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v3, Landroid/taobao/apirequest/ApiResult;

    .end local v3           #result:Landroid/taobao/apirequest/ApiResult;
    const-string v4, "\u670d\u52a1\u7aef\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u4e0d\u6b63\u786e\uff01"

    invoke-direct {v3, v7, v4, v8}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    .restart local v3       #result:Landroid/taobao/apirequest/ApiResult;
    goto :goto_0
.end method

.method public updateSid(Ljava/lang/String;)V
    .locals 0
    .parameter "sid"

    .prologue
    .line 74
    iput-object p1, p0, Landroid/taobao/apirequest/MTOPConnectorHelper;->mNewSid:Ljava/lang/String;

    .line 75
    return-void
.end method
