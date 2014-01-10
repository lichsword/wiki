.class public Lcom/etao/kakalib/util/common/NetWork;
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
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/etao/kakalib/util/common/NetWork;->proxy:Z

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 55
    const/4 v3, 0x0

    .line 58
    .local v3, result:Ljava/lang/String;
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 60
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 61
    const/4 v3, 0x0

    .line 78
    :cond_0
    :goto_0
    return-object v3

    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 65
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 66
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_0

    .line 67
    aget-object v6, v2, v1

    if-eqz v6, :cond_3

    .line 68
    aget-object v6, v2, v1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 69
    .local v4, tem:Landroid/net/NetworkInfo$State;
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v6, :cond_2

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_3

    .line 70
    :cond_2
    aget-object v6, v2, v1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, temp:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    aget-object v7, v2, v1

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 72
    goto :goto_0

    .line 66
    .end local v4           #tem:Landroid/net/NetworkInfo$State;
    .end local v5           #temp:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

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

    .line 106
    invoke-static {p0}, Lcom/etao/kakalib/util/common/NetWork;->getSimState(Landroid/content/Context;)I

    move-result v8

    if-nez v8, :cond_c

    .line 108
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 107
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 109
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, operator:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, numeric:Ljava/lang/String;
    const-string v8, "NSP: "

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "operator = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz v2, :cond_0

    const-string v8, ""

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    .line 117
    move-object v2, v1

    .line 119
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    :cond_2
    move v4, v6

    .line 155
    .end local v1           #numeric:Ljava/lang/String;
    .end local v2           #operator:Ljava/lang/String;
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_0
    return v4

    .line 124
    .restart local v1       #numeric:Ljava/lang/String;
    .restart local v2       #operator:Ljava/lang/String;
    .restart local v3       #tm:Landroid/telephony/TelephonyManager;
    :cond_4
    const-string v8, "\u4e2d\u56fd\u79fb\u52a8"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_5

    .line 125
    const-string v8, "CMCC"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_5

    .line 126
    const-string v8, "ChinaMobile"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_5

    .line 127
    const-string v8, "46000"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    move v4, v7

    .line 128
    goto :goto_0

    .line 129
    :cond_6
    const-string v8, "\u4e2d\u56fd\u7535\u4fe1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    .line 130
    const-string v8, "ChinaTelecom"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    .line 131
    const-string v8, "46003"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    .line 132
    const-string v8, "ChinaTelcom"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    .line 133
    const-string v8, "460003"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    move v4, v5

    .line 134
    goto :goto_0

    .line 135
    :cond_8
    const-string v8, "\u4e2d\u56fd\u8054\u901a"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 136
    const-string v8, "ChinaUnicom"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 137
    const-string v8, "46001"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 138
    const-string v8, "CU-GSM"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 139
    const-string v8, "CHN-CUGSM"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 140
    const-string v8, "CHNUnicom"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 143
    invoke-static {p0}, Lcom/etao/kakalib/util/common/PhoneInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, imsi:Ljava/lang/String;
    const-string v8, "46000"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "46002"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 145
    const-string v8, "46007"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    move v4, v7

    .line 146
    goto/16 :goto_0

    .line 147
    :cond_a
    const-string v7, "46001"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 149
    const-string v4, "46003"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    .line 150
    goto/16 :goto_0

    :cond_b
    move v4, v6

    .line 152
    goto/16 :goto_0

    .line 155
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
    .line 248
    .line 249
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 251
    .local v0, connManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 252
    const-string v4, "Network"

    const-string v5, "can not get Context.CONNECTIVITY_SERVICE"

    invoke-static {v4, v5}, Lcom/etao/kakalib/util/KakaLibLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v4, "none"

    .line 278
    :goto_0
    return-object v4

    .line 256
    :cond_0
    const/4 v1, 0x0

    .line 258
    .local v1, info:Landroid/net/NetworkInfo;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 261
    .local v3, wifiState:Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v3, :cond_2

    .line 262
    const-string v4, "wifi"

    goto :goto_0

    .line 265
    .end local v3           #wifiState:Landroid/net/NetworkInfo$State;
    :cond_1
    const-string v4, "Network"

    const-string v5, "can not get ConnectivityManager.TYPE_WIFI"

    invoke-static {v4, v5}, Lcom/etao/kakalib/util/KakaLibLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 270
    if-eqz v1, :cond_3

    .line 271
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 272
    .local v2, mobileState:Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v2, :cond_4

    .line 273
    const-string v4, "gprs"

    goto :goto_0

    .line 276
    .end local v2           #mobileState:Landroid/net/NetworkInfo$State;
    :cond_3
    const-string v4, "Network"

    const-string v5, "can not get ConnectivityManager.TYPE_MOBILE"

    invoke-static {v4, v5}, Lcom/etao/kakalib/util/KakaLibLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
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

    .line 201
    invoke-static {p0}, Lcom/etao/kakalib/util/common/NetWork;->GetNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, result:Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v8, proxy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v9, :cond_1

    move-object v8, v10

    .line 237
    .end local v8           #proxy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v8

    .line 205
    .restart local v8       #proxy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v0, "getProxyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current network:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "WIFI"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "MOBILE UMTS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v7, 0x0

    .line 212
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

    .line 213
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 218
    const-string v0, "host"

    const-string v1, "proxy"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v0, "port"

    const-string v1, "port"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v0, "apn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, apn:Ljava/lang/String;
    const-string v0, "getProxyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apn:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    if-eqz v7, :cond_0

    .line 233
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 227
    .end local v6           #apn:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 232
    :cond_4
    if-eqz v7, :cond_5

    .line 233
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move-object v8, v10

    .line 237
    goto/16 :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 232
    if-eqz v7, :cond_5

    .line 233
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    if-eqz v7, :cond_6

    .line 233
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_6
    throw v0
.end method

.method public static getSimState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 87
    .line 88
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 89
    .local v1, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 90
    .local v0, simState:I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 91
    const/4 v2, 0x0

    .line 95
    :goto_0
    return v2

    .line 92
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 93
    const/4 v2, -0x1

    goto :goto_0

    .line 95
    :cond_1
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, result:Z
    invoke-static {p0}, Lcom/etao/kakalib/util/common/NetWork;->GetNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 45
    :cond_0
    return v0
.end method

.method public static setProxy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "host"
    .parameter "port"

    .prologue
    .line 183
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "proxySet"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const/4 v0, 0x0

    sput-boolean v0, Lcom/etao/kakalib/util/common/NetWork;->proxy:Z

    .line 195
    :goto_0
    return-void

    .line 187
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/etao/kakalib/util/common/NetWork;->proxy:Z

    .line 188
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "proxySet"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "proxyHost"

    invoke-virtual {v0, v1, p0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 191
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "proxyPort"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 193
    :cond_2
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "proxyPort"

    const-string v2, "80"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static unRegNetWorkRev(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-static {v1, v1}, Lcom/etao/kakalib/util/common/NetWork;->setProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :try_start_0
    sget-object v1, Lcom/etao/kakalib/util/common/NetWork;->connChangerRvr:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Lcom/etao/kakalib/util/common/NetWork;->connChangerRvr:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
