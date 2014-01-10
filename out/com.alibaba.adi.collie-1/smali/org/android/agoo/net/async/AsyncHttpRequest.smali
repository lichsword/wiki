.class Lorg/android/agoo/net/async/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncHttp.request"


# instance fields
.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private context:Landroid/content/Context;

.field private executionCount:I

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private volatile isBinaryRequest:Z

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final responseHandler:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/android/agoo/net/async/AsyncHttpResponseHandler;)V
    .locals 2
    .parameter "context"
    .parameter "client"
    .parameter "httpContext"
    .parameter "host"
    .parameter "request"
    .parameter "responseHandler"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 31
    iput-object p3, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 32
    iput-object p1, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->context:Landroid/content/Context;

    .line 33
    iput-object p5, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 34
    iput-object p6, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->responseHandler:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;

    .line 35
    if-eqz p4, :cond_0

    .line 36
    invoke-virtual {p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.route.default-proxy"

    invoke-interface {v0, v1, p4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 38
    :cond_0
    instance-of v0, p6, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;

    if-eqz v0, :cond_1

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->isBinaryRequest:Z

    .line 41
    :cond_1
    return-void
.end method

.method private makeRequest()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, response:Lorg/apache/http/HttpResponse;
    iget-object v1, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v2, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v3, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 74
    const-string v1, "AsyncHttp.request"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http request:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]===response[:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->responseHandler:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->responseHandler:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v1, v0}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    .line 80
    .end local v0           #response:Lorg/apache/http/HttpResponse;
    :cond_0
    return-void
.end method

.method private makeRequestWithRetries()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v3, 0x1

    .line 84
    .local v3, retry:Z
    const/4 v0, 0x0

    .line 85
    .local v0, cause:Ljava/io/IOException;
    iget-object v5, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v4

    .line 86
    .local v4, retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;
    :goto_0
    if-eqz v3, :cond_0

    .line 88
    :try_start_0
    invoke-direct {p0}, Lorg/android/agoo/net/async/AsyncHttpRequest;->makeRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, e:Ljava/io/IOException;
    const-string v5, "AsyncHttp.request"

    const-string v6, "http request makeRequestWithRetries"

    invoke-static {v5, v6, v1}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    move-object v0, v1

    .line 93
    iget v5, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->executionCount:I

    iget-object v6, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    .line 98
    goto :goto_0

    .line 94
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "AsyncHttp.request"

    const-string v6, ""

    invoke-static {v5, v6, v1}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    new-instance v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NPE in HttpClient"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 97
    .restart local v0       #cause:Ljava/io/IOException;
    iget v5, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->executionCount:I

    iget-object v6, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    .line 98
    goto :goto_0

    .line 100
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_0
    new-instance v2, Ljava/net/ConnectException;

    invoke-direct {v2}, Ljava/net/ConnectException;-><init>()V

    .line 101
    .local v2, ex:Ljava/net/ConnectException;
    invoke-virtual {v2, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 102
    throw v2
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 46
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->responseHandler:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->responseHandler:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v1}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->sendStartMessage()V

    .line 49
    :cond_0
    iget-object v1, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/net/ConnectManager;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    iget-object v3, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->responseHandler:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http request network connection error["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    check-cast v1, [B

    invoke-virtual {v3, v4, v1}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    .line 54
    :goto_0
    iget-object v1, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->responseHandler:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->responseHandler:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v1}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->sendFinishMessage()V

    .line 68
    :cond_1
    :goto_1
    return-void

    .line 52
    :cond_2
    invoke-direct {p0}, Lorg/android/agoo/net/async/AsyncHttpRequest;->makeRequestWithRetries()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/io/IOException;
    const-string v1, "AsyncHttp.request"

    const-string v3, "http request io"

    invoke-static {v1, v3, v0}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    iget-object v1, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->responseHandler:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->responseHandler:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v1}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->sendFinishMessage()V

    .line 61
    iget-boolean v1, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->isBinaryRequest:Z

    if-eqz v1, :cond_3

    .line 62
    iget-object v3, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->responseHandler:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;

    move-object v1, v2

    check-cast v1, [B

    invoke-virtual {v3, v0, v1}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_1

    .line 64
    :cond_3
    iget-object v1, p0, Lorg/android/agoo/net/async/AsyncHttpRequest;->responseHandler:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method
