.class public Landroid/taobao/apirequest/ApiRequestMgr;
.super Ljava/lang/Object;
.source "ApiRequestMgr.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/apirequest/ApiRequestMgr$ApiStatics;,
        Landroid/taobao/apirequest/ApiRequestMgr$AsyncDAsyncDataLstProxy;,
        Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;,
        Landroid/taobao/apirequest/ApiRequestMgr$CacheSuccessedAsyncCallback;,
        Landroid/taobao/apirequest/ApiRequestMgr$CallbackObject;,
        Landroid/taobao/apirequest/ApiRequestMgr$SingletonHolder;
    }
.end annotation


# static fields
.field static MOBILE_DEFAULT_MAX_TIMEOUT:I = 0x0

.field static MOBILE_DEFAULT_START_TIMEOUT:I = 0x0

.field public static final PRIORITY_BG:I = 0x3

.field public static final PRIORITY_IMM:I = 0x1

.field public static final PRIORITY_NOR:I = 0x2


# instance fields
.field handler:Landroid/taobao/util/SafeHandler;

.field private mIsRegister:Z

.field mRequestQueue:Landroid/taobao/apirequest/ApiRequestQueue;

.field mSingleRequestQueue:Landroid/taobao/apirequest/ApiRequestQueue;

.field m_Context:Landroid/content/Context;

.field m_baseTime:I

.field m_curTimeout:I

.field m_maxTimeout:I

.field m_minTimeout:I

.field m_stepTimeout:I

.field private networkStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x1388

    sput v0, Landroid/taobao/apirequest/ApiRequestMgr;->MOBILE_DEFAULT_START_TIMEOUT:I

    .line 141
    const/16 v0, 0x2af8

    sput v0, Landroid/taobao/apirequest/ApiRequestMgr;->MOBILE_DEFAULT_MAX_TIMEOUT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mIsRegister:Z

    .line 45
    new-instance v0, Landroid/taobao/util/SafeHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/taobao/util/SafeHandler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->handler:Landroid/taobao/util/SafeHandler;

    .line 113
    new-instance v0, Landroid/taobao/apirequest/ApiRequestMgr$1;

    invoke-direct {v0, p0}, Landroid/taobao/apirequest/ApiRequestMgr$1;-><init>(Landroid/taobao/apirequest/ApiRequestMgr;)V

    iput-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->networkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    sget v0, Landroid/taobao/apirequest/ApiRequestMgr;->MOBILE_DEFAULT_START_TIMEOUT:I

    iput v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_minTimeout:I

    .line 143
    sget v0, Landroid/taobao/apirequest/ApiRequestMgr;->MOBILE_DEFAULT_START_TIMEOUT:I

    iput v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_curTimeout:I

    .line 144
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_stepTimeout:I

    .line 145
    sget v0, Landroid/taobao/apirequest/ApiRequestMgr;->MOBILE_DEFAULT_MAX_TIMEOUT:I

    iput v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_maxTimeout:I

    .line 147
    const/16 v0, 0x7530

    iput v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_baseTime:I

    .line 763
    new-instance v0, Landroid/taobao/apirequest/ApiRequestQueue;

    invoke-direct {v0}, Landroid/taobao/apirequest/ApiRequestQueue;-><init>()V

    iput-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mRequestQueue:Landroid/taobao/apirequest/ApiRequestQueue;

    .line 764
    new-instance v0, Landroid/taobao/apirequest/ApiRequestQueue;

    invoke-direct {v0}, Landroid/taobao/apirequest/ApiRequestQueue;-><init>()V

    iput-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mSingleRequestQueue:Landroid/taobao/apirequest/ApiRequestQueue;

    .line 60
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mSingleRequestQueue:Landroid/taobao/apirequest/ApiRequestQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/taobao/apirequest/ApiRequestQueue;->setConcurrentConnLimit(I)V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/taobao/apirequest/ApiRequestMgr$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/taobao/apirequest/ApiRequestMgr;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/taobao/apirequest/ApiRequestMgr;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr$SingletonHolder;->access$100()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v0

    return-object v0
.end method

