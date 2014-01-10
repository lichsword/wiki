.class public Lorg/android/agoo/net/ConnectManager;
.super Ljava/lang/Object;
.source "ConnectManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field static final CDMA:Ljava/lang/String; = "cdma"

.field static final EDGE:Ljava/lang/String; = "edge"

.field static final EHRPD:Ljava/lang/String; = "ehrpd"

.field static final EVDO0:Ljava/lang/String; = "evdo0"

.field static final EVDOA:Ljava/lang/String; = "evdoa"

.field static final EVDOB:Ljava/lang/String; = "evdob"

.field static final GPRS:Ljava/lang/String; = "gprs"

.field static final GSM:Ljava/lang/String; = "gsm"

.field static final HSDPA:Ljava/lang/String; = "hsdpa"

.field static final HSPA:Ljava/lang/String; = "hspa"

.field static final HSPA_PLUS:Ljava/lang/String; = "hspa+"

.field static final HSUPA:Ljava/lang/String; = "hsupa"

.field static final LTE:Ljava/lang/String; = "lte"

.field static final MOBILE:Ljava/lang/String; = "mobile"

.field static final ONEXRTT:Ljava/lang/String; = "1xrtt"

.field private static final TAG:Ljava/lang/String; = "ConnectManager"

.field static final TYPE_2G:Ljava/lang/String; = "2g"

.field static final TYPE_3G:Ljava/lang/String; = "3g"

.field static final TYPE_4G:Ljava/lang/String; = "4g"

.field static final TYPE_NONE:Ljava/lang/String; = "none"

.field static final TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field static final TYPE_WIFI:Ljava/lang/String; = "wifi"

.field static final UMB:Ljava/lang/String; = "umb"

.field static final UMTS:Ljava/lang/String; = "umts"

.field static final WIFI:Ljava/lang/String; = "wifi"

.field static final WIMAX:Ljava/lang/String; = "wimax"


# instance fields
.field private mApn:Ljava/lang/String;

.field private mNetType:Ljava/lang/String;

.field private mPort:I

.field private mProxy:Ljava/lang/String;

