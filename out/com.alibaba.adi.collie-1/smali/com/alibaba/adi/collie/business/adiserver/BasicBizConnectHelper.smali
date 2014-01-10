.class public abstract Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;
.super Ljava/lang/Object;
.source "BasicBizConnectHelper.java"

# interfaces
.implements Landroid/taobao/apirequest/ConnectorHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdiServer.BasicBizConnectHelper"


# instance fields
.field protected mAppKey:Ljava/lang/String;

.field protected mBaseUrl:Ljava/lang/String;

.field protected mEcode:Ljava/lang/String;

.field protected mMainId:Ljava/lang/String;

.field protected mPasswd:Ljava/lang/String;

.field protected mSid:Ljava/lang/String;

.field protected mVer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "baseUrl"

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mBaseUrl:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getMainId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mMainId:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getPasswd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mPasswd:Ljava/lang/String;

    .line 41
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/common/SDKConfig;->getGlobalAppkey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mAppKey:Ljava/lang/String;

    .line 42
    const-string v1, "1.0.0"

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mVer:Ljava/lang/String;

    .line 43
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->loadAccount(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    move-result-object v0

    .line 44
    .local v0, taoLoginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    :cond_0
    iput-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mSid:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mEcode:Ljava/lang/String;

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getSessionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mSid:Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->geteCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mEcode:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "baseUrl"
    .parameter "mainId"
    .parameter "sid"
    .parameter "ver"
    .parameter "eCode"
    .parameter "appKey"
    .parameter "passwd"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mBaseUrl:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mMainId:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mSid:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mVer:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mPasswd:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mEcode:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mAppKey:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public final getApiUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 55
    new-instance v0, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;

    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mPasswd:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, request:Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V

    .line 57
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->generateRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, url:Ljava/lang/String;
    const-string v2, "AdiServer.BasicBizConnectHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getApiUrl() -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-object v1
.end method

.method protected makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 70
    const-string v0, "mid"

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mMainId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "v"

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mVer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "sid"

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "ecode"

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mEcode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "appKey"

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->mAppKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public abstract syncPaser([B)Ljava/lang/Object;
.end method
