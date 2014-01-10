.class public final Lcom/autonavi/aps/amapapi/i;
.super Ljava/lang/Object;
.source "NetManager.java"


# static fields
.field private static a:Lcom/autonavi/aps/amapapi/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/aps/amapapi/i;->a:Lcom/autonavi/aps/amapapi/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a(Landroid/net/NetworkInfo;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 318
    if-nez p0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 321
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/autonavi/aps/amapapi/i;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/autonavi/aps/amapapi/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/aps/amapapi/i;->a:Lcom/autonavi/aps/amapapi/i;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/autonavi/aps/amapapi/i;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/i;-><init>()V

    sput-object v0, Lcom/autonavi/aps/amapapi/i;->a:Lcom/autonavi/aps/amapapi/i;

    .line 51
    :cond_0
    sget-object v0, Lcom/autonavi/aps/amapapi/i;->a:Lcom/autonavi/aps/amapapi/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    if-eqz p0, :cond_0

    .line 340
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 342
    :cond_0
    sget-object v1, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const-string v2, "UNKNOWN"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    const/16 v10, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 192
    new-instance v11, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v11}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_b

    .line 196
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 200
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 201
    if-eqz v1, :cond_10

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 202
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 203
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 206
    const-string v4, "found apn:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/autonavi/aps/amapapi/Utils;->writeCat([Ljava/lang/Object;)V

    .line 208
    :cond_0
    if-eqz v0, :cond_4

    const-string v2, "ctwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    invoke-static {}, Lcom/autonavi/aps/amapapi/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_11

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 212
    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-nez v2, :cond_11

    move v2, v7

    .line 217
    :goto_0
    if-nez v2, :cond_1

    .line 218
    :try_start_2
    const-string v0, "10.0.0.200"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    move-object v6, v0

    move v0, v10

    .line 274
    :goto_1
    if-eqz v1, :cond_2

    .line 275
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, v0

    .line 282
    :goto_2
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    if-eq v1, v9, :cond_a

    move v0, v7

    :goto_3
    if-eqz v0, :cond_3

    .line 283
    const-string v0, "http"

    .line 284
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v6, v1, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 285
    const-string v0, "http.route.default-proxy"

    invoke-interface {v11, v0, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 287
    :cond_3
    const/16 v0, 0x3a98

    invoke-static {v11, v0}, Lcom/autonavi/aps/amapapi/Utils;->setTimeOut(Lorg/apache/http/params/HttpParams;I)V

    .line 288
    invoke-static {v11, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 289
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 290
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v1

    .line 292
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-direct {v2, v3, v1, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 293
    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 294
    new-instance v1, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v1, v11, v0}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 296
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 297
    return-object v0

    .line 221
    :cond_4
    if-eqz v0, :cond_10

    :try_start_3
    const-string v2, "wap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 222
    invoke-static {}, Lcom/autonavi/aps/amapapi/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_f

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 225
    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    if-nez v2, :cond_f

    move v2, v7

    .line 230
    :goto_4
    if-nez v2, :cond_5

    .line 231
    :try_start_4
    const-string v0, "10.0.0.172"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    move-object v6, v0

    move v0, v10

    .line 236
    goto :goto_1

    .line 240
    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_5
    :try_start_5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 241
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-static {}, Lcom/autonavi/aps/amapapi/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string v3, "ctwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v9, :cond_7

    .line 248
    if-eqz v0, :cond_e

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 249
    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v2, v7

    .line 254
    :goto_6
    if-nez v2, :cond_6

    .line 255
    const-string v0, "10.0.0.200"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    move-object v6, v0

    move v0, v10

    .line 274
    :goto_7
    if-eqz v1, :cond_2

    .line 275
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v1, v0

    goto/16 :goto_2

    .line 258
    :cond_7
    :try_start_6
    const-string v3, "wap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v9, :cond_d

    .line 259
    if-eqz v0, :cond_c

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 260
    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v7

    .line 265
    :goto_8
    if-nez v2, :cond_8

    .line 266
    const-string v0, "10.0.0.200"

    :cond_8
    move-object v6, v0

    move v0, v10

    .line 268
    goto :goto_7

    .line 271
    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_9
    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 274
    if-eqz v1, :cond_b

    .line 275
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v1, v9

    goto/16 :goto_2

    .line 273
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 274
    :goto_a
    if-eqz v1, :cond_9

    .line 275
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_9
    throw v0

    :cond_a
    move v0, v8

    .line 282
    goto/16 :goto_3

    .line 273
    :catchall_1
    move-exception v0

    goto :goto_a

    .line 271
    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v2

    move-object v6, v0

    move-object v0, v2

    goto :goto_9

    .line 240
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v2

    move-object v6, v0

    goto/16 :goto_5

    :cond_b
    move v1, v9

    goto/16 :goto_2

    :cond_c
    move v2, v8

    move-object v0, v6

    goto :goto_8

    :cond_d
    move v0, v9

    goto :goto_7

    :cond_e
    move v2, v8

    move-object v0, v6

    goto :goto_6

    :cond_f
    move v2, v8

    move-object v0, v6

    goto/16 :goto_4

    :cond_10
    move v0, v9

    goto/16 :goto_1

    :cond_11
    move v2, v8

    move-object v0, v6

    goto/16 :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 366
    const-string v0, "android.net.Proxy"

    .line 368
    const-string v2, "getDefaultHost"

    .line 370
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v0, v2, v3, v4}, Lcom/autonavi/aps/amapapi/Reflect;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 372
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 376
    :goto_0
    if-nez v0, :cond_0

    .line 377
    const-string v0, "null"

    .line 379
    :cond_0
    return-object v0

    .line 374
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Landroid/content/Context;Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .locals 15
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    const-string v9, ""

    .line 66
    invoke-virtual/range {p3 .. p3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 67
    invoke-static {v12}, Lcom/autonavi/aps/amapapi/i;->a(Landroid/net/NetworkInfo;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    .line 80
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 84
    const/4 v1, 0x0

    .line 179
    :goto_0
    monitor-exit p0

    return-object v1

    .line 86
    :cond_0
    const/4 v8, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    const/4 v6, 0x0

    .line 91
    const/4 v5, 0x0

    .line 92
    const/4 v4, 0x0

    .line 93
    :try_start_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v1, 0x0

    move v11, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v9

    :goto_1
    const/4 v9, 0x2

    if-lt v11, v9, :cond_2

    .line 179
    :cond_1
    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    goto :goto_0

    .line 96
    :cond_2
    if-nez v1, :cond_1

    .line 97
    :try_start_2
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/autonavi/aps/amapapi/i;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v10

    .line 104
    :try_start_3
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    const-string v8, "http://aps.amap.com/APS/r"

    invoke-direct {v9, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_5

    .line 105
    :try_start_4
    new-instance v7, Lorg/apache/http/entity/StringEntity;

    const-string v8, "GBK"

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v8}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v8, "text/xml"

    invoke-virtual {v7, v8}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 107
    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    invoke-virtual {v2, v8, v13}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 108
    const-string v8, "application/soap+xml;charset="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const-string v8, "GBK"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const-string v8, "Content-Type"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v8, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v8, "Accept-Encoding"

    const-string v13, "gzip"

    invoke-virtual {v9, v8, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    invoke-virtual {v2, v8, v13}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {v9, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 114
    invoke-interface {v10, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 115
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 119
    const/16 v13, 0xc8

    if-ne v8, v13, :cond_19

    .line 120
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v6

    .line 121
    :try_start_5
    const-string v8, "Content-Encoding"

    invoke-interface {v7, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "gzip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_18

    .line 125
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_7

    .line 127
    :goto_3
    :try_start_6
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v8, "GBK"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1a
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_8

    .line 128
    :try_start_7
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v8, 0x800

    invoke-direct {v5, v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_1b
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_9

    .line 130
    :goto_4
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v2, v4, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_3

    .line 135
    const/4 v2, 0x0

    .line 136
    const/4 v1, 0x1

    move-object v4, v6

    move-object v8, v3

    move-object v3, v5

    move-object v5, v7

    .line 155
    :goto_5
    :try_start_9
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 157
    const/4 v6, 0x0

    .line 159
    if-eqz v10, :cond_1a

    .line 160
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 161
    const/4 v7, 0x0

    .line 163
    :goto_6
    if-eqz v5, :cond_3

    .line 166
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 167
    const/4 v5, 0x0

    .line 169
    :cond_3
    if-eqz v4, :cond_4

    .line 170
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 171
    const/4 v4, 0x0

    .line 173
    :cond_4
    if-eqz v3, :cond_5

    .line 174
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 175
    const/4 v3, 0x0

    .line 95
    :cond_5
    :goto_7
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    move-object v14, v3

    move-object v3, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v14

    goto/16 :goto_1

    .line 121
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 131
    :cond_7
    :try_start_a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_4

    :catch_0
    move-exception v4

    move-object v4, v6

    move-object v8, v3

    move-object v6, v9

    move-object v3, v5

    move-object v5, v7

    move-object v7, v10

    .line 155
    :goto_8
    if-eqz v6, :cond_8

    .line 156
    :try_start_b
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 157
    const/4 v6, 0x0

    .line 159
    :cond_8
    if-eqz v7, :cond_9

    .line 160
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 161
    const/4 v7, 0x0

    .line 163
    :cond_9
    if-eqz v5, :cond_a

    .line 166
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 167
    const/4 v5, 0x0

    .line 169
    :cond_a
    if-eqz v4, :cond_b

    .line 170
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 171
    const/4 v4, 0x0

    .line 173
    :cond_b
    if-eqz v3, :cond_5

    .line 174
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 175
    const/4 v3, 0x0

    goto :goto_7

    .line 155
    :catch_1
    move-exception v4

    move-object v4, v6

    move-object v8, v3

    move-object v3, v5

    move-object v5, v7

    :goto_9
    if-eqz v9, :cond_20

    .line 156
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 157
    const/4 v6, 0x0

    .line 159
    :goto_a
    if-eqz v10, :cond_1f

    .line 160
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 161
    const/4 v7, 0x0

    .line 163
    :goto_b
    if-eqz v5, :cond_c

    .line 166
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 167
    const/4 v5, 0x0

    .line 169
    :cond_c
    if-eqz v4, :cond_d

    .line 170
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 171
    const/4 v4, 0x0

    .line 173
    :cond_d
    if-eqz v3, :cond_5

    .line 174
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 175
    const/4 v3, 0x0

    goto :goto_7

    .line 155
    :catch_2
    move-exception v4

    move-object v4, v6

    move-object v8, v3

    move-object v3, v5

    move-object v5, v7

    :goto_c
    if-eqz v9, :cond_1e

    .line 156
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 157
    const/4 v6, 0x0

    .line 159
    :goto_d
    if-eqz v10, :cond_1d

    .line 160
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 161
    const/4 v7, 0x0

    .line 163
    :goto_e
    if-eqz v5, :cond_e

    .line 166
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 167
    const/4 v5, 0x0

    .line 169
    :cond_e
    if-eqz v4, :cond_f

    .line 170
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 171
    const/4 v4, 0x0

    .line 173
    :cond_f
    if-eqz v3, :cond_5

    .line 174
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 175
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 155
    :catch_3
    move-exception v4

    move-object v4, v6

    move-object v8, v3

    move-object v3, v5

    move-object v5, v7

    :goto_f
    if-eqz v9, :cond_1c

    .line 156
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 157
    const/4 v6, 0x0

    .line 159
    :goto_10
    if-eqz v10, :cond_1b

    .line 160
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 161
    const/4 v7, 0x0

    .line 163
    :goto_11
    if-eqz v5, :cond_10

    .line 166
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 167
    const/4 v5, 0x0

    .line 169
    :cond_10
    if-eqz v4, :cond_11

    .line 170
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 171
    const/4 v4, 0x0

    .line 173
    :cond_11
    if-eqz v3, :cond_5

    .line 174
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 175
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 154
    :catchall_0
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 155
    :goto_12
    if-eqz v9, :cond_12

    .line 156
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 157
    :cond_12
    if-eqz v10, :cond_13

    .line 160
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 161
    :cond_13
    if-eqz v6, :cond_14

    .line 166
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 167
    :cond_14
    if-eqz v5, :cond_15

    .line 170
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 171
    :cond_15
    if-eqz v4, :cond_16

    .line 174
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 175
    :cond_16
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 65
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_17
    move-object v1, v3

    .line 179
    goto/16 :goto_0

    .line 154
    :catchall_2
    move-exception v1

    move-object v9, v7

    move-object v10, v8

    goto :goto_12

    :catchall_3
    move-exception v1

    move-object v9, v7

    goto :goto_12

    :catchall_4
    move-exception v1

    goto :goto_12

    :catchall_5
    move-exception v1

    move-object v6, v7

    goto :goto_12

    :catchall_6
    move-exception v1

    move-object v5, v6

    move-object v6, v7

    goto :goto_12

    .line 155
    :catch_4
    move-exception v9

    move-object v9, v7

    move-object v10, v8

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_f

    :catch_5
    move-exception v8

    move-object v9, v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_f

    :catch_6
    move-exception v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_f

    :catch_7
    move-exception v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_f

    :catch_8
    move-exception v6

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    goto :goto_f

    :catch_9
    move-exception v5

    move-object v5, v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v6

    goto/16 :goto_f

    :catch_a
    move-exception v9

    move-object v9, v7

    move-object v10, v8

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_c

    :catch_b
    move-exception v8

    move-object v9, v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_c

    :catch_c
    move-exception v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_c

    :catch_d
    move-exception v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_c

    :catch_e
    move-exception v6

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    goto/16 :goto_c

    :catch_f
    move-exception v5

    move-object v5, v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v6

    goto/16 :goto_c

    :catch_10
    move-exception v9

    move-object v9, v7

    move-object v10, v8

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_9

    :catch_11
    move-exception v8

    move-object v9, v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_9

    :catch_12
    move-exception v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_9

    :catch_13
    move-exception v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_9

    :catch_14
    move-exception v6

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    goto/16 :goto_9

    :catch_15
    move-exception v5

    move-object v5, v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v6

    goto/16 :goto_9

    :catch_16
    move-exception v9

    move-object v14, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v3

    move-object v3, v14

    goto/16 :goto_8

    :catch_17
    move-exception v8

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v10

    goto/16 :goto_8

    :catch_18
    move-exception v7

    move-object v7, v10

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v9

    goto/16 :goto_8

    :catch_19
    move-exception v7

    move-object v7, v10

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v9

    goto/16 :goto_8

    :catch_1a
    move-exception v6

    move-object v6, v9

    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v10

    goto/16 :goto_8

    :catch_1b
    move-exception v5

    move-object v5, v7

    move-object v8, v3

    move-object v3, v4

    move-object v7, v10

    move-object v4, v6

    move-object v6, v9

    goto/16 :goto_8

    :cond_18
    move-object v7, v6

    goto/16 :goto_3

    :cond_19
    move-object v8, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_5

    :cond_1a
    move-object v7, v10

    goto/16 :goto_6

    :cond_1b
    move-object v7, v10

    goto/16 :goto_11

    :cond_1c
    move-object v6, v9

    goto/16 :goto_10

    :cond_1d
    move-object v7, v10

    goto/16 :goto_e

    :cond_1e
    move-object v6, v9

    goto/16 :goto_d

    :cond_1f
    move-object v7, v10

    goto/16 :goto_b

    :cond_20
    move-object v6, v9

    goto/16 :goto_a
.end method
