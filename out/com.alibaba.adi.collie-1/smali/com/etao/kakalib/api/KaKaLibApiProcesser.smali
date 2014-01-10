.class public Lcom/etao/kakalib/api/KaKaLibApiProcesser;
.super Ljava/lang/Object;
.source "KaKaLibApiProcesser.java"


# static fields
.field public static final BAR_API:Ljava/lang/String; = "mtop.etao.kaka.barcode.search"

.field public static final CHECK_URL_SAFE_API:Ljava/lang/String; = "mtop.etao.dbarcode.search"

.field public static final EXPRESS_API:Ljava/lang/String; = "mtop.etao.kaka.mailtrace"

.field public static final LOGO_SEARCH_API:Ljava/lang/String; = "mtop.etao.kaka.logo.search"

.field private static final MTOP_TTID_KEY:Ljava/lang/String; = "701475"

.field public static final PRODUCT_INFO_TAOBAO_API:Ljava/lang/String; = "mtop.etao.kaka.barcode4tb.search"

.field public static final QR_API:Ljava/lang/String; = "mtop.etao.kaka.dbarcode.search"

.field public static final READ_HUOYAN_PR_MSG_API:Ljava/lang/String; = "http://www.etao.com/go/rgn/iphone/taobao_huoyan_msg.php"

.field public static final READ_WHITE_LIST_API:Ljava/lang/String; = "http://www.etao.com/go/rgn/kaka/whitelist.php"

.field public static final V_1_0_API:Ljava/lang/String; = "1.0"

.field public static final V_2_0_API:Ljava/lang/String; = "2.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncCheckUrlIsSafe(Landroid/content/Context;Ljava/lang/String;Lcom/etao/kakalib/api/HttpRequstCallback;)Landroid/taobao/apirequest/ApiID;
    .locals 6
    .parameter "context"
    .parameter "content"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/etao/kakalib/api/HttpRequstCallback",
            "<",
            "Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;",
            ">;)",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "content"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "mtop.etao.dbarcode.search"

    const-string v2, "1.0"

    .line 137
    const-class v5, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;

    move-object v0, p0

    move-object v4, p2

    .line 136
    invoke-static/range {v0 .. v5}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->requestMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public static asyncSearchBarCode(Landroid/content/Context;ILjava/lang/String;Lcom/etao/kakalib/api/HttpRequstCallback;)Landroid/taobao/apirequest/ApiID;
    .locals 6
    .parameter "context"
    .parameter "type"
    .parameter "content"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/etao/kakalib/api/HttpRequstCallback",
            "<",
            "Lcom/etao/kakalib/api/beans/ProductInfo;",
            ">;)",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 88
    .local p3, requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<Lcom/etao/kakalib/api/beans/ProductInfo;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "content"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "type"

    sget-object v1, Lcom/etao/kakalib/util/decode/CodeType;->strTypes:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "mtop.etao.kaka.barcode.search"

    const-string v2, "2.0"

    .line 92
    const-class v5, Lcom/etao/kakalib/api/beans/ProductInfo;

    move-object v0, p0

    move-object v4, p3

    .line 91
    invoke-static/range {v0 .. v5}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->requestMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public static asyncSearchBarCode4Taobao(Landroid/content/Context;ILjava/lang/String;Lcom/etao/kakalib/api/HttpRequstCallback;)Landroid/taobao/apirequest/ApiID;
    .locals 6
    .parameter "context"
    .parameter "type"
    .parameter "content"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/etao/kakalib/api/HttpRequstCallback",
            "<",
            "Lcom/etao/kakalib/api/beans/TBBarcodeResult;",
            ">;)",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 69
    .local p3, requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<Lcom/etao/kakalib/api/beans/TBBarcodeResult;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "content"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "type"

    sget-object v1, Lcom/etao/kakalib/util/decode/CodeType;->strTypes:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "mtop.etao.kaka.barcode4tb.search"

    const-string v2, "1.0"

    .line 73
    const-class v5, Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    move-object v0, p0

    move-object v4, p3

    .line 72
    invoke-static/range {v0 .. v5}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->requestMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public static asyncSearchExpress(Landroid/content/Context;Ljava/lang/String;Lcom/etao/kakalib/api/HttpRequstCallback;)Landroid/taobao/apirequest/ApiID;
    .locals 6
    .parameter "context"
    .parameter "mailNo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/etao/kakalib/api/HttpRequstCallback",
            "<",
            "Lcom/etao/kakalib/api/beans/MailTraceWrapper;",
            ">;)",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<Lcom/etao/kakalib/api/beans/MailTraceWrapper;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "mailNo"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "mtop.etao.kaka.mailtrace"

    .line 119
    const-string v2, "2.0"

    .line 120
    const-class v5, Lcom/etao/kakalib/api/beans/MailTraceWrapper;

    move-object v0, p0

    move-object v4, p2

    .line 118
    invoke-static/range {v0 .. v5}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->requestMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public static asyncSearchQRCode(Landroid/content/Context;Ljava/lang/String;Lcom/etao/kakalib/api/HttpRequstCallback;)Landroid/taobao/apirequest/ApiID;
    .locals 6
    .parameter "context"
    .parameter "content"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/etao/kakalib/api/HttpRequstCallback",
            "<",
            "Lcom/etao/kakalib/api/beans/DBarcodeResult;",
            ">;)",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<Lcom/etao/kakalib/api/beans/DBarcodeResult;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "content"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "mtop.etao.kaka.dbarcode.search"

    const-string v2, "1.0"

    .line 109
    const-class v5, Lcom/etao/kakalib/api/beans/DBarcodeResult;

    move-object v0, p0

    move-object v4, p2

    .line 108
    invoke-static/range {v0 .. v5}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->requestMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public static getBase64Encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "inputString"

    .prologue
    .line 170
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, ""

    .line 173
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Landroid/taobao/util/Base64;->encodeBase64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static getLoactionGpsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "0,0"

    .line 178
    .local v0, locatioInfo:Ljava/lang/String;
    return-object v0
