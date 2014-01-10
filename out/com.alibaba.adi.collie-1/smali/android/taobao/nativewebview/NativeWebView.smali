.class public Landroid/taobao/nativewebview/NativeWebView;
.super Landroid/webkit/WebView;
.source "NativeWebView.java"

# interfaces
.implements Landroid/taobao/nativewebview/WebListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;
    }
.end annotation


# static fields
.field public static final BASE64DATA:Ljava/lang/String; = "base64_data"

.field public static final CHARSET:Ljava/lang/String; = "charset"

.field public static final CONNECT_RESULT:Ljava/lang/String; = "con_res"

.field public static final DOMREADY:I = 0x3f8

.field public static final DOWNLOAD_RES_FAILED:I = -0x1f4

.field public static final HTML_CONTENT:Ljava/lang/String; = "html_content"

.field public static final HTTPS_CERT_EXPIRED:I = -0x25a

.field public static final HTTPS_CERT_INVILD:I = -0x259

.field public static final LOAD_BEGIN:I = 0x3f3

.field public static final LOAD_ERROR:I = 0x3f5

.field public static final LOAD_FINSH:I = 0x3f4

.field public static final MIMETYPE:Ljava/lang/String; = "mimetype"

.field public static final PAGE_FINSH:I = 0x3f7

.field public static final RES2LOCAL:I = 0x0

