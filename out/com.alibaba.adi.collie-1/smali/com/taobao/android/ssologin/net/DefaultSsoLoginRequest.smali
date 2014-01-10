.class public Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;
.super Ljava/lang/Object;
.source "DefaultSsoLoginRequest.java"

# interfaces
.implements Lcom/taobao/android/ssologin/SsoLoginRequest;


# instance fields
.field private mApiUrl:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mAppSecret:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mServiceTime:Lcom/taobao/android/ssologin/net/TSDKParam;

.field private mTTID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/ssologin/net/TSDKParam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "appKey"
    .parameter "deviceId"
    .parameter "apiUrl"
    .parameter "serviceTime"
    .parameter "imei"
    .parameter "imsi"
    .parameter "ttid"
    .parameter "appSecret"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mAppKey:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mDeviceId:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mApiUrl:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mServiceTime:Lcom/taobao/android/ssologin/net/TSDKParam;

    .line 60
    iput-object p5, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mImei:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mImsi:Ljava/lang/String;

    .line 62
    iput-object p7, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mTTID:Ljava/lang/String;

    .line 63
    iput-object p8, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mAppSecret:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private static byte2hex([B)Ljava/lang/String;
    .locals 5
    .parameter "b"

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .local v0, hs:Ljava/lang/StringBuffer;
    const-string v2, ""

    .line 84
    .local v2, stmp:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 85
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 87
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private generateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "ssoToken"
    .parameter "username"

    .prologue
    .line 96
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v5, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v1, dataParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "api"

    const-string v10, "com.taobao.wireless.sys.ssoLogin"

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v9, "t"

    iget-object v10, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mServiceTime:Lcom/taobao/android/ssologin/net/TSDKParam;

    invoke-interface {v10}, Lcom/taobao/android/ssologin/net/TSDKParam;->getServiceTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v9, "v"

    const-string v10, "3.0"

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v9, "ttid"

    iget-object v10, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mTTID:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v9, "imei"

    iget-object v10, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mImei:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v9, "imsi"

    iget-object v10, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mImsi:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v9, "device_id"

    iget-object v10, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v9, "deviceId"

    iget-object v10, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v9, "appKey"

    iget-object v10, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v9, "ssoToken"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v9, "topToken"

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mAppKey:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mAppSecret:Ljava/lang/String;

    invoke-static {v11}, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->signgbk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mServiceTime:Lcom/taobao/android/ssologin/net/TSDKParam;

    invoke-interface {v11}, Lcom/taobao/android/ssologin/net/TSDKParam;->getServiceTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->signgbk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v9, "appKey"

    iget-object v10, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mAppKey:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v9, "appSecret"

    iget-object v10, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mAppSecret:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 114
    .local v3, jso:Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, jsoStr:Ljava/lang/String;
    const-string v9, "data"

    invoke-virtual {v5, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v9, "sign"

    invoke-static {v5}, Lcom/taobao/android/ssologin/net/TaoApiSign;->getSign(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v9, "appSecret"

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v9, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mApiUrl:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mApiUrl:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_1

    .line 122
    :cond_0
    const-string v9, ""

    .line 136
    :goto_0
    return-object v9

    .line 123
    :cond_1
    iget-object v9, p0, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->mApiUrl:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 124
    .local v0, base:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 125
    .local v7, urlBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, path:Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    .line 127
    :cond_2
    const-string v9, ""

    invoke-virtual {v7, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 131
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v8

    .line 133
    .local v8, urlParams:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v9, v8

    if-lt v2, v9, :cond_4

    .line 136
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 134
    :cond_4
    aget-object v9, v8, v2

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aget-object v10, v8, v2

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static signgbk(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "in"

    .prologue
    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, result:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v3, v2

    .line 77
    :goto_0
    return-object v3

    .line 72
    :cond_0
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 73
    .local v1, md:Ljava/security/MessageDigest;
    const-string v3, "gbk"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->byte2hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 74
    .end local v1           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 75
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "sign error !"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public doRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/ssologin/SsoLoginResult;
    .locals 12
    .parameter "ssotoken"
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x800

    const/4 v10, 0x0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/ssologin/net/DefaultSsoLoginRequest;->generateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, ssoUrl:Ljava/lang/String;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 144
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 145
    .local v5, ourl:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 146
    .local v2, conn:Ljava/net/HttpURLConnection;
    const-string v8, "User-Agent"

    const-string v9, "ssologin-modular"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v8, "TB-UA"

    const-string v9, "ssologin-modular"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v8, "Accept-Encoding"

    const-string v9, "gzip"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 152
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 153
    .local v7, tmp:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 154
    .local v3, dis:Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "gzip"

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    .line 157
    new-instance v3, Ljava/io/DataInputStream;

    .end local v3           #dis:Ljava/io/DataInputStream;
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v8, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 165
    .restart local v3       #dis:Ljava/io/DataInputStream;
    :goto_0
    const/4 v4, 0x0

    .line 166
    .local v4, i:I
    new-array v0, v11, [B

    .line 168
    .local v0, b:[B
    :goto_1
    invoke-virtual {v3, v0, v10, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_1

    .line 172
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->parser([B)Lcom/taobao/android/ssologin/TaoSsoLoginResult;

    move-result-object v8

    return-object v8

    .line 161
    .end local v0           #b:[B
    .end local v4           #i:I
    :cond_0
    new-instance v3, Ljava/io/DataInputStream;

    .end local v3           #dis:Ljava/io/DataInputStream;
    invoke-direct {v3, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v3       #dis:Ljava/io/DataInputStream;
    goto :goto_0

    .line 170
    .restart local v0       #b:[B
    .restart local v4       #i:I
    :cond_1
    invoke-virtual {v1, v0, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1
.end method
