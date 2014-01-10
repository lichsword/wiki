.class public Lcom/alibaba/adi/collie/business/weibo/api/AdiWeiboAPI;
.super Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI;
.source "AdiWeiboAPI.java"


# direct methods
.method public constructor <init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
    .locals 0
    .parameter "oauth2AccessToken"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI;-><init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 12
    return-void
.end method

.method private setCount(Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .parameter "type"
    .parameter "listener"

    .prologue
    .line 28
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 29
    .local v0, params:Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "https://api.weibo.com/2/remind/set_count.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/alibaba/adi/collie/business/weibo/api/AdiWeiboAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getPrivateMsg(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .parameter "source"
    .parameter "count"
    .parameter "listener"

    .prologue
    .line 34
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 35
    .local v0, params:Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "count"

    invoke-virtual {v0, v1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "https://api.weibo.com/2/direct_messages.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/alibaba/adi/collie/business/weibo/api/AdiWeiboAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 38
    return-void
.end method

.method public getUnreadCount(Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .parameter "uid"
    .parameter "listener"

    .prologue
    .line 15
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 16
    .local v0, params:Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v1, "https://api.weibo.com/2/remind/unread_count.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/alibaba/adi/collie/business/weibo/api/AdiWeiboAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 18
    return-void
.end method

.method public setCount(Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x4

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "cmt"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "dm"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "mention_status"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "mention_cmt"

    aput-object v4, v1, v3

    .line 22
    .local v1, types:[Ljava/lang/String;
    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 25
    return-void

    .line 22
    :cond_0
    aget-object v0, v1, v2

    .line 23
    .local v0, type:Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/alibaba/adi/collie/business/weibo/api/AdiWeiboAPI;->setCount(Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