.field private mUseWap:Z

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/agoo/net/ConnectManager;->mUseWap:Z

    .line 94
    invoke-direct {p0, p1}, Lorg/android/agoo/net/ConnectManager;->checkNetworkType(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method private checkApn(Landroid/content/Context;Landroid/net/NetworkInfo;)V
    .locals 8
    .parameter "paramContext"
    .parameter "networkInfo"

    .prologue
    const/16 v7, 0x50

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 170
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, apn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 173
    iput-object v0, p0, Lorg/android/agoo/net/ConnectManager;->mApn:Ljava/lang/String;

    .line 177
    const-string v3, "wap"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 178
    iput-boolean v5, p0, Lorg/android/agoo/net/ConnectManager;->mUseWap:Z

    .line 218
    .end local v0           #apn:Ljava/lang/String;
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, host:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 203
    .local v2, port:I
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 204
    iput-object v1, p0, Lorg/android/agoo/net/ConnectManager;->mProxy:Ljava/lang/String;

    .line 205
    const-string v3, "10.0.0.172"

    iget-object v4, p0, Lorg/android/agoo/net/ConnectManager;->mProxy:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    iput-boolean v5, p0, Lorg/android/agoo/net/ConnectManager;->mUseWap:Z

    .line 207
    iput v7, p0, Lorg/android/agoo/net/ConnectManager;->mPort:I

    goto :goto_0

    .line 208
    :cond_1
    const-string v3, "10.0.0.200"

    iget-object v4, p0, Lorg/android/agoo/net/ConnectManager;->mProxy:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    iput-boolean v5, p0, Lorg/android/agoo/net/ConnectManager;->mUseWap:Z

    .line 210
    iput v7, p0, Lorg/android/agoo/net/ConnectManager;->mPort:I

    goto :goto_0

    .line 212
    :cond_2
    iput-boolean v6, p0, Lorg/android/agoo/net/ConnectManager;->mUseWap:Z

    .line 213
    iput v2, p0, Lorg/android/agoo/net/ConnectManager;->mPort:I

    goto :goto_0

    .line 216
    :cond_3
    iput-boolean v6, p0, Lorg/android/agoo/net/ConnectManager;->mUseWap:Z

    goto :goto_0
.end method

.method private checkNetworkType(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 223
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 224
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 225
    const-string v3, "wifi"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    const-string v3, "wifi"

    iput-object v3, p0, Lorg/android/agoo/net/ConnectManager;->mNetType:Ljava/lang/String;

    .line 227
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/android/agoo/net/ConnectManager;->mUseWap:Z

    .line 228
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    iput v3, p0, Lorg/android/agoo/net/ConnectManager;->type:I

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/android/agoo/net/ConnectManager;->checkApn(Landroid/content/Context;Landroid/net/NetworkInfo;)V

    .line 231
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    iput v3, p0, Lorg/android/agoo/net/ConnectManager;->type:I

    .line 232
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, subTypeName:Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/android/agoo/net/ConnectManager;->getMoblieType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/android/agoo/net/ConnectManager;->mNetType:Ljava/lang/String;

    goto :goto_0
.end method

.method private getMoblieType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "subtypeName"

    .prologue
    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "none"

    .line 273
    :goto_0
    return-object v0

    .line 251
    :cond_0
    const-string v0, "gsm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gprs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "edge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    :cond_1
    const-string v0, "2g"

    goto :goto_0

    .line 256
    :cond_2
    const-string v0, "cdma"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "umts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "1xrtt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ehrpd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "evdo0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "evdoa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "evdob"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "hsupa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "hsdpa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "hspa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    :cond_3
    const-string v0, "3g"

    goto :goto_0

    .line 268
    :cond_4
    const-string v0, "lte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "umb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "hspa+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 271
    :cond_5
    const-string v0, "4g"

    goto/16 :goto_0

    .line 273
    :cond_6
    const-string v0, "none"

    goto/16 :goto_0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 238
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 240
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 241
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    .line 244
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static ping(Ljava/lang/String;I)J
    .locals 17
    .parameter "host"
    .parameter "port"

    .prologue
    .line 98
    const/4 v10, 0x0

    .line 99
    .local v10, socketChannel:Ljava/nio/channels/SocketChannel;
    const/4 v9, 0x0

    .line 100
    .local v9, selector:Ljava/nio/channels/Selector;
    const-wide/16 v12, -0x1

    .line 101
    .local v12, timeout:J
    const/4 v8, 0x0

    .line 103
    .local v8, sc:Ljava/nio/channels/SocketChannel;
    :try_start_0
    const-string v14, "java.net.preferIPv4Stack"

    const-string v15, "true"

    invoke-static {v14, v15}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    const-string v14, "java.net.preferIPv6Addresses"

    const-string v15, "false"

    invoke-static {v14, v15}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 107
    .local v2, connectStart:J
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v10

    .line 108
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 109
    new-instance v14, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v14, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v14}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 110
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v9

    .line 111
    const/16 v14, 0x8

    invoke-virtual {v10, v9, v14}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 112
    invoke-virtual {v9}, Ljava/nio/channels/Selector;->select()I

    .line 113
    invoke-virtual {v9}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v7

    .line 114
    .local v7, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 115
    .local v5, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 116
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/SelectionKey;

    .line 117
    .local v6, key:Ljava/nio/channels/SelectionKey;
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 118
    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/nio/channels/SocketChannel;

    move-object v8, v0

    .line 119
    invoke-virtual {v8}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v12, v14, v2

    .line 121
    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v2           #connectStart:J
    .end local v5           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v6           #key:Ljava/nio/channels/SelectionKey;
    .end local v7           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catch_0
    move-exception v11

    .line 125
    .local v11, t:Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    const-wide/16 v12, -0x1

    .line 128
    if-eqz v8, :cond_1

    .line 130
    :try_start_2
    invoke-virtual {v8}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 135
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    .line 137
    :try_start_3
    invoke-virtual {v10}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 142
    :cond_2
    :goto_2
    if-eqz v9, :cond_3

    .line 144
    :try_start_4
    invoke-virtual {v9}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 150
    .end local v11           #t:Ljava/lang/Throwable;
    :cond_3
    :goto_3
    const-string v14, "ConnectManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "timeout:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-wide v12

    .line 128
    .restart local v2       #connectStart:J
    .restart local v5       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v7       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_4
    if-eqz v8, :cond_5

    .line 130
    :try_start_5
    invoke-virtual {v8}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 135
    :cond_5
    :goto_4
    if-eqz v10, :cond_6

    .line 137
    :try_start_6
    invoke-virtual {v10}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 142
    :cond_6
    :goto_5
    if-eqz v9, :cond_3

    .line 144
    :try_start_7
    invoke-virtual {v9}, Ljava/nio/channels/Selector;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 145
    :catch_1
    move-exception v4

    .line 146
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 131
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 132
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 138
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 139
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 131
    .end local v2           #connectStart:J
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v7           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .restart local v11       #t:Ljava/lang/Throwable;
    :catch_4
    move-exception v4

    .line 132
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v4           #e:Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 139
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 145
    .end local v4           #e:Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 146
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 128
    .end local v4           #e:Ljava/io/IOException;
    .end local v11           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    if-eqz v8, :cond_7

    .line 130
    :try_start_8
    invoke-virtual {v8}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 135
    :cond_7
    :goto_6
    if-eqz v10, :cond_8

    .line 137
    :try_start_9
    invoke-virtual {v10}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 142
    :cond_8
    :goto_7
    if-eqz v9, :cond_9

    .line 144
    :try_start_a
    invoke-virtual {v9}, Ljava/nio/channels/Selector;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 147
    :cond_9
    :goto_8
    throw v14

    .line 131
    :catch_7
    move-exception v4

    .line 132
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 138
    .end local v4           #e:Ljava/io/IOException;
    :catch_8
    move-exception v4

    .line 139
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 145
    .end local v4           #e:Ljava/io/IOException;
    :catch_9
    move-exception v4

    .line 146
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8
.end method

.method public static ping(Ljava/lang/String;)Z
    .locals 7
    .parameter "str"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, bf:Z
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ping -c 1 -w 5 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 158
    .local v2, p:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 159
    .local v3, status:I
    if-nez v3, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 165
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #status:I
    :cond_0
    :goto_0
    return v0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, e:Ljava/lang/Throwable;
    const-string v4, "ConnectManager"

    const-string v5, "onping"

    invoke-static {v4, v5, v1}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/android/agoo/net/ConnectManager;->mApn:Ljava/lang/String;

    return-object v0
.end method

.method public getNetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/android/agoo/net/ConnectManager;->mNetType:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/android/agoo/net/ConnectManager;->mProxy:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lorg/android/agoo/net/ConnectManager;->mPort:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lorg/android/agoo/net/ConnectManager;->type:I

    return v0
.end method

.method public isWapNetwork()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lorg/android/agoo/net/ConnectManager;->mUseWap:Z

    return v0
.end method
