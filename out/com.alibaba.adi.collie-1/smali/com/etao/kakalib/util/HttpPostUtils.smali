.class public Lcom/etao/kakalib/util/HttpPostUtils;
.super Ljava/lang/Object;
.source "HttpPostUtils.java"


# static fields
.field public static CONNECTION_TIMEOUT:I

.field public static TIMEOUT_SOCKET:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x2710

    sput v0, Lcom/etao/kakalib/util/HttpPostUtils;->CONNECTION_TIMEOUT:I

    .line 37
    const/16 v0, 0x3a98

    sput v0, Lcom/etao/kakalib/util/HttpPostUtils;->TIMEOUT_SOCKET:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUrlContent(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/etao/kakalib/util/HttpPostUtils;->getUrlInputStream(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/io/InputStream;

    move-result-object v0

    .line 53
    .local v0, urlBytes:Ljava/io/InputStream;
    invoke-static {v0}, Lcom/etao/kakalib/util/HttpPostUtils;->readInputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-static {p0, v0, v0}, Lcom/etao/kakalib/util/HttpPostUtils;->getUrlInputStream(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getUrlInputStream(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/io/InputStream;
    .locals 1
    .parameter "url"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/etao/kakalib/util/HttpPostUtils;->requestDoPost(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getUrlInputStreamWithHeaders(Ljava/lang/String;Ljava/util/HashMap;)Ljava/io/InputStream;
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    .local p1, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/etao/kakalib/util/HttpPostUtils;->requestDoPost(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static readInputStream2String(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .parameter "inputStream"

    .prologue
    .line 198
    if-nez p0, :cond_0

    .line 199
    const/4 v3, 0x0

    .line 220
    :goto_0
    return-object v3

    .line 202
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 203
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v2, sb:Ljava/lang/StringBuilder;
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 213
    .end local v1           #line:Ljava/lang/String;
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 220
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 207
    .restart local v1       #line:Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 209
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_2

    .line 214
    :catch_1
    move-exception v3

    goto :goto_3

    .line 218
    :catch_2
    move-exception v3

    goto :goto_4
.end method

.method private static requestDoPost(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/io/InputStream;
    .locals 15
    .parameter "url"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, headerMaps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/etao/kakalib/util/SharedHttpClient;->getSingleHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 149
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-static {p0}, Lcom/etao/kakalib/util/HttpPostUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 150
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 151
    .local v7, request:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 152
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 153
    .local v3, headeSset:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 157
    .end local v3           #headeSset:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 158
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v5, nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 161
    .local v6, paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 164
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 165
    new-instance v11, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v12, "UTF-8"

    invoke-direct {v11, v5, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 168
    .end local v5           #nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    invoke-virtual {v0, v7}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 170
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    .line 171
    .local v9, status:Lorg/apache/http/StatusLine;
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 172
    .local v10, statusCode:I
    const/16 v11, 0xc8

    if-eq v10, v11, :cond_4

    .line 178
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 179
    new-instance v11, Lorg/apache/http/client/HttpResponseException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "respose:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v10, v12}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v11

    .line 153
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #status:Lorg/apache/http/StatusLine;
    .end local v10           #statusCode:I
    .restart local v3       #headeSset:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 154
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #headeSset:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v5       #nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v6       #paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 162
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v14, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    .restart local v9       #status:Lorg/apache/http/StatusLine;
    .restart local v10       #statusCode:I
    :cond_4
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 183
    .local v1, entity:Lorg/apache/http/HttpEntity;
    const/4 v4, 0x0

    .line 184
    .local v4, inputStream:Ljava/io/InputStream;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 186
    return-object v4
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "urlStr"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/etao/kakalib/util/HttpPostUtils;->urlEncodeAnd2URL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 111
    .local v0, url:Ljava/net/URL;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    .line 114
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static urlEncodeAnd2URL(Ljava/lang/String;)Ljava/net/URL;
    .locals 10
    .parameter "urlStr"

    .prologue
    .line 118
    const/4 v8, 0x0

    .line 120
    .local v8, url:Ljava/net/URL;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .end local v8           #url:Ljava/net/URL;
    .local v9, url:Ljava/net/URL;
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 124
    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v0, uri:Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 131
    .end local v0           #uri:Ljava/net/URI;
    .end local v9           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    :goto_0
    return-object v8

    .line 126
    .end local v8           #url:Ljava/net/URL;
    .restart local v9       #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    move-object v8, v9

    .line 128
    .end local v9           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .end local v8           #url:Ljava/net/URL;
    .restart local v9       #url:Ljava/net/URL;
    :catch_2
    move-exception v1

    move-object v8, v9

    .end local v9           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    goto :goto_0
.end method
