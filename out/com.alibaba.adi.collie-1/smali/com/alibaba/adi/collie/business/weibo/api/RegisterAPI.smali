.class public Lcom/alibaba/adi/collie/business/weibo/api/RegisterAPI;
.super Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI;
.source "RegisterAPI.java"


# static fields
.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://api.weibo.com/2/register"


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
.method public suggestions(Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 3
    .parameter "nickname"
    .parameter "listener"

    .prologue
    .line 25
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 26
    .local v0, params:Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "nickname"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "https://api.weibo.com/2/register/verify_nickname.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/alibaba/adi/collie/business/weibo/api/RegisterAPI;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 28
    return-void
.end method