.field private static SUPPORTED_MIMETYPE:[Ljava/lang/String; = null

.field private static SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String; = null

.field public static final UNSUPPORTED_CHARSET:I = -0x191

.field public static final UNSUPPORTED_MIMETYPE:I = -0x190

.field public static final URL:Ljava/lang/String; = "url"

.field public static final URL_HITTED:I = 0x3f6

.field public static final WEBVIEW_MIMETYPE:Ljava/lang/String; = "webview_mimetype"

.field private static enableCookie:Z


# instance fields
.field private final HTML_FINSH:I

.field private beginTime:J

.field private client:Landroid/webkit/WebViewClient;

.field private context:Landroid/app/Application;

.field private handler:Landroid/os/Handler;

.field private htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

.field private innerWebClient:Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;

.field private isAlive:Z

.field private isContextInit:Z

.field private isLoading:Z

.field private isReload:Z

.field private needDomReady:Z

.field private refreshSelf:Z

.field private requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resNativer:Landroid/taobao/nativewebview/ResNativer;

.field private sslErrorListener:Landroid/taobao/nativewebview/NativeWebviewSSLErrorListener;

.field private token:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "text/plain"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "text/html"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "application/xhtml+xml"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "application/xml"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "image/png"

    aput-object v2, v0, v1

    sput-object v0, Landroid/taobao/nativewebview/NativeWebView;->SUPPORTED_MIMETYPE:[Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    sput-object v0, Landroid/taobao/nativewebview/NativeWebView;->SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String;

    .line 106
    sput-boolean v3, Landroid/taobao/nativewebview/NativeWebView;->enableCookie:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 56
    const/16 v0, 0xc8

    iput v0, p0, Landroid/taobao/nativewebview/NativeWebView;->HTML_FINSH:I

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/taobao/nativewebview/NativeWebView;->beginTime:J

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/nativewebview/NativeWebView;->requestHeaders:Ljava/util/Map;

    .line 105
    iput-boolean v2, p0, Landroid/taobao/nativewebview/NativeWebView;->isContextInit:Z

    .line 107
    iput-boolean v2, p0, Landroid/taobao/nativewebview/NativeWebView;->refreshSelf:Z

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Landroid/taobao/nativewebview/NativeWebView;->context:Landroid/app/Application;

    .line 234
    invoke-direct {p0}, Landroid/taobao/nativewebview/NativeWebView;->init()V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/16 v0, 0xc8

    iput v0, p0, Landroid/taobao/nativewebview/NativeWebView;->HTML_FINSH:I

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/taobao/nativewebview/NativeWebView;->beginTime:J

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/nativewebview/NativeWebView;->requestHeaders:Ljava/util/Map;

    .line 105
    iput-boolean v2, p0, Landroid/taobao/nativewebview/NativeWebView;->isContextInit:Z

    .line 107
    iput-boolean v2, p0, Landroid/taobao/nativewebview/NativeWebView;->refreshSelf:Z

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Landroid/taobao/nativewebview/NativeWebView;->context:Landroid/app/Application;

    .line 227
    invoke-direct {p0}, Landroid/taobao/nativewebview/NativeWebView;->init()V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/16 v0, 0xc8

    iput v0, p0, Landroid/taobao/nativewebview/NativeWebView;->HTML_FINSH:I

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/taobao/nativewebview/NativeWebView;->beginTime:J

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/nativewebview/NativeWebView;->requestHeaders:Ljava/util/Map;

    .line 105
    iput-boolean v2, p0, Landroid/taobao/nativewebview/NativeWebView;->isContextInit:Z

    .line 107
    iput-boolean v2, p0, Landroid/taobao/nativewebview/NativeWebView;->refreshSelf:Z

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Landroid/taobao/nativewebview/NativeWebView;->context:Landroid/app/Application;

    .line 219
    invoke-direct {p0}, Landroid/taobao/nativewebview/NativeWebView;->init()V

    .line 222
    return-void
.end method

.method static synthetic access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method static synthetic access$100(Landroid/taobao/nativewebview/NativeWebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    return v0
.end method

.method static synthetic access$200(Landroid/taobao/nativewebview/NativeWebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/taobao/nativewebview/NativeWebView;->isReload:Z

    return v0
.end method

.method static synthetic access$300(Landroid/taobao/nativewebview/NativeWebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/taobao/nativewebview/NativeWebView;->refreshSelf:Z

    return v0
.end method

.method static synthetic access$302(Landroid/taobao/nativewebview/NativeWebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Landroid/taobao/nativewebview/NativeWebView;->refreshSelf:Z

    return p1
.end method

.method static synthetic access$400(Landroid/taobao/nativewebview/NativeWebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView;->url:Ljava/lang/String;

    return-object v0
.end method

.method private addDomReady(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "html"

    .prologue
    const/4 v3, -0x1

    .line 824
    const-string v2, "window.GoBackAction.htmlFinsh();\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 825
    .local v0, index:I
    if-eq v0, v3, :cond_1

    .line 838
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 828
    .restart local p1
    :cond_1
    const-string v2, "</body>"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 829
    if-eq v0, v3, :cond_0

    .line 832
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 833
    .local v1, ret:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 836
    const-string v2, "<script type=\"text/javascript\">document.addEventListener( \"DOMContentLoaded\", function() { window.GoBackAction.htmlFinsh(); }, false ); </script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 837
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 838
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static clearCookie(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 209
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 210
    .local v0, cookieManager:Landroid/webkit/CookieManager;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 212
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 213
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 269
    iput v7, p0, Landroid/taobao/nativewebview/NativeWebView;->token:I

    .line 270
    iput-boolean v6, p0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    .line 271
    iput-boolean v6, p0, Landroid/taobao/nativewebview/NativeWebView;->needDomReady:Z

    .line 272
    new-instance v3, Landroid/taobao/util/SafeHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Landroid/taobao/util/SafeHandler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Landroid/taobao/nativewebview/NativeWebView;->handler:Landroid/os/Handler;

    .line 273
    new-instance v3, Landroid/taobao/nativewebview/ResNativer;

    invoke-direct {v3}, Landroid/taobao/nativewebview/ResNativer;-><init>()V

    iput-object v3, p0, Landroid/taobao/nativewebview/NativeWebView;->resNativer:Landroid/taobao/nativewebview/ResNativer;

    .line 275
    const-string v3, "GoBackAction"

    invoke-virtual {p0, p0, v3}, Landroid/taobao/nativewebview/NativeWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    new-instance v3, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;

    invoke-direct {v3, p0}, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;-><init>(Landroid/taobao/nativewebview/NativeWebView;)V

    iput-object v3, p0, Landroid/taobao/nativewebview/NativeWebView;->innerWebClient:Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;

    .line 279
    iget-object v3, p0, Landroid/taobao/nativewebview/NativeWebView;->innerWebClient:Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;

    invoke-super {p0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 282
    invoke-virtual {p0, v7}, Landroid/taobao/nativewebview/NativeWebView;->setVerticalScrollBarEnabled(Z)V

    .line 287
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->requestFocus()Z

    .line 289
    sget-object v3, Landroid/taobao/nativewebview/NativeWebView;->SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 290
    iget-object v3, p0, Landroid/taobao/nativewebview/NativeWebView;->context:Landroid/app/Application;

    const-string v4, "webview_mimetype"

    invoke-virtual {v3, v4, v7}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 291
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "webview_mimetype"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, mimeType:Ljava/lang/String;
    const-string v3, "NativeWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "support minitype:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/taobao/nativewebview/NativeWebView;->SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String;

    .line 294
    sget-object v3, Landroid/taobao/nativewebview/NativeWebView;->SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-object v3, Landroid/taobao/nativewebview/NativeWebView;->SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_4

    sget-object v3, Landroid/taobao/nativewebview/NativeWebView;->SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 295
    sget-object v3, Landroid/taobao/nativewebview/NativeWebView;->SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String;

    sput-object v3, Landroid/taobao/nativewebview/NativeWebView;->SUPPORTED_MIMETYPE:[Ljava/lang/String;

    .line 300
    .end local v0           #mimeType:Ljava/lang/String;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 302
    .local v1, setting:Landroid/webkit/WebSettings;
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 303
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 306
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 309
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_1

    .line 310
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 313
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-lt v3, v4, :cond_2

    .line 314
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 321
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_3

    .line 322
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 324
    :cond_3
    return-void

    .line 297
    .end local v1           #setting:Landroid/webkit/WebSettings;
    .restart local v0       #mimeType:Ljava/lang/String;
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    :cond_4
    const/4 v3, 0x0

    sput-object v3, Landroid/taobao/nativewebview/NativeWebView;->SUPPORTED_MIMETYPE_CONFIG:[Ljava/lang/String;

    goto :goto_0
.end method

.method private loadUrl(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 15
    .parameter "url"
    .parameter
    .parameter "enableCache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v1, p0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-nez v1, :cond_0

    .line 584
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-boolean v1, p0, Landroid/taobao/nativewebview/NativeWebView;->isContextInit:Z

    if-nez v1, :cond_1

    .line 497
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/taobao/nativewebview/NativeWebView;->isContextInit:Z

    .line 499
    :try_start_0
    const-class v13, Landroid/view/View;

    .line 500
    .local v13, webViewClass:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/view/View;>;"
    const-string v1, "mContext"

    invoke-virtual {v13, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 501
    .local v11, field:Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v11, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 502
    const-string v1, "NativeWebView"

    const-string v2, "set Context"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 504
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "mProvider"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 505
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 506
    invoke-virtual {v11, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 507
    .local v14, webViewClassic:Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mContext"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 508
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 509
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v11, v14, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v11           #field:Ljava/lang/reflect/Field;
    .end local v13           #webViewClass:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/view/View;>;"
    .end local v14           #webViewClassic:Ljava/lang/Object;
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/taobao/nativewebview/NativeWebView;->url:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 524
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/taobao/nativewebview/NativeWebView;->isReload:Z

    .line 527
    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "javascript"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 528
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :catch_0
    move-exception v10

    .line 514
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 526
    .end local v10           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/taobao/nativewebview/NativeWebView;->isReload:Z

    goto :goto_2

    .line 532
    :cond_4
    iget-object v1, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    if-eqz v1, :cond_5

    .line 533
    iget-object v1, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    invoke-virtual {v1}, Landroid/taobao/nativewebview/HtmlDownloader;->cancel()V

    .line 534
    iget-object v1, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    invoke-virtual {v1}, Landroid/taobao/nativewebview/HtmlDownloader;->clear()V

    .line 535
    iget-object v1, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/taobao/nativewebview/HtmlDownloader;->setListener(Landroid/taobao/nativewebview/WebListener;)V

    .line 538
    :cond_5
    iget v1, p0, Landroid/taobao/nativewebview/NativeWebView;->token:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/taobao/nativewebview/NativeWebView;->token:I

    .line 539
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/taobao/nativewebview/NativeWebView;->url:Ljava/lang/String;

    .line 540
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/taobao/nativewebview/NativeWebView;->isLoading:Z

    .line 551
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/taobao/nativewebview/NativeWebView;->requestHeaders:Ljava/util/Map;

    .line 552
    if-eqz p2, :cond_6

    .line 553
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Landroid/taobao/nativewebview/NativeWebView;->requestHeaders:Ljava/util/Map;

    .line 558
    :goto_3
    if-nez p1, :cond_7

    .line 562
    const-string v1, "Taobao"

    const-string v2, "url is null in native webview"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 555
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/taobao/nativewebview/NativeWebView;->requestHeaders:Ljava/util/Map;

    goto :goto_3

    .line 566
    :cond_7
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 567
    .local v9, cookie:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 568
    const-string v1, "NativeWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get cookie:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v1, p0, Landroid/taobao/nativewebview/NativeWebView;->requestHeaders:Ljava/util/Map;

    const-string v2, "Cookie"

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :goto_4
    new-instance v1, Landroid/taobao/nativewebview/HtmlDownloader;

    iget-object v2, p0, Landroid/taobao/nativewebview/NativeWebView;->context:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Landroid/taobao/nativewebview/NativeWebView;->requestHeaders:Ljava/util/Map;

    iget v7, p0, Landroid/taobao/nativewebview/NativeWebView;->token:I

    move-object v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Landroid/taobao/nativewebview/HtmlDownloader;-><init>(Landroid/app/Application;Ljava/lang/String;Landroid/taobao/nativewebview/WebListener;Ljava/util/Map;Ljava/lang/String;IZ)V

    iput-object v1, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    .line 577
    new-instance v1, Landroid/taobao/threadpool2/SingleTask;

    iget-object v2, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/taobao/threadpool2/SingleTask;-><init>(Ljava/lang/Runnable;I)V

    invoke-virtual {v1}, Landroid/taobao/threadpool2/SingleTask;->start()V

    .line 580
    iget-object v1, p0, Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-eqz v1, :cond_8

    .line 581
    iget-object v1, p0, Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, p0, v0, v2}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 582
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/taobao/nativewebview/NativeWebView;->beginTime:J

    goto/16 :goto_0

    .line 571
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not get the cookie from url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 572
    .local v12, info:Ljava/lang/String;
    const-string v1, "NativeWebView"

    invoke-static {v1, v12}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v1, "NativeWebView"

    sget v2, Landroid/taobao/common/SDKConstants;->ID_PAGE_NATIVE_WEBVIEW:I

    invoke-static {v1, v2, v12}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_4
.end method

.method public static setCookieEnable(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 193
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 195
    .local v0, cookieManager:Landroid/webkit/CookieManager;
    if-eqz v0, :cond_0

    .line 197
    if-eqz p1, :cond_1

    .line 198
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 202
    :goto_0
    sput-boolean p1, Landroid/taobao/nativewebview/NativeWebView;->enableCookie:Z

    .line 204
    :cond_0
    return-void

    .line 200
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    goto :goto_0
.end method


# virtual methods
.method public back()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 327
    iget-boolean v1, p0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-nez v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->goBack()V

    .line 331
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public callback([BLjava/util/Map;I)V
    .locals 11
    .parameter "data"
    .parameter
    .parameter "token"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 857
    .local p2, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v8, p0, Landroid/taobao/nativewebview/NativeWebView;->token:I

    if-ne p3, v8, :cond_0

    .line 858
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 859
    .local v5, msg:Landroid/os/Message;
    iput p3, v5, Landroid/os/Message;->arg1:I

    .line 875
    const/4 v0, 0x0

    .line 876
    .local v0, code:I
    const-string v8, "con_res"

    invoke-interface {p2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 877
    const-string v8, "con_res"

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 878
    const/16 v8, -0x7d6

    if-ne v0, v8, :cond_1

    .line 880
    const/16 v8, -0x259

    iput v8, v5, Landroid/os/Message;->what:I

    .line 881
    iput-object p2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 882
    iget-object v8, p0, Landroid/taobao/nativewebview/NativeWebView;->handler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 941
    .end local v0           #code:I
    .end local v5           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 885
    .restart local v0       #code:I
    .restart local v5       #msg:Landroid/os/Message;
    :cond_1
    const/16 v8, -0x7d7

    if-ne v0, v8, :cond_2

    .line 887
    const/16 v8, -0x25a

    iput v8, v5, Landroid/os/Message;->what:I

    .line 888
    iput-object p2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 889
    iget-object v8, p0, Landroid/taobao/nativewebview/NativeWebView;->handler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 893
    :cond_2
    const-string v8, "content-type"

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 895
    .local v1, contentType:Ljava/lang/String;
    const/4 v7, 0x0

    .line 896
    .local v7, support:Z
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 897
    sget-object v8, Landroid/taobao/nativewebview/NativeWebView;->SUPPORTED_MIMETYPE:[Ljava/lang/String;

    array-length v6, v8

    .line 898
    .local v6, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_3

    .line 899
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/taobao/nativewebview/NativeWebView;->SUPPORTED_MIMETYPE:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 900
    const-string v8, "mimetype"

    sget-object v9, Landroid/taobao/nativewebview/NativeWebView;->SUPPORTED_MIMETYPE:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    const/4 v7, 0x1

    .line 908
    .end local v4           #i:I
    .end local v6           #size:I
    :cond_3
    if-eqz v1, :cond_5

    if-nez v7, :cond_5

    .line 909
    const-string v8, "NativeWebView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unsupport minitype:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const/16 v8, -0x190

    iput v8, v5, Landroid/os/Message;->what:I

    .line 911
    const-string v8, "url"

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 912
    iget-object v8, p0, Landroid/taobao/nativewebview/NativeWebView;->handler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 898
    .restart local v4       #i:I
    .restart local v6       #size:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 916
    .end local v4           #i:I
    .end local v6           #size:I
    :cond_5
    if-eqz v1, :cond_7

    const-string v8, "image/gif"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "image/jpeg"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "image/png"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 920
    :cond_6
    const-string v8, "base64_data"

    new-instance v9, Ljava/lang/String;

    invoke-static {p1}, Landroid/taobao/util/Base64;->encodeBase64([B)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    :cond_7
    const-string v8, "set-cookie"

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 924
    .local v2, cookie:Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 926
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 928
    .local v3, cookieManager:Landroid/webkit/CookieManager;
    invoke-virtual {v3}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 929
    iget-object v8, p0, Landroid/taobao/nativewebview/NativeWebView;->url:Ljava/lang/String;

    invoke-virtual {v3, v8, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 935
    .end local v3           #cookieManager:Landroid/webkit/CookieManager;
    :cond_8
    const/16 v8, 0xc8

    iput v8, v5, Landroid/os/Message;->what:I

    .line 936
    iput-object p2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 938
    iget-object v8, p0, Landroid/taobao/nativewebview/NativeWebView;->handler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public destroy()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 601
    iget-boolean v6, p0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-nez v6, :cond_0

    .line 640
    :goto_0
    return-void

    .line 604
    :cond_0
    :try_start_0
    const-class v4, Landroid/view/View;

    .line 605
    .local v4, webViewClass:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/view/View;>;"
    const-string v6, "mContext"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 606
    .local v1, field:Ljava/lang/reflect/Field;
    iget-object v6, p0, Landroid/taobao/nativewebview/NativeWebView;->context:Landroid/app/Application;

    invoke-virtual {v1, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 607
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_1

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sami"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 608
    const-class v6, Landroid/webkit/WebView;

    const-string v7, "mProvider"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 609
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 610
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 611
    .local v5, webViewClassic:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mContext"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 612
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 613
    iget-object v6, p0, Landroid/taobao/nativewebview/NativeWebView;->context:Landroid/app/Application;

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v4           #webViewClass:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/view/View;>;"
    .end local v5           #webViewClassic:Ljava/lang/Object;
    :cond_1
    :goto_1
    iget-object v6, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    if-eqz v6, :cond_2

    .line 620
    iget-object v6, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    invoke-virtual {v6, v8}, Landroid/taobao/nativewebview/HtmlDownloader;->setListener(Landroid/taobao/nativewebview/WebListener;)V

    .line 621
    iget-object v6, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    invoke-virtual {v6}, Landroid/taobao/nativewebview/HtmlDownloader;->clear()V

    .line 622
    iput-object v8, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    .line 625
    :cond_2
    iput-object v8, p0, Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;

    .line 626
    invoke-virtual {p0, v8}, Landroid/taobao/nativewebview/NativeWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 627
    invoke-virtual {p0, v8}, Landroid/taobao/nativewebview/NativeWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 628
    iput-boolean v9, p0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    .line 631
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 632
    .local v3, webViewClass:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/taobao/nativewebview/NativeWebView;>;"
    const-string v6, "freeMemory"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 633
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v6, "NativeWebView"

    const-string v7, "freeMemory"

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 639
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #webViewClass:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/taobao/nativewebview/NativeWebView;>;"
    :goto_2
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    .line 617
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 635
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 637
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public enableDomReady(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 587
    iput-boolean p1, p0, Landroid/taobao/nativewebview/NativeWebView;->needDomReady:Z

    .line 588
    return-void
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, currentUrl:Ljava/lang/String;
    iget-boolean v2, p0, Landroid/taobao/nativewebview/NativeWebView;->isLoading:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    .line 248
    :cond_0
    iget-object v2, p0, Landroid/taobao/nativewebview/NativeWebView;->url:Ljava/lang/String;

    .line 254
    :goto_0
    return-object v2

    .line 250
    :cond_1
    const-string v2, "&pagestart=true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 251
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 252
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 254
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 408
    iget-boolean v4, p0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-nez v4, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget v4, p0, Landroid/taobao/nativewebview/NativeWebView;->token:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/taobao/nativewebview/NativeWebView;->token:I

    .line 412
    iget-object v4, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    if-eqz v4, :cond_2

    .line 413
    iget-object v4, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    invoke-virtual {v4}, Landroid/taobao/nativewebview/HtmlDownloader;->cancel()V

    .line 414
    iget-object v4, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    invoke-virtual {v4}, Landroid/taobao/nativewebview/HtmlDownloader;->clear()V

    .line 415
    iget-object v4, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/taobao/nativewebview/HtmlDownloader;->setListener(Landroid/taobao/nativewebview/WebListener;)V

    .line 417
    :cond_2
    iget-boolean v4, p0, Landroid/taobao/nativewebview/NativeWebView;->isLoading:Z

    if-eqz v4, :cond_4

    .line 418
    iget-object v4, p0, Landroid/taobao/nativewebview/NativeWebView;->innerWebClient:Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;

    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 419
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, currentUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 421
    const-string v4, "&pagestart=true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 422
    .local v3, index:I
    if-eq v3, v6, :cond_3

    .line 423
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/taobao/nativewebview/NativeWebView;->url:Ljava/lang/String;

    .line 424
    :cond_3
    const-string v4, "NativeWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "goBack isloading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    .end local v1           #currentUrl:Ljava/lang/String;
    .end local v3           #index:I
    :cond_4
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->canGoBack()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 428
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 429
    .local v0, backList:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v2

    .line 430
    .local v2, historyItem:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 431
    .restart local v1       #currentUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 432
    const-string v4, "&pagestart=true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 433
    .restart local v3       #index:I
    if-eq v3, v6, :cond_5

    .line 434
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/taobao/nativewebview/NativeWebView;->url:Ljava/lang/String;

    .line 435
    :cond_5
    const-string v4, "NativeWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "goBack: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    goto/16 :goto_0
.end method

.method public goBackOrForward(I)V
    .locals 7
    .parameter "steps"

    .prologue
    const/4 v6, -0x1

    .line 446
    iget-boolean v4, p0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-nez v4, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    if-eqz p1, :cond_2

    .line 449
    iget v4, p0, Landroid/taobao/nativewebview/NativeWebView;->token:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/taobao/nativewebview/NativeWebView;->token:I

    .line 450
    :cond_2
    iget-object v4, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    if-eqz v4, :cond_3

    .line 451
    iget-object v4, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    invoke-virtual {v4}, Landroid/taobao/nativewebview/HtmlDownloader;->cancel()V

    .line 452
    iget-object v4, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    invoke-virtual {v4}, Landroid/taobao/nativewebview/HtmlDownloader;->clear()V

    .line 453
    iget-object v4, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/taobao/nativewebview/HtmlDownloader;->setListener(Landroid/taobao/nativewebview/WebListener;)V

    .line 455
    :cond_3
    iget-boolean v4, p0, Landroid/taobao/nativewebview/NativeWebView;->isLoading:Z

    if-eqz v4, :cond_4

    .line 456
    if-ge p1, v6, :cond_7

    .line 457
    add-int/lit8 p1, p1, 0x1

    .line 463
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Landroid/taobao/nativewebview/NativeWebView;->canGoBackOrForward(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 464
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 465
    .local v0, backList:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v0, v4}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v2

    .line 466
    .local v2, historyItem:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, currentUrl:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 468
    const-string v4, "&pagestart=true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 469
    .local v3, index:I
    if-eq v3, v6, :cond_5

    .line 470
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/taobao/nativewebview/NativeWebView;->url:Ljava/lang/String;

    .line 472
    :cond_5
    const-string v4, "NativeWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "goBackOrForward: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .end local v3           #index:I
    :cond_6
    invoke-super {p0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    goto :goto_0

    .line 458
    .end local v0           #backList:Landroid/webkit/WebBackForwardList;
    .end local v1           #currentUrl:Ljava/lang/String;
    .end local v2           #historyItem:Landroid/webkit/WebHistoryItem;
    :cond_7
    if-gez p1, :cond_0

    .line 459
    iget-object v4, p0, Landroid/taobao/nativewebview/NativeWebView;->innerWebClient:Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;

    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 20
    .parameter "msg"

    .prologue
    .line 946
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1085
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 948
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-eqz v1, :cond_0

    .line 949
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;

    const-string v4, "htmlfinsh:"

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v4}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 953
    :sswitch_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/taobao/nativewebview/NativeWebView;->isLoading:Z

    .line 954
    move-object/from16 v0, p0

    iget v1, v0, Landroid/taobao/nativewebview/NativeWebView;->token:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-eqz v1, :cond_1

    .line 955
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;

    const/16 v5, -0x190

    const-string v6, "unsupported mini type"

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5, v6, v1}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 956
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    if-eqz v1, :cond_0

    .line 957
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    invoke-virtual {v1}, Landroid/taobao/nativewebview/HtmlDownloader;->clear()V

    goto :goto_0

    .line 967
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->sslErrorListener:Landroid/taobao/nativewebview/NativeWebviewSSLErrorListener;

    if-eqz v1, :cond_2

    .line 968
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->sslErrorListener:Landroid/taobao/nativewebview/NativeWebviewSSLErrorListener;

    const/16 v4, -0x259

    invoke-interface {v1, v4}, Landroid/taobao/nativewebview/NativeWebviewSSLErrorListener;->onError(I)V

    .line 969
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 973
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->sslErrorListener:Landroid/taobao/nativewebview/NativeWebviewSSLErrorListener;

    if-eqz v1, :cond_3

    .line 974
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->sslErrorListener:Landroid/taobao/nativewebview/NativeWebviewSSLErrorListener;

    const/16 v4, -0x259

    invoke-interface {v1, v4}, Landroid/taobao/nativewebview/NativeWebviewSSLErrorListener;->onError(I)V

    .line 975
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 979
    :sswitch_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/taobao/nativewebview/NativeWebView;->isLoading:Z

    .line 980
    move-object/from16 v0, p0

    iget v1, v0, Landroid/taobao/nativewebview/NativeWebView;->token:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-eqz v1, :cond_7

    .line 982
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/util/Map;

    .line 983
    .local v13, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "url"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 984
    .local v2, url:Ljava/lang/String;
    const/4 v11, -0x1

    .line 985
    .local v11, code:I
    const-string v1, "response-code"

    invoke-interface {v13, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 986
    const-string v1, "response-code"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 988
    :cond_4
    const-string v1, "NativeWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "html_code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const/16 v1, 0x12c

    if-lt v11, v1, :cond_5

    const/16 v1, 0x190

    if-ge v11, v1, :cond_5

    .line 990
    const-string v1, "location"

    invoke-interface {v13, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 991
    const-string v1, "NativeWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "redirect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/taobao/nativewebview/NativeWebView;->innerWebClient:Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;

    const-string v1, "location"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v1}, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 993
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 998
    :cond_5
    const-string v1, "html_content"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1004
    .local v3, html:Ljava/lang/String;
    if-eqz v3, :cond_6

    const/4 v1, -0x1

    if-ne v11, v1, :cond_8

    .line 1005
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-eqz v1, :cond_7

    .line 1006
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;

    const/16 v4, 0x190

    const-string v5, "HTML\u4e0b\u8f7d\u5931\u8d25"

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v4, v5, v2}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1079
    .end local v2           #url:Ljava/lang/String;
    .end local v3           #html:Ljava/lang/String;
    .end local v11           #code:I
    .end local v13           #header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    if-eqz v1, :cond_0

    .line 1080
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    invoke-virtual {v1}, Landroid/taobao/nativewebview/HtmlDownloader;->clear()V

    goto/16 :goto_0

    .line 1008
    .restart local v2       #url:Ljava/lang/String;
    .restart local v3       #html:Ljava/lang/String;
    .restart local v11       #code:I
    .restart local v13       #header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    const-string v1, "mimetype"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1009
    .local v15, mimeType:Ljava/lang/String;
    if-eqz v15, :cond_9

    .line 1010
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 1012
    :cond_9
    sget-boolean v1, Landroid/taobao/nativewebview/NativeWebView;->enableCookie:Z

    if-eqz v1, :cond_a

    .line 1013
    const-string v1, "set-cookie"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1014
    .local v12, cookie:Ljava/lang/String;
    if-eqz v12, :cond_a

    .line 1015
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, v2, v12}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    .end local v12           #cookie:Ljava/lang/String;
    :cond_a
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 1020
    .local v17, uri:Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v18

    .line 1021
    .local v18, urlBuilder:Landroid/net/Uri$Builder;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 1022
    .local v16, path:Ljava/lang/String;
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 1023
    :cond_b
    const-string v1, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1024
    :cond_c
    const-string v1, "pagestart"

    const-string v4, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1025
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1028
    if-eqz v15, :cond_12

    const-string v1, "text/html"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1030
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->resNativer:Landroid/taobao/nativewebview/ResNativer;

    if-eqz v1, :cond_d

    .line 1031
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->resNativer:Landroid/taobao/nativewebview/ResNativer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/taobao/nativewebview/NativeWebView;->context:Landroid/app/Application;

    invoke-virtual {v1, v3, v4, v5}, Landroid/taobao/nativewebview/ResNativer;->localize(Ljava/lang/String;ILandroid/app/Application;)Ljava/lang/String;

    move-result-object v3

    .line 1034
    :cond_d
    sget v1, Landroid/taobao/nativewebview/ResUtil;->FILTER_CSS:I

    sget v4, Landroid/taobao/nativewebview/ResUtil;->FILTER_JSS:I

    or-int/2addr v1, v4

    invoke-static {v3, v1}, Landroid/taobao/nativewebview/ResUtil;->filtrate(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    .line 1038
    .local v19, urls:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/taobao/nativewebview/NativeWebView;->needDomReady:Z

    if-eqz v1, :cond_f

    if-eqz v19, :cond_e

    move-object/from16 v0, v19

    array-length v1, v0

    if-nez v1, :cond_f

    .line 1039
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/taobao/nativewebview/NativeWebView;->addDomReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1041
    :cond_f
    const-string v1, "mimetype"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v1, "file.encoding"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    move-object v6, v2

    invoke-super/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    if-eqz v19, :cond_10

    move-object/from16 v0, v19

    array-length v1, v0

    if-nez v1, :cond_11

    .line 1045
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-eqz v1, :cond_11

    .line 1046
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1076
    .end local v19           #urls:[Ljava/lang/String;
    :cond_11
    :goto_3
    const-string v1, "NativeWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dom downloaded time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v7, v0, Landroid/taobao/nativewebview/NativeWebView;->beginTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1047
    :cond_12
    if-eqz v15, :cond_15

    const-string v1, "image/gif"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "image/jpeg"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "image/png"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1055
    :cond_13
    const-string v1, "base64_data"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1056
    .local v10, base64Data:Ljava/lang/String;
    if-nez v10, :cond_14

    .line 1057
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-eqz v1, :cond_11

    .line 1058
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;

    const/16 v4, 0x190

    const-string v5, "HTML\u4e0b\u8f7d\u5931\u8d25"

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v4, v5, v2}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1061
    :cond_14
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 1062
    .local v14, imgHtml:Ljava/lang/StringBuffer;
    const-string v1, "<img src=\"data:"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1063
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1064
    const-string v1, ";base64,"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1065
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1066
    const-string v1, "\"/>"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1070
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/html"

    const-string v1, "file.encoding"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v9, v2

    invoke-super/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1074
    .end local v10           #base64Data:Ljava/lang/String;
    .end local v14           #imgHtml:Ljava/lang/StringBuffer;
    :cond_15
    const-string v1, "mimetype"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v1, "file.encoding"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    move-object v6, v2

    invoke-super/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 946
    nop

    :sswitch_data_0
    .sparse-switch
        -0x25a -> :sswitch_3
        -0x259 -> :sswitch_2
        -0x190 -> :sswitch_1
        0xc8 -> :sswitch_4
        0x3f8 -> :sswitch_0
    .end sparse-switch
.end method

.method public htmlFinsh()V
    .locals 6

    .prologue
    .line 845
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView;->handler:Landroid/os/Handler;

    const/16 v1, 0x3f8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 847
    const-string v0, "NativeWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dom ready time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/taobao/nativewebview/NativeWebView;->beginTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    const/4 v5, 0x1

    .line 135
    iget-boolean v4, p0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-nez v4, :cond_0

    .line 158
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-boolean v4, p0, Landroid/taobao/nativewebview/NativeWebView;->isContextInit:Z

    if-nez v4, :cond_1

    .line 138
    iput-boolean v5, p0, Landroid/taobao/nativewebview/NativeWebView;->isContextInit:Z

    .line 140
    :try_start_0
    const-class v2, Landroid/view/View;

    .line 141
    .local v2, webViewClass:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/view/View;>;"
    const-string v4, "mContext"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 142
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    const-string v4, "NativeWebView"

    const-string v5, "set Context"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_1

    .line 145
    const-class v4, Landroid/webkit/WebView;

    const-string v5, "mProvider"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 146
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 148
    .local v3, webViewClassic:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mContext"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 149
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 150
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #webViewClass:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/view/View;>;"
    .end local v3           #webViewClassic:Ljava/lang/Object;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "failUrl"

    .prologue
    const/4 v5, 0x1

    .line 165
    iget-boolean v4, p0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-nez v4, :cond_0

    .line 188
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-boolean v4, p0, Landroid/taobao/nativewebview/NativeWebView;->isContextInit:Z

    if-nez v4, :cond_1

    .line 168
    iput-boolean v5, p0, Landroid/taobao/nativewebview/NativeWebView;->isContextInit:Z

    .line 170
    :try_start_0
    const-class v2, Landroid/view/View;

    .line 171
    .local v2, webViewClass:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/view/View;>;"
    const-string v4, "mContext"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 172
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    const-string v4, "NativeWebView"

    const-string v5, "set Context"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_1

    .line 175
    const-class v4, Landroid/webkit/WebView;

    const-string v5, "mProvider"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 176
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 177
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 178
    .local v3, webViewClassic:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mContext"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 179
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 180
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #webViewClass:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/view/View;>;"
    .end local v3           #webViewClassic:Ljava/lang/Object;
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 340
    iget-boolean v1, p0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-nez v1, :cond_0

    .line 350
    :goto_0
    return-void

    .line 343
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 345
    .local v0, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Accept-Language"

    const-string v2, "zh-cn, en-US"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-direct {p0, p1, v0, v3}, Landroid/taobao/nativewebview/NativeWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_0

    .line 348
    .end local v0           #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v3}, Landroid/taobao/nativewebview/NativeWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, ret:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->requestFocus()Z

    .line 124
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 129
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 1121
    const-string v2, "NativeWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity call pause "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "disablePlatformNotifications"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1124
    .local v0, disablePlatformNotifications:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 1125
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    .end local v0           #disablePlatformNotifications:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->pauseTimers()V

    .line 1133
    return-void

    .line 1126
    :catch_0
    move-exception v1

    .line 1127
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/taobao/nativewebview/NativeWebView;->reload(Z)V

    .line 394
    return-void
.end method

.method public reload(Z)V
    .locals 6
    .parameter "enableResCache"

    .prologue
    const/4 v5, 0x0

    .line 357
    iget-boolean v2, p0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-nez v2, :cond_0

    .line 384
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, currentUrl:Ljava/lang/String;
    iget-boolean v2, p0, Landroid/taobao/nativewebview/NativeWebView;->isLoading:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_2

    .line 362
    :cond_1
    iget-object v2, p0, Landroid/taobao/nativewebview/NativeWebView;->url:Ljava/lang/String;

    iget-object v3, p0, Landroid/taobao/nativewebview/NativeWebView;->requestHeaders:Ljava/util/Map;

    invoke-direct {p0, v2, v3, p1}, Landroid/taobao/nativewebview/NativeWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 363
    const-string v2, "NativeWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reload & loading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/taobao/nativewebview/NativeWebView;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_2
    const-string v2, "&pagestart=true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 366
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 367
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    .line 368
    const-string v2, "NativeWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reload & post\uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_3
    const-string v2, "NativeWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reload & get: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, p1}, Landroid/taobao/nativewebview/NativeWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 1137
    const-string v2, "NativeWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity call resume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "enablePlatformNotifications"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1141
    .local v1, enablePlatformNotifications:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1142
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    .end local v1           #enablePlatformNotifications:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/taobao/nativewebview/NativeWebView;->resumeTimers()V

    .line 1148
    return-void

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSslErrorListener(Landroid/taobao/nativewebview/NativeWebviewSSLErrorListener;)V
    .locals 0
    .parameter "sslErrorListener"

    .prologue
    .line 113
    iput-object p1, p0, Landroid/taobao/nativewebview/NativeWebView;->sslErrorListener:Landroid/taobao/nativewebview/NativeWebviewSSLErrorListener;

    .line 114
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 593
    iput-object p1, p0, Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;

    .line 594
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 481
    iget-boolean v0, p0, Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z

    if-nez v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 484
    :cond_0
    iget v0, p0, Landroid/taobao/nativewebview/NativeWebView;->token:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/nativewebview/NativeWebView;->token:I

    .line 485
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    invoke-virtual {v0}, Landroid/taobao/nativewebview/HtmlDownloader;->cancel()V

    .line 487
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    invoke-virtual {v0}, Landroid/taobao/nativewebview/HtmlDownloader;->clear()V

    .line 488
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView;->htmlDownloader:Landroid/taobao/nativewebview/HtmlDownloader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/taobao/nativewebview/HtmlDownloader;->setListener(Landroid/taobao/nativewebview/WebListener;)V

    .line 490
    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0
.end method
