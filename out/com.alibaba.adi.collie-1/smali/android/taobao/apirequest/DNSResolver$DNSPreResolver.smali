.class public Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;
.super Ljava/lang/Object;
.source "DNSResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/DNSResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DNSPreResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/apirequest/DNSResolver$DNSPreResolver$DNSResolveWorker;
    }
.end annotation


# static fields
.field public static final DNS_RESOLVE_WAITTIME:J = 0xc8L

.field public static LAST_UPDATETIME:J = 0x0L

.field public static final LOG_TAG:Ljava/lang/String; = "DNSPreResolver"

.field public static final UPDATE_MIN_INTERVAL_TIME:J = 0x3b9aca00L


# instance fields
.field protected mBlockingHost:Ljava/lang/String;

.field protected mHostQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 393
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->LAST_UPDATETIME:J

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 6
    .parameter "hosts"

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->mThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 399
    const-string v4, ""

    iput-object v4, p0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->mBlockingHost:Ljava/lang/String;

    .line 402
    if-nez p1, :cond_1

    .line 411
    :cond_0
    return-void

    .line 404
    :cond_1
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v4, p0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->mHostQueue:Ljava/util/concurrent/BlockingQueue;

    .line 406
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 407
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 408
    iget-object v4, p0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->mHostQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doPreResolve()V
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0}, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->startTask()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->doPreResolve(Ljava/util/concurrent/Future;)V

    .line 458
    return-void
.end method

.method protected doPreResolve(Ljava/util/concurrent/Future;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p1, ft:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 472
    .local v4, startTime:Ljava/lang/Long;
    new-instance v5, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;

    invoke-direct {v5}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;-><init>()V

    .line 474
    .local v5, stat:Landroid/taobao/apirequest/ApiConnector$SingleConnStat;
    const/4 v2, 0x0

    .line 475
    .local v2, futureNewTask:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->mThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 476
    const/4 v1, 0x0

    .line 477
    .local v1, finished:Z
    :cond_2
    if-nez v1, :cond_3

    .line 478
    iget-object v6, p0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->mHostQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    .line 480
    .local v3, queueSize:I
    const-wide/16 v6, 0xc8

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v6, v7, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    const/4 v1, 0x1

    .line 493
    :goto_1
    if-nez v1, :cond_2

    .line 494
    iget-object v6, p0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->mHostQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    if-ne v3, v6, :cond_2

    if-eqz v3, :cond_2

    .line 495
    iget-object v6, p0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->mThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 496
    invoke-virtual {p0}, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->startTask()Ljava/util/concurrent/Future;

    move-result-object v2

    .line 504
    .end local v3           #queueSize:I
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 505
    iget-object v6, p0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->mBlockingHost:Ljava/lang/String;

    iput-object v6, v5, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_host:Ljava/lang/String;

    .line 507
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 508
    if-eqz v2, :cond_4

    .line 509
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 517
    :cond_4
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    iput-wide v6, v5, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSTime:J

    .line 518
    const/4 v6, 0x3

    iput v6, v5, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siIsDNSTimeout:I

    .line 519
    iget-object v6, p0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->mThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iput v6, v5, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siDNSThreadTag:I

    .line 521
    const-string v6, "DNSPreResolver"

    invoke-virtual {v5}, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->report()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    sget v6, Landroid/taobao/apirequest/ApiConnector;->SAMPLE_FREQUENCY_NUM:I

    invoke-static {v6}, Landroid/taobao/apirequest/ApiConnector;->isSend(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 523
    invoke-static {v5}, Landroid/taobao/apirequest/ApiConnector;->reportSingleStatToTBS(Landroid/taobao/apirequest/ApiConnector$SingleConnStat;)V

    goto :goto_0

    .line 482
    .restart local v3       #queueSize:I
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    const-string v6, "DNSPreResolver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": timeout"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 484
    .end local v0           #e:Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 485
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "DNSPreResolver"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget v6, Landroid/taobao/common/SDKConstants;->CODE_DNSPRE_EXCEPTION:I

    iput v6, v5, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionErroCode:I

    .line 487
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/taobao/apirequest/ApiConnector$SingleConnStat;->m_siExceptionMessage:Ljava/lang/String;

    .line 488
    iget-object v6, p0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->mThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 489
    invoke-virtual {p0}, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->startTask()Ljava/util/concurrent/Future;

    move-result-object v2

    .line 490
    goto :goto_2

    .line 511
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #queueSize:I
    :catch_2
    move-exception v6

    goto :goto_3
.end method

.method public run()V
    .locals 2

    .prologue
    .line 448
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    const-string v0, "TaoApplication"

    const-string v1, "will run"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->doPreResolve()V

    .line 453
    return-void

    .line 449
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected startTask()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    sget-object v0, Landroid/taobao/apirequest/DNSResolver;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver$DNSResolveWorker;

    invoke-direct {v1, p0}, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver$DNSResolveWorker;-><init>(Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
