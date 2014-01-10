.class public Landroid/taobao/apirequest/X509TrustManagerStrategy;
.super Ljava/lang/Object;
.source "X509TrustManagerStrategy.java"


# static fields
.field protected static m_trustMgr:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Landroid/taobao/apirequest/X509TrustManagerStrategy;->m_trustMgr:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Landroid/taobao/apirequest/X509TrustManagerStrategy;->m_trustMgr:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public static setX509TrustManager(Ljavax/net/ssl/X509TrustManager;)V
    .locals 0
    .parameter "mgr"

    .prologue
    .line 60
    sput-object p0, Landroid/taobao/apirequest/X509TrustManagerStrategy;->m_trustMgr:Ljavax/net/ssl/X509TrustManager;

    .line 61
    return-void
.end method

.method public static trustAllHosts()V
    .locals 5

    .prologue
    .line 29
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Landroid/taobao/apirequest/X509TrustManagerStrategy$1;

    invoke-direct {v4}, Landroid/taobao/apirequest/X509TrustManagerStrategy$1;-><init>()V

    aput-object v4, v2, v3

    .line 45
    .local v2, trustAllCerts:[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 46
    .local v1, sc:Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 47
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1           #sc:Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
