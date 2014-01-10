.class public Lorg/android/agoo/net/mtop/MtopHttpChunked;
.super Lorg/android/agoo/net/chunked/HttpURLChunked;
.source "MtopHttpChunked.java"


# instance fields
.field private volatile appKey:Ljava/lang/String;

.field private volatile appSecret:Ljava/lang/String;

.field private volatile baseUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/android/agoo/net/chunked/HttpURLChunked;-><init>()V

    return-void
.end method

.method private getLacUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, -0x1

    .line 87
    const/4 v2, 0x0

    .line 89
    .local v2, lacStr:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 90
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ne v9, v7, :cond_0

    .line 92
    const/4 v7, 0x0

    .line 115
    .end local v6           #packageManager:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v7

    .line 94
    .restart local v6       #packageManager:Landroid/content/pm/PackageManager;
    :cond_0
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 96
    .local v5, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    .line 98
    .local v3, location:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v3, :cond_2

    .line 99
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 100
    .local v1, lac:I
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 101
    .local v0, cId:I
    if-gt v1, v9, :cond_1

    if-le v0, v9, :cond_2

    .line 102
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lac="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&cid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .end local v0           #cId:I
    .end local v1           #lac:I
    :cond_2
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    .line 106
    .local v4, location1:Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v4, :cond_4

    .line 107
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v1

    .line 108
    .restart local v1       #lac:I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 109
    .restart local v0       #cId:I
    if-gt v1, v9, :cond_3

    if-le v0, v9, :cond_4

    .line 110
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lac="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&cid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0           #cId:I
    .end local v1           #lac:I
    .end local v3           #location:Landroid/telephony/gsm/GsmCellLocation;
    .end local v4           #location1:Landroid/telephony/cdma/CdmaCellLocation;
    .end local v5           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .end local v6           #packageManager:Landroid/content/pm/PackageManager;
    :cond_4
    :goto_1
    move-object v7, v2

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private getNetUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 73
    new-instance v1, Lorg/android/agoo/net/ConnectManager;

    invoke-direct {v1, p1}, Lorg/android/agoo/net/ConnectManager;-><init>(Landroid/content/Context;)V

    .line 74
    .local v1, connectManager:Lorg/android/agoo/net/ConnectManager;
    invoke-virtual {v1}, Lorg/android/agoo/net/ConnectManager;->getNetType()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, netType:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :cond_0
    invoke-virtual {v1}, Lorg/android/agoo/net/ConnectManager;->getApn()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, apn:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&apn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getUrlWithQueryString(Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Ljava/lang/String;
    .locals 3
    .parameter "url"
    .parameter "params"

    .prologue
    .line 119
    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {p2}, Lorg/android/agoo/net/async/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, paramString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 123
    .end local v0           #paramString:Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public final connect(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;JLorg/android/agoo/net/chunked/IChunkedHandler;)V
    .locals 10
    .parameter "context"
    .parameter "request"
    .parameter "timeout"
    .parameter "eventHandler"

    .prologue
    .line 44
    const-string v2, ""

    .line 45
    .local v2, url:Ljava/lang/String;
    const/4 v9, 0x0

    .line 47
    .local v9, requestParams:Lorg/android/agoo/net/async/RequestParams;
    :try_start_0
    const-string v0, "c0"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    const-string v0, "c1"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    const-string v0, "c2"

    invoke-static {p1}, Lorg/android/agoo/helper/PhoneHelper;->getOriginalImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    const-string v0, "c3"

    invoke-static {p1}, Lorg/android/agoo/helper/PhoneHelper;->getOriginalImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    const-string v0, "c4"

    invoke-static {p1}, Lorg/android/agoo/helper/PhoneHelper;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    const-string v0, "c5"

    invoke-static {}, Lorg/android/agoo/helper/PhoneHelper;->getSerialNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    const-string v0, "c6"

    invoke-static {p1}, Lorg/android/agoo/helper/PhoneHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopHttpChunked;->appKey:Ljava/lang/String;

    iget-object v1, p0, Lorg/android/agoo/net/mtop/MtopHttpChunked;->appSecret:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->checkAppKeyAndAppSecret(Lorg/android/agoo/net/mtop/MtopRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p1, p2}, Lorg/android/agoo/net/mtop/MtopRequestHelper;->getUrlWithRequestParams(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/async/RequestParams;

    move-result-object v9

    .line 56
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopHttpChunked;->baseUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v9}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->getUrlWithQueryString(Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 61
    invoke-direct {p0, p1}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->getNetUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, netUrl:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->getLacUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, lacUrl:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 69
    invoke-super/range {v0 .. v5}, Lorg/android/agoo/net/chunked/HttpURLChunked;->connect(Landroid/content/Context;Ljava/lang/String;JLorg/android/agoo/net/chunked/IChunkedHandler;)V

    .line 70
    .end local v7           #lacUrl:Ljava/lang/String;
    .end local v8           #netUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v6

    .line 58
    .local v6, e:Ljava/lang/Throwable;
    const/16 v0, 0x1f8

    const/4 v1, 0x0

    invoke-interface {p5, v0, v1, v6}, Lorg/android/agoo/net/chunked/IChunkedHandler;->onError(ILjava/util/Map;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "baseUrl"

    .prologue
    .line 31
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopHttpChunked;->baseUrl:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setDefaultAppSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "appSecret"

    .prologue
    .line 39
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopHttpChunked;->appSecret:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setDefaultAppkey(Ljava/lang/String;)V
    .locals 0
    .parameter "appKey"

    .prologue
    .line 35
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopHttpChunked;->appKey:Ljava/lang/String;

    .line 36
    return-void
.end method
