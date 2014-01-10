.class public Landroid/taobao/threadpool2/ThreadPage;
.super Landroid/taobao/threadpool2/TaskHolder;
.source "ThreadPage.java"

# interfaces
.implements Landroid/taobao/util/Priority;


# instance fields
.field private currentTaskNum:I

.field private isAutoDestory:Z

.field private isPause:Z

.field private locked:Z

.field private priority:I

.field private priorityQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Landroid/taobao/threadpool2/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private simulTaskNum:I

.field private threadPool:Landroid/taobao/threadpool2/ThreadPool;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "priority"

    .prologue
    .line 26
    invoke-static {}, Landroid/taobao/threadpool2/ThreadPool;->getInstance()Landroid/taobao/threadpool2/ThreadPool;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/taobao/threadpool2/ThreadPage;-><init>(ILandroid/taobao/threadpool2/ThreadPool;)V

    .line 27
    return-void
.end method

.method public constructor <init>(ILandroid/taobao/threadpool2/ThreadPool;)V
    .locals 3
    .parameter "priority"
    .parameter "threadPool"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/taobao/threadpool2/TaskHolder;-><init>()V

    .line 14
    iput-boolean v1, p0, Landroid/taobao/threadpool2/ThreadPage;->isAutoDestory:Z

    .line 15
    iput-boolean v1, p0, Landroid/taobao/threadpool2/ThreadPage;->isPause:Z

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Landroid/taobao/threadpool2/ThreadPage;->simulTaskNum:I

    .line 17
    iput v1, p0, Landroid/taobao/threadpool2/ThreadPage;->currentTaskNum:I

    .line 30
    iput-boolean v1, p0, Landroid/taobao/threadpool2/ThreadPage;->locked:Z

    .line 31
    iput p1, p0, Landroid/taobao/threadpool2/ThreadPage;->priority:I

    .line 32
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0xc8

    new-instance v2, Landroid/taobao/util/PriorityComparator;

    invoke-direct {v2}, Landroid/taobao/util/PriorityComparator;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Landroid/taobao/threadpool2/ThreadPage;->priorityQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 33
    iput-object p2, p0, Landroid/taobao/threadpool2/ThreadPage;->threadPool:Landroid/taobao/threadpool2/ThreadPool;

    .line 34
    invoke-virtual {p2, p0}, Landroid/taobao/threadpool2/ThreadPool;->regTaskHolder(Landroid/taobao/threadpool2/TaskHolder;)V

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized clearTask()V
    .locals 2

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPage;->priorityQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "threadpage"

    const-string v1, "clearTask"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPage;->priorityQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "threadpage"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/taobao/threadpool2/ThreadPage;->clearTask()V

    .line 74
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPage;->threadPool:Landroid/taobao/threadpool2/ThreadPool;

    invoke-virtual {v0, p0}, Landroid/taobao/threadpool2/ThreadPool;->unregTaskHolder(Landroid/taobao/threadpool2/TaskHolder;)V

    .line 75
    return-void
.end method

