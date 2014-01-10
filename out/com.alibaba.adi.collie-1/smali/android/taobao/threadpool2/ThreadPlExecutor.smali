.class public Landroid/taobao/threadpool2/ThreadPlExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ThreadPlExecutor.java"


# instance fields
.field private listener:Landroid/taobao/threadpool2/ThreadPoolListener;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "keepAliveTime"
    .parameter "unit"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 18
    return-void
.end method


# virtual methods
.method public setEventListener(Landroid/taobao/threadpool2/ThreadPoolListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 21
    iput-object p1, p0, Landroid/taobao/threadpool2/ThreadPlExecutor;->listener:Landroid/taobao/threadpool2/ThreadPoolListener;

    .line 22
    return-void
.end method

.method protected terminated()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPlExecutor;->listener:Landroid/taobao/threadpool2/ThreadPoolListener;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPlExecutor;->listener:Landroid/taobao/threadpool2/ThreadPoolListener;

    invoke-interface {v0}, Landroid/taobao/threadpool2/ThreadPoolListener;->onTPShutDown()V

    .line 29
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V

    .line 30
    return-void
.end method
