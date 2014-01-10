.class public Landroid/taobao/common/TaoSDK;
.super Ljava/lang/Object;
.source "TaoSDK.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiRequestMgr;->destroy()V

    .line 97
    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "baseUrl"
    .parameter "appkey"
    .parameter "userAgent"
    .parameter "picPattern"

    .prologue
    .line 40
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/taobao/common/SDKConfig;->setGlobalContext(Landroid/content/Context;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/taobao/common/SDKConfig;->setGlobalBaseUrl(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/taobao/common/SDKConfig;->setGlobalAppkey(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    .line 43
    invoke-static {p0}, Landroid/taobao/common/TaoSDK;->initCommonComponent(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    invoke-virtual {v0, p0, p3, p4}, Lcom/taobao/tao/imagepool/ImagePool;->Init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "baseUrl"
    .parameter "appkey"

    .prologue
    .line 28
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/taobao/common/SDKConfig;->setGlobalContext(Landroid/content/Context;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/taobao/common/SDKConfig;->setGlobalBaseUrl(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/taobao/common/SDKConfig;->setGlobalAppkey(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    .line 32
    invoke-static {p0}, Landroid/taobao/common/TaoSDK;->initCommonComponent(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/apirequest/IEcodeProvider;)V
    .locals 1
    .parameter "context"
    .parameter "appkey"
    .parameter "appSecret"
    .parameter "api3Base"
    .parameter "ttid"
    .parameter "provider"

    .prologue
    .line 53
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/taobao/common/SDKConfig;->setGlobalContext(Landroid/content/Context;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/taobao/common/SDKConfig;->setGlobalAppkey(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/taobao/common/SDKConfig;->setGlobalBaseUrl(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/taobao/common/SDKConfig;->setGlobalIEcodeProvider(Landroid/taobao/apirequest/IEcodeProvider;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/taobao/common/SDKConfig;->setGlobalTTID(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/taobao/common/SDKConfig;->setGlobalAppSecret(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    .line 59
    invoke-static {p0}, Landroid/taobao/common/TaoSDK;->initCommonComponent(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/apirequest/IEcodeProvider;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appkey"
    .parameter "appSecret"
    .parameter "api3Base"
    .parameter "ttid"
    .parameter "provider"
    .parameter "saveFileRootDir"

    .prologue
    .line 70
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/taobao/common/SDKConfig;->setGlobalContext(Landroid/content/Context;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/taobao/common/SDKConfig;->setGlobalAppkey(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/taobao/common/SDKConfig;->setGlobalBaseUrl(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/taobao/common/SDKConfig;->setGlobalIEcodeProvider(Landroid/taobao/apirequest/IEcodeProvider;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/taobao/common/SDKConfig;->setGlobalTTID(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/taobao/common/SDKConfig;->setGlobalAppSecret(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/taobao/common/SDKConfig;->setGlobalSaveFileRootDir(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    .line 78
    invoke-static {p0}, Landroid/taobao/common/TaoSDK;->initCommonComponent(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method private static initCommonComponent(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    invoke-static {p0}, Landroid/taobao/apirequest/TaoApiRequest;->init(Landroid/content/Context;)V

    .line 88
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/taobao/apirequest/ApiRequestMgr;->init(Landroid/content/Context;)V

    .line 89
    invoke-static {}, Landroid/taobao/apirequest/SecurityManager;->getInstance()Landroid/taobao/apirequest/SecurityManager;

    move-result-object v0

    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0
    invoke-virtual {v0, p0}, Landroid/taobao/apirequest/SecurityManager;->init(Landroid/content/ContextWrapper;)V

    .line 90
    return-void
.end method