.end method

.method public static getMTopTTID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "701475@taobaohuoyan_android_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/etao/kakalib/util/KaKaLibUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTTID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "701475"

    return-object v0
.end method

.method public static initHttpConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "appKey"
    .parameter "appsecret"

    .prologue
    .line 157
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-static {}, Lcom/etao/kakalib/api/KaKaLibApiProcesser;->getTTID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/common/SDKConfig;->setGlobalTTID(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/taobao/common/SDKConfig;->setGlobalAppSecret(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 160
    const-string v1, "http://api.m.taobao.com/rest/api3.do?"

    const-string v2, "HuoYanAndroid"

    const-string v3, "http"

    .line 159
    invoke-static {v0, v1, p1, v2, v3}, Landroid/taobao/common/TaoSDK;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public static readHuoyanPrMsg()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 148
    const-string v0, "http://www.etao.com/go/rgn/iphone/taobao_huoyan_msg.php"

    invoke-static {v0, v1, v1}, Lcom/etao/kakalib/util/HttpPostUtils;->getUrlContent(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readWhiteHosts()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    const-string v0, "http://www.etao.com/go/rgn/kaka/whitelist.php"

    invoke-static {v0, v1, v1}, Lcom/etao/kakalib/util/HttpPostUtils;->getUrlContent(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static syncScanLogo(Landroid/content/Context;Ljava/lang/String;)Lcom/etao/kaka/decode/LogoDecodeResult;
    .locals 4
    .parameter "context"
    .parameter "featureStr"

    .prologue
    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v0, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "mtop.etao.kaka.logo.search"

    const-string v2, "1.0"

    const-class v3, Lcom/etao/kaka/decode/LogoDecodeResult;

    invoke-static {p0, v1, v2, v0, v3}, Lcom/etao/kakalib/api/KakaLibMTopParserHelper;->syncPostMTopApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etao/kaka/decode/LogoDecodeResult;

    return-object v1
.end method
