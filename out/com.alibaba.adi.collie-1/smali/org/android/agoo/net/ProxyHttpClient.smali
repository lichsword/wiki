.class public Lorg/android/agoo/net/ProxyHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "ProxyHttpClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLeakedException:Ljava/lang/RuntimeException;

.field private mPort:I

.field private mProxy:Ljava/lang/String;

.field private mUseWap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/android/agoo/net/ProxyHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/android/agoo/net/ProxyHttpClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/net/ConnectManager;)V
    .locals 5
    .parameter "context"
    .parameter "userAgent"
    .parameter "connectManager"

    .prologue
    const/16 v4, 0x7530

    .line 23
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 19
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ProxyHttpClient created and never closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/android/agoo/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 24
    move-object v0, p3

    .line 25
    .local v0, localConnectManager:Lorg/android/agoo/net/ConnectManager;
    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lorg/android/agoo/net/ConnectManager;

    .end local v0           #localConnectManager:Lorg/android/agoo/net/ConnectManager;
    invoke-direct {v0, p1}, Lorg/android/agoo/net/ConnectManager;-><init>(Landroid/content/Context;)V

    .line 28
    .restart local v0       #localConnectManager:Lorg/android/agoo/net/ConnectManager;
    :cond_0
    invoke-virtual {v0}, Lorg/android/agoo/net/ConnectManager;->isWapNetwork()Z

    move-result v2

    iput-boolean v2, p0, Lorg/android/agoo/net/ProxyHttpClient;->mUseWap:Z

    .line 29
    invoke-virtual {v0}, Lorg/android/agoo/net/ConnectManager;->getProxy()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/android/agoo/net/ProxyHttpClient;->mProxy:Ljava/lang/String;

    .line 30
    invoke-virtual {v0}, Lorg/android/agoo/net/ConnectManager;->getProxyPort()I

    move-result v2

    iput v2, p0, Lorg/android/agoo/net/ProxyHttpClient;->mPort:I

    .line 31
    iget-object v2, p0, Lorg/android/agoo/net/ProxyHttpClient;->mProxy:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/android/agoo/net/ProxyHttpClient;->mProxy:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 32
    new-instance v1, Lorg/apache/http/HttpHost;

    iget-object v2, p0, Lorg/android/agoo/net/ProxyHttpClient;->mProxy:Ljava/lang/String;

    iget v3, p0, Lorg/android/agoo/net/ProxyHttpClient;->mPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 33
    .local v1, localHttpHost:Lorg/apache/http/HttpHost;
    invoke-virtual {p0}, Lorg/android/agoo/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 35
    .end local v1           #localHttpHost:Lorg/apache/http/HttpHost;
    :cond_1
    invoke-virtual {p0}, Lorg/android/agoo/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 36
    invoke-virtual {p0}, Lorg/android/agoo/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 37
    invoke-virtual {p0}, Lorg/android/agoo/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 39
    invoke-virtual {p0}, Lorg/android/agoo/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 41
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/android/agoo/net/ConnectManager;)V
    .locals 1
    .parameter "context"
    .parameter "connectManager"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/android/agoo/net/ProxyHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/net/ConnectManager;)V

    .line 22
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/android/agoo/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/android/agoo/net/ProxyHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 54
    :cond_0
    return-void
.end method

.method protected createHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 62
    .local v0, localHttpParams:Lorg/apache/http/params/HttpParams;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 63
    return-object v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 44
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 45
    iget-object v0, p0, Lorg/android/agoo/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lorg/android/agoo/net/ProxyHttpClient;->TAG:Ljava/lang/String;

    const-string v1, "Leak found"

    iget-object v2, p0, Lorg/android/agoo/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    :cond_0
    return-void
.end method

.method public isWap()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/android/agoo/net/ProxyHttpClient;->mUseWap:Z

    return v0
.end method
