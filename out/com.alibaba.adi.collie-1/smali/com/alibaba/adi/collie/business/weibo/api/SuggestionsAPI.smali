.class public Lcom/alibaba/adi/collie/business/weibo/api/SuggestionsAPI;
.super Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI;
.source "SuggestionsAPI.java"


# static fields
.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://api.weibo.com/2/suggestions"


# direct methods
.method public constructor <init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
    .locals 0
    .parameter "accessToken"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI;-><init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 14
    return-void
.end method


# virtual methods
.method public byStatus(Ljava/lang/String;ILcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .parameter "content"
    .parameter "num"
    .parameter "listener"

    .prologue
    .line 58
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 59
    .local v0, params:Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "num"

    invoke-virtual {v0, v1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 61
    const-string v1, "https://api.weibo.com/2/suggestions/users/may_interested.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/alibaba/adi/collie/business/weibo/api/SuggestionsAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 62
    return-void
.end method

.method public favoritesHot(IILcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .parameter "count"
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 94
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 95
    .local v0, params:Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 96
    const-string v1, "page"

    invoke-virtual {v0, v1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 97
    const-string v1, "https://api.weibo.com/2/suggestions/favorites/hot.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/alibaba/adi/collie/business/weibo/api/SuggestionsAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 98
    return-void
.end method

.method public mayInterested(IILcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .parameter "count"
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 44
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 45
    .local v0, params:Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 46
    const-string v1, "page"

    invoke-virtual {v0, v1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 47
    const-string v1, "https://api.weibo.com/2/suggestions/users/may_interested.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/alibaba/adi/collie/business/weibo/api/SuggestionsAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 48
    return-void
.end method

.method public notInterested(JLcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .parameter "uid"
    .parameter "listener"

    .prologue
    .line 107
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 108
    .local v0, params:Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 109
    const-string v1, "https://api.weibo.com/2/suggestions/users/not_interested.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/alibaba/adi/collie/business/weibo/api/SuggestionsAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 110
    return-void
.end method

.method public statusesHot(Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$STATUSES_TYPE;ZIILcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .parameter "type"
    .parameter "is_pic"
    .parameter "count"
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 74
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 75
    .local v0, params:Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$STATUSES_TYPE;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 76
    if-eqz p2, :cond_0

    .line 77
    const-string v1, "is_pic"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 81
    :goto_0
    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 82
    const-string v1, "page"

    invoke-virtual {v0, v1, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 83
    const-string v1, "https://api.weibo.com/2/suggestions/statuses/hot.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/alibaba/adi/collie/business/weibo/api/SuggestionsAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 84
    return-void

    .line 79
    :cond_0
    const-string v1, "is_pic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public usersHot(Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$USER_CATEGORY;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .parameter "category"
    .parameter "listener"

    .prologue
    .line 30
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 31
    .local v0, params:Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "category"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$USER_CATEGORY;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "https://api.weibo.com/2/suggestions/users/hot.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/alibaba/adi/collie/business/weibo/api/SuggestionsAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 34
    return-void
.end method
