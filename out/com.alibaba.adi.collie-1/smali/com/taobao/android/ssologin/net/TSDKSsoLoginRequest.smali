.class public Lcom/taobao/android/ssologin/net/TSDKSsoLoginRequest;
.super Ljava/lang/Object;
.source "TSDKSsoLoginRequest.java"

# interfaces
.implements Lcom/taobao/android/ssologin/SsoLoginRequest;


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mParam:Lcom/taobao/android/ssologin/net/TSDKParam;

.field private mSsoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/ssologin/net/TSDKParam;)V
    .locals 0
    .parameter "appKey"
    .parameter "apiUrl"
    .parameter "param"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/taobao/android/ssologin/net/TSDKSsoLoginRequest;->mAppKey:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/taobao/android/ssologin/net/TSDKSsoLoginRequest;->mSsoUrl:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/taobao/android/ssologin/net/TSDKSsoLoginRequest;->mParam:Lcom/taobao/android/ssologin/net/TSDKParam;

    .line 38
    return-void
.end method


# virtual methods
.method public doRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/ssologin/SsoLoginResult;
    .locals 6
    .parameter "ssotoken"
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v2, Landroid/taobao/apirequest/TaoApiRequest;

    invoke-direct {v2}, Landroid/taobao/apirequest/TaoApiRequest;-><init>()V

    .line 76
    .local v2, urlMarker:Landroid/taobao/apirequest/TaoApiRequest;
    const-string v3, "api"

    const-string v4, "com.taobao.wireless.sys.ssoLogin"

    invoke-virtual {v2, v3, v4}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v3, "t"

    iget-object v4, p0, Lcom/taobao/android/ssologin/net/TSDKSsoLoginRequest;->mParam:Lcom/taobao/android/ssologin/net/TSDKParam;

    invoke-interface {v4}, Lcom/taobao/android/ssologin/net/TSDKParam;->getServiceTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v3, "v"

    const-string v4, "3.0"

    invoke-virtual {v2, v3, v4}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/taobao/android/ssologin/net/TSDKSsoLoginRequest;->mParam:Lcom/taobao/android/ssologin/net/TSDKParam;

    invoke-interface {v3}, Lcom/taobao/android/ssologin/net/TSDKParam;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, deviceId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 81
    const-string v3, "deviceId"

    invoke-virtual {v2, v3, v0}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    const-string v3, "ssoToken"

    invoke-virtual {v2, v3, p1}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v3, "needCookie"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v3, "appkey"

    iget-object v4, p0, Lcom/taobao/android/ssologin/net/TSDKSsoLoginRequest;->mAppKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v3, "topToken"

    iget-object v4, p0, Lcom/taobao/android/ssologin/net/TSDKSsoLoginRequest;->mParam:Lcom/taobao/android/ssologin/net/TSDKParam;

    iget-object v5, p0, Lcom/taobao/android/ssologin/net/TSDKSsoLoginRequest;->mAppKey:Ljava/lang/String;

    invoke-interface {v4, p2, v5}, Lcom/taobao/android/ssologin/net/TSDKParam;->getTopToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/android/ssologin/net/TSDKSsoLoginRequest;->mSsoUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/taobao/apirequest/TaoApiRequest;->generalRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Ljava/lang/String;)Landroid/taobao/apirequest/ApiResult;

    move-result-object v1

    .line 89
    .local v1, ret:Landroid/taobao/apirequest/ApiResult;
    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_5

    .line 91
    iget v3, v1, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    const/16 v4, -0x7d6

    if-eq v3, v4, :cond_1

    iget v3, v1, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    const/16 v4, -0x7d7

    if-ne v3, v4, :cond_2

    .line 92
    :cond_1
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/taobao/apirequest/ApiResult;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_2
    iget v3, v1, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    const/4 v4, -0x4

    if-ne v3, v4, :cond_4

    .line 95
    iget v3, v1, Landroid/taobao/apirequest/ApiResult;->timeoutTime:I

    if-lez v3, :cond_3

    .line 96
    new-instance v3, Ljava/net/SocketTimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/taobao/apirequest/ApiResult;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/taobao/apirequest/ApiResult;->timeoutTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_3
    new-instance v3, Lcom/taobao/android/ssologin/net/ApiResultNetworkErrorException;

    iget-object v4, v1, Landroid/taobao/apirequest/ApiResult;->description:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/taobao/android/ssologin/net/ApiResultNetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :cond_4
    new-instance v3, Ljava/io/IOException;

    iget-object v4, v1, Landroid/taobao/apirequest/ApiResult;->description:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_5
    iget-object v3, v1, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    invoke-static {v3}, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->parser([B)Lcom/taobao/android/ssologin/TaoSsoLoginResult;

    move-result-object v3

    return-object v3
.end method

.method public setApiUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/taobao/android/ssologin/net/TSDKSsoLoginRequest;->mSsoUrl:Ljava/lang/String;

    .line 42
    return-void
.end method
