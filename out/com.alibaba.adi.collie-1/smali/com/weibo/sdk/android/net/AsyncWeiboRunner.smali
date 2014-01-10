.class public Lcom/weibo/sdk/android/net/AsyncWeiboRunner;
.super Ljava/lang/Object;
.source "AsyncWeiboRunner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "httpMethod"
    .parameter "listener"

    .prologue
    .line 22
    new-instance v0, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 33
    invoke-virtual {v0}, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$1;->start()V

    .line 35
    return-void
.end method

.method public static request4Binary(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "httpMethod"
    .parameter "listener"

    .prologue
    .line 46
    new-instance v0, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 57
    invoke-virtual {v0}, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$2;->start()V

    .line 59
    return-void
.end method
