.class public Landroid/taobao/threadpool2/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/taobao/threadpool2/ThreadPoolListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/threadpool2/ThreadPool$EmptyTask;
    }
.end annotation


# static fields
.field private static final HIGH_COREPOOLSIZE:I = 0x5

.field private static final HIGH_MAXPOOLSIZE:I = 0x1e

.field private static final LOW_COREPOOLSIZE:I = 0x1

.field private static final LOW_MAXPOOLSIZE:I = 0x3

.field private static final THREADPOOL_DESTORYED:I = 0x2

.field private static final THREADPOOL_DESTORYING:I = 0x1

.field private static final THREADPOOL_RUNNING:I

.field private static single_TP:Landroid/taobao/threadpool2/ThreadPool;


# instance fields
.field private QUEUEPOOLSIZE:I

.field private highPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

.field private highTaskHolderStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/taobao/threadpool2/TaskHolder;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Landroid/taobao/threadpool2/ThreadPoolListener;

.field private lowPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

.field private lowTaskHolderStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/taobao/threadpool2/TaskHolder;",
            ">;"
        }
    .end annotation
.end field

.field private needWorking:Z

.field private running:Z

.field private state:I

.field private threadPoolMgr:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 46
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/16 v3, 0x1e

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/taobao/threadpool2/ThreadPool;-><init>(IIII)V

    .line 47
    return-void
.end method

