.class public Landroid/taobao/threadpool2/SingleTask;
.super Landroid/taobao/threadpool2/TaskHolder;
.source "SingleTask.java"


# instance fields
.field private priority:I

.field private task:Landroid/taobao/threadpool2/AsyncTask;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;I)V
    .locals 2
    .parameter "runable"
    .parameter "priority"

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/taobao/threadpool2/TaskHolder;-><init>()V

    .line 18
    iput p2, p0, Landroid/taobao/threadpool2/SingleTask;->priority:I

    .line 19
    if-eqz p1, :cond_0

    .line 20
    const-string v0, "SingleTask"

    const-string v1, "available runnable"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v0, Landroid/taobao/threadpool2/AsyncTask;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p0}, Landroid/taobao/threadpool2/AsyncTask;-><init>(ILjava/lang/Runnable;Landroid/taobao/threadpool2/TaskHolder;)V

    iput-object v0, p0, Landroid/taobao/threadpool2/SingleTask;->task:Landroid/taobao/threadpool2/AsyncTask;

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method protected declared-synchronized getNextTask()Landroid/taobao/threadpool2/AsyncTask;
    .locals 2

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    const-string v0, "SingleTask"

    const-string v1, "getNextTask"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Landroid/taobao/threadpool2/SingleTask;->task:Landroid/taobao/threadpool2/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Landroid/taobao/threadpool2/SingleTask;->priority:I

    return v0
.end method

.method protected hasTask()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/taobao/threadpool2/SingleTask;->task:Landroid/taobao/threadpool2/AsyncTask;

    if-eqz v0, :cond_0

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
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method protected removeTask(Landroid/taobao/threadpool2/AsyncTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 45
    const-string v0, "SingleTask"

    const-string v1, "removeTask"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/threadpool2/SingleTask;->task:Landroid/taobao/threadpool2/AsyncTask;

    .line 47
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "SingleTask"

    const-string v1, "execute"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Landroid/taobao/threadpool2/ThreadPool;->getInstance()Landroid/taobao/threadpool2/ThreadPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/taobao/threadpool2/ThreadPool;->regTaskHolder(Landroid/taobao/threadpool2/TaskHolder;)V

    .line 32
    invoke-static {}, Landroid/taobao/threadpool2/ThreadPool;->getInstance()Landroid/taobao/threadpool2/ThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/threadpool2/ThreadPool;->wakeup()V

    .line 33
    return-void
.end method

.method protected taskBegin(Landroid/taobao/threadpool2/AsyncTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 69
    const-string v0, "SingleTask"

    const-string v1, "taskBegin"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected taskFinsh(Landroid/taobao/threadpool2/AsyncTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 75
    const-string v0, "SingleTask"

    const-string v1, "taskFinsh"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
