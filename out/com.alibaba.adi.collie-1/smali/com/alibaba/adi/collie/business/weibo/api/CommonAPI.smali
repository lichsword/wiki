.class public Lcom/alibaba/adi/collie/business/weibo/api/CommonAPI;
.super Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI;
.source "CommonAPI.java"


# static fields
.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://api.weibo.com/2/common"


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
.method public getCity(Ljava/lang/String;Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$CAPITAL;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .parameter "province"
    .parameter "capital"
    .parameter "language"
    .parameter "listener"

    .prologue
    .line 27
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 28
    .local v0, params:Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "province"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    if-eqz p2, :cond_0

    .line 30
    const-string v1, "capital"

    invoke-virtual {p2}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$CAPITAL;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    const-string v1, "language"

    invoke-virtual {v0, v1, p3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "https://api.weibo.com/2/common/get_city.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/alibaba/adi/collie/business/weibo/api/CommonAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 34
    return-void
.end method

.method public getCountry(Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$CAPITAL;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .parameter "capital"
    .parameter "language"
    .parameter "listener"

    .prologue
    .line 42
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 43
    .local v0, params:Lcom/weibo/sdk/android/WeiboParameters;
    if-eqz p1, :cond_0

    .line 44
    const-string v1, "capital"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$CAPITAL;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    const-string v1, "language"

    invoke-virtual {v0, v1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "https://api.weibo.com/2/common/get_country.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/alibaba/adi/collie/business/weibo/api/CommonAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 48
    return-void
.end method

.method public getTimezone(Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .parameter "language"
    .parameter "listener"

    .prologue
    .line 57
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 58
    .local v0, params:Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "language"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "https://api.weibo.com/2/common/get_timezone.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/alibaba/adi/collie/business/weibo/api/CommonAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 60
    return-void
.end method