.method protected constructor <init>(IIII)V
    .locals 8
    .parameter "low_coreSize"
    .parameter "low_maxSize"
    .parameter "high_coreSize"
    .parameter "high_maxSize"

    .prologue
    const-wide/16 v3, 0x4e20

    const/4 v7, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v7, p0, Landroid/taobao/threadpool2/ThreadPool;->QUEUEPOOLSIZE:I

    .line 52
    new-instance v0, Landroid/taobao/threadpool2/ThreadPlExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, p0, Landroid/taobao/threadpool2/ThreadPool;->QUEUEPOOLSIZE:I

    invoke-direct {v6, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/taobao/threadpool2/ThreadPlExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->lowPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

    .line 55
    new-instance v0, Landroid/taobao/threadpool2/ThreadPlExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, p0, Landroid/taobao/threadpool2/ThreadPool;->QUEUEPOOLSIZE:I

    invoke-direct {v6, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move v1, p3

    move v2, p4

    invoke-direct/range {v0 .. v6}, Landroid/taobao/threadpool2/ThreadPlExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->highPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

    .line 57
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    .line 58
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->lowTaskHolderStack:Ljava/util/Stack;

    .line 61
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->highPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->highPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

    invoke-virtual {v0, p0}, Landroid/taobao/threadpool2/ThreadPlExecutor;->setEventListener(Landroid/taobao/threadpool2/ThreadPoolListener;)V

    .line 63
    :cond_0
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->lowPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->lowPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

    invoke-virtual {v0, p0}, Landroid/taobao/threadpool2/ThreadPlExecutor;->setEventListener(Landroid/taobao/threadpool2/ThreadPoolListener;)V

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "TBThreadPoolMgr"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->threadPoolMgr:Ljava/lang/Thread;

    .line 68
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->threadPoolMgr:Ljava/lang/Thread;

    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 69
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->threadPoolMgr:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/taobao/threadpool2/ThreadPool;->state:I

    .line 71
    iput-boolean v7, p0, Landroid/taobao/threadpool2/ThreadPool;->running:Z

    .line 72
    iput-boolean v7, p0, Landroid/taobao/threadpool2/ThreadPool;->needWorking:Z

    .line 74
    const-string v0, "threadpool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static destoryNow()V
    .locals 2

    .prologue
    .line 222
    sget-object v0, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "Threadpool"

    const-string v1, "Threadpool_destroy_now"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v0, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    const/4 v1, 0x2

    iput v1, v0, Landroid/taobao/threadpool2/ThreadPool;->state:I

    .line 225
    sget-object v0, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    iget-object v1, v0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    monitor-enter v1

    .line 226
    :try_start_0
    sget-object v0, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    iget-object v0, v0, Landroid/taobao/threadpool2/ThreadPool;->lowTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 227
    sget-object v0, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    iget-object v0, v0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 228
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    sget-object v0, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/taobao/threadpool2/ThreadPool;->running:Z

    .line 231
    sget-object v0, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    invoke-virtual {v0}, Landroid/taobao/threadpool2/ThreadPool;->wakeup()V

    .line 232
    sget-object v0, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    iget-object v0, v0, Landroid/taobao/threadpool2/ThreadPool;->highPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

    invoke-virtual {v0}, Landroid/taobao/threadpool2/ThreadPlExecutor;->shutdownNow()Ljava/util/List;

    .line 233
    sget-object v0, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    iget-object v0, v0, Landroid/taobao/threadpool2/ThreadPool;->lowPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

    invoke-virtual {v0}, Landroid/taobao/threadpool2/ThreadPlExecutor;->shutdownNow()Ljava/util/List;

    .line 234
    const/4 v0, 0x0

    sput-object v0, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    .line 236
    :cond_0
    return-void

    .line 228
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static destroy()V
    .locals 6

    .prologue
    .line 193
    sget-object v3, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    if-eqz v3, :cond_2

    .line 194
    const-string v3, "Threadpool"

    const-string v4, "Threadpool_destroy"

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v3, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    const/4 v4, 0x1

    iput v4, v3, Landroid/taobao/threadpool2/ThreadPool;->state:I

    .line 196
    sget-object v3, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    invoke-virtual {v3}, Landroid/taobao/threadpool2/ThreadPool;->wakeup()V

    .line 197
    sget-object v3, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    iget-object v4, v3, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    monitor-enter v4

    .line 198
    :try_start_0
    sget-object v3, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    iget-object v3, v3, Landroid/taobao/threadpool2/ThreadPool;->lowTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v1

    .line 199
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 200
    sget-object v3, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    iget-object v3, v3, Landroid/taobao/threadpool2/ThreadPool;->lowTaskHolderStack:Ljava/util/Stack;

    sub-int v5, v1, v0

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/threadpool2/TaskHolder;

    .line 201
    .local v2, taskHolder:Landroid/taobao/threadpool2/TaskHolder;
    invoke-virtual {v2}, Landroid/taobao/threadpool2/TaskHolder;->locked()V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v2           #taskHolder:Landroid/taobao/threadpool2/TaskHolder;
    :cond_0
    sget-object v3, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    iget-object v3, v3, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v1

    .line 206
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 207
    sget-object v3, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    iget-object v3, v3, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    sub-int v5, v1, v0

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/threadpool2/TaskHolder;

    .line 208
    .restart local v2       #taskHolder:Landroid/taobao/threadpool2/TaskHolder;
    invoke-virtual {v2}, Landroid/taobao/threadpool2/TaskHolder;->locked()V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    .end local v2           #taskHolder:Landroid/taobao/threadpool2/TaskHolder;
    :cond_1
    monitor-exit v4

    .line 214
    :cond_2
    return-void

    .line 211
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private excuteTask(Landroid/taobao/threadpool2/ThreadPlExecutor;Ljava/util/Stack;)Z
    .locals 9
    .parameter "executor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/taobao/threadpool2/ThreadPlExecutor;",
            "Ljava/util/Stack",
            "<",
            "Landroid/taobao/threadpool2/TaskHolder;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 300
    .local p2, taskPool:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/taobao/threadpool2/TaskHolder;>;"
    const/4 v2, 0x0

    .line 301
    .local v2, hasTask:Z
    if-eqz p2, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 306
    .local v0, asyncTask:Landroid/taobao/threadpool2/AsyncTask;
    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result v4

    .line 307
    .local v4, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 309
    sub-int v7, v4, v3

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p2, v7}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/taobao/threadpool2/TaskHolder;

    .line 311
    .local v6, taskHolder:Landroid/taobao/threadpool2/TaskHolder;
    invoke-virtual {v6}, Landroid/taobao/threadpool2/TaskHolder;->hasTask()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 313
    invoke-virtual {v6}, Landroid/taobao/threadpool2/TaskHolder;->getNextTask()Landroid/taobao/threadpool2/AsyncTask;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_2

    .line 316
    const/4 v2, 0x1

    .line 318
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/taobao/threadpool2/ThreadPlExecutor;->getActiveCount()I

    move-result v7

    invoke-virtual {p1}, Landroid/taobao/threadpool2/ThreadPlExecutor;->getMaximumPoolSize()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 319
    invoke-virtual {p1, v0}, Landroid/taobao/threadpool2/ThreadPlExecutor;->execute(Ljava/lang/Runnable;)V

    .line 320
    invoke-virtual {v6, v0}, Landroid/taobao/threadpool2/TaskHolder;->removeTask(Landroid/taobao/threadpool2/AsyncTask;)V

    .line 322
    invoke-virtual {p1}, Landroid/taobao/threadpool2/ThreadPlExecutor;->getActiveCount()I

    move-result v7

    invoke-virtual {p1}, Landroid/taobao/threadpool2/ThreadPlExecutor;->getCorePoolSize()I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 323
    new-instance v5, Landroid/taobao/threadpool2/ThreadPool$EmptyTask;

    invoke-direct {v5, p0}, Landroid/taobao/threadpool2/ThreadPool$EmptyTask;-><init>(Landroid/taobao/threadpool2/ThreadPool;)V

    .line 325
    .local v5, task:Ljava/lang/Runnable;
    invoke-virtual {p1, v5}, Landroid/taobao/threadpool2/ThreadPlExecutor;->execute(Ljava/lang/Runnable;)V

    .line 326
    invoke-virtual {p1, v5}, Landroid/taobao/threadpool2/ThreadPlExecutor;->remove(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v0           #asyncTask:Landroid/taobao/threadpool2/AsyncTask;
    .end local v3           #i:I
    .end local v4           #size:I
    .end local v5           #task:Ljava/lang/Runnable;
    .end local v6           #taskHolder:Landroid/taobao/threadpool2/TaskHolder;
    :cond_0
    :goto_1
    return v2

    .line 330
    .restart local v0       #asyncTask:Landroid/taobao/threadpool2/AsyncTask;
    .restart local v3       #i:I
    .restart local v4       #size:I
    .restart local v6       #taskHolder:Landroid/taobao/threadpool2/TaskHolder;
    :catch_0
    move-exception v1

    .line 331
    .local v1, e:Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_1

    .line 335
    .end local v1           #e:Ljava/util/concurrent/RejectedExecutionException;
    :cond_1
    invoke-virtual {v6}, Landroid/taobao/threadpool2/TaskHolder;->isAutoDestory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 336
    invoke-virtual {p2, v6}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 307
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Landroid/taobao/threadpool2/ThreadPool;
    .locals 2

    .prologue
    .line 88
    const-class v1, Landroid/taobao/threadpool2/ThreadPool;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Landroid/taobao/threadpool2/ThreadPool;

    invoke-direct {v0}, Landroid/taobao/threadpool2/ThreadPool;-><init>()V

    sput-object v0, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    .line 90
    :cond_0
    sget-object v0, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Landroid/taobao/threadpool2/ThreadPool;->state:I

    return v0
.end method

.method public isRegistered(Landroid/taobao/threadpool2/TaskHolder;)Z
    .locals 4
    .parameter "taskHolder"

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    monitor-enter v1

    .line 126
    if-eqz p1, :cond_0

    :try_start_0
    iget v2, p0, Landroid/taobao/threadpool2/ThreadPool;->state:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/taobao/threadpool2/ThreadPool;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 127
    :cond_0
    monitor-exit v1

    .line 146
    :goto_0
    return v0

    .line 130
    :cond_1
    invoke-virtual {p1}, Landroid/taobao/threadpool2/TaskHolder;->getPriority()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 146
    monitor-exit v1

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 134
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    if-eqz v2, :cond_2

    .line 135
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 137
    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v2, p0, Landroid/taobao/threadpool2/ThreadPool;->lowTaskHolderStack:Ljava/util/Stack;

    if-eqz v2, :cond_3

    .line 142
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->lowTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 144
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onTPShutDown()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->lowPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

    invoke-virtual {v0}, Landroid/taobao/threadpool2/ThreadPlExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->highPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

    invoke-virtual {v0}, Landroid/taobao/threadpool2/ThreadPlExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->listener:Landroid/taobao/threadpool2/ThreadPoolListener;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->listener:Landroid/taobao/threadpool2/ThreadPoolListener;

    invoke-interface {v0}, Landroid/taobao/threadpool2/ThreadPoolListener;->onTPShutDown()V

    .line 364
    :cond_0
    return-void
.end method

.method public regTaskHolder(Landroid/taobao/threadpool2/TaskHolder;)V
    .locals 4
    .parameter "taskHolder"

    .prologue
    .line 96
    iget-object v1, p0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    monitor-enter v1

    .line 97
    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Landroid/taobao/threadpool2/ThreadPool;->state:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/taobao/threadpool2/ThreadPool;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 98
    :cond_0
    monitor-exit v1

    .line 122
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/taobao/threadpool2/TaskHolder;->getPriority()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 121
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 105
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "threadpool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regTaskHolder high stack size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :pswitch_1
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->lowTaskHolderStack:Ljava/util/Stack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->lowTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->lowTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "threadpool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regTaskHolder low stack size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/taobao/threadpool2/ThreadPool;->lowTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    :goto_0
    iget-boolean v2, p0, Landroid/taobao/threadpool2/ThreadPool;->running:Z

    if-eqz v2, :cond_6

    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, hasTask:Z
    :try_start_0
    iget-object v5, p0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :try_start_1
    iget-object v2, p0, Landroid/taobao/threadpool2/ThreadPool;->highPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

    iget-object v6, p0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    invoke-direct {p0, v2, v6}, Landroid/taobao/threadpool2/ThreadPool;->excuteTask(Landroid/taobao/threadpool2/ThreadPlExecutor;Ljava/util/Stack;)Z

    move-result v1

    .line 249
    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/taobao/threadpool2/ThreadPool;->lowPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

    iget-object v6, p0, Landroid/taobao/threadpool2/ThreadPool;->lowTaskHolderStack:Ljava/util/Stack;

    invoke-direct {p0, v2, v6}, Landroid/taobao/threadpool2/ThreadPool;->excuteTask(Landroid/taobao/threadpool2/ThreadPlExecutor;Ljava/util/Stack;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v1, v4

    .line 250
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    if-nez v1, :cond_5

    .line 253
    :try_start_2
    iget v2, p0, Landroid/taobao/threadpool2/ThreadPool;->state:I

    if-ne v2, v4, :cond_2

    .line 255
    iget-object v2, p0, Landroid/taobao/threadpool2/ThreadPool;->highPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

    invoke-virtual {v2}, Landroid/taobao/threadpool2/ThreadPlExecutor;->shutdown()V

    .line 256
    iget-object v2, p0, Landroid/taobao/threadpool2/ThreadPool;->lowPThreadpool:Landroid/taobao/threadpool2/ThreadPlExecutor;

    invoke-virtual {v2}, Landroid/taobao/threadpool2/ThreadPlExecutor;->shutdown()V

    .line 257
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/taobao/threadpool2/ThreadPool;->running:Z

    .line 258
    const/4 v2, 0x0

    sput-object v2, Landroid/taobao/threadpool2/ThreadPool;->single_TP:Landroid/taobao/threadpool2/ThreadPool;

    .line 259
    const/4 v2, 0x2

    iput v2, p0, Landroid/taobao/threadpool2/ThreadPool;->state:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move v1, v3

    .line 249
    goto :goto_1

    .line 250
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 265
    :cond_2
    iget-boolean v2, p0, Landroid/taobao/threadpool2/ThreadPool;->needWorking:Z

    if-eqz v2, :cond_3

    .line 266
    const-string v2, "Threadpool"

    const-string v5, "sleep"

    invoke-static {v2, v5}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 270
    :cond_3
    iget-object v5, p0, Landroid/taobao/threadpool2/ThreadPool;->threadPoolMgr:Ljava/lang/Thread;

    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 271
    :try_start_5
    iget-boolean v2, p0, Landroid/taobao/threadpool2/ThreadPool;->needWorking:Z

    if-nez v2, :cond_4

    .line 272
    const-string v2, "Threadpool"

    const-string v6, "wait"

    invoke-static {v2, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Landroid/taobao/threadpool2/ThreadPool;->threadPoolMgr:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 276
    :cond_4
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 279
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Landroid/taobao/threadpool2/ThreadPool;->needWorking:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 276
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2

    .line 284
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/taobao/threadpool2/ThreadPool;->needWorking:Z

    .line 285
    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    .line 293
    .end local v1           #hasTask:Z
    :cond_6
    const-string v2, "threadpool"

    const-string v3, "running out"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public setEventListener(Landroid/taobao/threadpool2/ThreadPoolListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 183
    iput-object p1, p0, Landroid/taobao/threadpool2/ThreadPool;->listener:Landroid/taobao/threadpool2/ThreadPoolListener;

    .line 185
    return-void
.end method

.method public unregTaskHolder(Landroid/taobao/threadpool2/TaskHolder;)V
    .locals 4
    .parameter "taskHolder"

    .prologue
    .line 153
    iget-object v1, p0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    monitor-enter v1

    .line 154
    if-nez p1, :cond_0

    .line 155
    :try_start_0
    monitor-exit v1

    .line 176
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/taobao/threadpool2/TaskHolder;->getPriority()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 175
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 159
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 162
    const-string v0, "threadpool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regTaskHolder high stack size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/taobao/threadpool2/ThreadPool;->highTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :pswitch_1
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->lowTaskHolderStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->lowTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 171
    const-string v0, "threadpool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regTaskHolder low stack size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/taobao/threadpool2/ThreadPool;->lowTaskHolderStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public wakeup()V
    .locals 2

    .prologue
    .line 367
    iget-object v1, p0, Landroid/taobao/threadpool2/ThreadPool;->threadPoolMgr:Ljava/lang/Thread;

    monitor-enter v1

    .line 371
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/taobao/threadpool2/ThreadPool;->needWorking:Z

    .line 372
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->threadPoolMgr:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 373
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-enter p0

    .line 377
    :try_start_1
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->threadPoolMgr:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/taobao/threadpool2/ThreadPool;->running:Z

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "threadpool"

    const-string v1, "runing dead, recreater"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "TBThreadPoolMgr_back"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->threadPoolMgr:Ljava/lang/Thread;

    .line 380
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->threadPoolMgr:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 381
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPool;->threadPoolMgr:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 382
    const/4 v0, 0x0

    iput v0, p0, Landroid/taobao/threadpool2/ThreadPool;->state:I

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/threadpool2/ThreadPool;->running:Z

    .line 385
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 386
    return-void

    .line 373
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 385
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
