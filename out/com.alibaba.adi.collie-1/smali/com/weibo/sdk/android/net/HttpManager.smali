.class public Lcom/weibo/sdk/android/net/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weibo/sdk/android/net/HttpManager$MySSLSocketFactory;
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = null

.field private static final END_MP_BOUNDARY:Ljava/lang/String; = null

.field public static final HTTPMETHOD_GET:Ljava/lang/String; = "GET"

.field private static final HTTPMETHOD_POST:Ljava/lang/String; = "POST"

.field private static final MP_BOUNDARY:Ljava/lang/String; = null

.field private static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"

.field private static final SET_CONNECTION_TIMEOUT:I = 0x1388

.field private static final SET_SOCKET_TIMEOUT:I = 0x4e20


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/weibo/sdk/android/net/HttpManager;->getBoundry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/weibo/sdk/android/net/HttpManager;->BOUNDARY:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/weibo/sdk/android/net/HttpManager;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/weibo/sdk/android/net/HttpManager;->MP_BOUNDARY:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/weibo/sdk/android/net/HttpManager;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/weibo/sdk/android/net/HttpManager;->END_MP_BOUNDARY:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fileToUpload(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 9
    .parameter "out"
    .parameter "filepath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    .line 441
    if-nez p1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .local v6, temp:Ljava/lang/StringBuilder;
    sget-object v7, Lcom/weibo/sdk/android/net/HttpManager;->MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v7, "content-disposition: form-data; name=\"file\"; filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 449
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\"\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v7, "Content-Type: application/octet-stream; charset=utf-8\r\n\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 452
    .local v5, res:[B
    const/4 v3, 0x0

    .line 454
    .local v3, input:Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 455
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 456
    .end local v3           #input:Ljava/io/FileInputStream;
    .local v4, input:Ljava/io/FileInputStream;
    const v7, 0xc800

    :try_start_1
    new-array v0, v7, [B

    .line 458
    .local v0, buffer:[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 459
    .local v1, count:I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_2

    .line 464
    const-string v7, "\r\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/OutputStream;->write([B)V

    .line 465
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\r\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/weibo/sdk/android/net/HttpManager;->END_MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 469
    if-eqz v4, :cond_0

    .line 471
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 472
    :catch_0
    move-exception v2

    .line 473
    .local v2, e:Ljava/io/IOException;
    new-instance v7, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v7, v2}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 462
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {p0, v0, v7, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 466
    .end local v0           #buffer:[B
    .end local v1           #count:I
    :catch_1
    move-exception v2

    move-object v3, v4

    .line 467
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v3       #input:Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    new-instance v7, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v7, v2}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 468
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 469
    :goto_3
    if-eqz v3, :cond_3

    .line 471
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 476
    :cond_3
    throw v7

    .line 472
    :catch_2
    move-exception v2

    .line 473
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v7, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v7, v2}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 468
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_3

    .line 466
    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method static getBoundry()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x1a

    const-wide/16 v8, 0x3

    .line 549
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 550
    .local v0, _sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, t:I
    :goto_0
    const/16 v4, 0xc

    if-lt v1, v4, :cond_0

    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 551
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 552
    .local v2, time:J
    rem-long v4, v2, v8

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 553
    long-to-int v4, v2

    int-to-char v4, v4

    rem-int/lit8 v4, v4, 0x9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 550
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    :cond_1
    rem-long v4, v2, v8

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 555
    const-wide/16 v4, 0x41

    rem-long v6, v2, v10

    add-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 557
    :cond_2
    const-wide/16 v4, 0x61

    rem-long v6, v2, v10

    add-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 11

    .prologue
    .line 298
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    .line 297
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 299
    .local v6, trustStore:Ljava/security/KeyStore;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 301
    new-instance v5, Lcom/weibo/sdk/android/net/HttpManager$MySSLSocketFactory;

    invoke-direct {v5, v6}, Lcom/weibo/sdk/android/net/HttpManager$MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 302
    .local v5, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v7, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v5, v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 304
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 306
    .local v3, params:Lorg/apache/http/params/HttpParams;
    const/16 v7, 0x2710

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 307
    const/16 v7, 0x2710

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 309
    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 310
    const-string v7, "UTF-8"

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 312
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 313
    .local v4, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "http"

    .line 314
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 313
    invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 315
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "https"

    const/16 v9, 0x1bb

    invoke-direct {v7, v8, v5, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 317
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 321
    .local v0, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    const/16 v7, 0x1388

    .line 320
    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 322
    const/16 v7, 0x4e20

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 323
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v0           #ccm:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v3           #params:Lorg/apache/http/params/HttpParams;
    .end local v4           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v5           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    return-object v1

    .line 333
    :catch_0
    move-exception v2

    .line 334
    .local v2, e:Ljava/lang/Exception;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method private static imageContentToUpload(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 10
    .parameter "out"
    .parameter "imgpath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    .line 398
    if-nez p1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .local v7, temp:Ljava/lang/StringBuilder;
    sget-object v8, Lcom/weibo/sdk/android/net/HttpManager;->MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v8, "Content-Disposition: form-data; name=\"pic\"; filename=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 405
    const-string v9, "news_image"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\"\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v3, "image/png"

    .line 407
    .local v3, filetype:Ljava/lang/String;
    const-string v8, "Content-Type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 412
    .local v6, res:[B
    const/4 v4, 0x0

    .line 414
    .local v4, input:Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 415
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 416
    .end local v4           #input:Ljava/io/FileInputStream;
    .local v5, input:Ljava/io/FileInputStream;
    const v8, 0xc800

    :try_start_1
    new-array v0, v8, [B

    .line 418
    .local v0, buffer:[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 419
    .local v1, count:I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_2

    .line 424
    const-string v8, "\r\n"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 425
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/weibo/sdk/android/net/HttpManager;->END_MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 429
    if-eqz v5, :cond_0

    .line 431
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v2

    .line 433
    .local v2, e:Ljava/io/IOException;
    new-instance v8, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v8, v2}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 422
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {p0, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 426
    .end local v0           #buffer:[B
    .end local v1           #count:I
    :catch_1
    move-exception v2

    move-object v4, v5

    .line 427
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    new-instance v8, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v8, v2}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 428
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 429
    :goto_3
    if-eqz v4, :cond_3

    .line 431
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 436
    :cond_3
    throw v8

    .line 432
    :catch_2
    move-exception v2

    .line 433
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v8, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v8, v2}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 428
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_3

    .line 426
    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method public static openUrl(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .parameter "url"
    .parameter "method"
    .parameter "params"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    .line 87
    const-string v12, ""

    .line 89
    .local v12, result:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/weibo/sdk/android/net/HttpManager;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 90
    .local v3, client:Lorg/apache/http/client/HttpClient;
    const/4 v10, 0x0

    .line 91
    .local v10, request:Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v2, 0x0

    .line 92
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v15

    const-string v16, "http.route.default-proxy"

    .line 93
    invoke-static {}, Lcom/weibo/sdk/android/net/NetStateManager;->getAPN()Lorg/apache/http/HttpHost;

    move-result-object v17

    .line 92
    invoke-interface/range {v15 .. v17}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 94
    const-string v15, "GET"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 95
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Lcom/weibo/sdk/android/util/Utility;->encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 96
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 97
    .local v7, get:Lorg/apache/http/client/methods/HttpGet;
    move-object v10, v7

    .line 131
    .end local v7           #get:Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    :goto_0
    invoke-interface {v3, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 132
    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    .line 133
    .local v13, status:Lorg/apache/http/StatusLine;
    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 135
    .local v14, statusCode:I
    const/16 v15, 0xc8

    if-eq v14, v15, :cond_5

    .line 136
    invoke-static {v11}, Lcom/weibo/sdk/android/net/HttpManager;->readHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v12

    .line 137
    new-instance v15, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v15, v12, v14}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/String;I)V

    throw v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    .end local v10           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #status:Lorg/apache/http/StatusLine;
    .end local v14           #statusCode:I
    :catch_0
    move-exception v5

    .line 142
    .local v5, e:Ljava/io/IOException;
    new-instance v15, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v15, v5}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v15

    .line 98
    .end local v5           #e:Ljava/io/IOException;
    .restart local v2       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    .restart local v10       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_1
    :try_start_1
    const-string v15, "POST"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 99
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 100
    .local v8, post:Lorg/apache/http/client/methods/HttpPost;
    move-object v10, v8

    .line 101
    const/4 v4, 0x0

    check-cast v4, [B

    .line 102
    .local v4, data:[B
    const-string v15, "content-type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, _contentType:Ljava/lang/String;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 105
    .restart local v2       #bos:Ljava/io/ByteArrayOutputStream;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 106
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/weibo/sdk/android/net/HttpManager;->paramToUpload(Ljava/io/OutputStream;Lcom/weibo/sdk/android/WeiboParameters;)V

    .line 107
    const-string v15, "Content-Type"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "multipart/form-data; boundary="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    sget-object v17, Lcom/weibo/sdk/android/net/HttpManager;->BOUNDARY:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 107
    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static/range {p3 .. p3}, Lcom/weibo/sdk/android/util/Utility$UploadImageUtils;->revitionPostImageSize(Ljava/lang/String;)Z

    .line 110
    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/weibo/sdk/android/net/HttpManager;->imageContentToUpload(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 124
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 125
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 126
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v6, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 127
    .local v6, formEntity:Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v8, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 112
    .end local v6           #formEntity:Lorg/apache/http/entity/ByteArrayEntity;
    :cond_2
    if-eqz v1, :cond_3

    .line 113
    const-string v15, "content-type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/weibo/sdk/android/WeiboParameters;->remove(Ljava/lang/String;)V

    .line 114
    const-string v15, "Content-Type"

    invoke-virtual {v8, v15, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/weibo/sdk/android/util/Utility;->encodeParameters(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, postParam:Ljava/lang/String;
    const-string v15, "UTF-8"

    invoke-virtual {v9, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 122
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 116
    .end local v9           #postParam:Ljava/lang/String;
    :cond_3
    const-string v15, "Content-Type"

    .line 117
    const-string v16, "application/x-www-form-urlencoded"

    .line 116
    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 128
    .end local v1           #_contentType:Ljava/lang/String;
    .end local v4           #data:[B
    .end local v8           #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_4
    const-string v15, "DELETE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 129
    new-instance v10, Lorg/apache/http/client/methods/HttpDelete;

    .end local v10           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .restart local v10       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_0

    .line 139
    .restart local v11       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #status:Lorg/apache/http/StatusLine;
    .restart local v14       #statusCode:I
    :cond_5
    invoke-static {v11}, Lcom/weibo/sdk/android/net/HttpManager;->readHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 140
    return-object v12
.end method

.method public static openUrl4Binary(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
    .locals 20
    .parameter "url"
    .parameter "method"
    .parameter "params"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v13, 0x0

    .line 238
    .local v13, result:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {}, Lcom/weibo/sdk/android/net/HttpManager;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    .line 239
    .local v4, client:Lorg/apache/http/client/HttpClient;
    const/4 v11, 0x0

    .line 240
    .local v11, request:Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v3, 0x0

    .line 241
    .local v3, bos:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    const-string v18, "http.route.default-proxy"

    .line 242
    invoke-static {}, Lcom/weibo/sdk/android/net/NetStateManager;->getAPN()Lorg/apache/http/HttpHost;

    move-result-object v19

    .line 241
    invoke-interface/range {v17 .. v19}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 243
    const-string v17, "GET"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 244
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p2 .. p2}, Lcom/weibo/sdk/android/util/Utility;->encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 245
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 246
    .local v8, get:Lorg/apache/http/client/methods/HttpGet;
    move-object v11, v8

    .line 280
    .end local v8           #get:Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    :goto_0
    invoke-interface {v4, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 281
    .local v12, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    .line 282
    .local v15, status:Lorg/apache/http/StatusLine;
    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 284
    .local v16, statusCode:I
    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 285
    invoke-static {v12}, Lcom/weibo/sdk/android/net/HttpManager;->readHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v14

    .line 286
    .local v14, resultStr:Ljava/lang/String;
    new-instance v17, Lcom/weibo/sdk/android/WeiboException;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/String;I)V

    throw v17
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v3           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #client:Lorg/apache/http/client/HttpClient;
    .end local v11           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #resultStr:Ljava/lang/String;
    .end local v15           #status:Lorg/apache/http/StatusLine;
    .end local v16           #statusCode:I
    :catch_0
    move-exception v6

    .line 291
    .local v6, e:Ljava/io/IOException;
    new-instance v17, Lcom/weibo/sdk/android/WeiboException;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v17

    .line 247
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #client:Lorg/apache/http/client/HttpClient;
    .restart local v11       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_1
    :try_start_1
    const-string v17, "POST"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 248
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 249
    .local v9, post:Lorg/apache/http/client/methods/HttpPost;
    move-object v11, v9

    .line 250
    const/4 v5, 0x0

    check-cast v5, [B

    .line 251
    .local v5, data:[B
    const-string v17, "content-type"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, _contentType:Ljava/lang/String;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .end local v3           #bos:Ljava/io/ByteArrayOutputStream;
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 254
    .restart local v3       #bos:Ljava/io/ByteArrayOutputStream;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 255
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/weibo/sdk/android/net/HttpManager;->paramToUpload(Ljava/io/OutputStream;Lcom/weibo/sdk/android/WeiboParameters;)V

    .line 256
    const-string v17, "Content-Type"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "multipart/form-data; boundary="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    sget-object v19, Lcom/weibo/sdk/android/net/HttpManager;->BOUNDARY:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 256
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static/range {p3 .. p3}, Lcom/weibo/sdk/android/util/Utility$UploadImageUtils;->revitionPostImageSize(Ljava/lang/String;)Z

    .line 259
    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/weibo/sdk/android/net/HttpManager;->imageContentToUpload(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 273
    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 274
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 275
    new-instance v7, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v7, v5}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 276
    .local v7, formEntity:Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v9, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_0

    .line 261
    .end local v7           #formEntity:Lorg/apache/http/entity/ByteArrayEntity;
    :cond_2
    if-eqz v2, :cond_3

    .line 262
    const-string v17, "content-type"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->remove(Ljava/lang/String;)V

    .line 263
    const-string v17, "Content-Type"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/weibo/sdk/android/util/Utility;->encodeParameters(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v10

    .line 270
    .local v10, postParam:Ljava/lang/String;
    const-string v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 271
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 265
    .end local v10           #postParam:Ljava/lang/String;
    :cond_3
    const-string v17, "Content-Type"

    .line 266
    const-string v18, "application/x-www-form-urlencoded"

    .line 265
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 277
    .end local v2           #_contentType:Ljava/lang/String;
    .end local v5           #data:[B
    .end local v9           #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_4
    const-string v17, "DELETE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 278
    new-instance v11, Lorg/apache/http/client/methods/HttpDelete;

    .end local v11           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .restart local v11       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_0

    .line 288
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #statusCode:I
    :cond_5
    invoke-static {v12}, Lcom/weibo/sdk/android/net/HttpManager;->readBytesFromHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/io/ByteArrayOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    .line 289
    return-object v13
.end method

.method private static paramToUpload(Ljava/io/OutputStream;Lcom/weibo/sdk/android/WeiboParameters;)V
    .locals 7
    .parameter "baos"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    .line 378
    const-string v1, ""

    .line 379
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, loc:I
    :goto_0
    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboParameters;->size()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 394
    return-void

    .line 380
    :cond_0
    invoke-virtual {p1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->getKey(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 382
    .local v4, temp:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 383
    sget-object v5, Lcom/weibo/sdk/android/net/HttpManager;->MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v5, "content-disposition: form-data; name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 385
    const-string v6, "\"\r\n\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p1, v1}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 389
    .local v3, res:[B
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v5, v0}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method private static readBytesFromHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/io/ByteArrayOutputStream;
    .locals 11
    .parameter "response"

    .prologue
    const/4 v10, -0x1

    .line 520
    const-string v6, ""

    .line 521
    .local v6, result:Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 524
    .local v1, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 525
    .local v3, inputStream:Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 527
    .local v0, content:Ljava/io/ByteArrayOutputStream;
    const-string v8, "Content-Encoding"

    invoke-interface {p0, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 528
    .local v2, header:Lorg/apache/http/Header;
    if-eqz v2, :cond_0

    .line 529
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gzip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-le v8, v10, :cond_0

    .line 530
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v3           #inputStream:Ljava/io/InputStream;
    .local v4, inputStream:Ljava/io/InputStream;
    move-object v3, v4

    .line 533
    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :cond_0
    const/4 v5, 0x0

    .line 534
    .local v5, readBytes:I
    const/16 v8, 0x200

    new-array v7, v8, [B

    .line 535
    .local v7, sBuffer:[B
    :goto_0
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v10, :cond_1

    .line 542
    .end local v0           #content:Ljava/io/ByteArrayOutputStream;
    .end local v2           #header:Lorg/apache/http/Header;
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v5           #readBytes:I
    .end local v7           #sBuffer:[B
    :goto_1
    return-object v0

    .line 536
    .restart local v0       #content:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #header:Lorg/apache/http/Header;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    .restart local v5       #readBytes:I
    .restart local v7       #sBuffer:[B
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 539
    .end local v0           #content:Ljava/io/ByteArrayOutputStream;
    .end local v2           #header:Lorg/apache/http/Header;
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v5           #readBytes:I
    .end local v7           #sBuffer:[B
    :catch_0
    move-exception v8

    .line 542
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 540
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method private static readHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 12
    .parameter "response"

    .prologue
    const/4 v11, -0x1

    .line 486
    const-string v6, ""

    .line 487
    .local v6, result:Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 490
    .local v1, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 491
    .local v3, inputStream:Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 493
    .local v0, content:Ljava/io/ByteArrayOutputStream;
    const-string v9, "Content-Encoding"

    invoke-interface {p0, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 494
    .local v2, header:Lorg/apache/http/Header;
    if-eqz v2, :cond_0

    .line 495
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "gzip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-le v9, v11, :cond_0

    .line 496
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v3           #inputStream:Ljava/io/InputStream;
    .local v4, inputStream:Ljava/io/InputStream;
    move-object v3, v4

    .line 499
    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :cond_0
    const/4 v5, 0x0

    .line 500
    .local v5, readBytes:I
    const/16 v9, 0x200

    new-array v8, v9, [B

    .line 501
    .local v8, sBuffer:[B
    :goto_0
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v11, :cond_1

    .line 504
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v7, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v6           #result:Ljava/lang/String;
    .local v7, result:Ljava/lang/String;
    move-object v6, v7

    .line 509
    .end local v0           #content:Ljava/io/ByteArrayOutputStream;
    .end local v2           #header:Lorg/apache/http/Header;
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v5           #readBytes:I
    .end local v7           #result:Ljava/lang/String;
    .end local v8           #sBuffer:[B
    :goto_1
    return-object v7

    .line 502
    .restart local v0       #content:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #header:Lorg/apache/http/Header;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    .restart local v5       #readBytes:I
    .restart local v6       #result:Ljava/lang/String;
    .restart local v8       #sBuffer:[B
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 506
    .end local v0           #content:Ljava/io/ByteArrayOutputStream;
    .end local v2           #header:Lorg/apache/http/Header;
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v5           #readBytes:I
    .end local v8           #sBuffer:[B
    :catch_0
    move-exception v9

    :goto_2
    move-object v7, v6

    .line 509
    .local v7, result:Ljava/lang/Object;
    goto :goto_1

    .line 507
    .end local v7           #result:Ljava/lang/Object;
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .parameter "url"
    .parameter "method"
    .parameter "params"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;
        }
    .end annotation

    .prologue
    .line 161
    const-string v12, ""

    .line 163
    .local v12, result:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/weibo/sdk/android/net/HttpManager;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 164
    .local v3, client:Lorg/apache/http/client/HttpClient;
    const/4 v10, 0x0

    .line 165
    .local v10, request:Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v2, 0x0

    .line 166
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v15

    const-string v16, "http.route.default-proxy"

    .line 167
    invoke-static {}, Lcom/weibo/sdk/android/net/NetStateManager;->getAPN()Lorg/apache/http/HttpHost;

    move-result-object v17

    .line 166
    invoke-interface/range {v15 .. v17}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 168
    const-string v15, "GET"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 169
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Lcom/weibo/sdk/android/util/Utility;->encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 170
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 171
    .local v7, get:Lorg/apache/http/client/methods/HttpGet;
    move-object v10, v7

    .line 205
    .end local v7           #get:Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    :goto_0
    invoke-interface {v3, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 206
    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    .line 207
    .local v13, status:Lorg/apache/http/StatusLine;
    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 209
    .local v14, statusCode:I
    const/16 v15, 0xc8

    if-eq v14, v15, :cond_5

    .line 210
    invoke-static {v11}, Lcom/weibo/sdk/android/net/HttpManager;->readHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v12

    .line 211
    new-instance v15, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v15, v12, v14}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/String;I)V

    throw v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    .end local v10           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #status:Lorg/apache/http/StatusLine;
    .end local v14           #statusCode:I
    :catch_0
    move-exception v5

    .line 216
    .local v5, e:Ljava/io/IOException;
    new-instance v15, Lcom/weibo/sdk/android/WeiboException;

    invoke-direct {v15, v5}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/Exception;)V

    throw v15

    .line 172
    .end local v5           #e:Ljava/io/IOException;
    .restart local v2       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    .restart local v10       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_1
    :try_start_1
    const-string v15, "POST"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 173
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 174
    .local v8, post:Lorg/apache/http/client/methods/HttpPost;
    move-object v10, v8

    .line 175
    const/4 v4, 0x0

    check-cast v4, [B

    .line 176
    .local v4, data:[B
    const-string v15, "content-type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, _contentType:Ljava/lang/String;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    .restart local v2       #bos:Ljava/io/ByteArrayOutputStream;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 180
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/weibo/sdk/android/net/HttpManager;->paramToUpload(Ljava/io/OutputStream;Lcom/weibo/sdk/android/WeiboParameters;)V

    .line 181
    const-string v15, "Content-Type"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "multipart/form-data; boundary="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    sget-object v17, Lcom/weibo/sdk/android/net/HttpManager;->BOUNDARY:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 181
    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static/range {p3 .. p3}, Lcom/weibo/sdk/android/util/Utility$UploadImageUtils;->revitionPostImageSize(Ljava/lang/String;)Z

    .line 184
    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/weibo/sdk/android/net/HttpManager;->fileToUpload(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 198
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 199
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 200
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v6, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 201
    .local v6, formEntity:Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v8, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 186
    .end local v6           #formEntity:Lorg/apache/http/entity/ByteArrayEntity;
    :cond_2
    if-eqz v1, :cond_3

    .line 187
    const-string v15, "content-type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/weibo/sdk/android/WeiboParameters;->remove(Ljava/lang/String;)V

    .line 188
    const-string v15, "Content-Type"

    invoke-virtual {v8, v15, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/weibo/sdk/android/util/Utility;->encodeParameters(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v9

    .line 195
    .local v9, postParam:Ljava/lang/String;
    const-string v15, "UTF-8"

    invoke-virtual {v9, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 196
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 190
    .end local v9           #postParam:Ljava/lang/String;
    :cond_3
    const-string v15, "Content-Type"

    .line 191
    const-string v16, "application/x-www-form-urlencoded"

    .line 190
    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 202
    .end local v1           #_contentType:Ljava/lang/String;
    .end local v4           #data:[B
    .end local v8           #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_4
    const-string v15, "DELETE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 203
    new-instance v10, Lorg/apache/http/client/methods/HttpDelete;

    .end local v10           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .restart local v10       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_0

    .line 213
    .restart local v11       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #status:Lorg/apache/http/StatusLine;
    .restart local v14       #statusCode:I
    :cond_5
    invoke-static {v11}, Lcom/weibo/sdk/android/net/HttpManager;->readHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 214
    return-object v12
.end method
