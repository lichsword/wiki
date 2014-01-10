.class public Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindTaoConnectHelper;
.super Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;
.source "AdiBindTaoConnectHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdiBindTaoConnectHelper"


# instance fields
.field private mTaoNick:Ljava/lang/String;

.field private mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "baseUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;-><init>(Ljava/lang/String;)V

    .line 30
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->loadAccount(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    move-result-object v0

    .line 31
    .local v0, taoLoginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 32
    :cond_0
    new-instance v1, Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;-><init>()V

    throw v1

    .line 34
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindTaoConnectHelper;->mUid:Ljava/lang/String;

    .line 35
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getNickName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindTaoConnectHelper;->mTaoNick:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "baseUrl"
    .parameter "appKey"
    .parameter "uid"
    .parameter "taoNick"
    .parameter "mainId"
    .parameter "sid"
    .parameter "passwd"
    .parameter "eCode"

    .prologue
    .line 23
    const-string v4, "1.0.0"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move-object/from16 v5, p8

    move-object v6, p2

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p3, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindTaoConnectHelper;->mUid:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindTaoConnectHelper;->mTaoNick:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;->makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V

    .line 42
    const-string v0, "accountType"

    const-string v1, "taobao"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "accountId"

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindTaoConnectHelper;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "taobao_nick"

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindTaoConnectHelper;->mTaoNick:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
