.class public Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;
.super Ljava/lang/Object;
.source "WeiboAccount.java"


# instance fields
.field accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

.field expiresTime:J

.field name:Ljava/lang/String;

.field token:Ljava/lang/String;

.field uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1
    .parameter "token"
    .parameter "name"
    .parameter "uid"
    .parameter "expiresTime"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->token:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->name:Ljava/lang/String;

    .line 21
    iput-wide p3, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->uid:J

    .line 22
    iput-wide p5, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->expiresTime:J

    .line 23
    new-instance v0, Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 24
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v0, p1}, Lcom/weibo/sdk/android/Oauth2AccessToken;->setToken(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v0, p5, p6}, Lcom/weibo/sdk/android/Oauth2AccessToken;->setExpiresTime(J)V

    .line 26
    return-void
.end method


# virtual methods
.method public getAccessToken()Lcom/weibo/sdk/android/Oauth2AccessToken;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    return-object v0
.end method

.method public getExpiresTime()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->expiresTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->uid:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, valid:Z
    iget-object v3, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v3}, Lcom/weibo/sdk/android/Oauth2AccessToken;->isSessionValid()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 80
    :goto_0
    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->uid:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    move v0, v1

    .line 81
    :goto_1
    if-eqz v0, :cond_2

    const-string v3, ""

    iget-object v4, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 82
    :goto_2
    return v0

    :cond_0
    move v0, v2

    .line 79
    goto :goto_0

    :cond_1
    move v0, v2

    .line 80
    goto :goto_1

    :cond_2
    move v0, v2

    .line 81
    goto :goto_2
.end method

.method public setAccessToken()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 72
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    iget-object v1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/weibo/sdk/android/Oauth2AccessToken;->setToken(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    iget-wide v1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->expiresTime:J

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/Oauth2AccessToken;->setExpiresTime(J)V

    .line 74
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;J)V
    .locals 1
    .parameter "token"
    .parameter "expiresTime"

    .prologue
    .line 65
    new-instance v0, Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 66
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v0, p1}, Lcom/weibo/sdk/android/Oauth2AccessToken;->setToken(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v0, p2, p3}, Lcom/weibo/sdk/android/Oauth2AccessToken;->setExpiresTime(J)V

    .line 68
    return-void
.end method

.method public setExpiresTime(J)V
    .locals 0
    .parameter "expiresTime"

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->expiresTime:J

    .line 58
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->token:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUid(J)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->uid:J

    .line 50
    return-void
.end method
