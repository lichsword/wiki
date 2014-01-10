.class public Landroid/taobao/util/NetWork;
.super Ljava/lang/Object;
.source "NetWork.java"


# static fields
.field public static final CHINA_MOBILE:I = 0x1

.field public static final CHINA_TELECOM:I = 0x3

.field public static final CHINA_UNICOM:I = 0x2

.field public static final CONN_TYPE_GPRS:Ljava/lang/String; = "gprs"

.field public static final CONN_TYPE_NONE:Ljava/lang/String; = "none"

.field public static final CONN_TYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final SIM_NO:I = -0x1

.field public static final SIM_OK:I = 0x0

.field public static final SIM_UNKNOW:I = -0x2

.field private static connChangerRvr:Landroid/content/BroadcastReceiver;

.field public static proxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Landroid/taobao/util/NetWork;->proxy:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 60
    const/4 v3, 0x0

    .line 63
    .local v3, result:Ljava/lang/String;
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    move-object v0, v6

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 65
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 66
    const/4 v3, 0x0

    .line 88
    :cond_0
    :goto_0
    return-object v3

    .line 70
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 72
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 73
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_0

    .line 74
    aget-object v6, v2, v1

    if-eqz v6, :cond_3

    .line 75
    aget-object v6, v2, v1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 76
    .local v4, tem:Landroid/net/NetworkInfo$State;
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v6, :cond_2

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_3

    .line 77
    :cond_2
    aget-object v6, v2, v1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, temp:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v1

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v1

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    goto :goto_0

    .line 73
    .end local v4           #tem:Landroid/net/NetworkInfo$State;
    .end local v5           #temp:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getHttpsProxyInfo(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 11
    .parameter "context"

    .prologue
    .line 291
    const/4 v5, 0x0

    .line 292
    .local v5, proxy:Lorg/apache/http/HttpHost;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-ge v9, v10, :cond_1

    .line 293
    const/4 v3, 0x0

    .line 295
    .local v3, info:Landroid/net/NetworkInfo;
    :try_start_0
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 297
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 302
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-nez v9, :cond_0

    .line 304
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, proxyHost:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    .line 306
    .local v4, port:I
    if-eqz v7, :cond_0

    .line 307
    new-instance v5, Lorg/apache/http/HttpHost;

    .end local v5           #proxy:Lorg/apache/http/HttpHost;
    invoke-direct {v5, v7, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .end local v4           #port:I
    .end local v7           #proxyHost:Ljava/lang/String;
    .restart local v5       #proxy:Lorg/apache/http/HttpHost;
    :cond_0
    move-object v6, v5

    .line 322
    .end local v3           #info:Landroid/net/NetworkInfo;
    .end local v5           #proxy:Lorg/apache/http/HttpHost;
    .local v6, proxy:Lorg/apache/http/HttpHost;
    :goto_1
    return-object v6

    .line 298
    .end local v6           #proxy:Lorg/apache/http/HttpHost;
    .restart local v3       #info:Landroid/net/NetworkInfo;
    .restart local v5       #proxy:Lorg/apache/http/HttpHost;
    :catch_0
    move-exception v1

    .line 299
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 313
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_1
    const-string v9, "https.proxyHost"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, httpsproxyhost:Ljava/lang/String;
    const-string v9, "https.proxyPort"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 316
    .local v8, proxyport:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 318
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 319
    .restart local v4       #port:I
    new-instance v5, Lorg/apache/http/HttpHost;

    .end local v5           #proxy:Lorg/apache/http/HttpHost;
    invoke-direct {v5, v2, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .end local v4           #port:I
    .restart local v5       #proxy:Lorg/apache/http/HttpHost;
    :cond_2
    move-object v6, v5

    .line 322
    .end local v5           #proxy:Lorg/apache/http/HttpHost;
    .restart local v6       #proxy:Lorg/apache/http/HttpHost;
    goto :goto_1
.end method

.method public static getNSP(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 122
    invoke-static {p0}, Landroid/taobao/util/NetWork;->getSimState(Landroid/content/Context;)I

    move-result v8

    if-nez v8, :cond_c

    .line 124
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 125
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, operator:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, numeric:Ljava/lang/String;
    const-string v8, "NSP: "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "operator = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-eqz v2, :cond_0

    const-string v8, ""

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    .line 133
    move-object v2, v1

    .line 135
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    :cond_2
    move v4, v6

    .line 160
    .end local v1           #numeric:Ljava/lang/String;
    .end local v2           #operator:Ljava/lang/String;
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_0
    return v4

    .line 141
    .restart local v1       #numeric:Ljava/lang/String;
    .restart local v2       #operator:Ljava/lang/String;
    .restart local v3       #tm:Landroid/telephony/TelephonyManager;
    :cond_4
    const-string v8, "\u4e2d\u56fd\u79fb\u52a8"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "CMCC"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "ChinaMobile"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "46000"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    move v4, v7

    .line 143
    goto :goto_0

    .line 144
    :cond_6
    const-string v8, "\u4e2d\u56fd\u7535\u4fe1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "ChinaTelecom"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "46003"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "ChinaTelcom"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "460003"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    move v4, v5

    .line 145
    goto :goto_0

    .line 146
    :cond_8
    const-string v8, "\u4e2d\u56fd\u8054\u901a"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "ChinaUnicom"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "46001"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "CU-GSM"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "CHN-CUGSM"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "CHNUnicom"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 149
    invoke-static {p0}, Landroid/taobao/util/PhoneInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, imsi:Ljava/lang/String;
    const-string v8, "46000"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "46002"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "46007"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    move v4, v7

    .line 151
    goto/16 :goto_0

    .line 152
    :cond_a
    const-string v7, "46001"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 154
    const-string v4, "46003"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    .line 155
    goto/16 :goto_0

    :cond_b
    move v4, v6

    .line 157
    goto/16 :goto_0

    .line 160
    .end local v0           #imsi:Ljava/lang/String;
    .end local v1           #numeric:Ljava/lang/String;
    .end local v2           #operator:Ljava/lang/String;
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :cond_c
    const/4 v4, -0x1

    goto/16 :goto_0
.end method

.method public static getNetConnType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 333
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 336
    .local v0, connManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 337
    const-string v4, "Network"

    const-string v5, "can not get Context.CONNECTIVITY_SERVICE"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v4, "none"

    .line 364
    :goto_0
    return-object v4

    .line 341
    :cond_0
    const/4 v1, 0x0

    .line 343
    .local v1, info:Landroid/net/NetworkInfo;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 344
    if-eqz v1, :cond_1

    .line 345
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 346
    .local v3, wifiState:Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v3, :cond_2

    .line 347
    const-string v4, "wifi"

    goto :goto_0

    .line 350
    .end local v3           #wifiState:Landroid/net/NetworkInfo$State;
    :cond_1
    const-string v4, "Network"

    const-string v5, "can not get ConnectivityManager.TYPE_WIFI"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_3

    .line 356
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 357
    .local v2, mobileState:Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v2, :cond_4

    .line 358
    const-string v4, "gprs"

    goto :goto_0

    .line 362
    .end local v2           #mobileState:Landroid/net/NetworkInfo$State;
    :cond_3
    const-string v4, "Network"

    const-string v5, "can not get ConnectivityManager.TYPE_MOBILE"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_4
    const-string v4, "none"

    goto :goto_0
.end method

.method public static getProxyInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/HashMap;
    .locals 11
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 244
    invoke-static {p0}, Landroid/taobao/util/NetWork;->GetNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, result:Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v8, proxy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v9, :cond_1

    move-object v8, v10

    .line 280
    .end local v8           #proxy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v8

    .line 248
    .restart local v8       #proxy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v0, "getProxyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current network:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "WIFI"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "MOBILE UMTS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v7, 0x0

    .line 255
    .local v7, cr:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "mcc =\'460\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 256
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 261
    const-string v0, "host"

    const-string v1, "proxy"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v0, "port"

    const-string v1, "port"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "apn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, apn:Ljava/lang/String;
    const-string v0, "getProxyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    if-eqz v7, :cond_0

    .line 276
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 270
    .end local v6           #apn:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 275
    :cond_4
    if-eqz v7, :cond_5

    .line 276
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move-object v8, v10

    .line 280
    goto/16 :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 275
    if-eqz v7, :cond_5

    .line 276
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 275
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 276
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getSimState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 98
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 99
    .local v1, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 100
    .local v0, simState:I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 102
    const/4 v2, 0x0

    .line 110
    :goto_0
    return v2

    .line 104
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 106
    const/4 v2, -0x1

    goto :goto_0

    .line 110
    :cond_1
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, result:Z
    invoke-static {p0}, Landroid/taobao/util/NetWork;->GetNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 51
    :cond_0
    return v0
.end method

.method public static setProxy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "host"
    .parameter "port"

    .prologue
    .line 224
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :cond_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "proxySet"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const/4 v0, 0x0

    sput-boolean v0, Landroid/taobao/util/NetWork;->proxy:Z

    .line 236
    :goto_0
    return-void

    .line 228
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Landroid/taobao/util/NetWork;->proxy:Z

    .line 229
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "proxySet"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "proxyHost"

    invoke-virtual {v0, v1, p0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 232
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "proxyPort"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 234
    :cond_2
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "proxyPort"

    const-string v2, "80"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static supportWap(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 169
    new-instance v0, Landroid/taobao/util/DefaultApnUriGetter;

    invoke-direct {v0}, Landroid/taobao/util/DefaultApnUriGetter;-><init>()V

    invoke-static {p0, v0}, Landroid/taobao/util/NetWork;->supportWap(Landroid/content/Context;Landroid/taobao/util/ApnUriGetter;)V

    .line 171
    return-void
.end method

.method public static supportWap(Landroid/content/Context;Landroid/taobao/util/ApnUriGetter;)V
    .locals 6
    .parameter "context"
    .parameter "uriGetter"

    .prologue
    .line 181
    const-string v4, "supportWap"

    const-string v5, "supportWap"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v2, 0x0

    .line 183
    .local v2, param:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Landroid/taobao/util/ApnUriGetter;->getUriList()[Landroid/net/Uri;

    move-result-object v3

    .line 184
    .local v3, uris:[Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 185
    const-string v4, "supportWap"

    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    .line 187
    aget-object v4, v3, v1

    invoke-static {p0, v4}, Landroid/taobao/util/NetWork;->getProxyInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v2

    .line 188
    :cond_0
    if-eqz v2, :cond_2

    .line 189
    const-string v4, "supportWap"

    const-string v5, "finded the proxy param"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v4, "host"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "port"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/taobao/util/NetWork;->setProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v4, Landroid/taobao/util/ConnectionChangeReceiver;

    invoke-direct {v4, p1}, Landroid/taobao/util/ConnectionChangeReceiver;-><init>(Landroid/taobao/util/ApnUriGetter;)V

    sput-object v4, Landroid/taobao/util/NetWork;->connChangerRvr:Landroid/content/BroadcastReceiver;

    .line 197
    sget-object v4, Landroid/taobao/util/NetWork;->connChangerRvr:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    return-void

    .line 184
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static unRegNetWorkRev(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-static {v1, v1}, Landroid/taobao/util/NetWork;->setProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :try_start_0
    sget-object v1, Landroid/taobao/util/NetWork;->connChangerRvr:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 210
    sget-object v1, Landroid/taobao/util/NetWork;->connChangerRvr:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
