.class public Landroid/taobao/apirequest/ApiRequestQueue;
.super Ljava/lang/Object;
.source "ApiRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONCURRENT_SIZE:I = 0x4


# instance fields
.field mSize:I

.field m_ExecPool:Ljava/util/concurrent/ExecutorService;

.field m_ExecSinglePool:Ljava/util/concurrent/ExecutorService;

.field m_bConMode:Z

.field mbDestroy:Z

.field mbInited:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_ExecPool:Ljava/util/concurrent/ExecutorService;

    .line 18
    iput-object v1, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_ExecSinglePool:Ljava/util/concurrent/ExecutorService;

    .line 19
    iput-boolean v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->mbInited:Z

    .line 20
    iput-boolean v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->mbDestroy:Z

    .line 21
    const/4 v0, 0x4

    iput v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->mSize:I

    .line 28
    return-void
.end method

.method private declared-synchronized _InitExecPool()V
    .locals 7

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->mbInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 34
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->mbInited:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->mbDestroy:Z

    .line 38
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_ExecPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 39
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v1, p0, Landroid/taobao/apirequest/ApiRequestQueue;->mSize:I

    const/16 v2, 0x3e8

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_ExecPool:Ljava/util/concurrent/ExecutorService;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_bConMode:Z

    .line 46
    :cond_2
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_ExecSinglePool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const/16 v2, 0x3e8

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_ExecSinglePool:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method addRequest(Landroid/taobao/apirequest/ApiConnector;Landroid/taobao/apirequest/ApiProperty;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter "connector"
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/taobao/apirequest/ApiConnector;",
            "Landroid/taobao/apirequest/ApiProperty;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/taobao/apirequest/ApiResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/taobao/apirequest/ApiRequestQueue;->_InitExecPool()V

    .line 99
    iget-boolean v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_bConMode:Z

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "TaoSdk.ApiRequest"

    const-string v1, "addrequest use m_ExecPool"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_ExecPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;

    invoke-direct {v1, p0, p1, p2}, Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;-><init>(Landroid/taobao/apirequest/ApiRequestQueue;Landroid/taobao/apirequest/ApiConnector;Landroid/taobao/apirequest/ApiProperty;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const-string v0, "TaoSdk.ApiRequest"

    const-string v1, "addrequest use m_ExecSinglePool"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_ExecSinglePool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;

    invoke-direct {v1, p0, p1, p2}, Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;-><init>(Landroid/taobao/apirequest/ApiRequestQueue;Landroid/taobao/apirequest/ApiConnector;Landroid/taobao/apirequest/ApiProperty;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0
.end method

.method declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/taobao/apirequest/ApiRequestQueue;->mbDestroy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 140
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Landroid/taobao/apirequest/ApiRequestQueue;->mbDestroy:Z

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/taobao/apirequest/ApiRequestQueue;->mbInited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_ExecPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_ExecPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_ExecPool:Ljava/util/concurrent/ExecutorService;

    .line 148
    :cond_2
    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_ExecSinglePool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_ExecSinglePool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_ExecSinglePool:Ljava/util/concurrent/ExecutorService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 137
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setConcurrentConnLimit(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 128
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_ExecPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "TaoSdk.ApiRequest"

    const-string v1, "warning setConcurrentConnLimit pool already inited!"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    iput p1, p0, Landroid/taobao/apirequest/ApiRequestQueue;->mSize:I

    .line 131
    return-void
.end method

.method setConcurrentMode(Z)V
    .locals 1
    .parameter "bConMode"

    .prologue
    .line 114
    iget-boolean v0, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_bConMode:Z

    if-ne p1, v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iput-boolean p1, p0, Landroid/taobao/apirequest/ApiRequestQueue;->m_bConMode:Z

    goto :goto_0
.end method
