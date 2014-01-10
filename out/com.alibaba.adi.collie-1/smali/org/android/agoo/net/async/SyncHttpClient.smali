.class public Lorg/android/agoo/net/async/SyncHttpClient;
.super Lorg/android/agoo/net/async/AbsHttpClient;
.source "SyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncHttp.client"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/android/agoo/net/async/AbsHttpClient;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lorg/android/agoo/net/async/AbsHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lorg/android/agoo/net/async/AbsHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/android/agoo/net/async/SyncHttpClient;->get(Landroid/content/Context;Lorg/apache/http/HttpHost;Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Lorg/apache/http/HttpHost;Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    .locals 15
    .parameter "context"
    .parameter "host"
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v6, 0x0

    .line 40
    .local v6, response:Lorg/apache/http/HttpResponse;
    const/4 v7, 0x0

    .line 41
    .local v7, responseBody:Ljava/lang/String;
    const/4 v2, 0x0

    .line 42
    .local v2, client:Lorg/apache/http/impl/client/AbstractHttpClient;
    const/4 v8, 0x0

    .line 44
    .local v8, result:Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/async/SyncHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 45
    .local v5, request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static/range {p1 .. p1}, Lorg/android/agoo/net/ConnectManager;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 46
    const-string v12, "SyncHttp.client"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "network connection error["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "network connection error["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v5           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_0
    move-exception v3

    .line 73
    .local v3, e:Ljava/io/IOException;
    :goto_0
    const-string v12, "SyncHttp.client"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "request url error:["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    throw v3

    .line 50
    .end local v3           #e:Ljava/io/IOException;
    .restart local v5       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/android/agoo/net/async/SyncHttpClient;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    .line 51
    if-eqz p2, :cond_1

    .line 52
    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    const-string v13, "http.route.default-proxy"

    move-object/from16 v0, p2

    invoke-interface {v12, v13, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 54
    :cond_1
    invoke-virtual {v2, v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 55
    new-instance v9, Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;

    invoke-direct {v9}, Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    .end local v8           #result:Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    .local v9, result:Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    .line 57
    .local v10, status:Lorg/apache/http/StatusLine;
    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    iput v12, v9, Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;->statusCode:I

    .line 58
    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0x12c

    if-lt v12, v13, :cond_2

    .line 59
    const-string v12, "SyncHttp.client"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "request url ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]  result code:["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 76
    .end local v9           #result:Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    .restart local v8       #result:Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    :goto_1
    return-object v8

    .line 63
    .end local v8           #result:Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    .restart local v9       #result:Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    :cond_2
    const/4 v4, 0x0

    .line 64
    .local v4, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .line 65
    .local v11, temp:Lorg/apache/http/HttpEntity;
    if-eqz v11, :cond_3

    .line 66
    new-instance v4, Lorg/apache/http/entity/BufferedHttpEntity;

    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    invoke-direct {v4, v11}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 67
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    const-string v12, "UTF-8"

    invoke-static {v4, v12}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 68
    iput-object v7, v9, Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;->responseBody:Ljava/lang/String;

    .line 70
    :cond_3
    const-string v12, "SyncHttp.client"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "request url:["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] : result code ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]:["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, v9

    .line 76
    .end local v9           #result:Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    .restart local v8       #result:Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    goto :goto_1

    .line 72
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v8           #result:Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    .end local v10           #status:Lorg/apache/http/StatusLine;
    .end local v11           #temp:Lorg/apache/http/HttpEntity;
    .restart local v9       #result:Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    :catch_1
    move-exception v3

    move-object v8, v9

    .end local v9           #result:Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    .restart local v8       #result:Lorg/android/agoo/net/async/SyncHttpClient$SyncResult;
    goto/16 :goto_0
.end method

.method public bridge synthetic getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lorg/android/agoo/net/async/AbsHttpClient;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lorg/android/agoo/net/async/AbsHttpClient;->getHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lorg/android/agoo/net/async/AbsHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3}, Lorg/android/agoo/net/async/AbsHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V

    return-void
.end method

.method public bridge synthetic setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lorg/android/agoo/net/async/AbsHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    return-void
.end method

.method public bridge synthetic setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lorg/android/agoo/net/async/AbsHttpClient;->setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public bridge synthetic setTimeout(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lorg/android/agoo/net/async/AbsHttpClient;->setTimeout(I)V

    return-void
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lorg/android/agoo/net/async/AbsHttpClient;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method
