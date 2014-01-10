.class public Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;
.super Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;
.source "AdiUnbindConnectHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdiUnbindConnectHelper"


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private mUserTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "baseUrl"
    .parameter "accountType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;,
            Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;->mAccountType:Ljava/lang/String;

    .line 35
    const-string v2, "taobao"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 36
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v2}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->loadAccount(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    move-result-object v1

    .line 37
    .local v1, taoLoginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    :cond_0
    new-instance v2, Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;-><init>()V

    throw v2

    .line 40
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;->mUserId:Ljava/lang/String;

    .line 51
    .end local v1           #taoLoginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :cond_2
    invoke-static {}, Lcom/alibaba/adi/collie/business/usertrack/UserTrackAccountPersistence;->getUdid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;->mUserTrackId:Ljava/lang/String;

    .line 52
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;->mUserTrackId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;->mUserTrackId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 54
    :cond_3
    invoke-static {}, Lcom/alibaba/adi/collie/business/usertrack/UserTrackAccountPersistence;->loadUdid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;->mUserTrackId:Ljava/lang/String;

    .line 56
    :cond_4
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;->mUserTrackId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;->mUserTrackId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_9

    .line 57
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unable to get UserTrackId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_6
    const-string v2, "weibo"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 43
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v2}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAccountHolder;->getWeiboAccount(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;

    move-result-object v0

    .line 44
    .local v0, account:Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 46
    :cond_7
    new-instance v2, Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException;-><init>()V

    throw v2

    .line 49
    .end local v0           #account:Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid account type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "baseUrl"
    .parameter "mainId"
    .parameter "sid"
    .parameter "ver"
    .parameter "ecode"
    .parameter "appKey"
    .parameter "passwd"
    .parameter "userId"
    .parameter "accountType"
    .parameter "userTrackId"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p7}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iput-object p8, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;->mUserId:Ljava/lang/String;

    .line 27
    iput-object p9, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;->mAccountType:Ljava/lang/String;

    .line 28
    iput-object p10, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;->mUserTrackId:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method protected makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;->makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V

    .line 64
    const-string v0, "accountId"

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "accountType"

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "userTrackId"

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;->mUserTrackId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
