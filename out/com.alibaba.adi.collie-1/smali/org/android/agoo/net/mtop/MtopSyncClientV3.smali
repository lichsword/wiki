.class public Lorg/android/agoo/net/mtop/MtopSyncClientV3;
.super Lorg/android/agoo/net/async/SyncHttpClient;
.source "MtopSyncClientV3.java"

# interfaces
.implements Lorg/android/agoo/net/mtop/IMtopSynClient;


# instance fields
.field private volatile appKey:Ljava/lang/String;

.field private volatile appSecret:Ljava/lang/String;

.field private volatile baseUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/android/agoo/net/async/SyncHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;
    .locals 8
    .parameter "context"
    .parameter "request"

    .prologue
    const/4 v7, 0x0

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, requestParams:Lorg/android/agoo/net/async/RequestParams;
    const/4 v2, 0x0

    .line 43
    .local v2, result:Lorg/android/agoo/net/mtop/Result;
    :try_start_0
    iget-object v5, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->appKey:Ljava/lang/String;

    iget-object v6, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->appSecret:Ljava/lang/String;

    invoke-static {p2, v5, v6}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->checkAppKeyAndAppSecret(Lorg/android/agoo/net/mtop/MtopRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {p1, p2}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->getUrlWithRequestParams(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/async/RequestParams;

    move-result-object v1

    .line 45
    iget-object v5, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->baseUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v5, v1}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->get(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;

    move-result-object v5

    iget-object v4, v5, Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;->responseBody:Ljava/lang/String;

    .line 46
    .local v4, resultStr:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 47
    new-instance v3, Lorg/android/agoo/net/mtop/Result;

    invoke-direct {v3}, Lorg/android/agoo/net/mtop/Result;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v2           #result:Lorg/android/agoo/net/mtop/Result;
    .local v3, result:Lorg/android/agoo/net/mtop/Result;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v3, v5}, Lorg/android/agoo/net/mtop/Result;->setSuccess(Z)V

    .line 49
    const-string v5, "request result is null"

    invoke-virtual {v3, v5}, Lorg/android/agoo/net/mtop/Result;->setRetDesc(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 59
    .end local v3           #result:Lorg/android/agoo/net/mtop/Result;
    .end local v4           #resultStr:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 52
    .restart local v2       #result:Lorg/android/agoo/net/mtop/Result;
    .restart local v4       #resultStr:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-static {v4}, Lorg/android/agoo/net/mtop/MtopResponseHelper;->parse(Ljava/lang/String;)Lorg/android/agoo/net/mtop/Result;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .end local v4           #resultStr:Ljava/lang/String;
    :goto_1
    move-object v3, v2

    .line 59
    .local v3, result:Ljava/lang/Object;
    goto :goto_0

    .line 53
    .end local v3           #result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Throwable;
    :goto_2
    new-instance v2, Lorg/android/agoo/net/mtop/Result;

    .end local v2           #result:Lorg/android/agoo/net/mtop/Result;
    invoke-direct {v2}, Lorg/android/agoo/net/mtop/Result;-><init>()V

    .line 55
    .restart local v2       #result:Lorg/android/agoo/net/mtop/Result;
    invoke-virtual {v2, v7}, Lorg/android/agoo/net/mtop/Result;->setSuccess(Z)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/android/agoo/net/mtop/Result;->setRetDesc(Ljava/lang/String;)V

    goto :goto_1

    .line 53
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v2           #result:Lorg/android/agoo/net/mtop/Result;
    .local v3, result:Lorg/android/agoo/net/mtop/Result;
    .restart local v4       #resultStr:Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #result:Lorg/android/agoo/net/mtop/Result;
    .restart local v2       #result:Lorg/android/agoo/net/mtop/Result;
    goto :goto_2
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "baseUrl"

    .prologue
    .line 35
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->baseUrl:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setDefaultAppSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "appSecret"

    .prologue
    .line 31
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->appSecret:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setDefaultAppkey(Ljava/lang/String;)V
    .locals 0
    .parameter "appKey"

    .prologue
    .line 26
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->appKey:Ljava/lang/String;

    .line 27
    return-void
.end method
