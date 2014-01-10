.class Landroid/taobao/apirequest/DNSResolver$DNSPreResolver$DNSResolveWorker;
.super Ljava/lang/Object;
.source "DNSResolver.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DNSResolveWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;


# direct methods
.method constructor <init>(Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver$DNSResolveWorker;->this$0:Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver$DNSResolveWorker;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 427
    .local v0, host:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver$DNSResolveWorker;->this$0:Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;

    iget-object v2, v2, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->mHostQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #host:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 428
    .restart local v0       #host:Ljava/lang/String;
    iget-object v2, p0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver$DNSResolveWorker;->this$0:Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;

    iget-object v2, v2, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->mThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 429
    iget-object v2, p0, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver$DNSResolveWorker;->this$0:Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;

    iput-object v0, v2, Landroid/taobao/apirequest/DNSResolver$DNSPreResolver;->mBlockingHost:Ljava/lang/String;

    .line 431
    :cond_0
    if-nez v0, :cond_1

    .line 439
    const-string v2, "finished"

    return-object v2

    .line 434
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 435
    .local v1, startTime:Ljava/lang/Long;
    invoke-static {v0}, Landroid/taobao/apirequest/DNSResolver;->resolveIPFromHost(Ljava/lang/String;)Ljava/lang/String;

    .line 436
    const-string v2, "DNSPreResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": resolved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
