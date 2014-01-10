.class public Lorg/android/agoo/net/mtop/MtopAsyncClientV3;
.super Lorg/android/agoo/net/async/AsyncHttpClient;
.source "MtopAsyncClientV3.java"

# interfaces
.implements Lorg/android/agoo/net/mtop/IMtopAsynClient;


# instance fields
.field private appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private baseUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/android/agoo/net/async/AsyncHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;Lorg/android/agoo/net/mtop/MtopResponseHandler;)V
    .locals 4
    .parameter "context"
    .parameter "request"
    .parameter "responseHandler"

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, requestParams:Lorg/android/agoo/net/async/RequestParams;
    :try_start_0
    iget-object v2, p0, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->appKey:Ljava/lang/String;

    iget-object v3, p0, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->appSecret:Ljava/lang/String;

    invoke-static {p2, v2, v3}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->checkAppKeyAndAppSecret(Lorg/android/agoo/net/mtop/MtopRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {p1, p2}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->getUrlWithRequestParams(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/async/RequestParams;

    move-result-object v1

    .line 39
    iget-object v2, p0, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->baseUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1, p3}, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->get(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;Lorg/android/agoo/net/async/AsyncHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {p3, v0}, Lorg/android/agoo/net/mtop/MtopResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "baseUrl"

    .prologue
    .line 46
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->baseUrl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setDefaultAppSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "appSecret"

    .prologue
    .line 30
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->appSecret:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setDefaultAppkey(Ljava/lang/String;)V
    .locals 0
    .parameter "appKey"

    .prologue
    .line 25
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;->appKey:Ljava/lang/String;

    .line 26
    return-void
.end method
