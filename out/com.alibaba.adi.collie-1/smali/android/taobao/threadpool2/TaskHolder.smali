.class public abstract Landroid/taobao/threadpool2/TaskHolder;
.super Ljava/lang/Object;
.source "TaskHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNextTask()Landroid/taobao/threadpool2/AsyncTask;
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPriority()I
.end method

.method protected hasTask()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method protected isAutoDestory()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method protected locked()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method protected removeTask(Landroid/taobao/threadpool2/AsyncTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 18
    return-void
.end method

.method protected taskBegin(Landroid/taobao/threadpool2/AsyncTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 40
    return-void
.end method

.method protected taskFinsh(Landroid/taobao/threadpool2/AsyncTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 45
    return-void
.end method
