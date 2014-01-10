.class public Lcom/alibaba/adi/collie/business/weibo/api/WeiboAccountHolder;
.super Ljava/lang/Object;
.source "WeiboAccountHolder.java"


# static fields
.field public static final PREF_EXPIRES_TIME:Ljava/lang/String; = "weibo_expires_time"

.field public static final PREF_TOKEN:Ljava/lang/String; = "weibo_token"

.field public static final PREF_UID:Ljava/lang/String; = "weibo_uid"

.field public static final PREF_USERNAME:Ljava/lang/String; = "weibo_username"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delAccessTokenToPref(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-wide/16 v2, 0x0

    .line 50
    const-string v0, "weibo_token"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "weibo_expires_time"

    invoke-static {v0, v2, v3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;J)V

    .line 52
    const-string v0, "weibo_uid"

    invoke-static {v0, v2, v3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;J)V

    .line 53
    const-string v0, "weibo_username"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAccountHolder;->onWeiboLogedOut(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public static getAccessTokenFromPref(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;
    .locals 4
    .parameter "context"

    .prologue
    .line 22
    new-instance v0, Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>()V

    .line 23
    .local v0, token:Lcom/weibo/sdk/android/Oauth2AccessToken;
    const-string v1, "weibo_token"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/weibo/sdk/android/Oauth2AccessToken;->setToken(Ljava/lang/String;)V

    .line 24
    const-string v1, "weibo_expires_time"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/Oauth2AccessToken;->setExpiresTime(J)V

    .line 25
    return-object v0
.end method

.method public static getWeiboAccount(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, 0x0

    .line 65
    new-instance v0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;-><init>()V

    .line 66
    .local v0, weiboAccount:Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;
    const-string v1, "weibo_token"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->setToken(Ljava/lang/String;)V

    .line 67
    const-string v1, "weibo_expires_time"

    invoke-static {v1, v3, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->setExpiresTime(J)V

    .line 68
    const-string v1, "weibo_username"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->setName(Ljava/lang/String;)V

    .line 69
    const-string v1, "weibo_uid"

    invoke-static {v1, v3, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->setUid(J)V

    .line 70
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->setAccessToken()V

    .line 71
    return-object v0
.end method

.method public static isWeiboValid(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    invoke-static {p0}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAccountHolder;->getWeiboAccount(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;

    move-result-object v0

    .line 30
    .local v0, account:Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static onWeiboLogedIn(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "weibo"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->startBindToAdi(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private static onWeiboLogedOut(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 62
    return-void
.end method

.method public static setAccessTokenToPref(Landroid/content/Context;Lcom/weibo/sdk/android/Oauth2AccessToken;JLjava/lang/String;Z)V
    .locals 8
    .parameter "context"
    .parameter "token"
    .parameter "uid"
    .parameter "userName"
    .parameter "postAction"

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getExpiresTime()J

    move-result-wide v2

    move-object v0, p0

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAccountHolder;->setAccessTokenToPref(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;Z)V

    .line 36
    return-void
.end method

.method public static setAccessTokenToPref(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "token"
    .parameter "expiresTime"
    .parameter "uid"
    .parameter "userName"
    .parameter "postAction"

    .prologue
    .line 40
    const-string v0, "weibo_token"

    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "weibo_expires_time"

    invoke-static {v0, p2, p3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;J)V

    .line 42
    const-string v0, "weibo_uid"

    invoke-static {v0, p4, p5}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;J)V

    .line 43
    const-string v0, "weibo_username"

    invoke-static {v0, p6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    if-eqz p7, :cond_0

    .line 45
    invoke-static {p0}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAccountHolder;->onWeiboLogedIn(Landroid/content/Context;)V

    .line 47
    :cond_0
    return-void
.end method

.method public static unbindWeiboAccount(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAccountHolder;->delAccessTokenToPref(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/alibaba/adi/collie/service/task/BindTask;

    const-string v1, "weibo"

    invoke-direct {v0, p0, v1}, Lcom/alibaba/adi/collie/service/task/BindTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    .local v0, unbindWeibo:Lcom/alibaba/adi/collie/service/task/BindTask;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/service/task/BindTask;->run()V

    .line 78
    return-void
.end method
