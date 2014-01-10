.class public Landroid/taobao/threadpool2/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/taobao/util/Priority;


# instance fields
.field private executor:Ljava/lang/Runnable;

.field private owner:Landroid/taobao/threadpool2/TaskHolder;

.field private priority:I


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;Landroid/taobao/threadpool2/TaskHolder;)V
    .locals 0
    .parameter "priority"
    .parameter "executor"
    .parameter "owner"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Landroid/taobao/threadpool2/AsyncTask;->priority:I

    .line 12
    iput-object p2, p0, Landroid/taobao/threadpool2/AsyncTask;->executor:Ljava/lang/Runnable;

    .line 13
    iput-object p3, p0, Landroid/taobao/threadpool2/AsyncTask;->owner:Landroid/taobao/threadpool2/TaskHolder;

    .line 14
    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Landroid/taobao/threadpool2/AsyncTask;->priority:I

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Landroid/taobao/threadpool2/AsyncTask;->owner:Landroid/taobao/threadpool2/TaskHolder;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Landroid/taobao/threadpool2/AsyncTask;->owner:Landroid/taobao/threadpool2/TaskHolder;

    invoke-virtual {v0, p0}, Landroid/taobao/threadpool2/TaskHolder;->taskBegin(Landroid/taobao/threadpool2/AsyncTask;)V

    .line 21
    :cond_0
    iget-object v0, p0, Landroid/taobao/threadpool2/AsyncTask;->executor:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Landroid/taobao/threadpool2/AsyncTask;->executor:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 23
    :cond_1
    iget-object v0, p0, Landroid/taobao/threadpool2/AsyncTask;->owner:Landroid/taobao/threadpool2/TaskHolder;

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, p0, Landroid/taobao/threadpool2/AsyncTask;->owner:Landroid/taobao/threadpool2/TaskHolder;

    invoke-virtual {v0, p0}, Landroid/taobao/threadpool2/TaskHolder;->taskFinsh(Landroid/taobao/threadpool2/AsyncTask;)V

    .line 25
    :cond_2
    return-void
.end method
