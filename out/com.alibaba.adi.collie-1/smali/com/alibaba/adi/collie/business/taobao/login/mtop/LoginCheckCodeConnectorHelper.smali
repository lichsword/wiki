.class public Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginCheckCodeConnectorHelper;
.super Ljava/lang/Object;
.source "LoginCheckCodeConnectorHelper.java"

# interfaces
.implements Landroid/taobao/apirequest/ConnectorHelper;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginCheckCodeConnectorHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginCheckCodeConnectorHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 26
    new-instance v0, Landroid/taobao/apirequest/TaoApiRequest;

    invoke-direct {v0}, Landroid/taobao/apirequest/TaoApiRequest;-><init>()V

    .line 27
    .local v0, request:Landroid/taobao/apirequest/TaoApiRequest;
    const-string v2, "api"

    const-string v3, "com.taobao.client.sys.checkcode"

    invoke-virtual {v0, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/common/SDKConfig;->getGlobalBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/taobao/apirequest/TaoApiRequest;->generalRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, url:Ljava/lang/String;
    sget-object v2, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginCheckCodeConnectorHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get tao check code url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-object v1
.end method

.method public syncPaser([B)Ljava/lang/Object;
    .locals 11
    .parameter "bytes"

    .prologue
    const/4 v8, 0x0

    .line 45
    const/4 v6, 0x0

    .line 47
    .local v6, retValue:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v7, p1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v6           #retValue:Ljava/lang/String;
    .local v7, retValue:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_1

    .line 54
    :cond_0
    sget-object v9, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginCheckCodeConnectorHelper;->TAG:Ljava/lang/String;

    const-string v10, "xhh get tao check code syncPaser() receives empty bytes"

    invoke-static {v9, v10}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .end local v7           #retValue:Ljava/lang/String;
    .restart local v6       #retValue:Ljava/lang/String;
    move-object v0, v8

    .line 70
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v4

    .line 49
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    sget-object v9, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginCheckCodeConnectorHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 50
    goto :goto_0

    .line 59
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    .end local v6           #retValue:Ljava/lang/String;
    .restart local v7       #retValue:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v5, retObj:Lorg/json/JSONObject;
    const-string v9, "data"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 61
    .local v3, dataObj:Lorg/json/JSONObject;
    const-string v9, "checkCodeUrl"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, checkCodeUrl:Ljava/lang/String;
    const-string v9, "checkCodeId"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, checkCodeId:Ljava/lang/String;
    new-instance v0, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;-><init>()V

    .line 64
    .local v0, checkCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;
    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->setCheckCodeId(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->setCheckCodeUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 66
    .end local v7           #retValue:Ljava/lang/String;
    .restart local v6       #retValue:Ljava/lang/String;
    goto :goto_0

    .line 67
    .end local v0           #checkCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;
    .end local v1           #checkCodeId:Ljava/lang/String;
    .end local v2           #checkCodeUrl:Ljava/lang/String;
    .end local v3           #dataObj:Lorg/json/JSONObject;
    .end local v5           #retObj:Lorg/json/JSONObject;
    .end local v6           #retValue:Ljava/lang/String;
    .restart local v7       #retValue:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 68
    .local v4, e:Lorg/json/JSONException;
    sget-object v9, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginCheckCodeConnectorHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .end local v7           #retValue:Ljava/lang/String;
    .restart local v6       #retValue:Ljava/lang/String;
    move-object v0, v8

    .line 70
    goto :goto_0
.end method