.method public static getIsReplaceHost()Z
    .locals 1

    .prologue
    .line 827
    sget-boolean v0, Landroid/taobao/apirequest/ApiConnector;->IS_REPLACE_HOST:Z

    return v0
.end method

.method public static setIsKeepAlive(Z)V
    .locals 0
    .parameter "isKeepAlive"

    .prologue
    .line 814
    sput-boolean p0, Landroid/taobao/apirequest/ApiConnector;->IS_OPEN_KEEP_ALIVE:Z

    .line 815
    return-void
.end method

.method public static setIsReplaceHost(Z)V
    .locals 0
    .parameter "isReplace"

    .prologue
    .line 823
    sput-boolean p0, Landroid/taobao/apirequest/ApiConnector;->IS_REPLACE_HOST:Z

    .line 824
    return-void
.end method

.method public static setRedirectHandler(Landroid/taobao/apirequest/ConnRedirectHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 57
    invoke-static {p0}, Landroid/taobao/apirequest/ApiConnector;->setRedirectHandler(Landroid/taobao/apirequest/ConnRedirectHandler;)V

    .line 58
    return-void
.end method

.method public static setSampleFrequency(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 803
    sput p0, Landroid/taobao/apirequest/ApiConnector;->SAMPLE_FREQUENCY_NUM:I

    .line 804
    return-void
.end method

.method public static setStatusListener(Landroid/taobao/apirequest/ApiConnectorStatusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 760
    invoke-static {p0}, Landroid/taobao/apirequest/ApiConnector;->setStatusListener(Landroid/taobao/apirequest/ApiConnectorStatusListener;)V

    .line 761
    return-void
.end method


# virtual methods
.method public UpdateNetworkStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 75
    iget-object v2, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_Context:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 76
    const-string v2, "TaoSdk.ApiRequest"

    const-string v3, "ApiRequestMgr isn\'t init!"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v2, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_Context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 82
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 83
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_4

    .line 84
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_3

    .line 89
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 92
    :cond_1
    const-string v2, "TaoSdk.ApiRequest"

    const-string v3, "ApiRequestMgr 2G connector"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mRequestQueue:Landroid/taobao/apirequest/ApiRequestQueue;

    invoke-virtual {v2, v5}, Landroid/taobao/apirequest/ApiRequestQueue;->setConcurrentMode(Z)V

    goto :goto_0

    .line 97
    :cond_2
    const-string v2, "TaoSdk.ApiRequest"

    const-string v3, "ApiRequestMgr 3G connector"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mRequestQueue:Landroid/taobao/apirequest/ApiRequestQueue;

    invoke-virtual {v2, v4}, Landroid/taobao/apirequest/ApiRequestQueue;->setConcurrentMode(Z)V

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 102
    const-string v2, "TaoSdk.ApiRequest"

    const-string v3, "ApiRequestMgr WIFI connector"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mRequestQueue:Landroid/taobao/apirequest/ApiRequestQueue;

    invoke-virtual {v2, v4}, Landroid/taobao/apirequest/ApiRequestQueue;->setConcurrentMode(Z)V

    goto :goto_0

    .line 107
    :cond_4
    const-string v2, "TaoSdk.ApiRequest"

    const-string v3, "ApiRequestMgr no network"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mRequestQueue:Landroid/taobao/apirequest/ApiRequestQueue;

    invoke-virtual {v2, v5}, Landroid/taobao/apirequest/ApiRequestQueue;->setConcurrentMode(Z)V

    goto :goto_0
.end method

.method public asyncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/AsyncDataListener;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiID;
    .locals 3
    .parameter "ch"
    .parameter "callback"
    .parameter "property"

    .prologue
    .line 597
    if-nez p3, :cond_0

    .line 598
    new-instance p3, Landroid/taobao/apirequest/ApiProperty;

    .end local p3
    invoke-direct {p3}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    .line 612
    .restart local p3
    :cond_0
    new-instance v0, Landroid/taobao/apirequest/ApiConnector;

    invoke-interface {p1}, Landroid/taobao/apirequest/ConnectorHelper;->getApiUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p3}, Landroid/taobao/apirequest/ApiConnector;-><init>(Ljava/lang/String;Landroid/taobao/apirequest/ApiProperty;)V

    .line 613
    .local v0, conn:Landroid/taobao/apirequest/ApiConnector;
    new-instance v2, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;

    invoke-direct {v2, p0, p2, p1, p3}, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;-><init>(Landroid/taobao/apirequest/ApiRequestMgr;Landroid/taobao/apirequest/AsyncDataListener;Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)V

    invoke-virtual {v0, v2}, Landroid/taobao/apirequest/ApiConnector;->setDataListener(Landroid/taobao/apirequest/AsyncDataListener;)V

    .line 614
    iget-object v2, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mRequestQueue:Landroid/taobao/apirequest/ApiRequestQueue;

    invoke-virtual {v2, v0, p3}, Landroid/taobao/apirequest/ApiRequestQueue;->addRequest(Landroid/taobao/apirequest/ApiConnector;Landroid/taobao/apirequest/ApiProperty;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 615
    .local v1, ft:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/taobao/apirequest/ApiResult;>;"
    new-instance v2, Landroid/taobao/apirequest/ApiID;

    invoke-direct {v2, v1, v0}, Landroid/taobao/apirequest/ApiID;-><init>(Ljava/util/concurrent/Future;Landroid/taobao/apirequest/ApiConnector;)V

    return-object v2
.end method

.method public asyncConnect(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;)Landroid/taobao/apirequest/ApiID;
    .locals 1
    .parameter "requestUrl"
    .parameter "callback"

    .prologue
    .line 529
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->asyncConnect(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public asyncConnect(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiID;
    .locals 3
    .parameter "requestUrl"
    .parameter "callback"
    .parameter "property"

    .prologue
    .line 457
    if-nez p3, :cond_0

    .line 458
    new-instance p3, Landroid/taobao/apirequest/ApiProperty;

    .end local p3
    invoke-direct {p3}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    .line 472
    .restart local p3
    :cond_0
    new-instance v0, Landroid/taobao/apirequest/ApiConnector;

    invoke-direct {v0, p1, p3}, Landroid/taobao/apirequest/ApiConnector;-><init>(Ljava/lang/String;Landroid/taobao/apirequest/ApiProperty;)V

    .line 473
    .local v0, conn:Landroid/taobao/apirequest/ApiConnector;
    invoke-virtual {v0, p2}, Landroid/taobao/apirequest/ApiConnector;->setDataListener(Landroid/taobao/apirequest/AsyncDataListener;)V

    .line 474
    iget-object v2, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mRequestQueue:Landroid/taobao/apirequest/ApiRequestQueue;

    invoke-virtual {v2, v0, p3}, Landroid/taobao/apirequest/ApiRequestQueue;->addRequest(Landroid/taobao/apirequest/ApiConnector;Landroid/taobao/apirequest/ApiProperty;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 475
    .local v1, ft:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/taobao/apirequest/ApiResult;>;"
    new-instance v2, Landroid/taobao/apirequest/ApiID;

    invoke-direct {v2, v1, v0}, Landroid/taobao/apirequest/ApiID;-><init>(Ljava/util/concurrent/Future;Landroid/taobao/apirequest/ApiConnector;)V

    return-object v2
.end method

.method public cancelConnect(Landroid/taobao/apirequest/ApiID;)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 742
    iget-object v0, p1, Landroid/taobao/apirequest/ApiID;->m_conn:Landroid/taobao/apirequest/ApiConnector;

    .line 743
    .local v0, conn:Landroid/taobao/apirequest/ApiConnector;
    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiConnector;->cancel()V

    .line 746
    :cond_0
    iget-object v1, p1, Landroid/taobao/apirequest/ApiID;->m_future:Ljava/util/concurrent/Future;

    .line 747
    .local v1, ft:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/taobao/apirequest/ApiResult;>;"
    if-eqz v1, :cond_1

    .line 748
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v2

    .line 749
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 191
    const-string v1, "TaoSdk.ApiRequest"

    const-string v2, "ApiRequestMgr destroy"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :try_start_0
    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_Context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mIsRegister:Z

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_Context:Landroid/content/Context;

    iget-object v2, p0, Landroid/taobao/apirequest/ApiRequestMgr;->networkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mIsRegister:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public downloadFile(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;Ljava/lang/String;)Landroid/taobao/apirequest/ApiID;
    .locals 1
    .parameter "requestUrl"
    .parameter "callback"
    .parameter "storagePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 675
    const/high16 v0, 0x1f40

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->downloadFile(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;Ljava/lang/String;I)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public downloadFile(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;Ljava/lang/String;I)Landroid/taobao/apirequest/ApiID;
    .locals 4
    .parameter "requestUrl"
    .parameter "callback"
    .parameter "storagePath"
    .parameter "downMaxSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 695
    new-instance v1, Landroid/taobao/apirequest/ApiProperty;

    invoke-direct {v1}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    .line 696
    .local v1, prop:Landroid/taobao/apirequest/ApiProperty;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/taobao/apirequest/ApiProperty;->setPriority(I)V

    .line 697
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/taobao/apirequest/ApiProperty;->m_startPos:J

    .line 699
    iput p4, v1, Landroid/taobao/apirequest/ApiProperty;->m_downMaxSize:I

    .line 700
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v2, v1, Landroid/taobao/apirequest/ApiProperty;->m_outStream:Ljava/io/OutputStream;

    .line 701
    const/16 v2, 0x14

    iput v2, v1, Landroid/taobao/apirequest/ApiProperty;->m_ProgressStep:I

    .line 702
    new-instance v2, Landroid/taobao/apirequest/ApiRequestMgr$AsyncDAsyncDataLstProxy;

    iget-object v3, v1, Landroid/taobao/apirequest/ApiProperty;->m_outStream:Ljava/io/OutputStream;

    invoke-direct {v2, p0, p2, v3}, Landroid/taobao/apirequest/ApiRequestMgr$AsyncDAsyncDataLstProxy;-><init>(Landroid/taobao/apirequest/ApiRequestMgr;Landroid/taobao/apirequest/AsyncDataListener;Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v2, v1}, Landroid/taobao/apirequest/ApiRequestMgr;->asyncConnect(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiID;

    move-result-object v2

    return-object v2
.end method

.method public downloadImage(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;)Landroid/taobao/apirequest/ApiID;
    .locals 2
    .parameter "requestUrl"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 708
    new-instance v0, Landroid/taobao/apirequest/ApiProperty;

    invoke-direct {v0}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    .line 709
    .local v0, prop:Landroid/taobao/apirequest/ApiProperty;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/taobao/apirequest/ApiProperty;->setPriority(I)V

    .line 710
    const/high16 v1, 0x10

    iput v1, v0, Landroid/taobao/apirequest/ApiProperty;->m_downMaxSize:I

    .line 711
    const/16 v1, 0xa

    iput v1, v0, Landroid/taobao/apirequest/ApiProperty;->m_ProgressStep:I

    .line 712
    invoke-virtual {p0, p1, p2, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->asyncConnect(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiID;

    move-result-object v1

    return-object v1
.end method

.method getTimeout()I
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_curTimeout:I

    iget v1, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_baseTime:I

    add-int/2addr v0, v1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    .line 511
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/taobao/apirequest/ApiRequestMgr$CallbackObject;

    .line 512
    .local v0, object:Landroid/taobao/apirequest/ApiRequestMgr$CallbackObject;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/taobao/apirequest/ApiRequestMgr$CallbackObject;->callback:Landroid/taobao/apirequest/AsyncDataListener;

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, v0, Landroid/taobao/apirequest/ApiRequestMgr$CallbackObject;->callback:Landroid/taobao/apirequest/AsyncDataListener;

    iget-object v2, v0, Landroid/taobao/apirequest/ApiRequestMgr$CallbackObject;->result:Landroid/taobao/apirequest/ApiResult;

    invoke-interface {v1, v2}, Landroid/taobao/apirequest/AsyncDataListener;->onDataArrive(Landroid/taobao/apirequest/ApiResult;)V

    .line 516
    :cond_0
    return v3
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 170
    const-string v2, "TaoSdk.ApiRequest"

    const-string v3, "ApiRequestMgr init"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_Context:Landroid/content/Context;

    .line 175
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Landroid/taobao/apirequest/ApiRequestMgr;->networkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mIsRegister:Z

    .line 179
    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiRequestMgr;->UpdateNetworkStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 65
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 66
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 67
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 70
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method onConnectSucc(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 154
    sget v0, Landroid/taobao/apirequest/ApiRequestMgr;->MOBILE_DEFAULT_START_TIMEOUT:I

    iput v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_curTimeout:I

    .line 155
    const-string v0, "TaoSdk.ApiRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!connect time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method onTimeout()V
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_curTimeout:I

    iget v1, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_maxTimeout:I

    if-ge v0, v1, :cond_0

    .line 160
    iget v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_curTimeout:I

    iget v1, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_stepTimeout:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_curTimeout:I

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iget v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_maxTimeout:I

    iput v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_curTimeout:I

    goto :goto_0
.end method

.method public setConcurrentConnLimit(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 773
    const-string v0, "TaoSdk.ApiRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConcurrentConnLimit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mRequestQueue:Landroid/taobao/apirequest/ApiRequestQueue;

    invoke-virtual {v0, p1}, Landroid/taobao/apirequest/ApiRequestQueue;->setConcurrentConnLimit(I)V

    .line 775
    return-void
.end method

.method public setTimeout(III)V
    .locals 0
    .parameter "min"
    .parameter "step"
    .parameter "max"

    .prologue
    .line 134
    iput p1, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_minTimeout:I

    iput p1, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_curTimeout:I

    .line 135
    iput p2, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_stepTimeout:I

    .line 136
    iput p3, p0, Landroid/taobao/apirequest/ApiRequestMgr;->m_maxTimeout:I

    .line 138
    return-void
.end method

.method public syncConnect(Ljava/lang/String;)Landroid/taobao/apirequest/ApiResult;
    .locals 1
    .parameter "requestUrl"

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Ljava/lang/String;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiResult;

    move-result-object v0

    return-object v0
.end method

.method public syncConnect(Ljava/lang/String;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiResult;
    .locals 10
    .parameter "requestUrl"
    .parameter "property"

    .prologue
    const/16 v9, -0x3e8

    const/4 v8, 0x0

    .line 216
    const-string v5, "TaoSdk.ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncConnect url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Landroid/taobao/apirequest/ApiConnector;

    invoke-direct {v0, p1, p2}, Landroid/taobao/apirequest/ApiConnector;-><init>(Ljava/lang/String;Landroid/taobao/apirequest/ApiProperty;)V

    .line 220
    .local v0, conn:Landroid/taobao/apirequest/ApiConnector;
    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiConnector;->getApiProperty()Landroid/taobao/apirequest/ApiProperty;

    move-result-object v3

    .line 221
    .local v3, prop:Landroid/taobao/apirequest/ApiProperty;
    invoke-virtual {v3}, Landroid/taobao/apirequest/ApiProperty;->getPriority()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 266
    invoke-virtual {v3}, Landroid/taobao/apirequest/ApiProperty;->getPriority()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 267
    iget-object v5, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mRequestQueue:Landroid/taobao/apirequest/ApiRequestQueue;

    invoke-virtual {v5, v0, p2}, Landroid/taobao/apirequest/ApiRequestQueue;->addRequest(Landroid/taobao/apirequest/ApiConnector;Landroid/taobao/apirequest/ApiProperty;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 270
    .local v2, ft:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/taobao/apirequest/ApiResult;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/apirequest/ApiResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_5

    .line 285
    .end local v2           #ft:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/taobao/apirequest/ApiResult;>;"
    :goto_0
    return-object v4

    .line 223
    :pswitch_0
    iget-object v5, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mSingleRequestQueue:Landroid/taobao/apirequest/ApiRequestQueue;

    invoke-virtual {v5, v0, p2}, Landroid/taobao/apirequest/ApiRequestQueue;->addRequest(Landroid/taobao/apirequest/ApiConnector;Landroid/taobao/apirequest/ApiProperty;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 224
    .restart local v2       #ft:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/taobao/apirequest/ApiResult;>;"
    if-nez v2, :cond_0

    .line 225
    new-instance v4, Landroid/taobao/apirequest/ApiResult;

    const/16 v5, -0x7d0

    const-string v6, "mSingleRequestQueue return null"

    invoke-direct {v4, v5, v6, v8}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    goto :goto_0

    .line 229
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/apirequest/ApiResult;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    .local v4, response:Landroid/taobao/apirequest/ApiResult;
    goto :goto_0

    .line 232
    .end local v4           #response:Landroid/taobao/apirequest/ApiResult;
    :catch_0
    move-exception v1

    .line 233
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 235
    new-instance v4, Landroid/taobao/apirequest/ApiResult;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5, v8}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    goto :goto_0

    .line 237
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 238
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 240
    new-instance v4, Landroid/taobao/apirequest/ApiResult;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5, v8}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    goto :goto_0

    .line 245
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    .end local v2           #ft:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/taobao/apirequest/ApiResult;>;"
    :pswitch_1
    iget-object v5, p0, Landroid/taobao/apirequest/ApiRequestMgr;->mRequestQueue:Landroid/taobao/apirequest/ApiRequestQueue;

    invoke-virtual {v5, v0, p2}, Landroid/taobao/apirequest/ApiRequestQueue;->addRequest(Landroid/taobao/apirequest/ApiConnector;Landroid/taobao/apirequest/ApiProperty;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 248
    .restart local v2       #ft:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/taobao/apirequest/ApiResult;>;"
    :try_start_2
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/apirequest/ApiResult;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_3

    .line 249
    .restart local v4       #response:Landroid/taobao/apirequest/ApiResult;
    goto :goto_0

    .line 251
    .end local v4           #response:Landroid/taobao/apirequest/ApiResult;
    :catch_2
    move-exception v1

    .line 252
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 254
    new-instance v4, Landroid/taobao/apirequest/ApiResult;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5, v8}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    goto :goto_0

    .line 256
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v1

    .line 257
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 259
    new-instance v4, Landroid/taobao/apirequest/ApiResult;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5, v8}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    goto :goto_0

    .line 264
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    .end local v2           #ft:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/taobao/apirequest/ApiResult;>;"
    :pswitch_2
    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiConnector;->syncConnect()Landroid/taobao/apirequest/ApiResult;

    move-result-object v4

    goto :goto_0

    .line 273
    .restart local v2       #ft:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/taobao/apirequest/ApiResult;>;"
    :catch_4
    move-exception v1

    .line 274
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 276
    new-instance v4, Landroid/taobao/apirequest/ApiResult;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5, v8}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    goto :goto_0

    .line 278
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_5
    move-exception v1

    .line 279
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 281
    new-instance v4, Landroid/taobao/apirequest/ApiResult;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5, v8}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    goto :goto_0

    .line 285
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    .end local v2           #ft:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/taobao/apirequest/ApiResult;>;"
    :cond_1
    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiConnector;->syncConnect()Landroid/taobao/apirequest/ApiResult;

    move-result-object v4

    goto/16 :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;
    .locals 5
    .parameter "ch"
    .parameter "property"

    .prologue
    .line 309
    const-string v3, "TaoSdk.ApiRequest"

    const-string v4, " syncConnect(ConnectorHelper ch"

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    if-nez p2, :cond_0

    .line 311
    new-instance p2, Landroid/taobao/apirequest/ApiProperty;

    .end local p2
    invoke-direct {p2}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    .line 312
    .restart local p2
    :cond_0
    invoke-interface {p1}, Landroid/taobao/apirequest/ConnectorHelper;->getApiUrl()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Ljava/lang/String;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiResult;

    move-result-object v1

    .line 315
    .local v1, res:Landroid/taobao/apirequest/ApiResult;
    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    .line 317
    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-interface {p1, v3}, Landroid/taobao/apirequest/ConnectorHelper;->syncPaser([B)Ljava/lang/Object;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    .line 320
    :cond_1
    iget-object v3, v1, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    invoke-interface {p1, v3}, Landroid/taobao/apirequest/ConnectorHelper;->syncPaser([B)Ljava/lang/Object;

    move-result-object v0

    .line 323
    .local v0, obj:Ljava/lang/Object;
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    goto :goto_0
.end method

.method public syncConnect(Landroid/taobao/apirequest/MTOPConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;
    .locals 11
    .parameter "ch"
    .parameter "property"

    .prologue
    const/4 v10, 0x0

    .line 338
    const-string v0, "TaoSdk.ApiRequest"

    const-string v1, " syncConnect(MTOPConnectorHelper ch"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    if-nez p2, :cond_0

    .line 340
    new-instance p2, Landroid/taobao/apirequest/ApiProperty;

    .end local p2
    invoke-direct {p2}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    .line 341
    .restart local p2
    :cond_0
    invoke-virtual {p1}, Landroid/taobao/apirequest/MTOPConnectorHelper;->getApiUrl()Ljava/lang/String;

    move-result-object v9

    .line 343
    .local v9, url:Ljava/lang/String;
    invoke-static {}, Landroid/taobao/apirequest/ApiCache;->getInstance()Landroid/taobao/apirequest/ApiCache;

    move-result-object v0

    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCachePolicy()I

    move-result v3

    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCacheStoragePolicy()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/taobao/apirequest/ApiCache;->getCacheData(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object v6

    .line 345
    .local v6, cacheData:Ljava/lang/Object;
    if-eqz v6, :cond_1

    .line 346
    const-string v0, "ApiCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get ApiCache successd! cacheKey = \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v6           #cacheData:Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 354
    .restart local v6       #cacheData:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, v9, p2}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Ljava/lang/String;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiResult;

    move-result-object v8

    .line 356
    .local v8, res:Landroid/taobao/apirequest/ApiResult;
    invoke-virtual {v8}, Landroid/taobao/apirequest/ApiResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 357
    iput-object v10, v8, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    move-object v6, v8

    .line 359
    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, v8, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    invoke-virtual {p1, v0}, Landroid/taobao/apirequest/MTOPConnectorHelper;->syncPaser([B)Ljava/lang/Object;

    move-result-object v2

    .line 365
    .local v2, obj:Ljava/lang/Object;
    if-eqz v2, :cond_3

    instance-of v0, v2, Landroid/taobao/apirequest/ApiResult;

    if-eqz v0, :cond_3

    move-object v7, v2

    .line 366
    check-cast v7, Landroid/taobao/apirequest/ApiResult;

    .line 367
    .local v7, o:Landroid/taobao/apirequest/ApiResult;
    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Landroid/taobao/apirequest/ApiResult;->isApiSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    iget v0, v8, Landroid/taobao/apirequest/ApiResult;->expireTime:I

    iget v1, p2, Landroid/taobao/apirequest/ApiProperty;->expireTime:I

    if-ge v0, v1, :cond_4

    iget v5, v8, Landroid/taobao/apirequest/ApiResult;->expireTime:I

    .line 370
    .local v5, expireTime:I
    :goto_1
    invoke-static {}, Landroid/taobao/apirequest/ApiCache;->getInstance()Landroid/taobao/apirequest/ApiCache;

    move-result-object v0

    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCachePolicy()I

    move-result v3

    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCacheStoragePolicy()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Landroid/taobao/apirequest/ApiCache;->setCacheData(Ljava/lang/String;Ljava/lang/Object;III)V

    .line 375
    .end local v5           #expireTime:I
    .end local v7           #o:Landroid/taobao/apirequest/ApiResult;
    :cond_3
    iput-object v10, v8, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    move-object v6, v2

    .line 377
    goto :goto_0

    .line 369
    .restart local v7       #o:Landroid/taobao/apirequest/ApiResult;
    :cond_4
    iget v5, p2, Landroid/taobao/apirequest/ApiProperty;->expireTime:I

    goto :goto_1
.end method

.method public syncConnect(Landroid/taobao/apirequest/MTOPListConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;
    .locals 12
    .parameter "ch"
    .parameter "property"

    .prologue
    const/4 v11, 0x0

    .line 392
    const-string v0, "TaoSdk.ApiRequest"

    const-string v1, " syncConnect(MTOPListConnectorHelper ch"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    if-nez p2, :cond_0

    .line 394
    new-instance p2, Landroid/taobao/apirequest/ApiProperty;

    .end local p2
    invoke-direct {p2}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    .line 395
    .restart local p2
    :cond_0
    invoke-virtual {p1}, Landroid/taobao/apirequest/MTOPListConnectorHelper;->getApiUrl()Ljava/lang/String;

    move-result-object v10

    .line 397
    .local v10, url:Ljava/lang/String;
    invoke-static {}, Landroid/taobao/apirequest/ApiCache;->getInstance()Landroid/taobao/apirequest/ApiCache;

    move-result-object v0

    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCachePolicy()I

    move-result v2

    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCacheStoragePolicy()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/taobao/apirequest/ApiCache;->getCacheData(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object v6

    .line 399
    .local v6, cacheData:Ljava/lang/Object;
    if-eqz v6, :cond_1

    .line 400
    const-string v0, "ApiCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get ApiCache successd! cacheKey = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    check-cast v6, [B

    .end local v6           #cacheData:Ljava/lang/Object;
    check-cast v6, [B

    invoke-virtual {p1, v6}, Landroid/taobao/apirequest/MTOPListConnectorHelper;->syncPaser([B)Ljava/lang/Object;

    move-result-object v7

    .line 441
    .local v7, obj:Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 412
    .end local v7           #obj:Ljava/lang/Object;
    .restart local v6       #cacheData:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, v10, p2}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Ljava/lang/String;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiResult;

    move-result-object v9

    .line 414
    .local v9, res:Landroid/taobao/apirequest/ApiResult;
    invoke-virtual {v9}, Landroid/taobao/apirequest/ApiResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 416
    iget-object v0, v9, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    invoke-virtual {p1, v0}, Landroid/taobao/apirequest/MTOPListConnectorHelper;->syncPaser([B)Ljava/lang/Object;

    move-result-object v7

    .line 417
    .restart local v7       #obj:Ljava/lang/Object;
    iput-object v11, v9, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    goto :goto_0

    .line 421
    .end local v7           #obj:Ljava/lang/Object;
    :cond_2
    iget-object v0, v9, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    invoke-virtual {p1, v0}, Landroid/taobao/apirequest/MTOPListConnectorHelper;->syncPaser([B)Ljava/lang/Object;

    move-result-object v7

    .restart local v7       #obj:Ljava/lang/Object;
    move-object v8, v7

    .line 424
    check-cast v8, Landroid/taobao/common/dataobject/PageDataObject;

    .line 428
    .local v8, pageObj:Landroid/taobao/common/dataobject/PageDataObject;
    if-eqz v8, :cond_3

    iget-object v0, v8, Landroid/taobao/common/dataobject/PageDataObject;->errorCode:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, v8, Landroid/taobao/common/dataobject/PageDataObject;->result:Landroid/taobao/apirequest/ApiResult;

    iget-object v1, v9, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    iput-object v1, v0, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    .line 432
    iget v0, v9, Landroid/taobao/apirequest/ApiResult;->expireTime:I

    iget v1, p2, Landroid/taobao/apirequest/ApiProperty;->expireTime:I

    if-ge v0, v1, :cond_4

    iget v5, v9, Landroid/taobao/apirequest/ApiResult;->expireTime:I

    .line 433
    .local v5, expireTime:I
    :goto_1
    invoke-static {}, Landroid/taobao/apirequest/ApiCache;->getInstance()Landroid/taobao/apirequest/ApiCache;

    move-result-object v0

    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Landroid/taobao/common/dataobject/PageDataObject;->result:Landroid/taobao/apirequest/ApiResult;

    iget-object v2, v2, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCachePolicy()I

    move-result v3

    invoke-virtual {p2}, Landroid/taobao/apirequest/ApiProperty;->getCacheStoragePolicy()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Landroid/taobao/apirequest/ApiCache;->setCacheData(Ljava/lang/String;Ljava/lang/Object;III)V

    .line 440
    .end local v5           #expireTime:I
    :cond_3
    iput-object v11, v9, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    goto :goto_0

    .line 432
    :cond_4
    iget v5, p2, Landroid/taobao/apirequest/ApiProperty;->expireTime:I

    goto :goto_1
.end method

.method public uploadFile(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;Ljava/lang/String;)Landroid/taobao/apirequest/ApiID;
    .locals 1
    .parameter "requestUrl"
    .parameter "callback"
    .parameter "storagePath"

    .prologue
    .line 731
    const/4 v0, 0x0

    return-object v0
.end method
