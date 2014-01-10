.class public Lorg/android/agoo/net/chunked/HttpURLChunked;
.super Lorg/android/agoo/net/chunked/AbsHttpChunked;
.source "HttpURLChunked.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpURLChunked"


# instance fields
.field private volatile urlConn:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/android/agoo/net/chunked/AbsHttpChunked;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->urlConn:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private checkHttpResponse(Ljava/net/HttpURLConnection;)V
    .locals 1
    .parameter "urlConn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->input:Ljava/io/InputStream;

    .line 103
    return-void
.end method

.method private getHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 7
    .parameter "urlConn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 69
    .local v1, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 70
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    const/4 v0, 0x0

    .line 71
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .local v3, key:Ljava/lang/String;
    const/4 v5, 0x0

    .line 72
    .local v5, value:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #key:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 75
    .restart local v3       #key:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v6}, Lorg/android/agoo/net/chunked/HttpURLChunked;->list2String(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 82
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_1
    return-object v4
.end method

.method private list2String(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 90
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    .line 92
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected closeConnectPool()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->urlConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->urlConn:Ljava/net/HttpURLConnection;

    .line 113
    :cond_0
    return-void
.end method

.method protected connect(Ljava/lang/String;)V
    .locals 14
    .parameter "urlStr"

    .prologue
    .line 31
    :try_start_0
    const-string v7, "HttpURLChunked"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http chunked connectId:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->mCId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]==>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 33
    .local v6, url:Ljava/net/URL;
    invoke-virtual {p0}, Lorg/android/agoo/net/chunked/HttpURLChunked;->hasProxy()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 34
    new-instance v4, Ljava/net/Proxy;

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-super {p0}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-super {p0}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->getPort()I

    move-result v10

    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v4, v7, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 37
    .local v4, proxy:Ljava/net/Proxy;
    invoke-virtual {v6, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    iput-object v7, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->urlConn:Ljava/net/HttpURLConnection;

    .line 42
    .end local v4           #proxy:Ljava/net/Proxy;
    :goto_0
    iget-object v7, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->urlConn:Ljava/net/HttpURLConnection;

    const-string v8, "User-agent"

    const-string v9, "Agoo-sdk-%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/high16 v12, 0x4000

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v7, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->clientHeaderMap:Ljava/util/Map;

    if-eqz v7, :cond_1

    .line 44
    iget-object v7, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    .local v1, header:Ljava/lang/String;
    iget-object v8, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->urlConn:Ljava/net/HttpURLConnection;

    iget-object v7, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v1, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 60
    .end local v1           #header:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #url:Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Throwable;
    const-string v7, "HttpURLChunked"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http chunked connectId:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->mCId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]==>[Throwable]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    const/16 v7, 0x1f8

    invoke-virtual {p0, v7, v0}, Lorg/android/agoo/net/chunked/HttpURLChunked;->onError(ILjava/lang/Throwable;)V

    .line 64
    .end local v0           #e:Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 40
    .restart local v6       #url:Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    iput-object v7, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->urlConn:Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 48
    :cond_1
    iget-object v7, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 49
    iget-object v7, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 50
    .local v5, result:I
    iget-object v7, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->urlConn:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v7}, Lorg/android/agoo/net/chunked/HttpURLChunked;->getHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v2

    .line 51
    .local v2, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v7, 0xc8

    if-ne v7, v5, :cond_2

    .line 52
    iget-object v7, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->urlConn:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v7}, Lorg/android/agoo/net/chunked/HttpURLChunked;->checkHttpResponse(Ljava/net/HttpURLConnection;)V

    .line 53
    invoke-virtual {p0, v2}, Lorg/android/agoo/net/chunked/HttpURLChunked;->onOpen(Ljava/util/Map;)V

    .line 54
    invoke-virtual {p0}, Lorg/android/agoo/net/chunked/HttpURLChunked;->read()V

    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p0, v5, v2}, Lorg/android/agoo/net/chunked/HttpURLChunked;->onError(ILjava/util/Map;)V

    .line 58
    invoke-virtual {p0}, Lorg/android/agoo/net/chunked/HttpURLChunked;->stopFutureTimeout()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected disHttpConnect()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->urlConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/net/chunked/HttpURLChunked;->urlConn:Ljava/net/HttpURLConnection;

    .line 122
    :cond_0
    return-void
.end method
