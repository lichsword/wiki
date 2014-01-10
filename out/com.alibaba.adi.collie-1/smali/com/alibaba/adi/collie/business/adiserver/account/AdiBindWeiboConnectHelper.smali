.class public Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindWeiboConnectHelper;
.super Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;
.source "AdiBindWeiboConnectHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdiBindTaoConnectHelper"


# instance fields
.field private mWeiboInfoJson:Ljava/lang/String;

.field private mWeiboUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "baseUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;-><init>(Ljava/lang/String;)V

    .line 31
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v2}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAccountHolder;->getWeiboAccount(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;

    move-result-object v0

    .line 32
    .local v0, account:Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 34
    .local v1, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->getUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindWeiboConnectHelper;->mWeiboUid:Ljava/lang/String;

    .line 35
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindWeiboConnectHelper;->mWeiboInfoJson:Ljava/lang/String;

    .line 39
    return-void

    .line 37
    .end local v1           #gson:Lcom/google/gson/Gson;
    :cond_0
    new-instance v2, Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException;-><init>()V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "baseUrl"
    .parameter "appKey"
    .parameter "weiboUid"
    .parameter "mainId"
    .parameter "passwd"
    .parameter "weiboInfoJson"

    .prologue
    const/4 v3, 0x0

    .line 24
    const-string v4, "1.0.0"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v5, v3

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-object p3, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindWeiboConnectHelper;->mWeiboUid:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindWeiboConnectHelper;->mWeiboInfoJson:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method protected makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;->makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V

    .line 44
    const-string v0, "accountType"

    const-string v1, "weibo"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "accountId"

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindWeiboConnectHelper;->mWeiboUid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "weiboInfo"

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindWeiboConnectHelper;->mWeiboInfoJson:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
