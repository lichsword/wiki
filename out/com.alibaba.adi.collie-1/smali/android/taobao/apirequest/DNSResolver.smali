.class public Landroid/taobao/apirequest/DNSResolver;
.super Ljava/lang/Object;
.source "DNSResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;,
        Landroid/taobao/apirequest/DNSResolver$SetFutureTask;,
        Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;,
        Landroid/taobao/apirequest/DNSResolver$DNSResolveCallable;
    }
.end annotation


# static fields
.field public static CACHE_GET:Ljava/lang/reflect/Method; = null

.field public static DEFAULT_PRERESOLVE_HOST:[Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static DNS_CACHE_OBJ:Ljava/lang/Object; = null

.field public static final HTTP_MONITOR_NDSRES:Ljava/lang/String; = "httpMonitorDNSRes"

.field public static final RESOLVE_TIME_ERROR:J = -0x2L

.field public static final RESOLVE_TIME_NONE:J = 0x0L

.field public static final RESOLVE_TIME_TIMEOUT:J = -0x1L

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;


# instance fields
.field volatile m_retry:I

.field volatile m_startTime:J

.field m_threadTag:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 54
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    sput-object v3, Landroid/taobao/apirequest/DNSResolver;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 67
    :try_start_0
    const-string v3, "java.net.InetAddress"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 68
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "addressCache"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 69
    .local v0, cacheField:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Landroid/taobao/apirequest/DNSResolver;->DNS_CACHE_OBJ:Ljava/lang/Object;

    .line 71
    sget-object v3, Landroid/taobao/apirequest/DNSResolver;->DNS_CACHE_OBJ:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 72
    sget-object v3, Landroid/taobao/apirequest/DNSResolver;->DNS_CACHE_OBJ:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/taobao/apirequest/DNSResolver;->CACHE_GET:Ljava/lang/reflect/Method;

    .line 73
    sget-object v3, Landroid/taobao/apirequest/DNSResolver;->CACHE_GET:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v0           #cacheField:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    const/16 v3, 0x11

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "api.m.taobao.com"

    aput-object v4, v3, v9

    const-string v4, "m.taobao.com"

    aput-object v4, v3, v8

    const/4 v4, 0x2

    const-string v5, "s.m.taobao.com"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "gwl01.alicdn.com"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "img01.taobaocdn.com"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "img02.taobaocdn.com"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "img03.taobaocdn.com"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "img04.taobaocdn.com"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "img2012.i01.wimg.taobao.com"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "img2012.i02.wimg.taobao.com"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "img2012.i03.wimg.taobao.com"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "img2012.i04.wimg.taobao.com"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "q.i01.wimg.taobao.com"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "q.i02.wimg.taobao.com"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "q.i03.wimg.taobao.com"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "q.i04.wimg.taobao.com"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "h5.m.taobao.com"

    aput-object v5, v3, v4

    sput-object v3, Landroid/taobao/apirequest/DNSResolver;->DEFAULT_PRERESOLVE_HOST:[Ljava/lang/String;

    return-void

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "httpMonitorDNSRes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DNS_CACHE init error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/taobao/apirequest/DNSResolver;->m_startTime:J

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/taobao/apirequest/DNSResolver;->m_threadTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 389
    return-void
.end method

.method private DNSReport(Ljava/lang/String;IIILandroid/taobao/apirequest/DNSResolver$DNSReSolverResult;)V
    .locals 3
    .parameter "host"
    .parameter "wholeReferCount"
    .parameter "dnsReferCount"
    .parameter "retry"
    .parameter "result"

    .prologue
    .line 226
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-direct {v0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;-><init>()V

    .line 227
    .local v0, singleStat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;
    const/4 v1, 0x2

    iput v1, v0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSTimeout:I

    .line 228
    iget-wide v1, p5, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->resolveTime:J

    iput-wide v1, v0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSTime:J

    .line 229
    iput p2, v0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siWholeProcessReferCount:I

    .line 230
    iput p3, v0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSReferCount:I

    .line 231
    iput-object p1, v0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_host:Ljava/lang/String;

    .line 232
    iput p4, v0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsRetry:I

    .line 233
    sget v1, Landroid/taobao/common/SDKConstants;->CODE_DNSTHREAD_TIMEOUT:I

    iput v1, v0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    .line 234
    const-string v1, "dnsthreadpost"

    iput-object v1, v0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    .line 235
    iget v1, p5, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->threadTag:I

    iput v1, v0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSThreadTag:I

    .line 236
    iget v1, p5, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->isCached:I

    iput v1, v0, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSCached:I

    .line 239
    const-string v1, "httpMonitorResult"

    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->report()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {v0}, Landroid/taobao/apirequest/ApiConnector;->reportSingleStatToTBS(Landroid/taobao/apirequest/ApiConnector$SingleConnStat;)V

    .line 241
    return-void
.end method

.method static synthetic access$000(Landroid/taobao/apirequest/DNSResolver;Landroid/taobao/apirequest/DNSResolver$SetFutureTask;Ljava/lang/String;)Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/taobao/apirequest/DNSResolver;->doResolve(Landroid/taobao/apirequest/DNSResolver$SetFutureTask;Ljava/lang/String;)Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;

    move-result-object v0

    return-object v0
.end method

.method private doResolve(Landroid/taobao/apirequest/DNSResolver$SetFutureTask;Ljava/lang/String;)Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;
    .locals 15
    .parameter
    .parameter "host"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/taobao/apirequest/DNSResolver$SetFutureTask",
            "<",
            "Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, task:Landroid/taobao/apirequest/DNSResolver$SetFutureTask;,"Landroid/taobao/apirequest/DNSResolver$SetFutureTask<Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;>;"
    sget-object v1, Landroid/taobao/apirequest/ApiConnector;->whole_process_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 163
    .local v3, _wholeReferCnt:I
    sget-object v1, Landroid/taobao/apirequest/ApiConnector;->dns_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 164
    .local v4, _dnsCount:I
    iget-wide v8, p0, Landroid/taobao/apirequest/DNSResolver;->m_startTime:J

    .line 165
    .local v8, _startTime:J
    iget v5, p0, Landroid/taobao/apirequest/DNSResolver;->m_retry:I

    .line 167
    .local v5, _retry:I
    const/4 v7, 0x0

    .line 169
    .local v7, _dnsReferCount:Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v6, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;

    invoke-direct {v6, p0}, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;-><init>(Landroid/taobao/apirequest/DNSResolver;)V

    .line 170
    .local v6, _result:Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;
    iget-object v1, p0, Landroid/taobao/apirequest/DNSResolver;->m_threadTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iput v1, v6, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->threadTag:I

    .line 173
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    .line 174
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/taobao/apirequest/DNSResolver;->isDNSCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v8

    const-wide/32 v12, 0xf4240

    div-long/2addr v1, v12

    iput-wide v1, v6, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->resolveTime:J

    .line 176
    const/4 v1, 0x1

    iput v1, v6, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->isCached:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    if-eqz p1, :cond_0

    .line 197
    monitor-enter p1

    .line 198
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/taobao/apirequest/DNSResolver$SetFutureTask;->set(Ljava/lang/Object;)V

    .line 199
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :cond_0
    if-eqz v7, :cond_1

    .line 203
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 204
    const/4 v7, 0x0

    .line 207
    :cond_1
    iget-wide v1, v6, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->resolveTime:J

    sget-wide v12, Landroid/taobao/apirequest/ApiConnector;->DNS_TIMEOUT_THRESHOLD:J

    cmp-long v1, v1, v12

    if-lez v1, :cond_2

    move-object v1, p0

    move-object/from16 v2, p2

    .line 208
    invoke-direct/range {v1 .. v6}, Landroid/taobao/apirequest/DNSResolver;->DNSReport(Ljava/lang/String;IIILandroid/taobao/apirequest/DNSResolver$DNSReSolverResult;)V

    .line 213
    :cond_2
    :goto_0
    return-object v6

    .line 199
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 181
    :cond_3
    :try_start_3
    sget-object v7, Landroid/taobao/apirequest/ApiConnector;->dns_reference_count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 182
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    .line 184
    invoke-static/range {p2 .. p2}, Landroid/taobao/apirequest/DNSResolver;->resolveIPFromHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 187
    .local v11, ip:Ljava/lang/String;
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_6

    .line 188
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v8

    const-wide/32 v12, 0xf4240

    div-long/2addr v1, v12

    iput-wide v1, v6, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->resolveTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 196
    if-eqz p1, :cond_4

    .line 197
    monitor-enter p1

    .line 198
    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/taobao/apirequest/DNSResolver$SetFutureTask;->set(Ljava/lang/Object;)V

    .line 199
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 202
    :cond_4
    if-eqz v7, :cond_5

    .line 203
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 204
    const/4 v7, 0x0

    .line 207
    :cond_5
    iget-wide v1, v6, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->resolveTime:J

    sget-wide v12, Landroid/taobao/apirequest/ApiConnector;->DNS_TIMEOUT_THRESHOLD:J

    cmp-long v1, v1, v12

    if-lez v1, :cond_2

    move-object v1, p0

    move-object/from16 v2, p2

    .line 208
    invoke-direct/range {v1 .. v6}, Landroid/taobao/apirequest/DNSResolver;->DNSReport(Ljava/lang/String;IIILandroid/taobao/apirequest/DNSResolver$DNSReSolverResult;)V

    goto :goto_0

    .line 199
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 196
    :cond_6
    if-eqz p1, :cond_7

    .line 197
    monitor-enter p1

    .line 198
    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/taobao/apirequest/DNSResolver$SetFutureTask;->set(Ljava/lang/Object;)V

    .line 199
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 202
    :cond_7
    if-eqz v7, :cond_8

    .line 203
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 204
    const/4 v7, 0x0

    .line 207
    :cond_8
    iget-wide v1, v6, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->resolveTime:J

    sget-wide v12, Landroid/taobao/apirequest/ApiConnector;->DNS_TIMEOUT_THRESHOLD:J

    cmp-long v1, v1, v12

    if-lez v1, :cond_9

    move-object v1, p0

    move-object/from16 v2, p2

    .line 208
    invoke-direct/range {v1 .. v6}, Landroid/taobao/apirequest/DNSResolver;->DNSReport(Ljava/lang/String;IIILandroid/taobao/apirequest/DNSResolver$DNSReSolverResult;)V

    .line 212
    .end local v11           #ip:Ljava/lang/String;
    :cond_9
    :goto_1
    const-wide/16 v1, -0x2

    iput-wide v1, v6, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->resolveTime:J

    goto :goto_0

    .line 199
    .restart local v11       #ip:Ljava/lang/String;
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 192
    .end local v11           #ip:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 193
    .local v10, e:Ljava/lang/Exception;
    :try_start_8
    const-string v1, "httpMonitorDNSRes"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DNS resoved error:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 196
    if-eqz p1, :cond_a

    .line 197
    monitor-enter p1

    .line 198
    :try_start_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/taobao/apirequest/DNSResolver$SetFutureTask;->set(Ljava/lang/Object;)V

    .line 199
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 202
    :cond_a
    if-eqz v7, :cond_b

    .line 203
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 204
    const/4 v7, 0x0

    .line 207
    :cond_b
    iget-wide v1, v6, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->resolveTime:J

    sget-wide v12, Landroid/taobao/apirequest/ApiConnector;->DNS_TIMEOUT_THRESHOLD:J

    cmp-long v1, v1, v12

    if-lez v1, :cond_9

    move-object v1, p0

    move-object/from16 v2, p2

    .line 208
    invoke-direct/range {v1 .. v6}, Landroid/taobao/apirequest/DNSResolver;->DNSReport(Ljava/lang/String;IIILandroid/taobao/apirequest/DNSResolver$DNSReSolverResult;)V

    goto :goto_1

    .line 199
    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v1

    .line 196
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_4
    move-exception v1

    move-object v12, v1

    if-eqz p1, :cond_c

    .line 197
    monitor-enter p1

    .line 198
    :try_start_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/taobao/apirequest/DNSResolver$SetFutureTask;->set(Ljava/lang/Object;)V

    .line 199
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 202
    :cond_c
    if-eqz v7, :cond_d

    .line 203
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 204
    const/4 v7, 0x0

    .line 207
    :cond_d
    iget-wide v1, v6, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->resolveTime:J

    sget-wide v13, Landroid/taobao/apirequest/ApiConnector;->DNS_TIMEOUT_THRESHOLD:J

    cmp-long v1, v1, v13

    if-lez v1, :cond_e

    move-object v1, p0

    move-object/from16 v2, p2

    .line 208
    invoke-direct/range {v1 .. v6}, Landroid/taobao/apirequest/DNSResolver;->DNSReport(Ljava/lang/String;IIILandroid/taobao/apirequest/DNSResolver$DNSReSolverResult;)V

    :cond_e
    throw v12

    .line 199
    :catchall_5
    move-exception v1

    :try_start_c
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v1
.end method

.method public static preResolveDNS(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 348
    .local p0, hosts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 353
    .local v0, array:[Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 355
    invoke-static {v0}, Landroid/taobao/apirequest/DNSResolver;->preResolveDNS([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static preResolveDNS([Ljava/lang/String;)V
    .locals 6
    .parameter "hosts"

    .prologue
    .line 328
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const-class v1, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;

    monitor-enter v1

    .line 332
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-wide v4, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->LAST_UPDATETIME:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x3b9aca00

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 333
    const-string v0, "TaoApplication"

    const-string v2, "won\'t run"

    invoke-static {v0, v2}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    monitor-exit v1

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 336
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sput-wide v2, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->LAST_UPDATETIME:J

    .line 337
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    sget-object v0, Landroid/taobao/apirequest/DNSResolver;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;

    invoke-direct {v1, p0}, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;-><init>([Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static resolveIPFromHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "host"

    .prologue
    .line 273
    const-string v2, ""

    .line 276
    .local v2, result:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 277
    .local v1, ia:Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 288
    .end local v1           #ia:Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return-object v2

    .line 280
    :catch_0
    move-exception v3

    .line 281
    .local v3, ue:Ljava/net/UnknownHostException;
    const-string v2, ""

    .line 282
    const-string v4, "TaoSdk.ApiRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DNS unknow host exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v3           #ue:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    .line 285
    const-string v4, "TaoSdk.ApiRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DNS resovled exception!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static translateHost2ip(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 542
    .local p0, hosts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "DNSPreResolver"

    const-string v1, "preResolve"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {p0}, Landroid/taobao/apirequest/DNSResolver;->preResolveDNS(Ljava/util/List;)V

    .line 544
    return-void
.end method


# virtual methods
.method protected isDNSCached(Ljava/lang/String;)Z
    .locals 8
    .parameter "host"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 252
    sget-object v4, Landroid/taobao/apirequest/DNSResolver;->DNS_CACHE_OBJ:Ljava/lang/Object;

    if-eqz v4, :cond_0

    sget-object v4, Landroid/taobao/apirequest/DNSResolver;->CACHE_GET:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 264
    :cond_1
    :goto_0
    return v2

    .line 255
    :cond_2
    :try_start_0
    sget-object v4, Landroid/taobao/apirequest/DNSResolver;->CACHE_GET:Ljava/lang/reflect/Method;

    sget-object v5, Landroid/taobao/apirequest/DNSResolver;->DNS_CACHE_OBJ:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 256
    .local v1, res:Ljava/lang/Object;
    if-nez v1, :cond_1

    .end local v1           #res:Ljava/lang/Object;
    :goto_1
    move v2, v3

    .line 264
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "httpMonitorDNSRes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDNSCached() failed in Class DNSResMonitor!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public resolveHost(Ljava/lang/String;J)Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;
    .locals 8
    .parameter "host"
    .parameter "timeout"

    .prologue
    .line 99
    new-instance v3, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;

    invoke-direct {v3, p0}, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;-><init>(Landroid/taobao/apirequest/DNSResolver;)V

    .line 101
    .local v3, result:Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-gtz v5, :cond_0

    move-object v4, v3

    .line 131
    .end local v3           #result:Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;
    .local v4, result:Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 106
    .end local v4           #result:Ljava/lang/Object;
    .restart local v3       #result:Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/taobao/apirequest/DNSResolver;->m_startTime:J

    .line 107
    iget-object v5, p0, Landroid/taobao/apirequest/DNSResolver;->m_threadTag:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 112
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-ge v5, v6, :cond_1

    .line 113
    invoke-virtual {p0, p1}, Landroid/taobao/apirequest/DNSResolver;->isDNSCached(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    const/4 v5, 0x1

    iput v5, v3, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->isCached:I

    move-object v4, v3

    .line 115
    .restart local v4       #result:Ljava/lang/Object;
    goto :goto_0

    .line 119
    .end local v4           #result:Ljava/lang/Object;
    :cond_1
    sget-object v5, Landroid/taobao/apirequest/DNSResolver;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Landroid/taobao/apirequest/DNSResolver$DNSResolveCallable;

    invoke-direct {v6, p0, p1}, Landroid/taobao/apirequest/DNSResolver$DNSResolveCallable;-><init>(Landroid/taobao/apirequest/DNSResolver;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 122
    .local v2, ft:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;>;"
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p2, p3, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;

    move-object v3, v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v4, v3

    .line 131
    .restart local v4       #result:Ljava/lang/Object;
    goto :goto_0

    .line 123
    .end local v4           #result:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 124
    .local v1, e:Ljava/util/concurrent/TimeoutException;
    const-string v5, "httpMonitorDNSRes"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DNS resolved timeout :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-wide/16 v5, -0x1

    iput-wide v5, v3, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->resolveTime:J

    goto :goto_1

    .line 126
    .end local v1           #e:Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v1

    .line 127
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "httpMonitorDNSRes"

    const-string v6, "DNS resolved error!"

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-wide/16 v5, -0x2

    iput-wide v5, v3, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->resolveTime:J

    goto :goto_1
.end method