.method public execute(Ljava/lang/Runnable;I)V
    .locals 3
    .parameter "runable"
    .parameter "priority"

    .prologue
    .line 40
    const-string v1, "threadpage"

    const-string v2, "add runable object"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Landroid/taobao/threadpool2/ThreadPage;->locked:Z

    if-nez v1, :cond_2

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    new-instance v0, Landroid/taobao/threadpool2/AsyncTask;

    invoke-direct {v0, p2, p1, p0}, Landroid/taobao/threadpool2/AsyncTask;-><init>(ILjava/lang/Runnable;Landroid/taobao/threadpool2/TaskHolder;)V

    .line 45
    .local v0, asyncTask:Landroid/taobao/threadpool2/AsyncTask;
    iget-object v1, p0, Landroid/taobao/threadpool2/ThreadPage;->priorityQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Landroid/taobao/threadpool2/ThreadPage;->priorityQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v1, "threadpage"

    const-string v2, "add runable object success"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v1, p0, Landroid/taobao/threadpool2/ThreadPage;->threadPool:Landroid/taobao/threadpool2/ThreadPool;

    invoke-virtual {v1, p0}, Landroid/taobao/threadpool2/ThreadPool;->isRegistered(Landroid/taobao/threadpool2/TaskHolder;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    invoke-static {}, Landroid/taobao/threadpool2/ThreadPool;->getInstance()Landroid/taobao/threadpool2/ThreadPool;

    move-result-object v1

    iput-object v1, p0, Landroid/taobao/threadpool2/ThreadPage;->threadPool:Landroid/taobao/threadpool2/ThreadPool;

    .line 54
    iget-object v1, p0, Landroid/taobao/threadpool2/ThreadPage;->threadPool:Landroid/taobao/threadpool2/ThreadPool;

    invoke-virtual {v1, p0}, Landroid/taobao/threadpool2/ThreadPool;->regTaskHolder(Landroid/taobao/threadpool2/TaskHolder;)V

    .line 57
    :cond_1
    iget-object v1, p0, Landroid/taobao/threadpool2/ThreadPage;->threadPool:Landroid/taobao/threadpool2/ThreadPool;

    invoke-virtual {v1}, Landroid/taobao/threadpool2/ThreadPool;->wakeup()V

    .line 61
    .end local v0           #asyncTask:Landroid/taobao/threadpool2/AsyncTask;
    :cond_2
    return-void

    .line 50
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected declared-synchronized getNextTask()Landroid/taobao/threadpool2/AsyncTask;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/taobao/threadpool2/ThreadPage;->priorityQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 169
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/taobao/threadpool2/ThreadPage;->priorityQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 171
    iget-boolean v1, p0, Landroid/taobao/threadpool2/ThreadPage;->isPause:Z

    if-nez v1, :cond_0

    iget v1, p0, Landroid/taobao/threadpool2/ThreadPage;->currentTaskNum:I

    iget v2, p0, Landroid/taobao/threadpool2/ThreadPage;->simulTaskNum:I

    if-ge v1, v2, :cond_0

    .line 172
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPage;->priorityQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/threadpool2/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Landroid/taobao/threadpool2/ThreadPage;->priority:I

    return v0
.end method

.method public getSimulTask()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Landroid/taobao/threadpool2/ThreadPage;->simulTaskNum:I

    return v0
.end method

.method protected hasTask()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPage;->priorityQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAutoDestory()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Landroid/taobao/threadpool2/ThreadPage;->isAutoDestory:Z

    return v0
.end method

.method protected locked()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "threadpage"

    const-string v1, "threadpage lock"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/threadpool2/ThreadPage;->locked:Z

    .line 206
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "threadpage"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/threadpool2/ThreadPage;->isPause:Z

    .line 99
    return-void
.end method

.method protected removeTask(Landroid/taobao/threadpool2/AsyncTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 223
    const-string v0, "threadpage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTask"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/threadpool2/ThreadPage;->priorityQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget v0, p0, Landroid/taobao/threadpool2/ThreadPage;->currentTaskNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/threadpool2/ThreadPage;->currentTaskNum:I

    .line 225
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPage;->priorityQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "threadpage"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPage;->priorityQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPage;->threadPool:Landroid/taobao/threadpool2/ThreadPool;

    invoke-virtual {v0}, Landroid/taobao/threadpool2/ThreadPool;->wakeup()V

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/threadpool2/ThreadPage;->isPause:Z

    .line 109
    return-void
.end method

.method public setAutoDestory(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 81
    iput-boolean p1, p0, Landroid/taobao/threadpool2/ThreadPage;->isAutoDestory:Z

    .line 82
    return-void
.end method

.method public setSimulTask(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 143
    iput p1, p0, Landroid/taobao/threadpool2/ThreadPage;->simulTaskNum:I

    .line 144
    return-void
.end method

.method protected taskBegin(Landroid/taobao/threadpool2/AsyncTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 183
    const-string v0, "threadpage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThreadPage_taskBegin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/taobao/threadpool2/ThreadPage;->currentTaskNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method protected taskFinsh(Landroid/taobao/threadpool2/AsyncTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 189
    iget v0, p0, Landroid/taobao/threadpool2/ThreadPage;->currentTaskNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/taobao/threadpool2/ThreadPage;->currentTaskNum:I

    .line 190
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPage;->priorityQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 191
    iget-object v0, p0, Landroid/taobao/threadpool2/ThreadPage;->threadPool:Landroid/taobao/threadpool2/ThreadPool;

    invoke-virtual {v0}, Landroid/taobao/threadpool2/ThreadPool;->wakeup()V

    .line 192
    :cond_0
    const-string v0, "threadpage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThreadPage_taskFinsh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/taobao/threadpool2/ThreadPage;->currentTaskNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method
